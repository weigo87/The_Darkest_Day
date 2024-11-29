BEGIN ~KAGAIP~

IF ~OR(2)
     HappinessLT(Myself,0)
     GlobalGT("KickedOutCnt","LOCALS",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~LeaveParty()
EscapeAreaDestroy(90)~ EXIT
END

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~
IncrementGlobal("KickedOutCnt","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("KickedOut","LOCALS",1)
IncrementGlobal("KickedOutCnt","LOCALS",1)
EscapeAreaMove("AR0020",550,495,0)~ EXIT
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
IncrementGlobal("KickedOutCnt","LOCALS",1)~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN DO ~Enemy()~ EXIT
END

