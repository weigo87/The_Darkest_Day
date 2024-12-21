BEGIN ~ADARIOBS~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0 1.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  IF ~~ THEN DO ~SetGlobal("tz_adarioquests","GLOBAL",18)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @13
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END
