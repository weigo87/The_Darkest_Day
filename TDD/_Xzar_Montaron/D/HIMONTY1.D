BEGIN ~HIMONTY1~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 5.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("tz_montyxzar","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @8
  IF ~~ THEN GOTO 1
END
