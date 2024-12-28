BEGIN ~SHARFIT1~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @7
  IF ~~ THEN DO ~ActionOverride("sharfit1",Enemy())
ActionOverride("sharfit2",Enemy())
ActionOverride("sharfit3",Enemy())
ActionOverride("sharfit4",Enemy())
SetGlobal("sharplot","GLOBAL",4)~ EXIT
END
