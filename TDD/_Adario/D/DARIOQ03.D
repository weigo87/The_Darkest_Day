BEGIN ~DARIOQ03~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 10
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 10.0 1.0
  SAY @4
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 9.0 4.0
  SAY @9
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @13
  IF ~~ THEN DO ~SetGlobalTimer("tz_kalvarasquest2b","GLOBAL",THREE_DAYS)
SetGlobal("tz_adarioquests","GLOBAL",8)
SetGlobal("adariogridcopper","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @14
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY @15
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 0.1
  SAY @16
  IF ~~ THEN GOTO 2
END
