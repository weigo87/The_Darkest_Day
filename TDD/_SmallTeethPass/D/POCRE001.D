BEGIN ~POCRE001~

IF ~Global("tz_pc_knows_lake","AR1700",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN DO ~SetGlobal("tz_pc_knows_lake","AR1700",1)
AddMapNote([439.1479],@18)
AddMapNote([381.1010],@19)~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 7.1 5.0
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("tz_at_lake","AR1700",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("POcutlak")~ EXIT
  IF ~~ THEN REPLY @13 EXIT
END

IF ~Global("tz_pc_knows_lake","AR1700",1)~ THEN BEGIN 7
  SAY @14
  IF ~Global("tz_at_lake","AR1700",1)~ THEN GOTO 8
  IF ~Global("tz_at_lake","AR1700",0)~ THEN GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @15
  IF ~~ THEN REPLY @16 DO ~SetGlobal("tz_at_lake","AR1700",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("POcutla1")~ EXIT
  IF ~~ THEN REPLY @17 EXIT
END
