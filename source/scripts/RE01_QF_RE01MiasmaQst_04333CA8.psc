;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 22
Scriptname RE01_QF_RE01MiasmaQst_04333CA8 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Mine
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_Mine Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WreckageActivator
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WreckageActivator Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Zirath
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Zirath Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MineEndMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MineEndMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WreckageMeetingMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WreckageMeetingMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dragonPriest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dragonPriest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ReaverJournal
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ReaverJournal Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ReaverLord
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ReaverLord Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WreckMapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WreckMapMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Haj
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Haj Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MineMapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MineMapMarker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
SetObjectiveCompleted(30)
SetObjectiveDisplayed(40)
Alias_MineMapMarker.GetReference().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(25)
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

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
SetObjectiveCompleted(25)
SetObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10)
Alias_ReaverJournal.GetReference().Enable()
Alias_WreckMapMarker.GetReference().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
