BEGIN ~YESLICDD~

IF ~Global("kickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11
  IF ~~ THEN REPLY @12 DO ~JoinParty()
SetGlobal("kickedOut","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @13 GOTO 6
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @15
  IF ~~ THEN DO ~SetGlobal("kickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @16
  IF ~~ THEN DO ~EscapeAreaDestroy(90)~ EXIT
END

IF ~Global("kickedOut","LOCALS",1)~ THEN BEGIN 8
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @19 EXIT
  IF ~~ THEN REPLY @20 EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @21
  IF ~~ THEN DO ~JoinParty()~ EXIT
END
