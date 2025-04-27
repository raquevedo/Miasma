Scriptname RE01SetStageOnHealthBreakpoint extends ReferenceAlias

{ Sets quest stages when alias health reaches the given breakpoints }

Int Property firstBreakpoint  Auto  

Int Property secondBreakpoint  Auto  

Int Property finalBreakpoint  Auto  

Int Property FirstStage  Auto  

Int Property SecondStage  Auto  

Int Property FinalStage  Auto  


Quest Property myQuest  Auto  



Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, \
  bool abBashAttack, bool abHitBlocked)
	if myQuest.GetStage() < FirstStage
		if GetActorReference().GetActorValue("Health") < firstBreakpoint
			myQuest.SetStage(FirstStage)
		endif
	elseif myQuest.GetStage() < SecondStage
		if GetActorReference().GetActorValue("Health") < secondBreakpoint
			myQuest.SetStage(SecondStage)
		endif
	elseif GetActorReference().GetActorValue("Health") < finalBreakpoint
		myQuest.SetStage(FinalStage)
	endif
EndEvent