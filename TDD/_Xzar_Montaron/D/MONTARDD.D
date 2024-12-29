BEGIN ~MONTARDD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @5
  IF ~~ THEN REPLY @6 DO ~SetGlobal("tz_montjoinwithxzar","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @7 DO ~JoinParty()
SetGlobal("tz_montbootwithxzar","GLOBAL",1)~ EXIT
END
