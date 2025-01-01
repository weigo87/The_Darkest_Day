BEGIN ~KHELBUN~

IF ~NumTimesTalkedTo(0)
Global("meetkhelb","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 DO ~SetGlobal("TalkedToKhelben","GLOBAL",1)
SetGlobal("meetkhelb","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 DO ~JoinParty()
SetGlobal("meetkhelb","GLOBAL",1)~ EXIT
END

IF ~Global("TalkedToKhelben","GLOBAL",1)~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @13
  IF ~~ THEN EXIT
END
