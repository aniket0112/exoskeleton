/* Include files */

#include <stddef.h>
#include "blas.h"
#include "computedTorquePD_sfun.h"
#include "c2_computedTorquePD.h"
#include "mwmathutil.h"
#define CHARTINSTANCE_CHARTNUMBER      (chartInstance->chartNumber)
#define CHARTINSTANCE_INSTANCENUMBER   (chartInstance->instanceNumber)
#include "computedTorquePD_sfun_debug_macros.h"
#define _SF_MEX_LISTEN_FOR_CTRL_C(S)   sf_mex_listen_for_ctrl_c_with_debugger(S, sfGlobalDebugInstanceStruct);

static void chart_debug_initialization(SimStruct *S, unsigned int
  fullDebuggerInitialization);
static void chart_debug_initialize_data_addresses(SimStruct *S);

/* Type Definitions */

/* Named Constants */
#define CALL_EVENT                     (-1)

/* Variable Declarations */

/* Variable Definitions */
static real_T _sfTime_;
static const char * c2_debug_family_names[35] = { "a1", "a2", "m1", "m2", "g",
  "Kp", "Kd", "h", "des_dth1", "des_dth2", "des_ddth1", "des_ddth2", "s", "dth1",
  "dth2", "i", "D", "H", "C", "x", "xdes", "e", "u", "U", "ddt", "ddth1",
  "ddth2", "nargin", "nargout", "des_th1", "des_th2", "T1", "T2", "th1", "th2" };

/* Function Declarations */
static void initialize_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance);
static void initialize_params_c2_computedTorquePD
  (SFc2_computedTorquePDInstanceStruct *chartInstance);
static void enable_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance);
static void disable_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance);
static void c2_update_debugger_state_c2_computedTorquePD
  (SFc2_computedTorquePDInstanceStruct *chartInstance);
static const mxArray *get_sim_state_c2_computedTorquePD
  (SFc2_computedTorquePDInstanceStruct *chartInstance);
static void set_sim_state_c2_computedTorquePD
  (SFc2_computedTorquePDInstanceStruct *chartInstance, const mxArray *c2_st);
static void finalize_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance);
static void sf_gateway_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance);
static void mdl_start_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance);
static void c2_chartstep_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance);
static void initSimStructsc2_computedTorquePD
  (SFc2_computedTorquePDInstanceStruct *chartInstance);
static void init_script_number_translation(uint32_T c2_machineNumber, uint32_T
  c2_chartNumber, uint32_T c2_instanceNumber);
static const mxArray *c2_sf_marshallOut(void *chartInstanceVoid, void *c2_inData);
static void c2_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_b_th2, const char_T *c2_identifier, real_T
  c2_y[2]);
static void c2_b_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId,
  real_T c2_y[2]);
static void c2_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c2_mxArrayInData, const char_T *c2_varName, void *c2_outData);
static const mxArray *c2_b_sf_marshallOut(void *chartInstanceVoid, void
  *c2_inData);
static real_T c2_c_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_b_T2, const char_T *c2_identifier);
static real_T c2_d_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId);
static void c2_b_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c2_mxArrayInData, const char_T *c2_varName, void *c2_outData);
static const mxArray *c2_c_sf_marshallOut(void *chartInstanceVoid, void
  *c2_inData);
static void c2_e_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId,
  real_T c2_y[2]);
static void c2_c_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c2_mxArrayInData, const char_T *c2_varName, void *c2_outData);
static const mxArray *c2_d_sf_marshallOut(void *chartInstanceVoid, void
  *c2_inData);
static void c2_f_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId,
  real_T c2_y[4]);
static void c2_d_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c2_mxArrayInData, const char_T *c2_varName, void *c2_outData);
static const mxArray *c2_e_sf_marshallOut(void *chartInstanceVoid, void
  *c2_inData);
static void c2_g_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId,
  real_T c2_y[4]);
static void c2_e_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c2_mxArrayInData, const char_T *c2_varName, void *c2_outData);
static void c2_diff(SFc2_computedTorquePDInstanceStruct *chartInstance);
static real_T c2_mpower(SFc2_computedTorquePDInstanceStruct *chartInstance,
  real_T c2_a);
static void c2_eml_scalar_eg(SFc2_computedTorquePDInstanceStruct *chartInstance);
static void c2_dimagree(SFc2_computedTorquePDInstanceStruct *chartInstance);
static void c2_b_eml_scalar_eg(SFc2_computedTorquePDInstanceStruct
  *chartInstance);
static void c2_eml_xgemm(SFc2_computedTorquePDInstanceStruct *chartInstance,
  real_T c2_A[4], real_T c2_B[2], real_T c2_C[2], real_T c2_b_C[2]);
static void c2_inv2x2(SFc2_computedTorquePDInstanceStruct *chartInstance, real_T
                      c2_x[4], real_T c2_y[4]);
static real_T c2_norm(SFc2_computedTorquePDInstanceStruct *chartInstance, real_T
                      c2_x[4]);
static void c2_eml_warning(SFc2_computedTorquePDInstanceStruct *chartInstance);
static void c2_b_eml_warning(SFc2_computedTorquePDInstanceStruct *chartInstance,
  char_T c2_varargin_2[14]);
static void c2_h_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_sprintf, const char_T *c2_identifier, char_T
  c2_y[14]);
static void c2_i_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId,
  char_T c2_y[14]);
static const mxArray *c2_f_sf_marshallOut(void *chartInstanceVoid, void
  *c2_inData);
static int32_T c2_j_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId);
static void c2_f_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c2_mxArrayInData, const char_T *c2_varName, void *c2_outData);
static uint8_T c2_k_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_b_is_active_c2_computedTorquePD, const
  char_T *c2_identifier);
static uint8_T c2_l_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId);
static void c2_b_eml_xgemm(SFc2_computedTorquePDInstanceStruct *chartInstance,
  real_T c2_A[4], real_T c2_B[2], real_T c2_C[2]);
static void init_dsm_address_info(SFc2_computedTorquePDInstanceStruct
  *chartInstance);
static void init_simulink_io_address(SFc2_computedTorquePDInstanceStruct
  *chartInstance);

/* Function Definitions */
static void initialize_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance)
{
  if (sf_is_first_init_cond(chartInstance->S)) {
    initSimStructsc2_computedTorquePD(chartInstance);
    chart_debug_initialize_data_addresses(chartInstance->S);
  }

  chartInstance->c2_sfEvent = CALL_EVENT;
  _sfTime_ = sf_get_time(chartInstance->S);
  chartInstance->c2_is_active_c2_computedTorquePD = 0U;
}

static void initialize_params_c2_computedTorquePD
  (SFc2_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void enable_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance)
{
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void disable_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance)
{
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void c2_update_debugger_state_c2_computedTorquePD
  (SFc2_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static const mxArray *get_sim_state_c2_computedTorquePD
  (SFc2_computedTorquePDInstanceStruct *chartInstance)
{
  const mxArray *c2_st;
  const mxArray *c2_y = NULL;
  real_T c2_hoistedGlobal;
  real_T c2_u;
  const mxArray *c2_b_y = NULL;
  real_T c2_b_hoistedGlobal;
  real_T c2_b_u;
  const mxArray *c2_c_y = NULL;
  const mxArray *c2_d_y = NULL;
  const mxArray *c2_e_y = NULL;
  uint8_T c2_c_hoistedGlobal;
  uint8_T c2_c_u;
  const mxArray *c2_f_y = NULL;
  c2_st = NULL;
  c2_st = NULL;
  c2_y = NULL;
  sf_mex_assign(&c2_y, sf_mex_createcellmatrix(5, 1), false);
  c2_hoistedGlobal = *chartInstance->c2_T1;
  c2_u = c2_hoistedGlobal;
  c2_b_y = NULL;
  sf_mex_assign(&c2_b_y, sf_mex_create("y", &c2_u, 0, 0U, 0U, 0U, 0), false);
  sf_mex_setcell(c2_y, 0, c2_b_y);
  c2_b_hoistedGlobal = *chartInstance->c2_T2;
  c2_b_u = c2_b_hoistedGlobal;
  c2_c_y = NULL;
  sf_mex_assign(&c2_c_y, sf_mex_create("y", &c2_b_u, 0, 0U, 0U, 0U, 0), false);
  sf_mex_setcell(c2_y, 1, c2_c_y);
  c2_d_y = NULL;
  sf_mex_assign(&c2_d_y, sf_mex_create("y", *chartInstance->c2_th1, 0, 0U, 1U,
    0U, 2, 1, 2), false);
  sf_mex_setcell(c2_y, 2, c2_d_y);
  c2_e_y = NULL;
  sf_mex_assign(&c2_e_y, sf_mex_create("y", *chartInstance->c2_th2, 0, 0U, 1U,
    0U, 2, 1, 2), false);
  sf_mex_setcell(c2_y, 3, c2_e_y);
  c2_c_hoistedGlobal = chartInstance->c2_is_active_c2_computedTorquePD;
  c2_c_u = c2_c_hoistedGlobal;
  c2_f_y = NULL;
  sf_mex_assign(&c2_f_y, sf_mex_create("y", &c2_c_u, 3, 0U, 0U, 0U, 0), false);
  sf_mex_setcell(c2_y, 4, c2_f_y);
  sf_mex_assign(&c2_st, c2_y, false);
  return c2_st;
}

static void set_sim_state_c2_computedTorquePD
  (SFc2_computedTorquePDInstanceStruct *chartInstance, const mxArray *c2_st)
{
  const mxArray *c2_u;
  real_T c2_dv0[2];
  int32_T c2_i0;
  real_T c2_dv1[2];
  int32_T c2_i1;
  chartInstance->c2_doneDoubleBufferReInit = true;
  c2_u = sf_mex_dup(c2_st);
  *chartInstance->c2_T1 = c2_c_emlrt_marshallIn(chartInstance, sf_mex_dup
    (sf_mex_getcell("T1", c2_u, 0)), "T1");
  *chartInstance->c2_T2 = c2_c_emlrt_marshallIn(chartInstance, sf_mex_dup
    (sf_mex_getcell("T2", c2_u, 1)), "T2");
  c2_emlrt_marshallIn(chartInstance, sf_mex_dup(sf_mex_getcell("th1", c2_u, 2)),
                      "th1", c2_dv0);
  for (c2_i0 = 0; c2_i0 < 2; c2_i0++) {
    (*chartInstance->c2_th1)[c2_i0] = c2_dv0[c2_i0];
  }

  c2_emlrt_marshallIn(chartInstance, sf_mex_dup(sf_mex_getcell("th2", c2_u, 3)),
                      "th2", c2_dv1);
  for (c2_i1 = 0; c2_i1 < 2; c2_i1++) {
    (*chartInstance->c2_th2)[c2_i1] = c2_dv1[c2_i1];
  }

  chartInstance->c2_is_active_c2_computedTorquePD = c2_k_emlrt_marshallIn
    (chartInstance, sf_mex_dup(sf_mex_getcell("is_active_c2_computedTorquePD",
       c2_u, 4)), "is_active_c2_computedTorquePD");
  sf_mex_destroy(&c2_u);
  c2_update_debugger_state_c2_computedTorquePD(chartInstance);
  sf_mex_destroy(&c2_st);
}

static void finalize_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void sf_gateway_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance)
{
  int32_T c2_i2;
  int32_T c2_i3;
  _SFD_SYMBOL_SCOPE_PUSH(0U, 0U);
  _sfTime_ = sf_get_time(chartInstance->S);
  _SFD_CC_CALL(CHART_ENTER_SFUNCTION_TAG, 0U, chartInstance->c2_sfEvent);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c2_des_th2, 1U, 1U, 0U,
                        chartInstance->c2_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c2_des_th1, 0U, 1U, 0U,
                        chartInstance->c2_sfEvent, false);
  chartInstance->c2_sfEvent = CALL_EVENT;
  c2_chartstep_c2_computedTorquePD(chartInstance);
  _SFD_SYMBOL_SCOPE_POP();
  _SFD_CHECK_FOR_STATE_INCONSISTENCY(_computedTorquePDMachineNumber_,
    chartInstance->chartNumber, chartInstance->instanceNumber);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c2_T1, 2U, 1U, 0U,
                        chartInstance->c2_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c2_T2, 3U, 1U, 0U,
                        chartInstance->c2_sfEvent, false);
  for (c2_i2 = 0; c2_i2 < 2; c2_i2++) {
    _SFD_DATA_RANGE_CHECK((*chartInstance->c2_th1)[c2_i2], 4U, 1U, 0U,
                          chartInstance->c2_sfEvent, false);
  }

  for (c2_i3 = 0; c2_i3 < 2; c2_i3++) {
    _SFD_DATA_RANGE_CHECK((*chartInstance->c2_th2)[c2_i3], 5U, 1U, 0U,
                          chartInstance->c2_sfEvent, false);
  }
}

static void mdl_start_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void c2_chartstep_c2_computedTorquePD(SFc2_computedTorquePDInstanceStruct
  *chartInstance)
{
  real_T c2_hoistedGlobal;
  real_T c2_b_hoistedGlobal;
  real_T c2_b_des_th1;
  real_T c2_b_des_th2;
  uint32_T c2_debug_family_var_map[35];
  real_T c2_a1;
  real_T c2_a2;
  real_T c2_m1;
  real_T c2_m2;
  real_T c2_g;
  real_T c2_Kp[4];
  real_T c2_Kd[4];
  real_T c2_h;
  real_T c2_des_dth1;
  real_T c2_des_dth2;
  real_T c2_des_ddth1;
  real_T c2_des_ddth2;
  real_T c2_s;
  real_T c2_dth1[2];
  real_T c2_dth2[2];
  real_T c2_i;
  real_T c2_D[4];
  real_T c2_H[2];
  real_T c2_C[2];
  real_T c2_x[4];
  real_T c2_xdes[4];
  real_T c2_e[4];
  real_T c2_u[2];
  real_T c2_U[2];
  real_T c2_ddt[2];
  real_T c2_ddth1;
  real_T c2_ddth2;
  real_T c2_nargin = 2.0;
  real_T c2_nargout = 4.0;
  real_T c2_b_T1;
  real_T c2_b_T2;
  real_T c2_b_th1[2];
  real_T c2_b_th2[2];
  int32_T c2_i4;
  static real_T c2_a[4] = { 0.1, 0.0, 0.0, 0.1 };

  int32_T c2_i5;
  static real_T c2_dv2[4] = { 1.0, 0.0, 0.0, 1.0 };

  int32_T c2_i6;
  int32_T c2_i7;
  int32_T c2_i8;
  int32_T c2_i9;
  real_T c2_b_x;
  real_T c2_c_x;
  real_T c2_d_x;
  real_T c2_e_x;
  real_T c2_A;
  real_T c2_f_x;
  real_T c2_g_x;
  real_T c2_h_x;
  real_T c2_y;
  real_T c2_i_x;
  real_T c2_j_x;
  real_T c2_b_A;
  real_T c2_k_x;
  real_T c2_l_x;
  real_T c2_m_x;
  real_T c2_b_y;
  real_T c2_n_x;
  real_T c2_o_x;
  real_T c2_c_A;
  real_T c2_p_x;
  real_T c2_q_x;
  real_T c2_r_x;
  real_T c2_c_y;
  real_T c2_s_x;
  real_T c2_t_x;
  real_T c2_d_A;
  real_T c2_u_x;
  real_T c2_v_x;
  real_T c2_w_x;
  real_T c2_d_y;
  real_T c2_x_x;
  real_T c2_y_x;
  real_T c2_e_A;
  real_T c2_ab_x;
  real_T c2_bb_x;
  real_T c2_cb_x;
  real_T c2_e_y;
  real_T c2_db_x;
  real_T c2_eb_x;
  real_T c2_f_A;
  real_T c2_fb_x;
  real_T c2_gb_x;
  real_T c2_hb_x;
  real_T c2_f_y;
  real_T c2_ib_x;
  real_T c2_jb_x;
  real_T c2_kb_x;
  real_T c2_lb_x;
  real_T c2_g_A;
  real_T c2_mb_x;
  real_T c2_nb_x;
  real_T c2_ob_x;
  real_T c2_g_y;
  int32_T c2_i10;
  real_T c2_b[2];
  int32_T c2_i11;
  real_T c2_h_y[2];
  int32_T c2_i12;
  static real_T c2_b_a[4] = { -1.0, -0.0, -0.0, -1.0 };

  real_T c2_c_a[4];
  int32_T c2_i13;
  real_T c2_b_b[2];
  int32_T c2_i14;
  real_T c2_i_y[2];
  int32_T c2_i15;
  real_T c2_d_a[4];
  int32_T c2_i16;
  real_T c2_c_b[2];
  int32_T c2_i17;
  int32_T c2_i18;
  real_T c2_e_a[4];
  real_T c2_b_des_ddth1[2];
  int32_T c2_i19;
  int32_T c2_i20;
  int32_T c2_i21;
  real_T c2_f_a[4];
  int32_T c2_i22;
  real_T c2_d_b[2];
  int32_T c2_i23;
  int32_T c2_i24;
  int32_T c2_i25;
  real_T c2_g_a[4];
  real_T c2_j_y[4];
  int32_T c2_i26;
  real_T c2_h_a[4];
  real_T c2_n1x;
  int32_T c2_i27;
  real_T c2_k_y[4];
  real_T c2_n1xinv;
  real_T c2_rc;
  real_T c2_pb_x;
  boolean_T c2_e_b;
  real_T c2_qb_x;
  const mxArray *c2_l_y = NULL;
  static char_T c2_b_u[8] = { '%', '%', '%', 'd', '.', '%', 'd', 'e' };

  real_T c2_c_u;
  const mxArray *c2_m_y = NULL;
  real_T c2_d_u;
  const mxArray *c2_n_y = NULL;
  real_T c2_e_u;
  const mxArray *c2_o_y = NULL;
  char_T c2_str[14];
  int32_T c2_i28;
  char_T c2_b_str[14];
  int32_T c2_i29;
  int32_T c2_i30;
  int32_T c2_i31;
  int32_T c2_i32;
  real_T c2_p_y[4];
  int32_T c2_i33;
  real_T c2_f_b[2];
  int32_T c2_i34;
  int32_T c2_i35;
  int32_T c2_i36;
  boolean_T guard1 = false;
  boolean_T guard2 = false;
  boolean_T guard3 = false;
  _SFD_CC_CALL(CHART_ENTER_DURING_FUNCTION_TAG, 0U, chartInstance->c2_sfEvent);
  c2_hoistedGlobal = *chartInstance->c2_des_th1;
  c2_b_hoistedGlobal = *chartInstance->c2_des_th2;
  c2_b_des_th1 = c2_hoistedGlobal;
  c2_b_des_th2 = c2_b_hoistedGlobal;
  _SFD_SYMBOL_SCOPE_PUSH_EML(0U, 35U, 35U, c2_debug_family_names,
    c2_debug_family_var_map);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c2_a1, 0U, c2_b_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c2_a2, 1U, c2_b_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c2_m1, 2U, c2_b_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c2_m2, 3U, c2_b_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c2_g, 4U, c2_b_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(c2_Kp, 5U, c2_e_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(c2_Kd, 6U, c2_e_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c2_h, 7U, c2_b_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c2_des_dth1, 8U, c2_b_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c2_des_dth2, 9U, c2_b_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c2_des_ddth1, 10U, c2_b_sf_marshallOut,
    c2_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c2_des_ddth2, 11U, c2_b_sf_marshallOut,
    c2_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c2_s, 12U, c2_b_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_dth1, 13U, c2_sf_marshallOut,
    c2_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_dth2, 14U, c2_sf_marshallOut,
    c2_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c2_i, 15U, c2_b_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_D, 16U, c2_e_sf_marshallOut,
    c2_e_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_H, 17U, c2_c_sf_marshallOut,
    c2_c_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_C, 18U, c2_c_sf_marshallOut,
    c2_c_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_x, 19U, c2_d_sf_marshallOut,
    c2_d_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_xdes, 20U, c2_d_sf_marshallOut,
    c2_d_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_e, 21U, c2_d_sf_marshallOut,
    c2_d_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_u, 22U, c2_c_sf_marshallOut,
    c2_c_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_U, 23U, c2_c_sf_marshallOut,
    c2_c_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_ddt, 24U, c2_c_sf_marshallOut,
    c2_c_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c2_ddth1, 25U, c2_b_sf_marshallOut,
    c2_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c2_ddth2, 26U, c2_b_sf_marshallOut,
    c2_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c2_nargin, 27U, c2_b_sf_marshallOut,
    c2_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c2_nargout, 28U, c2_b_sf_marshallOut,
    c2_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c2_b_des_th1, 29U, c2_b_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c2_b_des_th2, 30U, c2_b_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c2_b_T1, 31U, c2_b_sf_marshallOut,
    c2_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c2_b_T2, 32U, c2_b_sf_marshallOut,
    c2_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_b_th1, 33U, c2_sf_marshallOut,
    c2_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c2_b_th2, 34U, c2_sf_marshallOut,
    c2_sf_marshallIn);
  CV_EML_FCN(0, 0);
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 3);
  c2_a1 = 0.2;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 3);
  c2_a2 = 0.4;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 3);
  c2_m1 = 2.0;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 3);
  c2_m2 = 2.0;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 3);
  c2_g = 9.8;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 4);
  for (c2_i4 = 0; c2_i4 < 4; c2_i4++) {
    c2_Kp[c2_i4] = c2_a[c2_i4];
  }

  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 5);
  for (c2_i5 = 0; c2_i5 < 4; c2_i5++) {
    c2_Kd[c2_i5] = c2_dv2[c2_i5];
  }

  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 7);
  c2_h = 1.0;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 8);
  c2_diff(chartInstance);
  c2_des_dth1 = 0.0;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 9);
  c2_diff(chartInstance);
  c2_des_dth2 = 0.0;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 10);
  c2_diff(chartInstance);
  c2_des_ddth1 = 0.0;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 11);
  c2_diff(chartInstance);
  c2_des_ddth2 = 0.0;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 12);
  c2_s = 1.0;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 13);
  c2_b_T1 = 0.0;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 14);
  c2_b_T2 = 0.0;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 16);
  for (c2_i6 = 0; c2_i6 < 2; c2_i6++) {
    c2_b_th1[c2_i6] = 0.0;
  }

  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 17);
  for (c2_i7 = 0; c2_i7 < 2; c2_i7++) {
    c2_b_th2[c2_i7] = 0.0;
  }

  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 18);
  for (c2_i8 = 0; c2_i8 < 2; c2_i8++) {
    c2_dth1[c2_i8] = 0.0;
  }

  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 19);
  for (c2_i9 = 0; c2_i9 < 2; c2_i9++) {
    c2_dth2[c2_i9] = 0.0;
  }

  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 21);
  c2_i = 1.0;
  CV_EML_FOR(0, 1, 0, 1);
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 22);
  c2_b_x = c2_b_th2[0];
  c2_c_x = c2_b_x;
  c2_c_x = muDoubleScalarCos(c2_c_x);
  c2_d_x = c2_b_th2[0];
  c2_e_x = c2_d_x;
  c2_e_x = muDoubleScalarCos(c2_e_x);
  c2_A = 0.4 * c2_e_x * 0.4;
  c2_f_x = c2_A;
  c2_g_x = c2_f_x;
  c2_h_x = c2_g_x;
  c2_y = c2_h_x / 2.0;
  c2_i_x = c2_b_th2[0];
  c2_j_x = c2_i_x;
  c2_j_x = muDoubleScalarCos(c2_j_x);
  c2_b_A = 0.4 * c2_j_x * 0.4;
  c2_k_x = c2_b_A;
  c2_l_x = c2_k_x;
  c2_m_x = c2_l_x;
  c2_b_y = c2_m_x / 2.0;
  c2_D[0] = 0.21333333333333337 + 0.16000000000000003 * c2_c_x;
  c2_D[2] = 0.10666666666666669 + c2_y;
  c2_D[1] = 0.10666666666666669 + c2_b_y;
  c2_D[3] = 0.10666666666666669;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 24);
  c2_n_x = c2_b_th2[0];
  c2_o_x = c2_n_x;
  c2_o_x = muDoubleScalarSin(c2_o_x);
  c2_c_A = -(0.16000000000000003 * c2_o_x * (2.0 * c2_dth1[0] + c2_dth2[0]) *
             c2_dth2[0]);
  c2_p_x = c2_c_A;
  c2_q_x = c2_p_x;
  c2_r_x = c2_q_x;
  c2_c_y = c2_r_x / 2.0;
  c2_s_x = c2_b_th2[0];
  c2_t_x = c2_s_x;
  c2_t_x = muDoubleScalarSin(c2_t_x);
  c2_d_A = 0.16000000000000003 * c2_t_x * c2_mpower(chartInstance, c2_dth1[0]);
  c2_u_x = c2_d_A;
  c2_v_x = c2_u_x;
  c2_w_x = c2_v_x;
  c2_d_y = c2_w_x / 2.0;
  c2_H[0] = c2_c_y;
  c2_H[1] = c2_d_y;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 26);
  c2_x_x = c2_b_th1[0] + c2_b_th2[0];
  c2_y_x = c2_x_x;
  c2_y_x = muDoubleScalarCos(c2_y_x);
  c2_e_A = 7.8400000000000007 * c2_y_x;
  c2_ab_x = c2_e_A;
  c2_bb_x = c2_ab_x;
  c2_cb_x = c2_bb_x;
  c2_e_y = c2_cb_x / 2.0;
  c2_db_x = c2_b_th1[0];
  c2_eb_x = c2_db_x;
  c2_eb_x = muDoubleScalarCos(c2_eb_x);
  c2_f_A = 3.9200000000000004 * c2_eb_x;
  c2_fb_x = c2_f_A;
  c2_gb_x = c2_fb_x;
  c2_hb_x = c2_gb_x;
  c2_f_y = c2_hb_x / 2.0;
  c2_ib_x = c2_b_th1[0];
  c2_jb_x = c2_ib_x;
  c2_jb_x = muDoubleScalarCos(c2_jb_x);
  c2_kb_x = c2_b_th1[0] + c2_b_th2[0];
  c2_lb_x = c2_kb_x;
  c2_lb_x = muDoubleScalarCos(c2_lb_x);
  c2_g_A = 7.8400000000000007 * c2_lb_x;
  c2_mb_x = c2_g_A;
  c2_nb_x = c2_mb_x;
  c2_ob_x = c2_nb_x;
  c2_g_y = c2_ob_x / 2.0;
  c2_C[0] = (c2_e_y + c2_f_y) + 3.9200000000000004 * c2_jb_x;
  c2_C[1] = c2_g_y;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 28);
  c2_x[0] = c2_b_th1[0];
  c2_x[1] = c2_b_th2[0];
  c2_x[2] = c2_dth1[0];
  c2_x[3] = c2_dth2[0];
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 29);
  c2_xdes[0] = c2_b_des_th1;
  c2_xdes[1] = c2_b_des_th2;
  c2_xdes[2] = c2_des_dth1;
  c2_xdes[3] = c2_des_dth2;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 30);
  for (c2_i10 = 0; c2_i10 < 4; c2_i10++) {
    c2_e[c2_i10] = c2_xdes[c2_i10] - c2_x[c2_i10];
  }

  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 31);
  c2_b[0] = c2_e[2];
  c2_b[1] = c2_e[3];
  c2_b_eml_scalar_eg(chartInstance);
  c2_b_eml_scalar_eg(chartInstance);
  for (c2_i11 = 0; c2_i11 < 2; c2_i11++) {
    c2_h_y[c2_i11] = 0.0;
  }

  for (c2_i12 = 0; c2_i12 < 4; c2_i12++) {
    c2_c_a[c2_i12] = c2_b_a[c2_i12];
  }

  for (c2_i13 = 0; c2_i13 < 2; c2_i13++) {
    c2_b_b[c2_i13] = c2_b[c2_i13];
  }

  c2_b_eml_xgemm(chartInstance, c2_c_a, c2_b_b, c2_h_y);
  c2_b[0] = c2_e[0];
  c2_b[1] = c2_e[1];
  c2_b_eml_scalar_eg(chartInstance);
  c2_b_eml_scalar_eg(chartInstance);
  for (c2_i14 = 0; c2_i14 < 2; c2_i14++) {
    c2_i_y[c2_i14] = 0.0;
  }

  for (c2_i15 = 0; c2_i15 < 4; c2_i15++) {
    c2_d_a[c2_i15] = c2_a[c2_i15];
  }

  for (c2_i16 = 0; c2_i16 < 2; c2_i16++) {
    c2_c_b[c2_i16] = c2_b[c2_i16];
  }

  c2_b_eml_xgemm(chartInstance, c2_d_a, c2_c_b, c2_i_y);
  for (c2_i17 = 0; c2_i17 < 2; c2_i17++) {
    c2_u[c2_i17] = c2_h_y[c2_i17] - c2_i_y[c2_i17];
  }

  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 32);
  for (c2_i18 = 0; c2_i18 < 4; c2_i18++) {
    c2_e_a[c2_i18] = c2_D[c2_i18];
  }

  c2_b_des_ddth1[0] = c2_des_ddth1;
  c2_b_des_ddth1[1] = c2_des_ddth2;
  for (c2_i19 = 0; c2_i19 < 2; c2_i19++) {
    c2_b[c2_i19] = c2_b_des_ddth1[c2_i19] - c2_u[c2_i19];
  }

  c2_b_eml_scalar_eg(chartInstance);
  c2_b_eml_scalar_eg(chartInstance);
  for (c2_i20 = 0; c2_i20 < 2; c2_i20++) {
    c2_h_y[c2_i20] = 0.0;
  }

  for (c2_i21 = 0; c2_i21 < 4; c2_i21++) {
    c2_f_a[c2_i21] = c2_e_a[c2_i21];
  }

  for (c2_i22 = 0; c2_i22 < 2; c2_i22++) {
    c2_d_b[c2_i22] = c2_b[c2_i22];
  }

  c2_b_eml_xgemm(chartInstance, c2_f_a, c2_d_b, c2_h_y);
  for (c2_i23 = 0; c2_i23 < 2; c2_i23++) {
    c2_U[c2_i23] = (c2_h_y[c2_i23] + c2_H[c2_i23]) + c2_C[c2_i23];
  }

  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 33);
  c2_b_T1 = c2_U[0];
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 34);
  c2_b_T2 = c2_U[1];
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 35);
  for (c2_i24 = 0; c2_i24 < 4; c2_i24++) {
    c2_e_a[c2_i24] = c2_D[c2_i24];
  }

  for (c2_i25 = 0; c2_i25 < 4; c2_i25++) {
    c2_g_a[c2_i25] = c2_e_a[c2_i25];
  }

  c2_inv2x2(chartInstance, c2_g_a, c2_j_y);
  for (c2_i26 = 0; c2_i26 < 4; c2_i26++) {
    c2_h_a[c2_i26] = c2_e_a[c2_i26];
  }

  c2_n1x = c2_norm(chartInstance, c2_h_a);
  for (c2_i27 = 0; c2_i27 < 4; c2_i27++) {
    c2_k_y[c2_i27] = c2_j_y[c2_i27];
  }

  c2_n1xinv = c2_norm(chartInstance, c2_k_y);
  c2_rc = 1.0 / (c2_n1x * c2_n1xinv);
  guard1 = false;
  guard2 = false;
  if (c2_n1x == 0.0) {
    guard2 = true;
  } else if (c2_n1xinv == 0.0) {
    guard2 = true;
  } else if (c2_rc == 0.0) {
    guard1 = true;
  } else {
    c2_pb_x = c2_rc;
    c2_e_b = muDoubleScalarIsNaN(c2_pb_x);
    guard3 = false;
    if (c2_e_b) {
      guard3 = true;
    } else {
      if (c2_rc < 2.2204460492503131E-16) {
        guard3 = true;
      }
    }

    if (guard3 == true) {
      c2_qb_x = c2_rc;
      c2_l_y = NULL;
      sf_mex_assign(&c2_l_y, sf_mex_create("y", c2_b_u, 10, 0U, 1U, 0U, 2, 1, 8),
                    false);
      c2_c_u = 14.0;
      c2_m_y = NULL;
      sf_mex_assign(&c2_m_y, sf_mex_create("y", &c2_c_u, 0, 0U, 0U, 0U, 0),
                    false);
      c2_d_u = 6.0;
      c2_n_y = NULL;
      sf_mex_assign(&c2_n_y, sf_mex_create("y", &c2_d_u, 0, 0U, 0U, 0U, 0),
                    false);
      c2_e_u = c2_qb_x;
      c2_o_y = NULL;
      sf_mex_assign(&c2_o_y, sf_mex_create("y", &c2_e_u, 0, 0U, 0U, 0U, 0),
                    false);
      c2_h_emlrt_marshallIn(chartInstance, sf_mex_call_debug
                            (sfGlobalDebugInstanceStruct, "sprintf", 1U, 2U, 14,
        sf_mex_call_debug(sfGlobalDebugInstanceStruct, "sprintf", 1U, 3U, 14,
                          c2_l_y, 14, c2_m_y, 14, c2_n_y), 14, c2_o_y),
                            "sprintf", c2_str);
      for (c2_i28 = 0; c2_i28 < 14; c2_i28++) {
        c2_b_str[c2_i28] = c2_str[c2_i28];
      }

      c2_b_eml_warning(chartInstance, c2_b_str);
    }
  }

  if (guard2 == true) {
    guard1 = true;
  }

  if (guard1 == true) {
    c2_eml_warning(chartInstance);
  }

  for (c2_i29 = 0; c2_i29 < 2; c2_i29++) {
    c2_b[c2_i29] = (c2_U[c2_i29] - c2_H[c2_i29]) - c2_C[c2_i29];
  }

  c2_b_eml_scalar_eg(chartInstance);
  c2_b_eml_scalar_eg(chartInstance);
  for (c2_i30 = 0; c2_i30 < 2; c2_i30++) {
    c2_ddt[c2_i30] = 0.0;
  }

  for (c2_i31 = 0; c2_i31 < 2; c2_i31++) {
    c2_h_y[c2_i31] = 0.0;
  }

  for (c2_i32 = 0; c2_i32 < 4; c2_i32++) {
    c2_p_y[c2_i32] = c2_j_y[c2_i32];
  }

  for (c2_i33 = 0; c2_i33 < 2; c2_i33++) {
    c2_f_b[c2_i33] = c2_b[c2_i33];
  }

  c2_b_eml_xgemm(chartInstance, c2_p_y, c2_f_b, c2_h_y);
  for (c2_i34 = 0; c2_i34 < 2; c2_i34++) {
    c2_ddt[c2_i34] = c2_h_y[c2_i34];
  }

  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 36);
  c2_ddth1 = c2_ddt[0];
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 37);
  c2_ddth2 = c2_ddt[1];
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 38);
  c2_dth1[1] = c2_dth1[0] + c2_ddth1;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 39);
  c2_dth2[1] = c2_dth2[0] + c2_ddth2;
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 40);
  c2_b_th1[1] = c2_b_th1[0] + c2_dth1[1];
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, 41);
  c2_b_th2[1] = c2_b_th2[0] + c2_dth2[1];
  CV_EML_FOR(0, 1, 0, 0);
  _SFD_EML_CALL(0U, chartInstance->c2_sfEvent, -41);
  _SFD_SYMBOL_SCOPE_POP();
  *chartInstance->c2_T1 = c2_b_T1;
  *chartInstance->c2_T2 = c2_b_T2;
  for (c2_i35 = 0; c2_i35 < 2; c2_i35++) {
    (*chartInstance->c2_th1)[c2_i35] = c2_b_th1[c2_i35];
  }

  for (c2_i36 = 0; c2_i36 < 2; c2_i36++) {
    (*chartInstance->c2_th2)[c2_i36] = c2_b_th2[c2_i36];
  }

  _SFD_CC_CALL(EXIT_OUT_OF_FUNCTION_TAG, 0U, chartInstance->c2_sfEvent);
}

static void initSimStructsc2_computedTorquePD
  (SFc2_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void init_script_number_translation(uint32_T c2_machineNumber, uint32_T
  c2_chartNumber, uint32_T c2_instanceNumber)
{
  (void)c2_machineNumber;
  (void)c2_chartNumber;
  (void)c2_instanceNumber;
}

static const mxArray *c2_sf_marshallOut(void *chartInstanceVoid, void *c2_inData)
{
  const mxArray *c2_mxArrayOutData = NULL;
  int32_T c2_i37;
  real_T c2_u[2];
  const mxArray *c2_y = NULL;
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c2_mxArrayOutData = NULL;
  for (c2_i37 = 0; c2_i37 < 2; c2_i37++) {
    c2_u[c2_i37] = (*(real_T (*)[2])c2_inData)[c2_i37];
  }

  c2_y = NULL;
  sf_mex_assign(&c2_y, sf_mex_create("y", c2_u, 0, 0U, 1U, 0U, 2, 1, 2), false);
  sf_mex_assign(&c2_mxArrayOutData, c2_y, false);
  return c2_mxArrayOutData;
}

static void c2_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_b_th2, const char_T *c2_identifier, real_T
  c2_y[2])
{
  emlrtMsgIdentifier c2_thisId;
  c2_thisId.fIdentifier = c2_identifier;
  c2_thisId.fParent = NULL;
  c2_b_emlrt_marshallIn(chartInstance, sf_mex_dup(c2_b_th2), &c2_thisId, c2_y);
  sf_mex_destroy(&c2_b_th2);
}

static void c2_b_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId,
  real_T c2_y[2])
{
  real_T c2_dv3[2];
  int32_T c2_i38;
  (void)chartInstance;
  sf_mex_import(c2_parentId, sf_mex_dup(c2_u), c2_dv3, 1, 0, 0U, 1, 0U, 2, 1, 2);
  for (c2_i38 = 0; c2_i38 < 2; c2_i38++) {
    c2_y[c2_i38] = c2_dv3[c2_i38];
  }

  sf_mex_destroy(&c2_u);
}

static void c2_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c2_mxArrayInData, const char_T *c2_varName, void *c2_outData)
{
  const mxArray *c2_b_th2;
  const char_T *c2_identifier;
  emlrtMsgIdentifier c2_thisId;
  real_T c2_y[2];
  int32_T c2_i39;
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c2_b_th2 = sf_mex_dup(c2_mxArrayInData);
  c2_identifier = c2_varName;
  c2_thisId.fIdentifier = c2_identifier;
  c2_thisId.fParent = NULL;
  c2_b_emlrt_marshallIn(chartInstance, sf_mex_dup(c2_b_th2), &c2_thisId, c2_y);
  sf_mex_destroy(&c2_b_th2);
  for (c2_i39 = 0; c2_i39 < 2; c2_i39++) {
    (*(real_T (*)[2])c2_outData)[c2_i39] = c2_y[c2_i39];
  }

  sf_mex_destroy(&c2_mxArrayInData);
}

static const mxArray *c2_b_sf_marshallOut(void *chartInstanceVoid, void
  *c2_inData)
{
  const mxArray *c2_mxArrayOutData = NULL;
  real_T c2_u;
  const mxArray *c2_y = NULL;
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c2_mxArrayOutData = NULL;
  c2_u = *(real_T *)c2_inData;
  c2_y = NULL;
  sf_mex_assign(&c2_y, sf_mex_create("y", &c2_u, 0, 0U, 0U, 0U, 0), false);
  sf_mex_assign(&c2_mxArrayOutData, c2_y, false);
  return c2_mxArrayOutData;
}

static real_T c2_c_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_b_T2, const char_T *c2_identifier)
{
  real_T c2_y;
  emlrtMsgIdentifier c2_thisId;
  c2_thisId.fIdentifier = c2_identifier;
  c2_thisId.fParent = NULL;
  c2_y = c2_d_emlrt_marshallIn(chartInstance, sf_mex_dup(c2_b_T2), &c2_thisId);
  sf_mex_destroy(&c2_b_T2);
  return c2_y;
}

static real_T c2_d_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId)
{
  real_T c2_y;
  real_T c2_d0;
  (void)chartInstance;
  sf_mex_import(c2_parentId, sf_mex_dup(c2_u), &c2_d0, 1, 0, 0U, 0, 0U, 0);
  c2_y = c2_d0;
  sf_mex_destroy(&c2_u);
  return c2_y;
}

static void c2_b_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c2_mxArrayInData, const char_T *c2_varName, void *c2_outData)
{
  const mxArray *c2_b_T2;
  const char_T *c2_identifier;
  emlrtMsgIdentifier c2_thisId;
  real_T c2_y;
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c2_b_T2 = sf_mex_dup(c2_mxArrayInData);
  c2_identifier = c2_varName;
  c2_thisId.fIdentifier = c2_identifier;
  c2_thisId.fParent = NULL;
  c2_y = c2_d_emlrt_marshallIn(chartInstance, sf_mex_dup(c2_b_T2), &c2_thisId);
  sf_mex_destroy(&c2_b_T2);
  *(real_T *)c2_outData = c2_y;
  sf_mex_destroy(&c2_mxArrayInData);
}

static const mxArray *c2_c_sf_marshallOut(void *chartInstanceVoid, void
  *c2_inData)
{
  const mxArray *c2_mxArrayOutData = NULL;
  int32_T c2_i40;
  real_T c2_u[2];
  const mxArray *c2_y = NULL;
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c2_mxArrayOutData = NULL;
  for (c2_i40 = 0; c2_i40 < 2; c2_i40++) {
    c2_u[c2_i40] = (*(real_T (*)[2])c2_inData)[c2_i40];
  }

  c2_y = NULL;
  sf_mex_assign(&c2_y, sf_mex_create("y", c2_u, 0, 0U, 1U, 0U, 1, 2), false);
  sf_mex_assign(&c2_mxArrayOutData, c2_y, false);
  return c2_mxArrayOutData;
}

static void c2_e_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId,
  real_T c2_y[2])
{
  real_T c2_dv4[2];
  int32_T c2_i41;
  (void)chartInstance;
  sf_mex_import(c2_parentId, sf_mex_dup(c2_u), c2_dv4, 1, 0, 0U, 1, 0U, 1, 2);
  for (c2_i41 = 0; c2_i41 < 2; c2_i41++) {
    c2_y[c2_i41] = c2_dv4[c2_i41];
  }

  sf_mex_destroy(&c2_u);
}

static void c2_c_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c2_mxArrayInData, const char_T *c2_varName, void *c2_outData)
{
  const mxArray *c2_ddt;
  const char_T *c2_identifier;
  emlrtMsgIdentifier c2_thisId;
  real_T c2_y[2];
  int32_T c2_i42;
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c2_ddt = sf_mex_dup(c2_mxArrayInData);
  c2_identifier = c2_varName;
  c2_thisId.fIdentifier = c2_identifier;
  c2_thisId.fParent = NULL;
  c2_e_emlrt_marshallIn(chartInstance, sf_mex_dup(c2_ddt), &c2_thisId, c2_y);
  sf_mex_destroy(&c2_ddt);
  for (c2_i42 = 0; c2_i42 < 2; c2_i42++) {
    (*(real_T (*)[2])c2_outData)[c2_i42] = c2_y[c2_i42];
  }

  sf_mex_destroy(&c2_mxArrayInData);
}

static const mxArray *c2_d_sf_marshallOut(void *chartInstanceVoid, void
  *c2_inData)
{
  const mxArray *c2_mxArrayOutData = NULL;
  int32_T c2_i43;
  real_T c2_u[4];
  const mxArray *c2_y = NULL;
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c2_mxArrayOutData = NULL;
  for (c2_i43 = 0; c2_i43 < 4; c2_i43++) {
    c2_u[c2_i43] = (*(real_T (*)[4])c2_inData)[c2_i43];
  }

  c2_y = NULL;
  sf_mex_assign(&c2_y, sf_mex_create("y", c2_u, 0, 0U, 1U, 0U, 1, 4), false);
  sf_mex_assign(&c2_mxArrayOutData, c2_y, false);
  return c2_mxArrayOutData;
}

static void c2_f_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId,
  real_T c2_y[4])
{
  real_T c2_dv5[4];
  int32_T c2_i44;
  (void)chartInstance;
  sf_mex_import(c2_parentId, sf_mex_dup(c2_u), c2_dv5, 1, 0, 0U, 1, 0U, 1, 4);
  for (c2_i44 = 0; c2_i44 < 4; c2_i44++) {
    c2_y[c2_i44] = c2_dv5[c2_i44];
  }

  sf_mex_destroy(&c2_u);
}

static void c2_d_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c2_mxArrayInData, const char_T *c2_varName, void *c2_outData)
{
  const mxArray *c2_e;
  const char_T *c2_identifier;
  emlrtMsgIdentifier c2_thisId;
  real_T c2_y[4];
  int32_T c2_i45;
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c2_e = sf_mex_dup(c2_mxArrayInData);
  c2_identifier = c2_varName;
  c2_thisId.fIdentifier = c2_identifier;
  c2_thisId.fParent = NULL;
  c2_f_emlrt_marshallIn(chartInstance, sf_mex_dup(c2_e), &c2_thisId, c2_y);
  sf_mex_destroy(&c2_e);
  for (c2_i45 = 0; c2_i45 < 4; c2_i45++) {
    (*(real_T (*)[4])c2_outData)[c2_i45] = c2_y[c2_i45];
  }

  sf_mex_destroy(&c2_mxArrayInData);
}

static const mxArray *c2_e_sf_marshallOut(void *chartInstanceVoid, void
  *c2_inData)
{
  const mxArray *c2_mxArrayOutData = NULL;
  int32_T c2_i46;
  int32_T c2_i47;
  int32_T c2_i48;
  real_T c2_u[4];
  const mxArray *c2_y = NULL;
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c2_mxArrayOutData = NULL;
  c2_i46 = 0;
  for (c2_i47 = 0; c2_i47 < 2; c2_i47++) {
    for (c2_i48 = 0; c2_i48 < 2; c2_i48++) {
      c2_u[c2_i48 + c2_i46] = (*(real_T (*)[4])c2_inData)[c2_i48 + c2_i46];
    }

    c2_i46 += 2;
  }

  c2_y = NULL;
  sf_mex_assign(&c2_y, sf_mex_create("y", c2_u, 0, 0U, 1U, 0U, 2, 2, 2), false);
  sf_mex_assign(&c2_mxArrayOutData, c2_y, false);
  return c2_mxArrayOutData;
}

static void c2_g_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId,
  real_T c2_y[4])
{
  real_T c2_dv6[4];
  int32_T c2_i49;
  (void)chartInstance;
  sf_mex_import(c2_parentId, sf_mex_dup(c2_u), c2_dv6, 1, 0, 0U, 1, 0U, 2, 2, 2);
  for (c2_i49 = 0; c2_i49 < 4; c2_i49++) {
    c2_y[c2_i49] = c2_dv6[c2_i49];
  }

  sf_mex_destroy(&c2_u);
}

static void c2_e_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c2_mxArrayInData, const char_T *c2_varName, void *c2_outData)
{
  const mxArray *c2_D;
  const char_T *c2_identifier;
  emlrtMsgIdentifier c2_thisId;
  real_T c2_y[4];
  int32_T c2_i50;
  int32_T c2_i51;
  int32_T c2_i52;
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c2_D = sf_mex_dup(c2_mxArrayInData);
  c2_identifier = c2_varName;
  c2_thisId.fIdentifier = c2_identifier;
  c2_thisId.fParent = NULL;
  c2_g_emlrt_marshallIn(chartInstance, sf_mex_dup(c2_D), &c2_thisId, c2_y);
  sf_mex_destroy(&c2_D);
  c2_i50 = 0;
  for (c2_i51 = 0; c2_i51 < 2; c2_i51++) {
    for (c2_i52 = 0; c2_i52 < 2; c2_i52++) {
      (*(real_T (*)[4])c2_outData)[c2_i52 + c2_i50] = c2_y[c2_i52 + c2_i50];
    }

    c2_i50 += 2;
  }

  sf_mex_destroy(&c2_mxArrayInData);
}

const mxArray *sf_c2_computedTorquePD_get_eml_resolved_functions_info(void)
{
  const mxArray *c2_nameCaptureInfo = NULL;
  c2_nameCaptureInfo = NULL;
  sf_mex_assign(&c2_nameCaptureInfo, sf_mex_create("nameCaptureInfo", NULL, 0,
    0U, 1U, 0U, 2, 0, 1), false);
  return c2_nameCaptureInfo;
}

static void c2_diff(SFc2_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static real_T c2_mpower(SFc2_computedTorquePDInstanceStruct *chartInstance,
  real_T c2_a)
{
  real_T c2_b_a;
  real_T c2_c_a;
  real_T c2_ak;
  real_T c2_d_a;
  c2_b_a = c2_a;
  c2_c_a = c2_b_a;
  c2_eml_scalar_eg(chartInstance);
  c2_dimagree(chartInstance);
  c2_ak = c2_c_a;
  c2_d_a = c2_ak;
  c2_eml_scalar_eg(chartInstance);
  return c2_d_a * c2_d_a;
}

static void c2_eml_scalar_eg(SFc2_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void c2_dimagree(SFc2_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void c2_b_eml_scalar_eg(SFc2_computedTorquePDInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void c2_eml_xgemm(SFc2_computedTorquePDInstanceStruct *chartInstance,
  real_T c2_A[4], real_T c2_B[2], real_T c2_C[2], real_T c2_b_C[2])
{
  int32_T c2_i53;
  int32_T c2_i54;
  real_T c2_b_A[4];
  int32_T c2_i55;
  real_T c2_b_B[2];
  for (c2_i53 = 0; c2_i53 < 2; c2_i53++) {
    c2_b_C[c2_i53] = c2_C[c2_i53];
  }

  for (c2_i54 = 0; c2_i54 < 4; c2_i54++) {
    c2_b_A[c2_i54] = c2_A[c2_i54];
  }

  for (c2_i55 = 0; c2_i55 < 2; c2_i55++) {
    c2_b_B[c2_i55] = c2_B[c2_i55];
  }

  c2_b_eml_xgemm(chartInstance, c2_b_A, c2_b_B, c2_b_C);
}

static void c2_inv2x2(SFc2_computedTorquePDInstanceStruct *chartInstance, real_T
                      c2_x[4], real_T c2_y[4])
{
  real_T c2_b_x;
  real_T c2_c_x;
  real_T c2_d_x;
  real_T c2_e_x;
  real_T c2_b_y;
  real_T c2_f_x;
  real_T c2_g_x;
  real_T c2_c_y;
  real_T c2_d;
  real_T c2_h_x;
  real_T c2_i_x;
  real_T c2_j_x;
  real_T c2_k_x;
  real_T c2_d_y;
  real_T c2_l_x;
  real_T c2_m_x;
  real_T c2_e_y;
  real_T c2_b_d;
  real_T c2_A;
  real_T c2_B;
  real_T c2_n_x;
  real_T c2_f_y;
  real_T c2_o_x;
  real_T c2_g_y;
  real_T c2_p_x;
  real_T c2_h_y;
  real_T c2_r;
  real_T c2_b_B;
  real_T c2_i_y;
  real_T c2_j_y;
  real_T c2_k_y;
  real_T c2_t;
  real_T c2_b_A;
  real_T c2_c_B;
  real_T c2_q_x;
  real_T c2_l_y;
  real_T c2_r_x;
  real_T c2_m_y;
  real_T c2_s_x;
  real_T c2_n_y;
  real_T c2_o_y;
  real_T c2_c_A;
  real_T c2_d_B;
  real_T c2_t_x;
  real_T c2_p_y;
  real_T c2_u_x;
  real_T c2_q_y;
  real_T c2_v_x;
  real_T c2_r_y;
  real_T c2_s_y;
  real_T c2_d_A;
  real_T c2_e_B;
  real_T c2_w_x;
  real_T c2_t_y;
  real_T c2_x_x;
  real_T c2_u_y;
  real_T c2_y_x;
  real_T c2_v_y;
  real_T c2_f_B;
  real_T c2_w_y;
  real_T c2_x_y;
  real_T c2_y_y;
  real_T c2_e_A;
  real_T c2_g_B;
  real_T c2_ab_x;
  real_T c2_ab_y;
  real_T c2_bb_x;
  real_T c2_bb_y;
  real_T c2_cb_x;
  real_T c2_cb_y;
  real_T c2_db_y;
  real_T c2_f_A;
  real_T c2_h_B;
  real_T c2_db_x;
  real_T c2_eb_y;
  real_T c2_eb_x;
  real_T c2_fb_y;
  real_T c2_fb_x;
  real_T c2_gb_y;
  real_T c2_hb_y;
  (void)chartInstance;
  c2_b_x = c2_x[1];
  c2_c_x = c2_b_x;
  c2_d_x = c2_c_x;
  c2_e_x = c2_d_x;
  c2_b_y = muDoubleScalarAbs(c2_e_x);
  c2_f_x = 0.0;
  c2_g_x = c2_f_x;
  c2_c_y = muDoubleScalarAbs(c2_g_x);
  c2_d = c2_b_y + c2_c_y;
  c2_h_x = c2_x[0];
  c2_i_x = c2_h_x;
  c2_j_x = c2_i_x;
  c2_k_x = c2_j_x;
  c2_d_y = muDoubleScalarAbs(c2_k_x);
  c2_l_x = 0.0;
  c2_m_x = c2_l_x;
  c2_e_y = muDoubleScalarAbs(c2_m_x);
  c2_b_d = c2_d_y + c2_e_y;
  if (c2_d > c2_b_d) {
    c2_A = c2_x[0];
    c2_B = c2_x[1];
    c2_n_x = c2_A;
    c2_f_y = c2_B;
    c2_o_x = c2_n_x;
    c2_g_y = c2_f_y;
    c2_p_x = c2_o_x;
    c2_h_y = c2_g_y;
    c2_r = c2_p_x / c2_h_y;
    c2_b_B = c2_r * c2_x[3] - c2_x[2];
    c2_i_y = c2_b_B;
    c2_j_y = c2_i_y;
    c2_k_y = c2_j_y;
    c2_t = 1.0 / c2_k_y;
    c2_b_A = c2_x[3];
    c2_c_B = c2_x[1];
    c2_q_x = c2_b_A;
    c2_l_y = c2_c_B;
    c2_r_x = c2_q_x;
    c2_m_y = c2_l_y;
    c2_s_x = c2_r_x;
    c2_n_y = c2_m_y;
    c2_o_y = c2_s_x / c2_n_y;
    c2_y[0] = c2_o_y * c2_t;
    c2_y[1] = -c2_t;
    c2_c_A = -c2_x[2];
    c2_d_B = c2_x[1];
    c2_t_x = c2_c_A;
    c2_p_y = c2_d_B;
    c2_u_x = c2_t_x;
    c2_q_y = c2_p_y;
    c2_v_x = c2_u_x;
    c2_r_y = c2_q_y;
    c2_s_y = c2_v_x / c2_r_y;
    c2_y[2] = c2_s_y * c2_t;
    c2_y[3] = c2_r * c2_t;
  } else {
    c2_d_A = c2_x[1];
    c2_e_B = c2_x[0];
    c2_w_x = c2_d_A;
    c2_t_y = c2_e_B;
    c2_x_x = c2_w_x;
    c2_u_y = c2_t_y;
    c2_y_x = c2_x_x;
    c2_v_y = c2_u_y;
    c2_r = c2_y_x / c2_v_y;
    c2_f_B = c2_x[3] - c2_r * c2_x[2];
    c2_w_y = c2_f_B;
    c2_x_y = c2_w_y;
    c2_y_y = c2_x_y;
    c2_t = 1.0 / c2_y_y;
    c2_e_A = c2_x[3];
    c2_g_B = c2_x[0];
    c2_ab_x = c2_e_A;
    c2_ab_y = c2_g_B;
    c2_bb_x = c2_ab_x;
    c2_bb_y = c2_ab_y;
    c2_cb_x = c2_bb_x;
    c2_cb_y = c2_bb_y;
    c2_db_y = c2_cb_x / c2_cb_y;
    c2_y[0] = c2_db_y * c2_t;
    c2_y[1] = -c2_r * c2_t;
    c2_f_A = -c2_x[2];
    c2_h_B = c2_x[0];
    c2_db_x = c2_f_A;
    c2_eb_y = c2_h_B;
    c2_eb_x = c2_db_x;
    c2_fb_y = c2_eb_y;
    c2_fb_x = c2_eb_x;
    c2_gb_y = c2_fb_y;
    c2_hb_y = c2_fb_x / c2_gb_y;
    c2_y[2] = c2_hb_y * c2_t;
    c2_y[3] = c2_t;
  }
}

static real_T c2_norm(SFc2_computedTorquePDInstanceStruct *chartInstance, real_T
                      c2_x[4])
{
  real_T c2_y;
  int32_T c2_j;
  real_T c2_b_j;
  real_T c2_s;
  int32_T c2_i;
  real_T c2_b_i;
  real_T c2_b_x;
  real_T c2_c_x;
  real_T c2_b_y;
  real_T c2_d_x;
  boolean_T c2_b;
  boolean_T exitg1;
  (void)chartInstance;
  c2_y = 0.0;
  c2_j = 0;
  exitg1 = false;
  while ((exitg1 == false) && (c2_j < 2)) {
    c2_b_j = 1.0 + (real_T)c2_j;
    c2_s = 0.0;
    for (c2_i = 0; c2_i < 2; c2_i++) {
      c2_b_i = 1.0 + (real_T)c2_i;
      c2_b_x = c2_x[(_SFD_EML_ARRAY_BOUNDS_CHECK("", (int32_T)_SFD_INTEGER_CHECK
        ("", c2_b_i), 1, 2, 1, 0) + ((_SFD_EML_ARRAY_BOUNDS_CHECK("", (int32_T)
        _SFD_INTEGER_CHECK("", c2_b_j), 1, 2, 2, 0) - 1) << 1)) - 1];
      c2_c_x = c2_b_x;
      c2_b_y = muDoubleScalarAbs(c2_c_x);
      c2_s += c2_b_y;
    }

    c2_d_x = c2_s;
    c2_b = muDoubleScalarIsNaN(c2_d_x);
    if (c2_b) {
      c2_y = rtNaN;
      exitg1 = true;
    } else {
      if (c2_s > c2_y) {
        c2_y = c2_s;
      }

      c2_j++;
    }
  }

  return c2_y;
}

static void c2_eml_warning(SFc2_computedTorquePDInstanceStruct *chartInstance)
{
  const mxArray *c2_y = NULL;
  static char_T c2_varargin_1[27] = { 'C', 'o', 'd', 'e', 'r', ':', 'M', 'A',
    'T', 'L', 'A', 'B', ':', 's', 'i', 'n', 'g', 'u', 'l', 'a', 'r', 'M', 'a',
    't', 'r', 'i', 'x' };

  (void)chartInstance;
  c2_y = NULL;
  sf_mex_assign(&c2_y, sf_mex_create("y", c2_varargin_1, 10, 0U, 1U, 0U, 2, 1,
    27), false);
  sf_mex_call_debug(sfGlobalDebugInstanceStruct, "warning", 0U, 1U, 14,
                    sf_mex_call_debug(sfGlobalDebugInstanceStruct, "message", 1U,
    1U, 14, c2_y));
}

static void c2_b_eml_warning(SFc2_computedTorquePDInstanceStruct *chartInstance,
  char_T c2_varargin_2[14])
{
  const mxArray *c2_y = NULL;
  static char_T c2_varargin_1[33] = { 'C', 'o', 'd', 'e', 'r', ':', 'M', 'A',
    'T', 'L', 'A', 'B', ':', 'i', 'l', 'l', 'C', 'o', 'n', 'd', 'i', 't', 'i',
    'o', 'n', 'e', 'd', 'M', 'a', 't', 'r', 'i', 'x' };

  const mxArray *c2_b_y = NULL;
  (void)chartInstance;
  c2_y = NULL;
  sf_mex_assign(&c2_y, sf_mex_create("y", c2_varargin_1, 10, 0U, 1U, 0U, 2, 1,
    33), false);
  c2_b_y = NULL;
  sf_mex_assign(&c2_b_y, sf_mex_create("y", c2_varargin_2, 10, 0U, 1U, 0U, 2, 1,
    14), false);
  sf_mex_call_debug(sfGlobalDebugInstanceStruct, "warning", 0U, 1U, 14,
                    sf_mex_call_debug(sfGlobalDebugInstanceStruct, "message", 1U,
    2U, 14, c2_y, 14, c2_b_y));
}

static void c2_h_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_sprintf, const char_T *c2_identifier, char_T
  c2_y[14])
{
  emlrtMsgIdentifier c2_thisId;
  c2_thisId.fIdentifier = c2_identifier;
  c2_thisId.fParent = NULL;
  c2_i_emlrt_marshallIn(chartInstance, sf_mex_dup(c2_sprintf), &c2_thisId, c2_y);
  sf_mex_destroy(&c2_sprintf);
}

static void c2_i_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId,
  char_T c2_y[14])
{
  char_T c2_cv0[14];
  int32_T c2_i56;
  (void)chartInstance;
  sf_mex_import(c2_parentId, sf_mex_dup(c2_u), c2_cv0, 1, 10, 0U, 1, 0U, 2, 1,
                14);
  for (c2_i56 = 0; c2_i56 < 14; c2_i56++) {
    c2_y[c2_i56] = c2_cv0[c2_i56];
  }

  sf_mex_destroy(&c2_u);
}

static const mxArray *c2_f_sf_marshallOut(void *chartInstanceVoid, void
  *c2_inData)
{
  const mxArray *c2_mxArrayOutData = NULL;
  int32_T c2_u;
  const mxArray *c2_y = NULL;
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c2_mxArrayOutData = NULL;
  c2_u = *(int32_T *)c2_inData;
  c2_y = NULL;
  sf_mex_assign(&c2_y, sf_mex_create("y", &c2_u, 6, 0U, 0U, 0U, 0), false);
  sf_mex_assign(&c2_mxArrayOutData, c2_y, false);
  return c2_mxArrayOutData;
}

static int32_T c2_j_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId)
{
  int32_T c2_y;
  int32_T c2_i57;
  (void)chartInstance;
  sf_mex_import(c2_parentId, sf_mex_dup(c2_u), &c2_i57, 1, 6, 0U, 0, 0U, 0);
  c2_y = c2_i57;
  sf_mex_destroy(&c2_u);
  return c2_y;
}

static void c2_f_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c2_mxArrayInData, const char_T *c2_varName, void *c2_outData)
{
  const mxArray *c2_b_sfEvent;
  const char_T *c2_identifier;
  emlrtMsgIdentifier c2_thisId;
  int32_T c2_y;
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c2_b_sfEvent = sf_mex_dup(c2_mxArrayInData);
  c2_identifier = c2_varName;
  c2_thisId.fIdentifier = c2_identifier;
  c2_thisId.fParent = NULL;
  c2_y = c2_j_emlrt_marshallIn(chartInstance, sf_mex_dup(c2_b_sfEvent),
    &c2_thisId);
  sf_mex_destroy(&c2_b_sfEvent);
  *(int32_T *)c2_outData = c2_y;
  sf_mex_destroy(&c2_mxArrayInData);
}

static uint8_T c2_k_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_b_is_active_c2_computedTorquePD, const
  char_T *c2_identifier)
{
  uint8_T c2_y;
  emlrtMsgIdentifier c2_thisId;
  c2_thisId.fIdentifier = c2_identifier;
  c2_thisId.fParent = NULL;
  c2_y = c2_l_emlrt_marshallIn(chartInstance, sf_mex_dup
    (c2_b_is_active_c2_computedTorquePD), &c2_thisId);
  sf_mex_destroy(&c2_b_is_active_c2_computedTorquePD);
  return c2_y;
}

static uint8_T c2_l_emlrt_marshallIn(SFc2_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c2_u, const emlrtMsgIdentifier *c2_parentId)
{
  uint8_T c2_y;
  uint8_T c2_u0;
  (void)chartInstance;
  sf_mex_import(c2_parentId, sf_mex_dup(c2_u), &c2_u0, 1, 3, 0U, 0, 0U, 0);
  c2_y = c2_u0;
  sf_mex_destroy(&c2_u);
  return c2_y;
}

static void c2_b_eml_xgemm(SFc2_computedTorquePDInstanceStruct *chartInstance,
  real_T c2_A[4], real_T c2_B[2], real_T c2_C[2])
{
  int32_T c2_i58;
  int32_T c2_i59;
  int32_T c2_i60;
  (void)chartInstance;
  for (c2_i58 = 0; c2_i58 < 2; c2_i58++) {
    c2_C[c2_i58] = 0.0;
    c2_i59 = 0;
    for (c2_i60 = 0; c2_i60 < 2; c2_i60++) {
      c2_C[c2_i58] += c2_A[c2_i59 + c2_i58] * c2_B[c2_i60];
      c2_i59 += 2;
    }
  }
}

static void init_dsm_address_info(SFc2_computedTorquePDInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void init_simulink_io_address(SFc2_computedTorquePDInstanceStruct
  *chartInstance)
{
  chartInstance->c2_des_th1 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 0);
  chartInstance->c2_T1 = (real_T *)ssGetOutputPortSignal_wrapper
    (chartInstance->S, 1);
  chartInstance->c2_des_th2 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 1);
  chartInstance->c2_T2 = (real_T *)ssGetOutputPortSignal_wrapper
    (chartInstance->S, 2);
  chartInstance->c2_th1 = (real_T (*)[2])ssGetOutputPortSignal_wrapper
    (chartInstance->S, 3);
  chartInstance->c2_th2 = (real_T (*)[2])ssGetOutputPortSignal_wrapper
    (chartInstance->S, 4);
}

/* SFunction Glue Code */
#ifdef utFree
#undef utFree
#endif

#ifdef utMalloc
#undef utMalloc
#endif

#ifdef __cplusplus

extern "C" void *utMalloc(size_t size);
extern "C" void utFree(void*);

#else

extern void *utMalloc(size_t size);
extern void utFree(void*);

#endif

void sf_c2_computedTorquePD_get_check_sum(mxArray *plhs[])
{
  ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(1677511504U);
  ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(244247142U);
  ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(947832022U);
  ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(2820698067U);
}

mxArray* sf_c2_computedTorquePD_get_post_codegen_info(void);
mxArray *sf_c2_computedTorquePD_get_autoinheritance_info(void)
{
  const char *autoinheritanceFields[] = { "checksum", "inputs", "parameters",
    "outputs", "locals", "postCodegenInfo" };

  mxArray *mxAutoinheritanceInfo = mxCreateStructMatrix(1, 1, sizeof
    (autoinheritanceFields)/sizeof(autoinheritanceFields[0]),
    autoinheritanceFields);

  {
    mxArray *mxChecksum = mxCreateString("Du2Cu4PH4dAUFh4DD4jjXG");
    mxSetField(mxAutoinheritanceInfo,0,"checksum",mxChecksum);
  }

  {
    const char *dataFields[] = { "size", "type", "complexity" };

    mxArray *mxData = mxCreateStructMatrix(1,2,3,dataFields);

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,2,mxREAL);
      double *pr = mxGetPr(mxSize);
      pr[0] = (double)(1);
      pr[1] = (double)(1);
      mxSetField(mxData,0,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,0,"type",mxType);
    }

    mxSetField(mxData,0,"complexity",mxCreateDoubleScalar(0));

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,2,mxREAL);
      double *pr = mxGetPr(mxSize);
      pr[0] = (double)(1);
      pr[1] = (double)(1);
      mxSetField(mxData,1,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,1,"type",mxType);
    }

    mxSetField(mxData,1,"complexity",mxCreateDoubleScalar(0));
    mxSetField(mxAutoinheritanceInfo,0,"inputs",mxData);
  }

  {
    mxSetField(mxAutoinheritanceInfo,0,"parameters",mxCreateDoubleMatrix(0,0,
                mxREAL));
  }

  {
    const char *dataFields[] = { "size", "type", "complexity" };

    mxArray *mxData = mxCreateStructMatrix(1,4,3,dataFields);

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,2,mxREAL);
      double *pr = mxGetPr(mxSize);
      pr[0] = (double)(1);
      pr[1] = (double)(1);
      mxSetField(mxData,0,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,0,"type",mxType);
    }

    mxSetField(mxData,0,"complexity",mxCreateDoubleScalar(0));

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,2,mxREAL);
      double *pr = mxGetPr(mxSize);
      pr[0] = (double)(1);
      pr[1] = (double)(1);
      mxSetField(mxData,1,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,1,"type",mxType);
    }

    mxSetField(mxData,1,"complexity",mxCreateDoubleScalar(0));

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,2,mxREAL);
      double *pr = mxGetPr(mxSize);
      pr[0] = (double)(1);
      pr[1] = (double)(2);
      mxSetField(mxData,2,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,2,"type",mxType);
    }

    mxSetField(mxData,2,"complexity",mxCreateDoubleScalar(0));

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,2,mxREAL);
      double *pr = mxGetPr(mxSize);
      pr[0] = (double)(1);
      pr[1] = (double)(2);
      mxSetField(mxData,3,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,3,"type",mxType);
    }

    mxSetField(mxData,3,"complexity",mxCreateDoubleScalar(0));
    mxSetField(mxAutoinheritanceInfo,0,"outputs",mxData);
  }

  {
    mxSetField(mxAutoinheritanceInfo,0,"locals",mxCreateDoubleMatrix(0,0,mxREAL));
  }

  {
    mxArray* mxPostCodegenInfo = sf_c2_computedTorquePD_get_post_codegen_info();
    mxSetField(mxAutoinheritanceInfo,0,"postCodegenInfo",mxPostCodegenInfo);
  }

  return(mxAutoinheritanceInfo);
}

mxArray *sf_c2_computedTorquePD_third_party_uses_info(void)
{
  mxArray * mxcell3p = mxCreateCellMatrix(1,0);
  return(mxcell3p);
}

mxArray *sf_c2_computedTorquePD_jit_fallback_info(void)
{
  const char *infoFields[] = { "fallbackType", "fallbackReason",
    "hiddenFallbackType", "hiddenFallbackReason", "incompatibleSymbol" };

  mxArray *mxInfo = mxCreateStructMatrix(1, 1, 5, infoFields);
  mxArray *fallbackType = mxCreateString("pre");
  mxArray *fallbackReason = mxCreateString("hasBreakpoints");
  mxArray *hiddenFallbackType = mxCreateString("none");
  mxArray *hiddenFallbackReason = mxCreateString("");
  mxArray *incompatibleSymbol = mxCreateString("");
  mxSetField(mxInfo, 0, infoFields[0], fallbackType);
  mxSetField(mxInfo, 0, infoFields[1], fallbackReason);
  mxSetField(mxInfo, 0, infoFields[2], hiddenFallbackType);
  mxSetField(mxInfo, 0, infoFields[3], hiddenFallbackReason);
  mxSetField(mxInfo, 0, infoFields[4], incompatibleSymbol);
  return mxInfo;
}

mxArray *sf_c2_computedTorquePD_updateBuildInfo_args_info(void)
{
  mxArray *mxBIArgs = mxCreateCellMatrix(1,0);
  return mxBIArgs;
}

mxArray* sf_c2_computedTorquePD_get_post_codegen_info(void)
{
  const char* fieldNames[] = { "exportedFunctionsUsedByThisChart",
    "exportedFunctionsChecksum" };

  mwSize dims[2] = { 1, 1 };

  mxArray* mxPostCodegenInfo = mxCreateStructArray(2, dims, sizeof(fieldNames)/
    sizeof(fieldNames[0]), fieldNames);

  {
    mxArray* mxExportedFunctionsChecksum = mxCreateString("");
    mwSize exp_dims[2] = { 0, 1 };

    mxArray* mxExportedFunctionsUsedByThisChart = mxCreateCellArray(2, exp_dims);
    mxSetField(mxPostCodegenInfo, 0, "exportedFunctionsUsedByThisChart",
               mxExportedFunctionsUsedByThisChart);
    mxSetField(mxPostCodegenInfo, 0, "exportedFunctionsChecksum",
               mxExportedFunctionsChecksum);
  }

  return mxPostCodegenInfo;
}

static const mxArray *sf_get_sim_state_info_c2_computedTorquePD(void)
{
  const char *infoFields[] = { "chartChecksum", "varInfo" };

  mxArray *mxInfo = mxCreateStructMatrix(1, 1, 2, infoFields);
  const char *infoEncStr[] = {
    "100 S1x5'type','srcId','name','auxInfo'{{M[1],M[5],T\"T1\",},{M[1],M[7],T\"T2\",},{M[1],M[8],T\"th1\",},{M[1],M[9],T\"th2\",},{M[8],M[0],T\"is_active_c2_computedTorquePD\",}}"
  };

  mxArray *mxVarInfo = sf_mex_decode_encoded_mx_struct_array(infoEncStr, 5, 10);
  mxArray *mxChecksum = mxCreateDoubleMatrix(1, 4, mxREAL);
  sf_c2_computedTorquePD_get_check_sum(&mxChecksum);
  mxSetField(mxInfo, 0, infoFields[0], mxChecksum);
  mxSetField(mxInfo, 0, infoFields[1], mxVarInfo);
  return mxInfo;
}

static void chart_debug_initialization(SimStruct *S, unsigned int
  fullDebuggerInitialization)
{
  if (!sim_mode_is_rtw_gen(S)) {
    SFc2_computedTorquePDInstanceStruct *chartInstance;
    ChartRunTimeInfo * crtInfo = (ChartRunTimeInfo *)(ssGetUserData(S));
    ChartInfoStruct * chartInfo = (ChartInfoStruct *)(crtInfo->instanceInfo);
    chartInstance = (SFc2_computedTorquePDInstanceStruct *)
      chartInfo->chartInstance;
    if (ssIsFirstInitCond(S) && fullDebuggerInitialization==1) {
      /* do this only if simulation is starting */
      {
        unsigned int chartAlreadyPresent;
        chartAlreadyPresent = sf_debug_initialize_chart
          (sfGlobalDebugInstanceStruct,
           _computedTorquePDMachineNumber_,
           2,
           1,
           1,
           0,
           6,
           0,
           0,
           0,
           0,
           0,
           &(chartInstance->chartNumber),
           &(chartInstance->instanceNumber),
           (void *)S);

        /* Each instance must initialize its own list of scripts */
        init_script_number_translation(_computedTorquePDMachineNumber_,
          chartInstance->chartNumber,chartInstance->instanceNumber);
        if (chartAlreadyPresent==0) {
          /* this is the first instance */
          sf_debug_set_chart_disable_implicit_casting
            (sfGlobalDebugInstanceStruct,_computedTorquePDMachineNumber_,
             chartInstance->chartNumber,1);
          sf_debug_set_chart_event_thresholds(sfGlobalDebugInstanceStruct,
            _computedTorquePDMachineNumber_,
            chartInstance->chartNumber,
            0,
            0,
            0);
          _SFD_SET_DATA_PROPS(0,1,1,0,"des_th1");
          _SFD_SET_DATA_PROPS(1,1,1,0,"des_th2");
          _SFD_SET_DATA_PROPS(2,2,0,1,"T1");
          _SFD_SET_DATA_PROPS(3,2,0,1,"T2");
          _SFD_SET_DATA_PROPS(4,2,0,1,"th1");
          _SFD_SET_DATA_PROPS(5,2,0,1,"th2");
          _SFD_STATE_INFO(0,0,2);
          _SFD_CH_SUBSTATE_COUNT(0);
          _SFD_CH_SUBSTATE_DECOMP(0);
        }

        _SFD_CV_INIT_CHART(0,0,0,0);

        {
          _SFD_CV_INIT_STATE(0,0,0,0,0,0,NULL,NULL);
        }

        _SFD_CV_INIT_TRANS(0,0,NULL,NULL,0,NULL);

        /* Initialization of MATLAB Function Model Coverage */
        _SFD_CV_INIT_EML(0,1,1,0,0,0,0,0,1,0,0,0);
        _SFD_CV_INIT_EML_FCN(0,0,"eML_blk_kernel",0,-1,1524);
        _SFD_CV_INIT_EML_FOR(0,1,0,496,508,1524);
        _SFD_SET_DATA_COMPILED_PROPS(0,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c2_b_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(1,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c2_b_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(2,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c2_b_sf_marshallOut,(MexInFcnForType)c2_b_sf_marshallIn);
        _SFD_SET_DATA_COMPILED_PROPS(3,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c2_b_sf_marshallOut,(MexInFcnForType)c2_b_sf_marshallIn);

        {
          unsigned int dimVector[2];
          dimVector[0]= 1;
          dimVector[1]= 2;
          _SFD_SET_DATA_COMPILED_PROPS(4,SF_DOUBLE,2,&(dimVector[0]),0,0,0,0.0,
            1.0,0,0,(MexFcnForType)c2_sf_marshallOut,(MexInFcnForType)
            c2_sf_marshallIn);
        }

        {
          unsigned int dimVector[2];
          dimVector[0]= 1;
          dimVector[1]= 2;
          _SFD_SET_DATA_COMPILED_PROPS(5,SF_DOUBLE,2,&(dimVector[0]),0,0,0,0.0,
            1.0,0,0,(MexFcnForType)c2_sf_marshallOut,(MexInFcnForType)
            c2_sf_marshallIn);
        }
      }
    } else {
      sf_debug_reset_current_state_configuration(sfGlobalDebugInstanceStruct,
        _computedTorquePDMachineNumber_,chartInstance->chartNumber,
        chartInstance->instanceNumber);
    }
  }
}

static void chart_debug_initialize_data_addresses(SimStruct *S)
{
  if (!sim_mode_is_rtw_gen(S)) {
    SFc2_computedTorquePDInstanceStruct *chartInstance;
    ChartRunTimeInfo * crtInfo = (ChartRunTimeInfo *)(ssGetUserData(S));
    ChartInfoStruct * chartInfo = (ChartInfoStruct *)(crtInfo->instanceInfo);
    chartInstance = (SFc2_computedTorquePDInstanceStruct *)
      chartInfo->chartInstance;
    if (ssIsFirstInitCond(S)) {
      /* do this only if simulation is starting and after we know the addresses of all data */
      {
        _SFD_SET_DATA_VALUE_PTR(0U, chartInstance->c2_des_th1);
        _SFD_SET_DATA_VALUE_PTR(2U, chartInstance->c2_T1);
        _SFD_SET_DATA_VALUE_PTR(1U, chartInstance->c2_des_th2);
        _SFD_SET_DATA_VALUE_PTR(3U, chartInstance->c2_T2);
        _SFD_SET_DATA_VALUE_PTR(4U, *chartInstance->c2_th1);
        _SFD_SET_DATA_VALUE_PTR(5U, *chartInstance->c2_th2);
      }
    }
  }
}

static const char* sf_get_instance_specialization(void)
{
  return "sUGbE1JwqmFUIX6u3wyslYC";
}

static void sf_opaque_initialize_c2_computedTorquePD(void *chartInstanceVar)
{
  chart_debug_initialization(((SFc2_computedTorquePDInstanceStruct*)
    chartInstanceVar)->S,0);
  initialize_params_c2_computedTorquePD((SFc2_computedTorquePDInstanceStruct*)
    chartInstanceVar);
  initialize_c2_computedTorquePD((SFc2_computedTorquePDInstanceStruct*)
    chartInstanceVar);
}

static void sf_opaque_enable_c2_computedTorquePD(void *chartInstanceVar)
{
  enable_c2_computedTorquePD((SFc2_computedTorquePDInstanceStruct*)
    chartInstanceVar);
}

static void sf_opaque_disable_c2_computedTorquePD(void *chartInstanceVar)
{
  disable_c2_computedTorquePD((SFc2_computedTorquePDInstanceStruct*)
    chartInstanceVar);
}

static void sf_opaque_gateway_c2_computedTorquePD(void *chartInstanceVar)
{
  sf_gateway_c2_computedTorquePD((SFc2_computedTorquePDInstanceStruct*)
    chartInstanceVar);
}

static const mxArray* sf_opaque_get_sim_state_c2_computedTorquePD(SimStruct* S)
{
  ChartRunTimeInfo * crtInfo = (ChartRunTimeInfo *)(ssGetUserData(S));
  ChartInfoStruct * chartInfo = (ChartInfoStruct *)(crtInfo->instanceInfo);
  return get_sim_state_c2_computedTorquePD((SFc2_computedTorquePDInstanceStruct*)
    chartInfo->chartInstance);         /* raw sim ctx */
}

static void sf_opaque_set_sim_state_c2_computedTorquePD(SimStruct* S, const
  mxArray *st)
{
  ChartRunTimeInfo * crtInfo = (ChartRunTimeInfo *)(ssGetUserData(S));
  ChartInfoStruct * chartInfo = (ChartInfoStruct *)(crtInfo->instanceInfo);
  set_sim_state_c2_computedTorquePD((SFc2_computedTorquePDInstanceStruct*)
    chartInfo->chartInstance, st);
}

static void sf_opaque_terminate_c2_computedTorquePD(void *chartInstanceVar)
{
  if (chartInstanceVar!=NULL) {
    SimStruct *S = ((SFc2_computedTorquePDInstanceStruct*) chartInstanceVar)->S;
    ChartRunTimeInfo * crtInfo = (ChartRunTimeInfo *)(ssGetUserData(S));
    if (sim_mode_is_rtw_gen(S) || sim_mode_is_external(S)) {
      sf_clear_rtw_identifier(S);
      unload_computedTorquePD_optimization_info();
    }

    finalize_c2_computedTorquePD((SFc2_computedTorquePDInstanceStruct*)
      chartInstanceVar);
    utFree(chartInstanceVar);
    if (crtInfo != NULL) {
      utFree(crtInfo);
    }

    ssSetUserData(S,NULL);
  }
}

static void sf_opaque_init_subchart_simstructs(void *chartInstanceVar)
{
  initSimStructsc2_computedTorquePD((SFc2_computedTorquePDInstanceStruct*)
    chartInstanceVar);
}

extern unsigned int sf_machine_global_initializer_called(void);
static void mdlProcessParameters_c2_computedTorquePD(SimStruct *S)
{
  int i;
  for (i=0;i<ssGetNumRunTimeParams(S);i++) {
    if (ssGetSFcnParamTunable(S,i)) {
      ssUpdateDlgParamAsRunTimeParam(S,i);
    }
  }

  if (sf_machine_global_initializer_called()) {
    ChartRunTimeInfo * crtInfo = (ChartRunTimeInfo *)(ssGetUserData(S));
    ChartInfoStruct * chartInfo = (ChartInfoStruct *)(crtInfo->instanceInfo);
    initialize_params_c2_computedTorquePD((SFc2_computedTorquePDInstanceStruct*)
      (chartInfo->chartInstance));
  }
}

static void mdlSetWorkWidths_c2_computedTorquePD(SimStruct *S)
{
  ssMdlUpdateIsEmpty(S, 1);
  if (sim_mode_is_rtw_gen(S) || sim_mode_is_external(S)) {
    mxArray *infoStruct = load_computedTorquePD_optimization_info();
    int_T chartIsInlinable =
      (int_T)sf_is_chart_inlinable(sf_get_instance_specialization(),infoStruct,2);
    ssSetStateflowIsInlinable(S,chartIsInlinable);
    ssSetRTWCG(S,1);
    ssSetEnableFcnIsTrivial(S,1);
    ssSetDisableFcnIsTrivial(S,1);
    ssSetNotMultipleInlinable(S,sf_rtw_info_uint_prop
      (sf_get_instance_specialization(),infoStruct,2,
       "gatewayCannotBeInlinedMultipleTimes"));
    sf_update_buildInfo(sf_get_instance_specialization(),infoStruct,2);
    if (chartIsInlinable) {
      ssSetInputPortOptimOpts(S, 0, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 1, SS_REUSABLE_AND_LOCAL);
      sf_mark_chart_expressionable_inputs(S,sf_get_instance_specialization(),
        infoStruct,2,2);
      sf_mark_chart_reusable_outputs(S,sf_get_instance_specialization(),
        infoStruct,2,4);
    }

    {
      unsigned int outPortIdx;
      for (outPortIdx=1; outPortIdx<=4; ++outPortIdx) {
        ssSetOutputPortOptimizeInIR(S, outPortIdx, 1U);
      }
    }

    {
      unsigned int inPortIdx;
      for (inPortIdx=0; inPortIdx < 2; ++inPortIdx) {
        ssSetInputPortOptimizeInIR(S, inPortIdx, 1U);
      }
    }

    sf_set_rtw_dwork_info(S,sf_get_instance_specialization(),infoStruct,2);
    ssSetHasSubFunctions(S,!(chartIsInlinable));
  } else {
  }

  ssSetOptions(S,ssGetOptions(S)|SS_OPTION_WORKS_WITH_CODE_REUSE);
  ssSetChecksum0(S,(1216556305U));
  ssSetChecksum1(S,(1486565125U));
  ssSetChecksum2(S,(221257501U));
  ssSetChecksum3(S,(4169430413U));
  ssSetmdlDerivatives(S, NULL);
  ssSetExplicitFCSSCtrl(S,1);
  ssSupportsMultipleExecInstances(S,1);
}

static void mdlRTW_c2_computedTorquePD(SimStruct *S)
{
  if (sim_mode_is_rtw_gen(S)) {
    ssWriteRTWStrParam(S, "StateflowChartType", "Embedded MATLAB");
  }
}

static void mdlStart_c2_computedTorquePD(SimStruct *S)
{
  SFc2_computedTorquePDInstanceStruct *chartInstance;
  ChartRunTimeInfo * crtInfo = (ChartRunTimeInfo *)utMalloc(sizeof
    (ChartRunTimeInfo));
  chartInstance = (SFc2_computedTorquePDInstanceStruct *)utMalloc(sizeof
    (SFc2_computedTorquePDInstanceStruct));
  memset(chartInstance, 0, sizeof(SFc2_computedTorquePDInstanceStruct));
  if (chartInstance==NULL) {
    sf_mex_error_message("Could not allocate memory for chart instance.");
  }

  chartInstance->chartInfo.chartInstance = chartInstance;
  chartInstance->chartInfo.isEMLChart = 1;
  chartInstance->chartInfo.chartInitialized = 0;
  chartInstance->chartInfo.sFunctionGateway =
    sf_opaque_gateway_c2_computedTorquePD;
  chartInstance->chartInfo.initializeChart =
    sf_opaque_initialize_c2_computedTorquePD;
  chartInstance->chartInfo.terminateChart =
    sf_opaque_terminate_c2_computedTorquePD;
  chartInstance->chartInfo.enableChart = sf_opaque_enable_c2_computedTorquePD;
  chartInstance->chartInfo.disableChart = sf_opaque_disable_c2_computedTorquePD;
  chartInstance->chartInfo.getSimState =
    sf_opaque_get_sim_state_c2_computedTorquePD;
  chartInstance->chartInfo.setSimState =
    sf_opaque_set_sim_state_c2_computedTorquePD;
  chartInstance->chartInfo.getSimStateInfo =
    sf_get_sim_state_info_c2_computedTorquePD;
  chartInstance->chartInfo.zeroCrossings = NULL;
  chartInstance->chartInfo.outputs = NULL;
  chartInstance->chartInfo.derivatives = NULL;
  chartInstance->chartInfo.mdlRTW = mdlRTW_c2_computedTorquePD;
  chartInstance->chartInfo.mdlStart = mdlStart_c2_computedTorquePD;
  chartInstance->chartInfo.mdlSetWorkWidths =
    mdlSetWorkWidths_c2_computedTorquePD;
  chartInstance->chartInfo.extModeExec = NULL;
  chartInstance->chartInfo.restoreLastMajorStepConfiguration = NULL;
  chartInstance->chartInfo.restoreBeforeLastMajorStepConfiguration = NULL;
  chartInstance->chartInfo.storeCurrentConfiguration = NULL;
  chartInstance->chartInfo.callAtomicSubchartUserFcn = NULL;
  chartInstance->chartInfo.callAtomicSubchartAutoFcn = NULL;
  chartInstance->chartInfo.debugInstance = sfGlobalDebugInstanceStruct;
  chartInstance->S = S;
  crtInfo->isEnhancedMooreMachine = 0;
  crtInfo->checksum = SF_RUNTIME_INFO_CHECKSUM;
  crtInfo->fCheckOverflow = sf_runtime_overflow_check_is_on(S);
  crtInfo->instanceInfo = (&(chartInstance->chartInfo));
  crtInfo->isJITEnabled = false;
  crtInfo->compiledInfo = NULL;
  ssSetUserData(S,(void *)(crtInfo));  /* register the chart instance with simstruct */
  init_dsm_address_info(chartInstance);
  init_simulink_io_address(chartInstance);
  if (!sim_mode_is_rtw_gen(S)) {
  }

  chart_debug_initialization(S,1);
}

void c2_computedTorquePD_method_dispatcher(SimStruct *S, int_T method, void
  *data)
{
  switch (method) {
   case SS_CALL_MDL_START:
    mdlStart_c2_computedTorquePD(S);
    break;

   case SS_CALL_MDL_SET_WORK_WIDTHS:
    mdlSetWorkWidths_c2_computedTorquePD(S);
    break;

   case SS_CALL_MDL_PROCESS_PARAMETERS:
    mdlProcessParameters_c2_computedTorquePD(S);
    break;

   default:
    /* Unhandled method */
    sf_mex_error_message("Stateflow Internal Error:\n"
                         "Error calling c2_computedTorquePD_method_dispatcher.\n"
                         "Can't handle method %d.\n", method);
    break;
  }
}
