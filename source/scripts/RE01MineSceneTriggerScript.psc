Scriptname RE01MineSceneTriggerScript extends ReferenceAlias
{Trigger the scene if the player is inside while the dungeon is cleared}

import game
import debug

quest property myQuest auto	
{ quest to call SetStage on}

int property stage auto
{ stage to set}

bool property doOnce = True auto
{Set the stage only once.}

int property prereqStage  auto
{ OPTIONAL: stage that must be set for this trigger to fire }

bool property disableWhenDone = true auto
{ disable myself after I've been triggered. Defaults to true }


auto STATE waitingForPlayer
	EVENT onTriggerEnter(objectReference triggerRef)
		if triggerRef == getPlayer() as actor
			; check to see if a pre-req stage was specificed and if it's been met
			if MyQuest.getStageDone(prereqStage) == 1
                           if GetReference().GetCurrentLocation().IsCleared() == 1 
				        ; do the actual business of setting the stage we want
				        myQuest.setStage(stage)
				        if doOnce
					        gotoState("hasBeenTriggered")
                                  endif
				       if disableWhenDone
					        GetReference().Disable()
				       endif
				endif

			endif
		endif
	endEVENT
endSTATE

STATE hasBeenTriggered
	; this is an empty state.
endSTATE