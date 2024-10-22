Scriptname RE01AshGuardianBossTrigger extends ObjectReference  
{Triggers the ash guardian boss fight}

import game
import utility


Actor property ashGuardian auto

 Event OnActivate(ObjectReference akActionRef)
	wait(1);
	ashGuardian.PlaceAtMe(GetFormFromFile(0x0007CD55, "Skyrim.ESM"));Place Summon FX
	wait(1);
	ashGuardian.Enable()
 endEvent