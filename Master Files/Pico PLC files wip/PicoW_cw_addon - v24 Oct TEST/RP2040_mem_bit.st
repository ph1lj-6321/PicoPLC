PROGRAM RP2040_mem_bit
  VAR
    Btn_On AT %IX0.0 : BOOL;
    Btn_Off AT %IX0.1 : BOOL;
    Led AT %QX0.0 : BOOL;
  END_VAR

  Led := NOT(Btn_Off) AND (Btn_On OR Led);
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : RP2040_mem_bit;
  END_RESOURCE
END_CONFIGURATION
