BEGIN ~DARIOQ05~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("tz_adarioquests","GLOBAL",11)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("tz_adarioquests","GLOBAL",11)
SetGlobalTimer("tz_kalvarasCrossed","GLOBAL",FIVE_DAYS)~ EXIT
  IF ~~ THEN REPLY @5 DO ~SetGlobal("tz_adarioquests","GLOBAL",11)
SetGlobalTimer("tz_kalvarasCrossed","GLOBAL",FIVE_DAYS)~ EXIT
END
