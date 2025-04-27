;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 12
Scriptname QF_RE01PriestFight_0320B560 Extends Quest Hidden

;BEGIN ALIAS PROPERTY FirstTeleportMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FirstTeleportMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FirstWaveDraugr1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FirstWaveDraugr1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SecondWaveDraugr2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SecondWaveDraugr2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SecondTeleportMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SecondTeleportMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SecondWaveDraugr1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SecondWaveDraugr1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SecondWaveDraugr3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SecondWaveDraugr3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FirstWaveDraugr2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FirstWaveDraugr2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Priest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Priest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SecondWaveDraugr4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SecondWaveDraugr4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SpawnTeleportMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SpawnTeleportMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TRIGGER
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TRIGGER Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FirstWaveDraugr3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FirstWaveDraugr3 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
(Alias_Priest as RE01Teleport).Teleport(Alias_SpawnTeleportMarker.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
(Alias_Priest as RE01Teleport).Teleport(Alias_SpawnTeleportMarker.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
(Alias_Priest as RE01Teleport).Teleport(Alias_SecondTeleportMarker.GetReference())

Alias_SecondWaveDraugr1.GetReference().Enable()
Alias_SecondWaveDraugr1.GetReference().Activate(Alias_Priest.GetReference())
Utility.wait(0.2)

Alias_SecondWaveDraugr2.GetReference().Enable()
Alias_SecondWaveDraugr2.GetReference().Activate(Alias_Priest.GetReference())
Utility.wait(0.4)

Alias_SecondWaveDraugr3.GetReference().Enable()
Alias_SecondWaveDraugr3.GetReference().Activate(Alias_Priest.GetReference())
Utility.wait(0.3)

Alias_SecondWaveDraugr4.GetReference().Enable()
Alias_SecondWaveDraugr4.GetReference().Activate(Alias_Priest.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
(Alias_Priest as RE01Teleport).Teleport(Alias_FirstTeleportMarker.GetReference())

Alias_FirstWaveDraugr1.GetReference().Enable()
Alias_FirstWaveDraugr1.GetReference().Activate(Alias_Priest.GetReference())
Utility.wait(0.4)
Alias_FirstWaveDraugr2.GetReference().Enable()
Alias_FirstWaveDraugr2.GetReference().Activate(Alias_Priest.GetReference())
Utility.wait(0.7)
Alias_FirstWaveDraugr3.GetReference().Enable()
Alias_FirstWaveDraugr3.GetReference().Activate(Alias_Priest.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment


RE01QuestConditionals Property MiasmaQuest  Auto  
