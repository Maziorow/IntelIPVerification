// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vquadra_top.h for the primary calling header

#ifndef VERILATED_VQUADRA_TOP___024ROOT_H_
#define VERILATED_VQUADRA_TOP___024ROOT_H_  // guard

#include "verilated.h"


class Vquadra_top__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vquadra_top___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst_b,0,0);
    VL_IN8(x_dv,0,0);
    VL_OUT8(y_dv,0,0);
    CData/*0:0*/ quadra_top__DOT__dv_p0;
    CData/*0:0*/ quadra_top__DOT__dv_p1;
    CData/*0:0*/ quadra_top__DOT__dv_p2;
    CData/*3:0*/ quadra_top__DOT__my_quadra__DOT__round_bits;
    CData/*0:0*/ quadra_top__DOT__my_quadra__DOT__round_bit;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    SData/*12:0*/ quadra_top__DOT__my_quadra__DOT__c;
    VL_IN(x,23,0);
    VL_OUT(y,24,0);
    IData/*28:0*/ quadra_top__DOT__my_quadra__DOT__s;
    IData/*23:0*/ quadra_top__DOT__my_quadra__DOT__a;
    IData/*18:0*/ quadra_top__DOT__my_quadra__DOT__b;
    IData/*23:0*/ quadra_top__DOT__my_quadra__DOT__stage1;
    IData/*27:0*/ quadra_top__DOT__my_quadra__DOT__stage3__BRA__86__03a59__KET__;
    IData/*29:0*/ quadra_top__DOT__my_quadra__DOT__stage3__BRA__58__03a29__KET__;
    IData/*28:0*/ quadra_top__DOT__my_quadra__DOT__stage3__BRA__28__03a0__KET__;
    IData/*30:0*/ quadra_top__DOT__my_quadra__DOT__sum;
    IData/*31:0*/ __VactIterCount;
    VlWide<4>/*96:0*/ quadra_top__DOT__my_quadra__DOT__stage2;
    QData/*36:0*/ quadra_top__DOT__my_quadra__DOT__t1_product;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vquadra_top__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vquadra_top___024root(Vquadra_top__Syms* symsp, const char* v__name);
    ~Vquadra_top___024root();
    VL_UNCOPYABLE(Vquadra_top___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
