BEGIN ~DDMINSC~

IF ~Global("tz_DD_vagabond","DD0119",1)
AreaCheck("DD0119")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("tz_DD_vagabond","DD0119",2)~ EXTERN ~DDVAGABO~ 15
END

IF ~Global("tz_DD_kuiriel","DD0119",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("tz_DD_kuiriel","DD0119",2)~ EXIT
END
