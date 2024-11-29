APPEND ~KIVANP~

IF ~Global("ENDOFBG1","GLOBAL",2)
OR(2)
     HappinessLT(Myself,0)
     Global("KickedOut","LOCALS",2)~ THEN BEGIN s0
  SAY @0
  IF ~~ THEN DO ~LeaveParty()
EscapeAreaDestroy(90)~ EXIT
END

IF ~Global("KickedOut","LOCALS",0)
Global("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO s2
  IF ~~ THEN REPLY @3 DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s2
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR1100",517,3173,0)~ EXIT
  IF ~~ THEN REPLY @6 GOTO s3
END

IF ~~ THEN BEGIN s3
  SAY @7
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)
Global("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s4
  SAY @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @10 EXIT
END

END
