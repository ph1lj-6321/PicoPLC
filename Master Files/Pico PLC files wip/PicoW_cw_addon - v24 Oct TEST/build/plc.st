TYPE
  LOGLEVEL : (CRITICAL, WARNING, INFO, DEBUG) := INFO;
END_TYPE

FUNCTION_BLOCK LOGGER
  VAR_INPUT
    TRIG : BOOL;
    MSG : STRING;
    LEVEL : LOGLEVEL := INFO;
  END_VAR
  VAR
    TRIG0 : BOOL;
  END_VAR

  IF TRIG AND NOT TRIG0 THEN
  {{
   LogMessage(GetFbVar(LEVEL),(char*)GetFbVar(MSG, .body),GetFbVar(MSG, .len));
  }}
  END_IF;
  TRIG0:=TRIG;
END_FUNCTION_BLOCK


PROGRAM program0
  VAR
    Inp0 AT %IX0.0 : BOOL;
    Inp1 AT %IX0.1 : BOOL;
    Inp2 AT %IX0.2 : BOOL;
    Inp3 AT %IX0.3 : BOOL;
    Inp4 AT %IX0.4 : BOOL;
    Inp5 AT %IX0.5 : BOOL;
    Inp6 AT %IX0.6 : BOOL;
    Inp7 AT %IX0.7 : BOOL;
    Ana0 AT %IW0 : UINT := 0;
    Ana1 AT %IW1 : UINT := 0;
    Out1 AT %QX0.1 : BOOL;
    Out2 AT %QX0.2 : BOOL;
    Out3 AT %QX0.3 : BOOL;
    Out4 AT %QX0.4 : BOOL;
    Out5 AT %QX0.5 : BOOL;
    Out6 AT %QX0.6 : BOOL;
    Out7 AT %QX0.7 : BOOL;
  END_VAR
  VAR
    Cval0 : INT := 0;
    Cval1 : INT := 0;
  END_VAR
  VAR
    Aout0 AT %QW0 : UINT := 60000;
    Aout3 AT %QW3 : INT;
  END_VAR
  VAR
    Cout : BOOL;
    TON0 : TON;
  END_VAR
  VAR
    Out0 AT %QX0.0 : BOOL;
  END_VAR
  VAR
    TOF0 : TOF;
    CTU0 : CTU;
    Val1 : USINT;
    Val2 : USINT;
    Val3 : USINT;
    Val4 : USINT;
    Val5 : USINT;
    _TMP_GT3_OUT : BOOL;
    R_TRIG1 : R_TRIG;
  END_VAR

  _TMP_GT3_OUT := GT(Ana0, 400);
  Out2 := _TMP_GT3_OUT;
  Out0 := Inp0;
  TON0(IN := NOT(Out3), PT := T#480ms);
  TOF0(IN := TON0.Q, PT := T#480ms);
  Out3 := TOF0.Q;
  Out1 := Inp1;
  Out4 := Inp4;
  Out5 := Inp5;
  R_TRIG1(CLK := Out3);
  CTU0(CU := R_TRIG1.Q, R := Cout, PV := 20);
  Cval0 := CTU0.CV;
  Cout := CTU0.Q;
  Out6 := Inp6;
  Out7 := Inp7;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
