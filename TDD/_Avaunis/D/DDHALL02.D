BEGIN ~DDHALL02~

IF ~~ THEN BEGIN 0 // from: DDHALL03:0.0
  SAY @0
  IF ~~ THEN DO ~EscapeAreaDestroy(2)~ EXIT
END
