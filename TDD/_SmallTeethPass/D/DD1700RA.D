BEGIN ~DD1700RA~

IF ~Global("tz_DD_party_talk","AR1700",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("tz_DD_party_talk","AR1700",1)~ EXTERN ~DD1700CL~ 0
END

IF ~~ THEN BEGIN 1 // from: DD1700CL:0.0
  SAY @1
  IF ~~ THEN EXTERN ~DD1700CL~ 1
END

IF ~~ THEN BEGIN 2 // from: DD1700CL:1.0
  SAY @2
  IF ~~ THEN EXTERN ~DD1700CL~ 2
END

IF ~~ THEN BEGIN 3 // from: DD1700CL:2.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 20
  IF ~~ THEN REPLY @7 GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~Class(Player1,MAGE)
Gender(Player1,MALE)
OR(2)
  Race(PLAYER1,ELF)
  Race(PLAYER1,HALF_ELF)
~ THEN EXTERN ~DD1700CL~ 3
  IF ~OR(7)
!Class(Player1,MAGE)
!Gender(Player1,MALE)
Race(PLAYER1,HUMAN)
Race(PLAYER1,DWARF)
Race(PLAYER1,HALFLING)
Race(PLAYER1,GNOME)
Race(PLAYER1,HALFORC)~ THEN EXTERN ~DD1700CL~ 4
END

IF ~~ THEN BEGIN 5 // from: DD1700CL:4.0 20.1 3.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 22.1 5.1
  SAY @13
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @14
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @18
  IF ~~ THEN DO ~SetGlobal("tz_DD_1700party_move","GLOBAL",1)
GiveItemCreate("DDLETT01",Player1,0,0,0)
FadeToColor([30.0],0)
Wait(1)
ActionOverride("DD1700WI",DestroySelf())
ActionOverride("DD1700FI",DestroySelf())
ActionOverride("DD1700CL",DestroySelf())
ActionOverride("DD1700RA",DestroySelf())
Wait(1)
FadeFromColor([30.0],0)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 3.3
  SAY @19
  IF ~~ THEN DO ~GiveItemCreate("DDlett01",Myself,0,0,0)
ActionOverride("DD1700CL",Enemy())
ActionOverride("DD1700RA",Enemy())
ActionOverride("DD1700FI",Enemy())
ActionOverride("DD1700WI",Enemy())~ EXIT
END

IF ~Global("tz_DD_PO_quest","GLOBAL",1)
Global("tz_DD_1700party_move","GLOBAL",0)~ THEN BEGIN 12 // from: DD1700CL:3.0
  SAY @20
  IF ~CheckStatLT(LastTalkedToBy(),14,CHR)~ THEN DO ~SetGabber(Player1)~ GOTO 13
  IF ~CheckStatGT(LastTalkedToBy(),13,CHR)~ THEN DO ~SetGabber(Player1)~ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @21
  IF ~~ THEN DO ~GIveItemCreate("DDlett01",Myself,0,0,0)
ActionOverride("DD1700CL",Enemy())
ActionOverride("DD1700RA",Enemy())
ActionOverride("DD1700FI",Enemy())
ActionOverride("DD1700WI",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @25
  IF ~~ THEN DO ~GiveItemCreate("DDlett01",Myself,0,0,0)
ActionOverride("DD1700CL",Enemy())
ActionOverride("DD1700RA",Enemy())
ActionOverride("DD1700FI",Enemy())
ActionOverride("DD1700WI",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @26
  IF ~~ THEN DO ~GiveItemCreate("DDlett01",Myself,0,0,0)
SetGlobal("tz_DD_PO_quest","GLOBAL",2)
AddExperienceParty(DD1700RA_D_20000)
ActionOverride("DD1700CL",DropInventory())
ActionOverride("DD1700RA",DropInventory())
ActionOverride("DD1700WI",DropInventory())
ActionOverride("DD1700FI",DropInventory())
FadeToColor([30.0],0)
Wait(1)
ActionOverride("DD1700CL",DestroySelf())
ActionOverride("DD1700WI",DestroySelf())
ActionOverride("DD1700FI",DestroySelf())
ActionOverride("DD1700RA",DestroySelf())
Wait(1)
FadeFromColor([30.0],0)~ EXIT
END

IF ~Global("tz_DD_PO_quest","GLOBAL",1)
Global("tz_DD_1700party_move","GLOBAL",3)~ THEN BEGIN 17
  SAY @27
  IF ~Global("tz_DD_po_trap","GLOBAL",1)~ THEN REPLY @28 GOTO 18
  IF ~Global("tz_DD_po_trap","GLOBAL",2)~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @30 EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @31
  IF ~~ THEN DO ~SetGlobal("tz_DD_1700party_move","GLOBAL",4)
FadeToColor([30.0],0)
Wait(1)
ActionOverride("DD1700CL",DestroySelf())
ActionOverride("DD1700WI",DestroySelf())
ActionOverride("DD1700FI",DestroySelf())
ActionOverride("DD1700RA",DestroySelf())
Wait(1)
FadeFromColor([30.0],0)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY @31
  IF ~~ THEN DO ~SetGlobal("tz_DD_1700party_move","GLOBAL",5)
FadeToColor([30.0],0)
Wait(1)
ActionOverride("DD1700CL",DestroySelf())
ActionOverride("DD1700WI",DestroySelf())
ActionOverride("DD1700FI",DestroySelf())
ActionOverride("DD1700RA",DestroySelf())
Wait(1)
FadeFromColor([30.0],0)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.2
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 21
  IF ~~ THEN REPLY @34 GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 22
  IF ~~ THEN REPLY @37 GOTO 25
  IF ~~ THEN REPLY @38 GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @39
  IF ~~ THEN REPLY @10 GOTO 23
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.2
  SAY @40
  IF ~~ THEN DO ~GiveItemCreate("DDlett01",Myself,0,0,0)
ActionOverride("DD1700CL",Enemy())
ActionOverride("DD1700RA",Enemy())
ActionOverride("DD1700FI",Enemy())
ActionOverride("DD1700WI",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY @41
  IF ~~ THEN DO ~GIveItemCreate("DDlett01",Myself,0,0,0)
ActionOverride("DD1700CL",Enemy())
ActionOverride("DD1700RA",Enemy())
ActionOverride("DD1700FI",Enemy())
ActionOverride("DD1700WI",Enemy())~ EXIT
END
