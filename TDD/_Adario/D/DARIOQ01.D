BEGIN ~DARIOQ01~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 8.0 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("tz_adarioquests","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("tz_adarioquests","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @16
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY @13
  IF ~~ THEN REPLY @17 GOTO 2
  IF ~~ THEN REPLY @15 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @16
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END
