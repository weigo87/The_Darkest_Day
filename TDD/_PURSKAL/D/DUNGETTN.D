BEGIN ~DUNGETTN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0 0.1
  SAY @6
  IF ~~ THEN DO ~SetGlobal("dungettinhelp","GLOBAL",1)
Enemy()~ EXIT
END
