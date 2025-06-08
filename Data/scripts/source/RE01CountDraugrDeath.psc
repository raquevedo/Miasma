Scriptname RE01CountDraugrDeath extends Quest  
{Holds the DraugrDeathCount variable for the enemy waves}


Int Property NDraugrFirstWave  Auto  
{Number of Draugr on first wave}

Int Property NDraugrSecondWave  Auto  
{Number of Draugr on first wave}

Bool firstWaveSpawned = false
Bool secondWaveSpawned = false

Int Property deadCount = 0 auto


Function IncreaseDeathCounter()

	deadCount = deadCount + 1

	if firstWaveSpawned == 0
		if deadCount == NDraugrFirstWave
			SetStage(25)
			deadCount = 0
			 firstWaveSpawned = true
		endif
	elseif  secondWaveSpawned == 0
		if deadCount == NDraugrSecondWave
			SetStage(35)
			deadCount = 0
 			secondWaveSpawned = true
		endif
	endif

EndFunction







