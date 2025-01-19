BEGIN ~BANKER01~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~PartyGoldGT(99)~ THEN REPLY @1 GOTO 1
  IF ~PartyGoldGT(49)~ THEN REPLY @2 GOTO 2
  IF ~PartyGoldGT(19)~ THEN REPLY @3 GOTO 3
  IF ~PartyGoldGT(9)~ THEN REPLY @4 GOTO 4
  IF ~PartyGoldGT(4)~ THEN REPLY @5 GOTO 5
  IF ~PartyGoldGT(0)~ THEN REPLY @6 GOTO 6
  IF ~PartyGoldGT(499)~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @10
  IF ~~ THEN DO ~IncrementGlobal("PartyBankBalance","GLOBAL",100)
TakePartyGold(100)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @11
  IF ~~ THEN DO ~IncrementGlobal("PartyBankBalance","GLOBAL",50)
TakePartyGold(50)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @12
  IF ~~ THEN DO ~IncrementGlobal("PartyBankBalance","GLOBAL",20)
TakePartyGold(20)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @13
  IF ~~ THEN DO ~IncrementGlobal("PartyBankBalance","GLOBAL",10)
TakePartyGold(10)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4
  SAY @14
  IF ~~ THEN DO ~IncrementGlobal("PartyBankBalance","GLOBAL",5)
TakePartyGold(5)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5
  SAY @15
  IF ~~ THEN DO ~IncrementGlobal("PartyBankBalance","GLOBAL",1)
TakePartyGold(1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.6
  SAY @16
  IF ~~ THEN DO ~IncrementGlobal("PartyBankBalance","GLOBAL",500)
TakePartyGold(500)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.7
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.8
  SAY @18
  IF ~~ THEN EXIT
END
