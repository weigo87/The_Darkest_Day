BEGIN ~AVAUNISP~

IF ~Global("tz_IWasKickedOut","LOCALS",1)~ THEN BEGIN 0
  SAY @0
  IF ~Dead("PSION4")~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~!Dead("PSION4")~ THEN REPLY @1 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("tz_IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN EXIT
END

IF ~Global("tz_IWasKickedOut","LOCALS",0)
HappinessLT(Myself,0)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("tz_IWasKickedOut","LOCALS",1)
LeaveParty()
EscapeAreaDestroy(90)~ EXIT
END

IF ~!InParty(Myself())
!Dead("PSION4")~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN REPLY @7 DO ~SetGlobal("tz_IWasKickedOut","LOCALS",1)~ GOTO 5
  IF ~~ THEN REPLY @8 DO ~SetGlobal("tz_IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN DO ~EscapeAreaDestroy(90)~ EXIT
END
