BEGIN ~PSION3~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("tz_psion_destroy","DD0012",1)~ GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("tz_psion_destroy","DD0012",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("PSIcut01")~ EXIT
  IF ~~ THEN REPLY @5 DO ~SetGlobal("tz_psion_destroy","DD0012",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("PSIcut01")~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @4 DO ~SetGlobal("tz_psion_destroy","DD0012",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("PSIcut01")~ EXIT
  IF ~~ THEN REPLY @5 DO ~SetGlobal("tz_psion_destroy","DD0012",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("PSIcut01")~ EXIT
END
