Scriptname RE01Teleport extends ReferenceAlias

import game
import utility

function Teleport(ObjectReference teleMarker)
	{Teleports actor to marker with FX}
	GetReference().PlaceAtMe(GetFormFromFile(0x0007CD55, "Skyrim.ESM"));Place Summon FX
	wait(1);
	teleMarker.PlaceAtMe(GetFormFromFile(0x0007CD55, "Skyrim.ESM"));Place Summon FX
	GetReference().MoveTo(teleMarker)
endFunction