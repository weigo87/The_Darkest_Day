BEGIN ~KAGAINDD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0 1.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @16
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY @18
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 10
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 7
  IF ~~ THEN REPLY @21 EXIT
  IF ~~ THEN REPLY @22 EXIT
END

/*IF ~Global("KickedOut","LOCALS",2)~ THEN BEGIN 12
  SAY ~What yer be needin now?~
  IF ~~ THEN REPLY ~I need you vicious fighting style by my side, Kagain, lets move out.~ GOTO 13
  IF ~~ THEN REPLY @17 EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY ~I'm right with ya.~
  IF ~~ THEN EXIT
END*/
