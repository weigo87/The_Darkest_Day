BEGIN ~AVAUNIS~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 DO ~SetGlobal("tz_HallOfKnowledge","GLOBAL",1)
RevealAreaOnMap("DD5000")~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY @13
  IF ~~ THEN DO ~SetGlobal("tz_HallOfKnowledge","GLOBAL",1)
JoinParty()
RevealAreaOnMap("DD5000")~ EXIT
END
