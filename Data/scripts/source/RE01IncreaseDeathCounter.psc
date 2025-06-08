Scriptname RE01IncreaseDeathCounter extends ReferenceAlias  
{Increases the death counter by 1 on death}


Event OnDeath(Actor akKiller)
	(GetOwningQuest() as RE01CountDraugrDeath).IncreaseDeathCounter()
EndEvent
