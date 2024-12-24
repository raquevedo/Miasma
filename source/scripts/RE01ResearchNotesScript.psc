Scriptname RE01ResearchNotesScript extends ReferenceAlias  
{Sets the conditional property that checks whether this journal was found to True}

RE01QuestConditionals Property myQST auto
{Quest upon which to set stage. Default is the Alias's owning quest.}
	
auto State waiting	
	Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
; 		Debug.Trace("OnContainerChanged received.")
		if (Game.GetPlayer() == akNewContainer)
; 			Debug.Trace("Property set.")
                    myQST.ResearchNotesFound = True
                    myQST.SetStage(55)
			GoToState("inactive")
		endif
	EndEvent
EndState

State inactive
EndState

