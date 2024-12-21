BEGIN ~ADADOP1A~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 7.0 4.1 4.0
  SAY @13
  IF ~~ THEN DO ~CreateVisualEffectObject("spportal","adadop1a")
CreateVisualEffectObject("spplanar","adadop1a")
CreateCreatureObject("adadop1b","adadop1a",0,0,0)
Wait(1)
ActionOverride("adadop1a",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @14
  IF ~~ THEN DO ~CreateVisualEffectObject("spportal","adadop1a")
CreateVisualEffectObject("spplanar","adadop1a")
CreateCreatureObject("adadop1b","adadop1a",0,0,0)
Wait(1)
ActionOverride("adadop1a",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @15
  IF ~~ THEN REPLY @11 GOTO 5
END
