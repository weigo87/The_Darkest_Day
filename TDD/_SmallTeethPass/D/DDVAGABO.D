BEGIN ~DDVAGABO~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 12
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("tz_DD_vagabond","DD0119",1)~ GOTO 2
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 16
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @8
  IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~ActionOverride("Minsc",StartDialog("DDMINSC",Player1))~ EXIT
  IF ~!IsValidForPartyDialog("Minsc")~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @10 DO ~TakePartyGold(20)~ GOTO 4
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 15.0 2.1
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 15.1 12.1 2.2 0.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @15 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 8.3 4.1
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 15.2 2.3
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 EXIT
  IF ~~ THEN REPLY @23 GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 10.0 8.0
  SAY @24
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 9
  IF ~~ THEN REPLY @27 EXIT
  IF ~~ THEN REPLY @28 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.2
  SAY @29
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 13
  IF ~~ THEN REPLY @32 GOTO 4
  IF ~~ THEN REPLY @33 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @34
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY @35
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: DDMINSC:0.0
  SAY @36
  IF ~~ THEN REPLY @9 DO ~SetGlobal("tz_DD_vagabond","DD0119",2)~ GOTO 3
  IF ~~ THEN REPLY @10 DO ~SetGlobal("tz_DD_vagabond","DD0119",2)~ GOTO 4
  IF ~~ THEN REPLY @11 DO ~SetGlobal("tz_DD_vagabond","DD0119",2)~ GOTO 7
END

IF ~~ THEN BEGIN 16 // from: 1.2
  SAY @37
  IF ~~ THEN EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 17
  SAY @38
  IF ~~ THEN DO ~TakePartyGold(125)~ EXIT
END
