;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 5
Scriptname QF_RE01WordWallQst_042456BF Extends Quest Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
utility.wait(1)
game.TeachWord(Word2)
utility.wait(1)
game.TeachWord(Word3)
utility.wait(1)
setstage(100)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

WordOfPower Property Word2  Auto  

WordOfPower Property Word3  Auto  
