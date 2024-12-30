BEGIN ~DDYOLKUM~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("tz_tackle","DD0118",1)~ EXIT
END

IF ~Global("tz_tackle","DD0118",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 DO ~SetGlobal("tz_tackle","DD0118",2)~ EXIT
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 DO ~SetGlobal("tz_tackle","DD0118",2)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @9
  IF ~~ THEN DO ~SetGlobal("tz_tackle","DD0118",2)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @10
  IF ~~ THEN DO ~SetGlobal("tz_tackle","DD0118",2)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @11
  IF ~~ THEN DO ~SetGlobal("tz_tackle","DD0118",2)~ EXIT
END
