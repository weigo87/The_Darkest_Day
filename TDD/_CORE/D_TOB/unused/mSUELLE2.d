REPLACE_TRIGGER_TEXT ~SUELLE2~ ~True()~ ~Global("TalkEllesime","GLOBAL",0)~
//ADD_TRANS_ACTION ~SUELLE2~ BEGIN 18 END BEGIN 0 1 END ~SetGlobal("TalkEllesime","GLOBAL",1)~

REPLACE ~SUELLE2~

IF ~~ THEN BEGIN 17
  SAY @0  /* #55254 */
  IF ~~ THEN GOTO s21
END

END


APPEND ~SUELLE2~

//IF ~Global("TalkEllesime","GLOBAL",1)~ THEN BEGIN 21
IF ~~ THEN BEGIN s21
  SAY @1
  IF ~~ THEN GOTO s22
END

IF ~~ THEN BEGIN s22
  SAY @2
  IF ~~ THEN REPLY @3 GOTO s23
  IF ~~ THEN REPLY @4 GOTO s23
  IF ~~ THEN REPLY @5 GOTO s24
  IF ~~ THEN REPLY @6 GOTO s25
END

IF ~~ THEN BEGIN s23
  SAY @7
  IF ~!AreaCheckObject("AR2800",Player1)~ THEN DO ~SetGlobal("TalkEllesime","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("DDwarp01")~ EXIT
  IF ~AreaCheckObject("AR2800",Player1)~ THEN DO ~SetGlobal("TalkEllesime","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("DDwarp02")~ EXIT
END

IF ~~ THEN BEGIN s24
  SAY @8
  IF ~~ THEN DO ~SetGlobal("TalkEllesime","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN s25
  SAY @9
  IF ~~ THEN DO ~SetGlobal("TalkEllesime","GLOBAL",2)~ EXIT
END

IF ~Global("TalkEllesime","GLOBAL",2)~ THEN BEGIN s26
  SAY @10
  IF ~~ THEN REPLY @11 GOTO s23
  IF ~~ THEN REPLY @12 EXIT
END

IF ~Global("TalkEllesime","GLOBAL",3)~ THEN BEGIN s27
  SAY @13
  IF ~~ THEN REPLY @14 GOTO s28
  IF ~~ THEN REPLY @15 GOTO s29
  IF ~~ THEN REPLY @16 GOTO s30
END

IF ~~ THEN BEGIN s28
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s29
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s30
  SAY @19
  IF ~~ THEN EXIT
END

END
