// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vquadra_top.h for the primary calling header

#include "Vquadra_top__pch.h"
#include "Vquadra_top___024root.h"

void Vquadra_top___024root___eval_act(Vquadra_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vquadra_top___024root___eval_act\n"); );
    Vquadra_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vquadra_top___024root___nba_sequent__TOP__0(Vquadra_top___024root* vlSelf);

void Vquadra_top___024root___eval_nba(Vquadra_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vquadra_top___024root___eval_nba\n"); );
    Vquadra_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vquadra_top___024root___nba_sequent__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[1U] = 1U;
    }
}

extern const VlUnpacked<IData/*24:0*/, 128> Vquadra_top__ConstPool__TABLE_h7d1f8f95_0;
extern const VlUnpacked<IData/*18:0*/, 128> Vquadra_top__ConstPool__TABLE_hca834a7e_0;
extern const VlUnpacked<SData/*14:0*/, 128> Vquadra_top__ConstPool__TABLE_h28554c6e_0;

VL_INLINE_OPT void Vquadra_top___024root___nba_sequent__TOP__0(Vquadra_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vquadra_top___024root___nba_sequent__TOP__0\n"); );
    Vquadra_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*6:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    CData/*6:0*/ __Vtableidx2;
    __Vtableidx2 = 0;
    CData/*6:0*/ __Vtableidx3;
    __Vtableidx3 = 0;
    // Body
    vlSelfRef.quadra_top__DOT__dv_p2 = ((IData)(vlSelfRef.rst_b) 
                                        && (IData)(vlSelfRef.quadra_top__DOT__dv_p1));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[0U] 
        = ((0x1fffffffU & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[0U]) 
           | ((IData)((QData)((IData)((0xffffffU & (IData)(
                                                           (0x1ffffffULL 
                                                            & (VL_MULS_QQQ(37, 
                                                                           (0x1fffffffffULL 
                                                                            & VL_EXTENDS_QI(37,19, 
                                                                                (0x1ffffU 
                                                                                & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                                                                << 8U) 
                                                                                | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U] 
                                                                                >> 0x18U))))), 
                                                                           (0x1fffffffffULL 
                                                                            & VL_EXTENDS_QI(37,19, 
                                                                                (0x7ffffU 
                                                                                & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
                                                                                << 8U) 
                                                                                | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                                                                >> 0x18U)))))) 
                                                               >> 0xcU))))))) 
              << 0x1dU));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[1U] 
        = ((0x80000000U & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[1U]) 
           | (((IData)((QData)((IData)((0xffffffU & (IData)(
                                                            (0x1ffffffULL 
                                                             & (VL_MULS_QQQ(37, 
                                                                            (0x1fffffffffULL 
                                                                             & VL_EXTENDS_QI(37,19, 
                                                                                (0x1ffffU 
                                                                                & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                                                                << 8U) 
                                                                                | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U] 
                                                                                >> 0x18U))))), 
                                                                            (0x1fffffffffULL 
                                                                             & VL_EXTENDS_QI(37,19, 
                                                                                (0x7ffffU 
                                                                                & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
                                                                                << 8U) 
                                                                                | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                                                                >> 0x18U)))))) 
                                                                >> 0xcU))))))) 
               >> 3U) | ((IData)(((QData)((IData)((0xffffffU 
                                                   & (IData)(
                                                             (0x1ffffffULL 
                                                              & (VL_MULS_QQQ(37, 
                                                                             (0x1fffffffffULL 
                                                                              & VL_EXTENDS_QI(37,19, 
                                                                                (0x1ffffU 
                                                                                & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                                                                << 8U) 
                                                                                | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U] 
                                                                                >> 0x18U))))), 
                                                                             (0x1fffffffffULL 
                                                                              & VL_EXTENDS_QI(37,19, 
                                                                                (0x7ffffU 
                                                                                & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
                                                                                << 8U) 
                                                                                | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                                                                >> 0x18U)))))) 
                                                                 >> 0xcU)))))) 
                                  >> 0x20U)) << 0x1dU)));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[1U] 
        = ((0x7fffffffU & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[1U]) 
           | (0x80000000U & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
                             << 0x14U)));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[2U] 
        = (0xffffffU & ((0x7ff00000U & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[3U] 
                                        << 0x14U)) 
                        | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
                           >> 0xcU)));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[0U] 
        = ((0xe0000000U & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[0U]) 
           | (0x1fffffffU & (IData)((0x1fffffffULL 
                                     & (VL_MULS_QQQ(39, 
                                                    (0x7fffffffffULL 
                                                     & VL_EXTENDS_QI(39,24, 
                                                                     (0xffffffU 
                                                                      & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U]))), 
                                                    (0x7fffffffffULL 
                                                     & VL_EXTENDS_QI(39,15, 
                                                                     (0x7fffU 
                                                                      & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                                                         >> 9U))))) 
                                        >> 0xaU)))));
    vlSelfRef.y_dv = vlSelfRef.quadra_top__DOT__dv_p2;
    vlSelfRef.quadra_top__DOT__dv_p1 = ((IData)(vlSelfRef.rst_b) 
                                        && (IData)(vlSelfRef.quadra_top__DOT__dv_p0));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__sum 
        = (0x7fffffffU & ((VL_EXTENDS_II(31,29, (0x1fffffffU 
                                                 & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[2U] 
                                                     << 5U) 
                                                    | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[1U] 
                                                       >> 0x1bU)))) 
                           + VL_EXTENDS_II(31,30, (0x3fffffffU 
                                                   & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[1U] 
                                                       << 3U) 
                                                      | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[0U] 
                                                         >> 0x1dU))))) 
                          + VL_EXTENDS_II(31,29, (0x1fffffffU 
                                                  & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[0U]))));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__s = 
        (0x1fffffffU & vlSelfRef.quadra_top__DOT__my_quadra__DOT__sum);
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__round_bits 
        = (0xfU & vlSelfRef.quadra_top__DOT__my_quadra__DOT__s);
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__round_bit 
        = ((8U < (IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__round_bits)) 
           | ((8U == (IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__round_bits)) 
              & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__s 
                 >> 4U)));
    vlSelfRef.y = (0x1ffffffU & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__s 
                                  >> 4U) + (IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__round_bit)));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U] 
        = ((0xffffffU & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U]) 
           | ((IData)((((QData)((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__b)) 
                        << 0x20U) | (QData)((IData)(
                                                    (((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__c) 
                                                      << 0x11U) 
                                                     | (0x1ffffU 
                                                        & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1)))))) 
              << 0x18U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
        = (((IData)((((QData)((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__b)) 
                      << 0x20U) | (QData)((IData)((
                                                   ((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__c) 
                                                    << 0x11U) 
                                                   | (0x1ffffU 
                                                      & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1)))))) 
            >> 8U) | ((IData)(((((QData)((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__b)) 
                                 << 0x20U) | (QData)((IData)(
                                                             (((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__c) 
                                                               << 0x11U) 
                                                              | (0x1ffffU 
                                                                 & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1))))) 
                               >> 0x20U)) << 0x18U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
        = ((0xfffff800U & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U]) 
           | ((IData)(((((QData)((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__b)) 
                         << 0x20U) | (QData)((IData)(
                                                     (((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__c) 
                                                       << 0x11U) 
                                                      | (0x1ffffU 
                                                         & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1))))) 
                       >> 0x20U)) >> 8U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
        = ((0x7ffU & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U]) 
           | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__a 
              << 0xbU));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[3U] 
        = (0xfU & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__a 
                   >> 0x15U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U] 
        = ((0xff000000U & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U]) 
           | (0xfffU & (IData)((0xfffULL & (((QData)((IData)(
                                                             (0x1ffffU 
                                                              & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1))) 
                                             * (QData)((IData)(
                                                               (0x1ffffU 
                                                                & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1)))) 
                                            >> 0x16U)))));
    vlSelfRef.quadra_top__DOT__dv_p0 = ((IData)(vlSelfRef.rst_b) 
                                        && (IData)(vlSelfRef.x_dv));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1 
        = ((IData)(vlSelfRef.rst_b) ? vlSelfRef.x : 0U);
    __Vtableidx1 = (0x7fU & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1 
                             >> 0x11U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__a = 
        Vquadra_top__ConstPool__TABLE_h7d1f8f95_0[__Vtableidx1];
    __Vtableidx2 = (0x7fU & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1 
                             >> 0x11U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__b = 
        Vquadra_top__ConstPool__TABLE_hca834a7e_0[__Vtableidx2];
    __Vtableidx3 = (0x7fU & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1 
                             >> 0x11U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__c = 
        Vquadra_top__ConstPool__TABLE_h28554c6e_0[__Vtableidx3];
}

void Vquadra_top___024root___eval_triggers__act(Vquadra_top___024root* vlSelf);

bool Vquadra_top___024root___eval_phase__act(Vquadra_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vquadra_top___024root___eval_phase__act\n"); );
    Vquadra_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vquadra_top___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        Vquadra_top___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vquadra_top___024root___eval_phase__nba(Vquadra_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vquadra_top___024root___eval_phase__nba\n"); );
    Vquadra_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vquadra_top___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vquadra_top___024root___dump_triggers__nba(Vquadra_top___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vquadra_top___024root___dump_triggers__act(Vquadra_top___024root* vlSelf);
#endif  // VL_DEBUG

void Vquadra_top___024root___eval(Vquadra_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vquadra_top___024root___eval\n"); );
    Vquadra_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY(((0x64U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vquadra_top___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("/home/mateusz/Documents/IntelIPVerification/verilator-optimized/../rtl-model-optimized/quadra_top.sv", 3, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY(((0x64U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vquadra_top___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("/home/mateusz/Documents/IntelIPVerification/verilator-optimized/../rtl-model-optimized/quadra_top.sv", 3, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (Vquadra_top___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (Vquadra_top___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vquadra_top___024root___eval_debug_assertions(Vquadra_top___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vquadra_top___024root___eval_debug_assertions\n"); );
    Vquadra_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if (VL_UNLIKELY(((vlSelfRef.clk & 0xfeU)))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY(((vlSelfRef.rst_b & 0xfeU)))) {
        Verilated::overWidthError("rst_b");}
    if (VL_UNLIKELY(((vlSelfRef.x & 0xff000000U)))) {
        Verilated::overWidthError("x");}
    if (VL_UNLIKELY(((vlSelfRef.x_dv & 0xfeU)))) {
        Verilated::overWidthError("x_dv");}
}
#endif  // VL_DEBUG
