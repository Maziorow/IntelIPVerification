// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vquadra_top__Syms.h"


void Vquadra_top___024root__trace_chg_0_sub_0(Vquadra_top___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vquadra_top___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vquadra_top___024root__trace_chg_0\n"); );
    // Init
    Vquadra_top___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vquadra_top___024root*>(voidSelf);
    Vquadra_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vquadra_top___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vquadra_top___024root__trace_chg_0_sub_0(Vquadra_top___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vquadra_top___024root__trace_chg_0_sub_0\n"); );
    Vquadra_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY((vlSelfRef.__Vm_traceActivity[1U]))) {
        bufp->chgBit(oldp+0,(vlSelfRef.quadra_top__DOT__dv_p0));
        bufp->chgBit(oldp+1,(vlSelfRef.quadra_top__DOT__dv_p1));
        bufp->chgBit(oldp+2,(vlSelfRef.quadra_top__DOT__dv_p2));
        bufp->chgIData(oldp+3,(vlSelfRef.quadra_top__DOT__my_quadra__DOT__s),29);
        bufp->chgIData(oldp+4,(vlSelfRef.quadra_top__DOT__my_quadra__DOT__a),25);
        bufp->chgIData(oldp+5,(vlSelfRef.quadra_top__DOT__my_quadra__DOT__b),19);
        bufp->chgSData(oldp+6,(vlSelfRef.quadra_top__DOT__my_quadra__DOT__c),15);
        bufp->chgIData(oldp+7,((0xfffU & (IData)((0xfffULL 
                                                  & (((QData)((IData)(
                                                                      (0x1ffffU 
                                                                       & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1))) 
                                                      * (QData)((IData)(
                                                                        (0x1ffffU 
                                                                         & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1)))) 
                                                     >> 0x16U))))),24);
        bufp->chgCData(oldp+8,((0x7fU & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1 
                                         >> 0x11U))),7);
        bufp->chgIData(oldp+9,((0x1ffffU & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1)),17);
        bufp->chgIData(oldp+10,((0x1ffffffU & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[3U] 
                                                << 0x15U) 
                                               | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
                                                  >> 0xbU)))),25);
        bufp->chgIData(oldp+11,((0x7ffffU & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[2U] 
                                              << 8U) 
                                             | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                                >> 0x18U)))),19);
        bufp->chgSData(oldp+12,((0x7fffU & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                            >> 9U))),15);
        bufp->chgIData(oldp+13,((0x1ffffU & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                              << 8U) 
                                             | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U] 
                                                >> 0x18U)))),17);
        bufp->chgIData(oldp+14,((0xffffffU & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U])),24);
        bufp->chgIData(oldp+15,((0x1fffffffU & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[2U] 
                                                 << 5U) 
                                                | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[1U] 
                                                   >> 0x1bU)))),29);
        bufp->chgIData(oldp+16,((0x3fffffffU & ((vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[1U] 
                                                 << 3U) 
                                                | (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[0U] 
                                                   >> 0x1dU)))),30);
        bufp->chgIData(oldp+17,((0x1fffffffU & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage3[0U])),29);
        bufp->chgQData(oldp+18,((0x1fffffffffULL & 
                                 VL_MULS_QQQ(37, (0x1fffffffffULL 
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
                                                                     >> 0x18U)))))))),37);
        bufp->chgQData(oldp+20,((0x7fffffffffULL & 
                                 VL_MULS_QQQ(39, (0x7fffffffffULL 
                                                  & VL_EXTENDS_QI(39,24, 
                                                                  (0xffffffU 
                                                                   & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[0U]))), 
                                             (0x7fffffffffULL 
                                              & VL_EXTENDS_QI(39,15, 
                                                              (0x7fffU 
                                                               & (vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage2[1U] 
                                                                  >> 9U))))))),39);
        bufp->chgIData(oldp+22,(vlSelfRef.quadra_top__DOT__my_quadra__DOT__sum),31);
        bufp->chgCData(oldp+23,(vlSelfRef.quadra_top__DOT__my_quadra__DOT__round_bits),4);
        bufp->chgBit(oldp+24,(vlSelfRef.quadra_top__DOT__my_quadra__DOT__round_bit));
        bufp->chgQData(oldp+25,((0x3ffffffffULL & ((QData)((IData)(
                                                                   (0x1ffffU 
                                                                    & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1))) 
                                                   * (QData)((IData)(
                                                                     (0x1ffffU 
                                                                      & vlSelfRef.quadra_top__DOT__my_quadra__DOT__stage1)))))),34);
    }
    bufp->chgBit(oldp+27,(vlSelfRef.clk));
    bufp->chgBit(oldp+28,(vlSelfRef.rst_b));
    bufp->chgIData(oldp+29,(vlSelfRef.x),24);
    bufp->chgBit(oldp+30,(vlSelfRef.x_dv));
    bufp->chgIData(oldp+31,(vlSelfRef.y),25);
    bufp->chgBit(oldp+32,(vlSelfRef.y_dv));
}

void Vquadra_top___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vquadra_top___024root__trace_cleanup\n"); );
    // Init
    Vquadra_top___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vquadra_top___024root*>(voidSelf);
    Vquadra_top__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
