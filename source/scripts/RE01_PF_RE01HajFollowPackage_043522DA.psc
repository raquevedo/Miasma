;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname RE01_PF_RE01HajFollowPackage_043522DA Extends Package Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(Actor akActor)
;BEGIN CODE
ReferenceAlias hajRef = GetOwningQuest().GetAlias(0) as ReferenceAlias
hajRef.GetActorReference().SetPlayerTeammate(True)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(Actor akActor)
;BEGIN CODE
ReferenceAlias hajRef = GetOwningQuest().GetAlias(0) as ReferenceAlias
hajRef.GetActorReference().SetPlayerTeammate(False)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
