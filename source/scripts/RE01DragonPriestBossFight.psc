Scriptname RE01DragonPriestBossFight extends Actor  
{Handles spawns and teleports during the final fight}

import game
import utility

Int Property firstBreakpoint auto
Int Property secondBreakpoint auto

Keyword Property firstTeleMarker  auto
Keyword Property secondTeleMarker  auto
Keyword Property firstActivator  auto
Keyword Property secondActivator  auto

int stage

function Teleport(Actor actorRef, ObjectReference teleMarker)
	{Teleports actor to marker with FX}
	actorRef.PlaceAtMe(GetFormFromFile(0x0007CD55, "Skyrim.ESM"));Place Summon FX
	wait(1);
	teleMarker.PlaceAtMe(GetFormFromFile(0x0007CD55, "Skyrim.ESM"));Place Summon FX
	actorRef.MoveTo(teleMarker)
endFunction

function TeleportAndSpawn(Actor actorRef, ObjectReference teleMarker, ObjectReference spawner)
	{Teleports self and activates first wave of spawns}
	Teleport(actorRef, teleMarker)
	spawner.Activate(self)
endFunction

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, \
  bool abBashAttack, bool abHitBlocked)
	if stage == 0
		if self.GetActorValue("Health") < firstBreakpoint
			TeleportAndSpawn(self, GetLinkedRef(firstTeleMarker), GetLinkedRef(firstActivator))
			stage = stage + 1
		endif
	elseif stage == 1
		if self.GetActorValue("Health") < secondBreakpoint
			TeleportAndSpawn(self, GetLinkedRef(secondTeleMarker), GetLinkedRef(secondActivator))
			stage = stage + 1
		endif
	endif
EndEvent
	