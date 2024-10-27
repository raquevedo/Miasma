Scriptname RE01QuestTrigger extends ReferenceAlias  
{ this is a generic script for one-shot quest stage updates}

import game
import debug

quest property myQuest auto	
{ quest to call SetStage on}

int property stage auto
{ stage to set}

ReferenceAlias Property Player  Auto 
{ player alias }

EVENT onTriggerEnter(objectReference triggerRef)
	if triggerRef == Player.GetReference() as actor
		; check to see if a pre-req stage was specificed and if it's been met
		if  MyQuest.GetCurrentStageID() == 0
			; Start the quest just in case it isn't already running.
			if myQuest.isRunning() == FALSE
				bool check = myQuest.start()
				; do a quick check in case the quest could not be started
				if !check
 					debug.trace("ERROR: "+myQuest+" not started by "+self)
				endif
			endif

			myQuest.setStage(stage)
		endif
	endif
endEVENT


