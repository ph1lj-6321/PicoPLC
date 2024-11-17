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
  END_VAR
  VAR_EXTERNAL
    Inp0A : BOOL;
    Inp1A : BOOL;
    Inp2A : BOOL;
    Inp3A : BOOL;
    Inp4A : BOOL;
    Inp5A : BOOL;
    Inp6A : BOOL;
    Inp7A : BOOL;
  END_VAR
  VAR
    Ana0 AT %IW0 : UINT := 0;
    Ana1 AT %IW1 : UINT := 0;
  END_VAR
  VAR_EXTERNAL
    Val1 : UINT;
    Val2 : UINT;
  END_VAR
  VAR
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
  VAR_EXTERNAL
    Val3 : UINT;
    Val4 : UINT;
    Val5 : UINT;
  END_VAR
  VAR
    Aout0 AT %QW0 : UINT := 60000;
    Aout3 AT %QW3 : INT;
  END_VAR
  VAR
    Cout : BOOL;
  END_VAR
  VAR_EXTERNAL
    Out0A : BOOL;
    Out1A : BOOL;
    Out2A : BOOL;
    Out3A : BOOL;
    Out4A : BOOL;
    Out5A : BOOL;
    Out6A : BOOL;
    Out7A : BOOL;
  END_VAR
  VAR
    TON0 : TON;
  END_VAR
  VAR
    Out0 AT %QX0.0 : BOOL;
  END_VAR
  VAR
    TOF0 : TOF;
    CTU0 : CTU;
    _TMP_GT3_OUT : BOOL;
    _TMP_MOVE12_OUT : UINT;
    _TMP_MOVE32_OUT : BOOL;
    _TMP_MOVE36_OUT : BOOL;
    _TMP_MOVE39_OUT : BOOL;
    _TMP_MOVE42_OUT : BOOL;
    _TMP_MOVE10_OUT : BOOL;
    _TMP_MOVE15_OUT : BOOL;
    _TMP_MOVE27_OUT : BOOL;
    _TMP_MOVE46_OUT : BOOL;
    _TMP_MOVE50_OUT : BOOL;
    _TMP_MOVE53_OUT : BOOL;
    _TMP_MOVE56_OUT : BOOL;
    _TMP_MOVE59_OUT : BOOL;
    _TMP_MOVE62_OUT : BOOL;
    _TMP_MOVE65_OUT : BOOL;
    _TMP_MOVE68_OUT : BOOL;
    _TMP_MOVE71_OUT : BOOL;
    R_TRIG1 : R_TRIG;
    _TMP_INT_TO_UINT93_OUT : UINT;
    _TMP_MOVE98_OUT : UINT;
    _TMP_INT_TO_UINT101_OUT : UINT;
    _TMP_MOVE103_OUT : UINT;
    _TMP_DIV105_OUT : UINT;
    _TMP_MOVE108_OUT : INT;
  END_VAR

  _TMP_GT3_OUT := GT(Ana0, 600);
  Out2 := _TMP_GT3_OUT;
  Out0 := Inp0;
  _TMP_MOVE12_OUT := MOVE(Ana0);
  Val1 := _TMP_MOVE12_OUT;
  TON0(IN := NOT(Out3), PT := T#480ms);
  TOF0(IN := TON0.Q, PT := T#480ms);
  Out3 := TOF0.Q;
  _TMP_MOVE32_OUT := MOVE(Inp0);
  Inp0A := _TMP_MOVE32_OUT;
  _TMP_MOVE36_OUT := MOVE(Inp1);
  Inp1A := _TMP_MOVE36_OUT;
  _TMP_MOVE39_OUT := MOVE(Inp2);
  Inp2A := _TMP_MOVE39_OUT;
  _TMP_MOVE42_OUT := MOVE(Inp3);
  Inp3A := _TMP_MOVE42_OUT;
  _TMP_MOVE10_OUT := MOVE(Inp7);
  Inp7A := _TMP_MOVE10_OUT;
  _TMP_MOVE15_OUT := MOVE(Inp4);
  Inp4A := _TMP_MOVE15_OUT;
  _TMP_MOVE27_OUT := MOVE(Inp5);
  Inp5A := _TMP_MOVE27_OUT;
  _TMP_MOVE46_OUT := MOVE(Inp6);
  Inp6A := _TMP_MOVE46_OUT;
  _TMP_MOVE50_OUT := MOVE(Out0);
  Out0A := _TMP_MOVE50_OUT;
  _TMP_MOVE53_OUT := MOVE(Out1);
  Out1A := _TMP_MOVE53_OUT;
  _TMP_MOVE56_OUT := MOVE(Out1);
  Out2A := _TMP_MOVE56_OUT;
  _TMP_MOVE59_OUT := MOVE(Out2);
  Out3A := _TMP_MOVE59_OUT;
  _TMP_MOVE62_OUT := MOVE(Out6);
  Out7A := _TMP_MOVE62_OUT;
  _TMP_MOVE65_OUT := MOVE(Out3);
  Out4A := _TMP_MOVE65_OUT;
  _TMP_MOVE68_OUT := MOVE(Out4);
  Out5A := _TMP_MOVE68_OUT;
  _TMP_MOVE71_OUT := MOVE(Out5);
  Out6A := _TMP_MOVE71_OUT;
  Out1 := Inp1;
  Out4 := Inp4;
  Out5 := Inp5;
  R_TRIG1(CLK := Out3);
  CTU0(CU := R_TRIG1.Q, R := Cout, PV := 20);
  Cval0 := CTU0.CV;
  Cout := CTU0.Q;
  _TMP_INT_TO_UINT93_OUT := INT_TO_UINT(Cval0);
  Val3 := _TMP_INT_TO_UINT93_OUT;
  Out6 := Inp6;
  Out7 := Inp7;
  _TMP_MOVE98_OUT := MOVE(0);
  Val2 := _TMP_MOVE98_OUT;
  _TMP_INT_TO_UINT101_OUT := INT_TO_UINT(0);
  Val4 := _TMP_INT_TO_UINT101_OUT;
  _TMP_MOVE103_OUT := MOVE(Aout0);
  _TMP_DIV105_OUT := DIV(_TMP_MOVE103_OUT, 64);
  Val5 := _TMP_DIV105_OUT;
  _TMP_MOVE108_OUT := MOVE(Cval0);
  Aout3 := _TMP_MOVE108_OUT;
END_PROGRAM


CONFIGURATION Config0
  VAR_GLOBAL
    Val1 : UINT;
    Val2 : UINT;
    Val3 : UINT;
    Val4 : UINT;
    Val5 : UINT;
    Inp0A : BOOL;
    Inp1A : BOOL;
    Inp2A : BOOL;
    Inp3A : BOOL;
    Inp4A : BOOL;
    Inp5A : BOOL;
    Inp6A : BOOL;
    Inp7A : BOOL;
    Out1A : BOOL;
    Out2A : BOOL;
    Out3A : BOOL;
    Out4A : BOOL;
    Out5A : BOOL;
    Out6A : BOOL;
    Out0A : BOOL;
    Out7A : BOOL;
  END_VAR

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION

(*DBG:char md5[] = "7c54395de93e58ff5ba5a3f7acd57ac3";*)
(*DBG:/**)
(*DBG: * This file is part of OpenPLC Runtime*)
(*DBG: **)
(*DBG: * Copyright (C) 2023 Autonomy, GP Orcullo*)
(*DBG: * Based on the work by GP Orcullo on Beremiz for uC*)
(*DBG: **)
(*DBG: * This program is free software; you can redistribute it and/or*)
(*DBG: * modify it under the terms of the GNU General Public License*)
(*DBG: * as published by the Free Software Foundation; either version 2*)
(*DBG: * of the License, or (at your option) any later version.*)
(*DBG: **)
(*DBG: * This program is distributed in the hope that it will be useful,*)
(*DBG: * but WITHOUT ANY WARRANTY; without even the implied warranty of*)
(*DBG: * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the*)
(*DBG: * GNU General Public License for more details.*)
(*DBG: **)
(*DBG: * You should have received a copy of the GNU General Public License*)
(*DBG: * along with this program; If not, see <http://www.gnu.org/licenses/>.*)
(*DBG: **)
(*DBG: */*)
(*DBG:*)
(*DBG:#include <stdbool.h>*)
(*DBG:*)
(*DBG:#include "iec_types_all.h"*)
(*DBG:#include "POUS.h"*)
(*DBG:*)
(*DBG:#define SAME_ENDIANNESS      0*)
(*DBG:#define REVERSE_ENDIANNESS   1*)
(*DBG:*)
(*DBG:uint8_t endianness;*)
(*DBG:*)
(*DBG:*)
(*DBG:extern __IEC_UINT_t CONFIG0__VAL1;*)
(*DBG:extern __IEC_UINT_t CONFIG0__VAL2;*)
(*DBG:extern __IEC_UINT_t CONFIG0__VAL3;*)
(*DBG:extern __IEC_UINT_t CONFIG0__VAL4;*)
(*DBG:extern __IEC_UINT_t CONFIG0__VAL5;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__INP0A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__INP1A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__INP2A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__INP3A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__INP4A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__INP5A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__INP6A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__INP7A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__OUT1A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__OUT2A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__OUT3A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__OUT4A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__OUT5A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__OUT6A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__OUT0A;*)
(*DBG:extern __IEC_BOOL_t CONFIG0__OUT7A;*)
(*DBG:extern PROGRAM0 RES0__INSTANCE0;*)
(*DBG:*)
(*DBG:static const struct {*)
(*DBG:    void *ptr;*)
(*DBG:    __IEC_types_enum type;*)
(*DBG:} debug_vars[] = {*)
(*DBG:    {&(CONFIG0__VAL1), UINT_ENUM},*)
(*DBG:    {&(CONFIG0__VAL2), UINT_ENUM},*)
(*DBG:    {&(CONFIG0__VAL3), UINT_ENUM},*)
(*DBG:    {&(CONFIG0__VAL4), UINT_ENUM},*)
(*DBG:    {&(CONFIG0__VAL5), UINT_ENUM},*)
(*DBG:    {&(CONFIG0__INP0A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__INP1A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__INP2A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__INP3A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__INP4A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__INP5A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__INP6A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__INP7A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__OUT1A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__OUT2A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__OUT3A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__OUT4A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__OUT5A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__OUT6A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__OUT0A), BOOL_ENUM},*)
(*DBG:    {&(CONFIG0__OUT7A), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP0), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP1), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP2), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP3), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP4), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP5), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP6), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP7), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP0A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP1A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP2A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP3A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP4A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP5A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP6A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.INP7A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.ANA0), UINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.ANA1), UINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.VAL1), UINT_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.VAL2), UINT_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT1), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT2), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT3), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT4), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT5), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT6), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT7), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CVAL0), INT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CVAL1), INT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.VAL3), UINT_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.VAL4), UINT_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.VAL5), UINT_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.AOUT0), UINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.AOUT3), INT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.COUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT0A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT1A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT2A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT3A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT4A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT5A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT6A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT7A), BOOL_P_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TON0.EN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TON0.ENO), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TON0.IN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TON0.PT), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TON0.Q), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TON0.ET), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TON0.STATE), SINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TON0.PREV_IN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TON0.CURRENT_TIME), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TON0.START_TIME), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.OUT0), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TOF0.EN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TOF0.ENO), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TOF0.IN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TOF0.PT), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TOF0.Q), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TOF0.ET), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TOF0.STATE), SINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TOF0.PREV_IN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TOF0.CURRENT_TIME), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.TOF0.START_TIME), TIME_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CTU0.EN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CTU0.ENO), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CTU0.CU), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CTU0.R), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CTU0.PV), INT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CTU0.Q), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CTU0.CV), INT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CTU0.CU_T.EN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CTU0.CU_T.ENO), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CTU0.CU_T.CLK), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CTU0.CU_T.Q), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.CTU0.CU_T.M), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_GT3_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE12_OUT), UINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE32_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE36_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE39_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE42_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE10_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE15_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE27_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE46_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE50_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE53_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE56_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE59_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE62_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE65_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE68_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE71_OUT), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.R_TRIG1.EN), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.R_TRIG1.ENO), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.R_TRIG1.CLK), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.R_TRIG1.Q), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0.R_TRIG1.M), BOOL_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_INT_TO_UINT93_OUT), UINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE98_OUT), UINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_INT_TO_UINT101_OUT), UINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE103_OUT), UINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_DIV105_OUT), UINT_ENUM},*)
(*DBG:    {&(RES0__INSTANCE0._TMP_MOVE108_OUT), INT_ENUM},*)
(*DBG:};*)
(*DBG:*)
(*DBG:#define VAR_COUNT               126*)
(*DBG:*)
(*DBG:uint16_t get_var_count(void)*)
(*DBG:{*)
(*DBG:    return VAR_COUNT;*)
(*DBG:}*)
(*DBG:*)
(*DBG:size_t get_var_size(size_t idx)*)
(*DBG:{*)
(*DBG:    if (idx >= VAR_COUNT)*)
(*DBG:    {*)
(*DBG:        return 0;*)
(*DBG:    }*)
(*DBG:    switch (debug_vars[idx].type) {*)
(*DBG:    case UINT_ENUM:*)
(*DBG:    case UINT_P_ENUM:*)
(*DBG:        return sizeof(UINT);*)
(*DBG:    case TIME_ENUM:*)
(*DBG:        return sizeof(TIME);*)
(*DBG:    case SINT_ENUM:*)
(*DBG:        return sizeof(SINT);*)
(*DBG:    case INT_ENUM:*)
(*DBG:        return sizeof(INT);*)
(*DBG:    case BOOL_ENUM:*)
(*DBG:    case BOOL_P_ENUM:*)
(*DBG:        return sizeof(BOOL);*)
(*DBG:    default:*)
(*DBG:        return 0;*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)
(*DBG:void *get_var_addr(size_t idx)*)
(*DBG:{*)
(*DBG:    void *ptr = debug_vars[idx].ptr;*)
(*DBG:*)
(*DBG:    switch (debug_vars[idx].type) {*)
(*DBG:    case UINT_ENUM:*)
(*DBG:        return (void *)&((__IEC_UINT_t *) ptr)->value;*)
(*DBG:    case UINT_P_ENUM:*)
(*DBG:        return (void *)((((__IEC_UINT_p *) ptr)->flags & __IEC_FORCE_FLAG) *)
(*DBG:                        ? &(((__IEC_UINT_p *) ptr)->fvalue) *)
(*DBG:                        : ((__IEC_UINT_p *) ptr)->value);*)
(*DBG:    case TIME_ENUM:*)
(*DBG:        return (void *)&((__IEC_TIME_t *) ptr)->value;*)
(*DBG:    case SINT_ENUM:*)
(*DBG:        return (void *)&((__IEC_SINT_t *) ptr)->value;*)
(*DBG:    case INT_ENUM:*)
(*DBG:        return (void *)&((__IEC_INT_t *) ptr)->value;*)
(*DBG:    case BOOL_ENUM:*)
(*DBG:        return (void *)&((__IEC_BOOL_t *) ptr)->value;*)
(*DBG:    case BOOL_P_ENUM:*)
(*DBG:        return (void *)((((__IEC_BOOL_p *) ptr)->flags & __IEC_FORCE_FLAG) *)
(*DBG:                        ? &(((__IEC_BOOL_p *) ptr)->fvalue) *)
(*DBG:                        : ((__IEC_BOOL_p *) ptr)->value);*)
(*DBG:    default:*)
(*DBG:        return 0;*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)
(*DBG:void force_var(size_t idx, bool forced, void *val)*)
(*DBG:{*)
(*DBG:    void *ptr = debug_vars[idx].ptr;*)
(*DBG:*)
(*DBG:    if (forced) {*)
(*DBG:        size_t var_size = get_var_size(idx);*)
(*DBG:        switch (debug_vars[idx].type) {*)
(*DBG:        case UINT_ENUM: {*)
(*DBG:            memcpy(&((__IEC_UINT_t *) ptr)->value, val, var_size);*)
(*DBG:            //((__IEC_UINT_t *) ptr)->value = *((UINT *) val);*)
(*DBG:            ((__IEC_UINT_t *) ptr)->flags |= __IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:        case UINT_P_ENUM: {*)
(*DBG:            memcpy(&((__IEC_UINT_p *) ptr)->fvalue, val, var_size);*)
(*DBG:            //((__IEC_UINT_p *) ptr)->fvalue = *((UINT *) val);*)
(*DBG:            ((__IEC_UINT_p *) ptr)->flags |= __IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:        case TIME_ENUM: {*)
(*DBG:            memcpy(&((__IEC_TIME_t *) ptr)->value, val, var_size);*)
(*DBG:            //((__IEC_TIME_t *) ptr)->value = *((TIME *) val);*)
(*DBG:            ((__IEC_TIME_t *) ptr)->flags |= __IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:        case SINT_ENUM: {*)
(*DBG:            memcpy(&((__IEC_SINT_t *) ptr)->value, val, var_size);*)
(*DBG:            //((__IEC_SINT_t *) ptr)->value = *((SINT *) val);*)
(*DBG:            ((__IEC_SINT_t *) ptr)->flags |= __IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:        case INT_ENUM: {*)
(*DBG:            memcpy(&((__IEC_INT_t *) ptr)->value, val, var_size);*)
(*DBG:            //((__IEC_INT_t *) ptr)->value = *((INT *) val);*)
(*DBG:            ((__IEC_INT_t *) ptr)->flags |= __IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:        case BOOL_ENUM: {*)
(*DBG:            memcpy(&((__IEC_BOOL_t *) ptr)->value, val, var_size);*)
(*DBG:            //((__IEC_BOOL_t *) ptr)->value = *((BOOL *) val);*)
(*DBG:            ((__IEC_BOOL_t *) ptr)->flags |= __IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:        case BOOL_P_ENUM: {*)
(*DBG:            memcpy(&((__IEC_BOOL_p *) ptr)->fvalue, val, var_size);*)
(*DBG:            //((__IEC_BOOL_p *) ptr)->fvalue = *((BOOL *) val);*)
(*DBG:            ((__IEC_BOOL_p *) ptr)->flags |= __IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:        default:*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:    } else {*)
(*DBG:        switch (debug_vars[idx].type) {*)
(*DBG:        case UINT_ENUM:*)
(*DBG:            ((__IEC_UINT_t *) ptr)->flags &= ~__IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        case UINT_P_ENUM:*)
(*DBG:            ((__IEC_UINT_p *) ptr)->flags &= ~__IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        case TIME_ENUM:*)
(*DBG:            ((__IEC_TIME_t *) ptr)->flags &= ~__IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        case SINT_ENUM:*)
(*DBG:            ((__IEC_SINT_t *) ptr)->flags &= ~__IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        case INT_ENUM:*)
(*DBG:            ((__IEC_INT_t *) ptr)->flags &= ~__IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        case BOOL_ENUM:*)
(*DBG:            ((__IEC_BOOL_t *) ptr)->flags &= ~__IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        case BOOL_P_ENUM:*)
(*DBG:            ((__IEC_BOOL_p *) ptr)->flags &= ~__IEC_FORCE_FLAG;*)
(*DBG:            break;*)
(*DBG:        default:*)
(*DBG:            break;*)
(*DBG:        }*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)
(*DBG:void swap_bytes(void *ptr, size_t size) *)
(*DBG:{*)
(*DBG:    uint8_t *bytePtr = (uint8_t *)ptr;*)
(*DBG:    size_t i;*)
(*DBG:    for (i = 0; i < size / 2; ++i) *)
(*DBG:    {*)
(*DBG:        uint8_t temp = bytePtr[i];*)
(*DBG:        bytePtr[i] = bytePtr[size - 1 - i];*)
(*DBG:        bytePtr[size - 1 - i] = temp;*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)
(*DBG:void trace_reset(void)*)
(*DBG:{*)
(*DBG:    for (size_t i=0; i < VAR_COUNT; i++) *)
(*DBG:    {*)
(*DBG:        force_var(i, false, 0);*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)
(*DBG:void set_trace(size_t idx, bool forced, void *val)*)
(*DBG:{*)
(*DBG:    if (idx >= 0 && idx < VAR_COUNT) *)
(*DBG:    {*)
(*DBG:        if (endianness == REVERSE_ENDIANNESS)*)
(*DBG:        {*)
(*DBG:            // Aaaaarghhhh... Stupid AVR is Big Endian.*)
(*DBG:            swap_bytes(val, get_var_size(idx));*)
(*DBG:        }*)
(*DBG:*)
(*DBG:        force_var(idx, forced, val);*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)
(*DBG:void set_endianness(uint8_t value)*)
(*DBG:{*)
(*DBG:    if (value == SAME_ENDIANNESS || value == REVERSE_ENDIANNESS)*)
(*DBG:    {*)
(*DBG:        endianness = value;*)
(*DBG:    }*)
(*DBG:}*)
(*DBG:*)