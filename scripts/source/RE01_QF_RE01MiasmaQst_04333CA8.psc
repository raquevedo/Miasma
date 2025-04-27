;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 58
Scriptname RE01_QF_RE01MiasmaQst_04333CA8 Extends Quest Hidden

;BEGIN ALIAS PROPERTY WreckageActivator
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WreckageActivator Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BarrowBlocker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BarrowBlocker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ZirathThrall1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ZirathThrall1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Haj
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Haj Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MineEntrance
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MineEntrance Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ZirathThrall2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ZirathThrall2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Zirath
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Zirath Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Mine
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_Mine Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ReaverJournal
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ReaverJournal Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TavernMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TavernMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ReaverLord
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ReaverLord Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WreckageMeetingMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WreckageMeetingMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dragonPriest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dragonPriest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DungeonDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DungeonDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ZirathJournal
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ZirathJournal Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CellDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CellDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Barrow
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_Barrow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MineMapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MineMapMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY HajBow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_HajBow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BarrowMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BarrowMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WreckMapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WreckMapMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CellDoorMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CellDoorMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Slave
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Slave Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ReaverNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ReaverNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Wreckage
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_Wreckage Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DragonPriestTrigger
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DragonPriestTrigger Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MineEntranceKey
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MineEntranceKey Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NextToWoundedSlaveMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NextToWoundedSlaveMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ZirathMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ZirathMarker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(25)
WreckageAttackScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_43
Function Fragment_43()
;BEGIN CODE
Alias_Player.GetActorReference().AddItem(Alias_HajBow.GetReference(), 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
SetObjectiveCompleted(50)
SetObjectiveCompleted(52)
SetObjectiveDisplayed(55)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10)
Alias_ReaverJournal.GetReference().Enable()
Alias_WreckMapMarker.GetReference().AddToMap()
Alias_Haj.GetActorReference().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_56
Function Fragment_56()
;BEGIN CODE
SetObjectiveCompleted(50)
SetObjectiveDisplayed(52)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_31
Function Fragment_31()
;BEGIN CODE
SetObjectiveCompleted(70)
SetObjectiveDisplayed(80)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_30
Function Fragment_30()
;BEGIN CODE
SetObjectiveCompleted(65)
utility.wait(0.5)
Alias_ZirathThrall1.GetActorReference().kill(Alias_Player.GetActorReference())
Alias_ZirathThrall2.GetActorReference().kill(Alias_Player.GetActorReference())
utility.wait(1)
SetObjectiveDisplayed(70)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_35
Function Fragment_35()
;BEGIN CODE
Alias_Slave.GetReference().Disable()
Alias_Haj.GetActorReference().MoveTo(Alias_TavernMarker.GetReference())
SetObjectiveCompleted(60)
SetObjectiveCompleted(64)
Alias_Zirath.GetActorReference().StartCombat(Alias_Player.GetActorReference())
Alias_ZirathThrall1.GetActorReference().StartCombat(Alias_Player.GetActorReference())
Alias_ZirathThrall2.GetActorReference().StartCombat(Alias_Player.GetActorReference())
SetObjectiveDisplayed(65)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
setObjectiveCompleted(20)
setObjectiveCompleted(25)
setObjectiveDisplayed(30)
Alias_MineEntranceKey.GetReference().Enable()
Alias_Player.GetActorReference().AddItem(Alias_MineEntranceKey.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_41
Function Fragment_41()
;BEGIN CODE
Alias_Player.GetActorReference().AddItem(Gold001, 3000)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN CODE
SetObjectiveCompleted(50)
SetObjectiveCompleted(55)
Alias_BarrowBlocker.GetReference().Disable()
SetObjectiveDisplayed(60)
Alias_BarrowMarker.GetReference().AddToMap()
Alias_Haj.GetActorReference().SetPlayerTeammate(False)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
setObjectiveCompleted(40)
setObjectiveDisplayed(50)
RE01MiasmaQstSlaveFoundScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_54
Function Fragment_54()
;BEGIN CODE
SetObjectiveCompleted(52)
SetObjectiveDisplayed(53)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_33
Function Fragment_33()
;BEGIN CODE
SetObjectiveCompleted(80)
Alias_DungeonDoor.GetReference().SetLockLevel(0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_37
Function Fragment_37()
;BEGIN CODE
; Zirath forcegreets player
SetObjectiveCompleted(60)
SetObjectiveDisplayed(64)
Alias_DungeonDoor.GetReference().SetOpen(False)
Alias_DungeonDoor.GetReference().SetLockLevel(255)
Alias_DungeonDoor.GetReference().Lock()
ZirathScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
setObjectiveCompleted(30)
setObjectiveDisplayed(40)
Alias_MineMapMarker.GetReference().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
; Same as stage 25 but Haj will not follow the player

SetObjectiveCompleted(20)
SetObjectiveDisplayed(25)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property RE01MiasmaQstSlaveFoundScene  Auto  

MiscObject Property Gold001  Auto  

Scene Property WreckageAttackScene  Auto  

Scene Property DurvithIntroScene  Auto  

Scene Property ZirathScene  Auto  
