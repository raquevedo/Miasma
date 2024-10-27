Scriptname RE01IncreaseDeathCounter extends Actor  
{Increases the death counter by 1 on death}

RE01CountDraugrDeath Property myQuest Auto 


Event OnDeath(Actor akKiller)
	myQuest.DraugrDied()
EndEvent