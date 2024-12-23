BEGIN ~PSION4~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~PSIDARK1~ 0
END

IF ~~ THEN BEGIN 1 // from: PSIDARK1:0.0
  SAY @1
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("PSIcut03")~ EXIT
END
