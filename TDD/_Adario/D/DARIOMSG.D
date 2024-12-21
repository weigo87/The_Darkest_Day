BEGIN ~DARIOMSG~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 3.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @6
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr","dariomsg")
Wait(1)
ActionOverride("dariomsg",DestroySelf())
SetGlobal("tz_adarioquests","GLOBAL",13)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @7
  IF ~~ THEN GOTO 1
END
