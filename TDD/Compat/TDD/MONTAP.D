BEGIN ~MONTAP~

IF ~OR(2)
     HappinessLT(Myself,0)
     Global("KickedOut","LOCALS",2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~ActionOverride("XZARDD",LeaveParty())
ActionOverride("XZARDD",EscapeAreaDestroy(90))
LeaveParty()
EscapeAreaDestroy(90)~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
ActionOverride("XZARDD",SetGlobal("KickedOut","LOCALS",1)
ActionOverride("XZARDD",LeaveParty())~ EXIT
END


