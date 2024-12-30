BEGIN ~DDARNIE~

IF ~GlobalLT("tz_tackle","DD0118",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~GlobalLT("tz_tackle","DD0118",5)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~Kill(Myself)~ EXIT
END
