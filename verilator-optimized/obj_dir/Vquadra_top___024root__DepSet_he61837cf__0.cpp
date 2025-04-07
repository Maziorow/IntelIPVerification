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

extern const VlUnpacked<IData/*26:0*/, 128> Vquadra_top__ConstPool__TABLE_hed6a46fe_0;
extern const VlUnpacked<IData/*19:0*/, 128> Vquadra_top__ConstPool__TABLE_hd92a96a5_0;
extern const VlUnpacked<SData/*15:0*/, 128> Vquadra_top__ConstPool__TABLE_h47c94a26_0;

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
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3__BRA__58__03a29__KET__ 
        = ((0x3f000000U & ((- (IData)((1U & (IData)(
                                                    (vlSelfRef.quadra_top__DOT__my_quadra__DOT__t1_product 
                                                     >> 0x24U))))) 
                           << 0x18U)) | (0xffffffU 
                                         & (IData)(
                                                   (vlSelfRef.quadra_top__DOT__my_quadra__DOT__t1_product 
                                                    >> 0xdU))));
    vlSelfRef.quadra_top__DOT__dv_p2 = ((IData)(vlSelfRef.rst_b) 
                                        && (IData)(vlSelfRef.quadra_top__DOT__dv_p1));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3__BRA__87__03a59__KET__ 
        = (0x1ffffffcU & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[3U] 
                           << 0x15U) | (0x1ffffcU & 
                                        (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
                                         >> 0xbU))));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3__BRA__28__03a0__KET__ 
        = (0x1fffffffU & (IData)((0x3fffffffULL & (
                                                   VL_MULS_QQQ(41, 
                                                               (0x1ffffffffffULL 
                                                                & VL_EXTENDS_QI(41,24, 
                                                                                (0xffffffU 
                                                                                & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U]))), 
                                                               (0x1ffffffffffULL 
                                                                & VL_EXTENDS_QI(41,16, 
                                                                                (0xffffU 
                                                                                & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                                                                >> 9U))))) 
                                                   >> 0xbU))));
    vlSelfRef.y_dv = vlSelfRef.quadra_top__DOT__dv_p2;
    vlSelfRef.quadra_top__DOT__dv_p1 = ((IData)(vlSelfRef.rst_b) 
                                        && (IData)(vlSelfRef.quadra_top__DOT__dv_p0));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__sum 
        = (0x7fffffffU & ((VL_EXTENDS_II(31,29, vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3__BRA__87__03a59__KET__) 
                           + VL_EXTENDS_II(31,30, vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3__BRA__58__03a29__KET__)) 
                          + VL_EXTENDS_II(31,29, vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3__BRA__28__03a0__KET__)));
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
                        << 0x21U) | (((QData)((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__c)) 
                                      << 0x11U) | (QData)((IData)(
                                                                  (0x1ffffU 
                                                                   & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1)))))) 
              << 0x18U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
        = (((IData)((((QData)((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__b)) 
                      << 0x21U) | (((QData)((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__c)) 
                                    << 0x11U) | (QData)((IData)(
                                                                (0x1ffffU 
                                                                 & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1)))))) 
            >> 8U) | ((IData)(((((QData)((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__b)) 
                                 << 0x21U) | (((QData)((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__c)) 
                                               << 0x11U) 
                                              | (QData)((IData)(
                                                                (0x1ffffU 
                                                                 & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1))))) 
                               >> 0x20U)) << 0x18U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
        = ((0xffffe000U & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U]) 
           | ((IData)(((((QData)((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__b)) 
                         << 0x21U) | (((QData)((IData)(vlSelfRef.quadra_top__DOT__my_quadra__DOT__c)) 
                                       << 0x11U) | (QData)((IData)(
                                                                   (0x1ffffU 
                                                                    & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1))))) 
                       >> 0x20U)) >> 8U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
        = ((0x1fffU & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U]) 
           | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__a 
              << 0xdU));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[3U] 
        = (0xffU & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__a 
                    >> 0x13U));
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
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__t1_product 
        = (0x3fffffffffULL & VL_MULS_QQQ(38, (0x3fffffffffULL 
                                              & VL_EXTENDS_QI(38,18, 
                                                              (0x1ffffU 
                                                               & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                                                   << 8U) 
                                                                  | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U] 
                                                                     >> 0x18U))))), 
                                         (0x3fffffffffULL 
                                          & VL_EXTENDS_QI(38,20, 
                                                          (0xfffffU 
                                                           & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
                                                               << 7U) 
                                                              | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                                                 >> 0x19U)))))));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1 
        = ((IData)(vlSelfRef.rst_b) ? vlSelfRef.x : 0U);
    __Vtableidx1 = (0x7fU & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1 
                             >> 0x11U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__a = 
        Vquadra_top__ConstPool__TABLE_hed6a46fe_0[__Vtableidx1];
    __Vtableidx2 = (0x7fU & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1 
                             >> 0x11U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__b = 
        Vquadra_top__ConstPool__TABLE_hd92a96a5_0[__Vtableidx2];
    __Vtableidx3 = (0x7fU & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1 
                             >> 0x11U));
    vlSelfRef.quadra_top__DOT__my_quadra__DOT__c = 
        Vquadra_top__ConstPool__TABLE_h47c94a26_0[__Vtableidx3];
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
            VL_FATAL_MT("/home/mateusz/Documents/RekrutacjaZadania/Intel/IntelZadanie/verilator-optimized/../rtl-model-optimized/quadra_top.sv", 3, "", "NBA region did not converge.");
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
                VL_FATAL_MT("/home/mateusz/Documents/RekrutacjaZadania/Intel/IntelZadanie/verilator-optimized/../rtl-model-optimized/quadra_top.sv", 3, "", "Active region did not converge.");
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
