void LOGGER_init__(LOGGER *data__, BOOL retain) {
  __INIT_VAR(data__->EN,__BOOL_LITERAL(TRUE),retain)
  __INIT_VAR(data__->ENO,__BOOL_LITERAL(TRUE),retain)
  __INIT_VAR(data__->TRIG,__BOOL_LITERAL(FALSE),retain)
  __INIT_VAR(data__->MSG,__STRING_LITERAL(0,""),retain)
  __INIT_VAR(data__->LEVEL,LOGLEVEL__INFO,retain)
  __INIT_VAR(data__->TRIG0,__BOOL_LITERAL(FALSE),retain)
}

// Code part
void LOGGER_body__(LOGGER *data__) {
  // Control execution
  if (!__GET_VAR(data__->EN)) {
    __SET_VAR(data__->,ENO,,__BOOL_LITERAL(FALSE));
    return;
  }
  else {
    __SET_VAR(data__->,ENO,,__BOOL_LITERAL(TRUE));
  }
  // Initialise TEMP variables

  if ((__GET_VAR(data__->TRIG,) && !(__GET_VAR(data__->TRIG0,)))) {
    #define GetFbVar(var,...) __GET_VAR(data__->var,__VA_ARGS__)
    #define SetFbVar(var,val,...) __SET_VAR(data__->,var,__VA_ARGS__,val)

   LogMessage(GetFbVar(LEVEL),(char*)GetFbVar(MSG, .body),GetFbVar(MSG, .len));
  
    #undef GetFbVar
    #undef SetFbVar
;
  };
  __SET_VAR(data__->,TRIG0,,__GET_VAR(data__->TRIG,));

  goto __end;

__end:
  return;
} // LOGGER_body__() 





void PROGRAM0_init__(PROGRAM0 *data__, BOOL retain) {
  __INIT_LOCATED(BOOL,__IX0_0,data__->INP0,retain)
  __INIT_LOCATED_VALUE(data__->INP0,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__IX0_1,data__->INP1,retain)
  __INIT_LOCATED_VALUE(data__->INP1,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__IX0_2,data__->INP2,retain)
  __INIT_LOCATED_VALUE(data__->INP2,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__IX0_3,data__->INP3,retain)
  __INIT_LOCATED_VALUE(data__->INP3,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__IX0_4,data__->INP4,retain)
  __INIT_LOCATED_VALUE(data__->INP4,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__IX0_5,data__->INP5,retain)
  __INIT_LOCATED_VALUE(data__->INP5,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__IX0_6,data__->INP6,retain)
  __INIT_LOCATED_VALUE(data__->INP6,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__IX0_7,data__->INP7,retain)
  __INIT_LOCATED_VALUE(data__->INP7,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(UINT,__IW0,data__->ANA0,retain)
  __INIT_LOCATED_VALUE(data__->ANA0,0)
  __INIT_LOCATED(UINT,__IW1,data__->ANA1,retain)
  __INIT_LOCATED_VALUE(data__->ANA1,0)
  __INIT_LOCATED(BOOL,__QX0_1,data__->OUT1,retain)
  __INIT_LOCATED_VALUE(data__->OUT1,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__QX0_2,data__->OUT2,retain)
  __INIT_LOCATED_VALUE(data__->OUT2,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__QX0_3,data__->OUT3,retain)
  __INIT_LOCATED_VALUE(data__->OUT3,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__QX0_4,data__->OUT4,retain)
  __INIT_LOCATED_VALUE(data__->OUT4,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__QX0_5,data__->OUT5,retain)
  __INIT_LOCATED_VALUE(data__->OUT5,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__QX0_6,data__->OUT6,retain)
  __INIT_LOCATED_VALUE(data__->OUT6,__BOOL_LITERAL(FALSE))
  __INIT_LOCATED(BOOL,__QX0_7,data__->OUT7,retain)
  __INIT_LOCATED_VALUE(data__->OUT7,__BOOL_LITERAL(FALSE))
  __INIT_VAR(data__->CVAL0,0,retain)
  __INIT_VAR(data__->CVAL1,0,retain)
  __INIT_LOCATED(UINT,__QW0,data__->AOUT0,retain)
  __INIT_LOCATED_VALUE(data__->AOUT0,60000)
  __INIT_LOCATED(INT,__QW3,data__->AOUT3,retain)
  __INIT_LOCATED_VALUE(data__->AOUT3,0)
  __INIT_VAR(data__->COUT,__BOOL_LITERAL(FALSE),retain)
  TON_init__(&data__->TON0,retain);
  __INIT_LOCATED(BOOL,__QX0_0,data__->OUT0,retain)
  __INIT_LOCATED_VALUE(data__->OUT0,__BOOL_LITERAL(FALSE))
  TOF_init__(&data__->TOF0,retain);
  CTU_init__(&data__->CTU0,retain);
  __INIT_VAR(data__->VAL1,0,retain)
  __INIT_VAR(data__->VAL2,0,retain)
  __INIT_VAR(data__->VAL3,0,retain)
  __INIT_VAR(data__->VAL4,0,retain)
  __INIT_VAR(data__->VAL5,0,retain)
  __INIT_VAR(data__->_TMP_GT3_OUT,__BOOL_LITERAL(FALSE),retain)
  R_TRIG_init__(&data__->R_TRIG1,retain);
}

// Code part
void PROGRAM0_body__(PROGRAM0 *data__) {
  // Initialise TEMP variables

  __SET_VAR(data__->,_TMP_GT3_OUT,,GT__BOOL__UINT(
    (BOOL)__BOOL_LITERAL(TRUE),
    NULL,
    (UINT)2,
    (UINT)__GET_LOCATED(data__->ANA0,),
    (UINT)400));
  __SET_LOCATED(data__->,OUT2,,__GET_VAR(data__->_TMP_GT3_OUT,));
  __SET_LOCATED(data__->,OUT0,,__GET_LOCATED(data__->INP0,));
  __SET_VAR(data__->TON0.,IN,,!(__GET_LOCATED(data__->OUT3,)));
  __SET_VAR(data__->TON0.,PT,,__time_to_timespec(1, 480, 0, 0, 0, 0));
  TON_body__(&data__->TON0);
  __SET_VAR(data__->TOF0.,IN,,__GET_VAR(data__->TON0.Q,));
  __SET_VAR(data__->TOF0.,PT,,__time_to_timespec(1, 480, 0, 0, 0, 0));
  TOF_body__(&data__->TOF0);
  __SET_LOCATED(data__->,OUT3,,__GET_VAR(data__->TOF0.Q,));
  __SET_LOCATED(data__->,OUT1,,__GET_LOCATED(data__->INP1,));
  __SET_LOCATED(data__->,OUT4,,__GET_LOCATED(data__->INP4,));
  __SET_LOCATED(data__->,OUT5,,__GET_LOCATED(data__->INP5,));
  __SET_VAR(data__->R_TRIG1.,CLK,,__GET_LOCATED(data__->OUT3,));
  R_TRIG_body__(&data__->R_TRIG1);
  __SET_VAR(data__->CTU0.,CU,,__GET_VAR(data__->R_TRIG1.Q,));
  __SET_VAR(data__->CTU0.,R,,__GET_VAR(data__->COUT,));
  __SET_VAR(data__->CTU0.,PV,,20);
  CTU_body__(&data__->CTU0);
  __SET_VAR(data__->,CVAL0,,__GET_VAR(data__->CTU0.CV,));
  __SET_VAR(data__->,COUT,,__GET_VAR(data__->CTU0.Q,));
  __SET_LOCATED(data__->,OUT6,,__GET_LOCATED(data__->INP6,));
  __SET_LOCATED(data__->,OUT7,,__GET_LOCATED(data__->INP7,));

  goto __end;

__end:
  return;
} // PROGRAM0_body__() 





