BEGIN ~SHARTEDD~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 10
END

IF ~~ THEN BEGIN 1 // from: 10.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 9.0 2.0
  SAY @8
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @15
  IF ~~ THEN REPLY @16 DO ~SetGlobal("KickedOut","LOCALS",1)
SetGlobal("sharplot","GLOBAL",2)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @17
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY @18
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 0.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 1
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 11
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @24
  IF ~~ THEN DO ~JoinParty()~ EXIT
END
