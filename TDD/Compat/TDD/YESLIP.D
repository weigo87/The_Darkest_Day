BEGIN ~YESLIP~

IF ~OR(2)
     HappinessLT(Myself,0)
     Global("KickedOut","LOCALS",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~LeaveParty()
Enemy()~ EXIT
END

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR0900",3445,1896,0)~ EXIT
  IF ~~ THEN REPLY @6 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

