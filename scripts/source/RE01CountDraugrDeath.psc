Scriptname RE01CountDraugrDeath extends Quest  
{Call on draugr death to keep count of wave progress}


int DraugrCount = 0

Int Property NDraugrFirstWave  Auto  
{Number of Draugr on first wave}

Int Property NDraugrSecondWave  Auto  
{Number of Draugr on first wave}

Int Property FirstWaveStage  Auto  
Int Property SecondWaveStage Auto  


Function DraugrDied()
	DraugrCount = DraugrCount + 1
	if GetStage() == FirstWaveStage 
		if DraugrCount >= NDraugrFirstWave
			SetStage(FirstWaveStage + 5)
			DraugrCount = 0
		endif
	elseif GetStage() == SecondWaveStage 
		if DraugrCount >= (NDraugrSecondWave)
			SetStage(SecondWaveStage + 5)
			DraugrCount = 0
		endif
	endif
endFunction

