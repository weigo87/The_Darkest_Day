BEGIN ~XZARDD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0 2.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.0
  SAY @12
  IF ~~ THEN DO ~JoinParty()
SetGlobal("tz_XzarMontyQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @13
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr","xzardd")
Wait(1)
ActionOverride("xzardd",DestroySelf())~ EXIT
END
