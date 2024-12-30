BEGIN ~DDKUIRIE~

IF ~RandomNum(3,1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)
IsValidForPartyDialog("Minsc")
Global("DD_kuiriel","DD0119",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("DD_kuiriel","DD0119",1)
ActionOverride("Minsc",StartDialog("DDminsc","DDkuirie"))~ EXIT
END

IF ~RandomNum(3,2)
OR(2)
!IsValidForPartyDialog("Minsc")
!Global("DD_kuiriel","DD0119",0)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END
