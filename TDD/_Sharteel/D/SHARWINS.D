BEGIN ~SHARWINS~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 4.0 1.0
  SAY @6
  IF ~~ THEN DO ~LeaveParty()
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.1 1.1
  SAY @7
  IF ~~ THEN DO ~JoinParty()
AddXPObject(Myself,SHARWINS_D_75000)
SetGlobal("tz_sharplot","GLOBAL",7)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @8
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 3
END
