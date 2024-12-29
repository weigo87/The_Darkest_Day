BEGIN ~XZARTHXB~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr","xzardd")
CreateVisualEffectObject("spdimndr","Montydd")
LeaveParty()
Wait(1)
ActionOverride("xzardd",DestroySelf())
ActionOverride("Montydd",DestroySelf())~ EXIT
END
