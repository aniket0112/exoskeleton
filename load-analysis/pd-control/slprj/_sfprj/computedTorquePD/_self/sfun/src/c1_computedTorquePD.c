/* Include files */

#include "computedTorquePD_sfun.h"
#include "c1_computedTorquePD.h"
#include "mwmathutil.h"
#define CHARTINSTANCE_CHARTNUMBER      (chartInstance->chartNumber)
#define CHARTINSTANCE_INSTANCENUMBER   (chartInstance->instanceNumber)
#include "computedTorquePD_sfun_debug_macros.h"
#define _SF_MEX_LISTEN_FOR_CTRL_C(S)   sf_mex_listen_for_ctrl_c_with_debugger(S, sfGlobalDebugInstanceStruct);

static void chart_debug_initialization(SimStruct *S, unsigned int
  fullDebuggerInitialization);
static void chart_debug_initialize_data_addresses(SimStruct *S);
static const mxArray* sf_opaque_get_hover_data_for_msg(void *chartInstance,
  int32_T msgSSID);

/* Type Definitions */

/* Named Constants */
#define CALL_EVENT                     (-1)

/* Variable Declarations */

/* Variable Definitions */
static real_T _sfTime_;
static const char * c1_debug_family_names[33] = { "a1", "a2", "m1", "m2", "g",
  "Kp", "Kd", "Ki", "D", "H", "C", "e", "u", "U", "ddt", "nargin", "nargout",
  "des_ddth1", "des_ddth2", "th1", "th2", "dth1", "dth2", "e_th1", "e_th2",
  "e_dth1", "e_dth2", "e_ith1", "e_ith2", "T1", "T2", "ddth1", "ddth2" };

/* Function Declarations */
static void initialize_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance);
static void initialize_params_c1_computedTorquePD
  (SFc1_computedTorquePDInstanceStruct *chartInstance);
static void enable_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance);
static void disable_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance);
static void c1_update_debugger_state_c1_computedTorquePD
  (SFc1_computedTorquePDInstanceStruct *chartInstance);
static const mxArray *get_sim_state_c1_computedTorquePD
  (SFc1_computedTorquePDInstanceStruct *chartInstance);
static void set_sim_state_c1_computedTorquePD
  (SFc1_computedTorquePDInstanceStruct *chartInstance, const mxArray *c1_st);
static void finalize_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance);
static void sf_gateway_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance);
static void mdl_start_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance);
static void c1_chartstep_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance);
static void initSimStructsc1_computedTorquePD
  (SFc1_computedTorquePDInstanceStruct *chartInstance);
static void init_script_number_translation(uint32_T c1_machineNumber, uint32_T
  c1_chartNumber, uint32_T c1_instanceNumber);
static const mxArray *c1_sf_marshallOut(void *chartInstanceVoid, void *c1_inData);
static real_T c1_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_b_ddth2, const char_T *c1_identifier);
static real_T c1_b_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId);
static void c1_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c1_mxArrayInData, const char_T *c1_varName, void *c1_outData);
static const mxArray *c1_b_sf_marshallOut(void *chartInstanceVoid, void
  *c1_inData);
static void c1_c_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId,
  real_T c1_y[2]);
static void c1_b_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c1_mxArrayInData, const char_T *c1_varName, void *c1_outData);
static const mxArray *c1_c_sf_marshallOut(void *chartInstanceVoid, void
  *c1_inData);
static void c1_d_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId,
  real_T c1_y[6]);
static void c1_c_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c1_mxArrayInData, const char_T *c1_varName, void *c1_outData);
static const mxArray *c1_d_sf_marshallOut(void *chartInstanceVoid, void
  *c1_inData);
static void c1_e_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId,
  real_T c1_y[4]);
static void c1_d_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c1_mxArrayInData, const char_T *c1_varName, void *c1_outData);
static real_T c1_mpower(SFc1_computedTorquePDInstanceStruct *chartInstance,
  real_T c1_a);
static void c1_scalarEg(SFc1_computedTorquePDInstanceStruct *chartInstance);
static void c1_dimagree(SFc1_computedTorquePDInstanceStruct *chartInstance);
static void c1_error(SFc1_computedTorquePDInstanceStruct *chartInstance);
static real_T c1_cos(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T
                     c1_x);
static real_T c1_sin(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T
                     c1_x);
static void c1_b_scalarEg(SFc1_computedTorquePDInstanceStruct *chartInstance);
static void c1_c_scalarEg(SFc1_computedTorquePDInstanceStruct *chartInstance);
static void c1_inv2x2(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T
                      c1_x[4], real_T c1_y[4]);
static real_T c1_abs(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T
                     c1_x);
static real_T c1_norm(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T
                      c1_x[4]);
static void c1_warning(SFc1_computedTorquePDInstanceStruct *chartInstance);
static void c1_b_warning(SFc1_computedTorquePDInstanceStruct *chartInstance,
  char_T c1_varargin_1[14]);
static void c1_f_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_sprintf, const char_T *c1_identifier, char_T
  c1_y[14]);
static void c1_g_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId,
  char_T c1_y[14]);
static const mxArray *c1_e_sf_marshallOut(void *chartInstanceVoid, void
  *c1_inData);
static int32_T c1_h_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId);
static void c1_e_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c1_mxArrayInData, const char_T *c1_varName, void *c1_outData);
static uint8_T c1_i_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_b_is_active_c1_computedTorquePD, const
  char_T *c1_identifier);
static uint8_T c1_j_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId);
static void c1_b_cos(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T *
                     c1_x);
static void c1_b_sin(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T *
                     c1_x);
static void init_dsm_address_info(SFc1_computedTorquePDInstanceStruct
  *chartInstance);
static void init_simulink_io_address(SFc1_computedTorquePDInstanceStruct
  *chartInstance);

/* Function Definitions */
static void initialize_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance)
{
  if (sf_is_first_init_cond(chartInstance->S)) {
    initSimStructsc1_computedTorquePD(chartInstance);
    chart_debug_initialize_data_addresses(chartInstance->S);
  }

  chartInstance->c1_sfEvent = CALL_EVENT;
  _sfTime_ = sf_get_time(chartInstance->S);
  chartInstance->c1_is_active_c1_computedTorquePD = 0U;
}

static void initialize_params_c1_computedTorquePD
  (SFc1_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void enable_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance)
{
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void disable_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance)
{
  _sfTime_ = sf_get_time(chartInstance->S);
}

static void c1_update_debugger_state_c1_computedTorquePD
  (SFc1_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static const mxArray *get_sim_state_c1_computedTorquePD
  (SFc1_computedTorquePDInstanceStruct *chartInstance)
{
  const mxArray *c1_st;
  const mxArray *c1_y = NULL;
  real_T c1_hoistedGlobal;
  real_T c1_u;
  const mxArray *c1_b_y = NULL;
  real_T c1_b_hoistedGlobal;
  real_T c1_b_u;
  const mxArray *c1_c_y = NULL;
  real_T c1_c_hoistedGlobal;
  real_T c1_c_u;
  const mxArray *c1_d_y = NULL;
  real_T c1_d_hoistedGlobal;
  real_T c1_d_u;
  const mxArray *c1_e_y = NULL;
  uint8_T c1_e_hoistedGlobal;
  uint8_T c1_e_u;
  const mxArray *c1_f_y = NULL;
  c1_st = NULL;
  c1_st = NULL;
  c1_y = NULL;
  sf_mex_assign(&c1_y, sf_mex_createcellmatrix(5, 1), false);
  c1_hoistedGlobal = *chartInstance->c1_T1;
  c1_u = c1_hoistedGlobal;
  c1_b_y = NULL;
  sf_mex_assign(&c1_b_y, sf_mex_create("y", &c1_u, 0, 0U, 0U, 0U, 0), false);
  sf_mex_setcell(c1_y, 0, c1_b_y);
  c1_b_hoistedGlobal = *chartInstance->c1_T2;
  c1_b_u = c1_b_hoistedGlobal;
  c1_c_y = NULL;
  sf_mex_assign(&c1_c_y, sf_mex_create("y", &c1_b_u, 0, 0U, 0U, 0U, 0), false);
  sf_mex_setcell(c1_y, 1, c1_c_y);
  c1_c_hoistedGlobal = *chartInstance->c1_ddth1;
  c1_c_u = c1_c_hoistedGlobal;
  c1_d_y = NULL;
  sf_mex_assign(&c1_d_y, sf_mex_create("y", &c1_c_u, 0, 0U, 0U, 0U, 0), false);
  sf_mex_setcell(c1_y, 2, c1_d_y);
  c1_d_hoistedGlobal = *chartInstance->c1_ddth2;
  c1_d_u = c1_d_hoistedGlobal;
  c1_e_y = NULL;
  sf_mex_assign(&c1_e_y, sf_mex_create("y", &c1_d_u, 0, 0U, 0U, 0U, 0), false);
  sf_mex_setcell(c1_y, 3, c1_e_y);
  c1_e_hoistedGlobal = chartInstance->c1_is_active_c1_computedTorquePD;
  c1_e_u = c1_e_hoistedGlobal;
  c1_f_y = NULL;
  sf_mex_assign(&c1_f_y, sf_mex_create("y", &c1_e_u, 3, 0U, 0U, 0U, 0), false);
  sf_mex_setcell(c1_y, 4, c1_f_y);
  sf_mex_assign(&c1_st, c1_y, false);
  return c1_st;
}

static void set_sim_state_c1_computedTorquePD
  (SFc1_computedTorquePDInstanceStruct *chartInstance, const mxArray *c1_st)
{
  const mxArray *c1_u;
  chartInstance->c1_doneDoubleBufferReInit = true;
  c1_u = sf_mex_dup(c1_st);
  *chartInstance->c1_T1 = c1_emlrt_marshallIn(chartInstance, sf_mex_dup
    (sf_mex_getcell("T1", c1_u, 0)), "T1");
  *chartInstance->c1_T2 = c1_emlrt_marshallIn(chartInstance, sf_mex_dup
    (sf_mex_getcell("T2", c1_u, 1)), "T2");
  *chartInstance->c1_ddth1 = c1_emlrt_marshallIn(chartInstance, sf_mex_dup
    (sf_mex_getcell("ddth1", c1_u, 2)), "ddth1");
  *chartInstance->c1_ddth2 = c1_emlrt_marshallIn(chartInstance, sf_mex_dup
    (sf_mex_getcell("ddth2", c1_u, 3)), "ddth2");
  chartInstance->c1_is_active_c1_computedTorquePD = c1_i_emlrt_marshallIn
    (chartInstance, sf_mex_dup(sf_mex_getcell("is_active_c1_computedTorquePD",
       c1_u, 4)), "is_active_c1_computedTorquePD");
  sf_mex_destroy(&c1_u);
  c1_update_debugger_state_c1_computedTorquePD(chartInstance);
  sf_mex_destroy(&c1_st);
}

static void finalize_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void sf_gateway_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance)
{
  _SFD_SYMBOL_SCOPE_PUSH(0U, 0U);
  _sfTime_ = sf_get_time(chartInstance->S);
  _SFD_CC_CALL(CHART_ENTER_SFUNCTION_TAG, 0U, chartInstance->c1_sfEvent);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_e_ith2, 11U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_e_ith1, 10U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_e_dth2, 9U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_e_dth1, 8U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_e_th2, 7U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_e_th1, 6U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_dth2, 5U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_dth1, 4U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_th2, 3U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_th1, 2U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_des_ddth2, 1U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_des_ddth1, 0U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  chartInstance->c1_sfEvent = CALL_EVENT;
  c1_chartstep_c1_computedTorquePD(chartInstance);
  _SFD_SYMBOL_SCOPE_POP();
  _SFD_CHECK_FOR_STATE_INCONSISTENCY(_computedTorquePDMachineNumber_,
    chartInstance->chartNumber, chartInstance->instanceNumber);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_T1, 12U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_T2, 13U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_ddth1, 14U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
  _SFD_DATA_RANGE_CHECK(*chartInstance->c1_ddth2, 15U, 1U, 0U,
                        chartInstance->c1_sfEvent, false);
}

static void mdl_start_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void c1_chartstep_c1_computedTorquePD(SFc1_computedTorquePDInstanceStruct
  *chartInstance)
{
  real_T c1_hoistedGlobal;
  real_T c1_b_hoistedGlobal;
  real_T c1_c_hoistedGlobal;
  real_T c1_d_hoistedGlobal;
  real_T c1_e_hoistedGlobal;
  real_T c1_f_hoistedGlobal;
  real_T c1_g_hoistedGlobal;
  real_T c1_h_hoistedGlobal;
  real_T c1_i_hoistedGlobal;
  real_T c1_j_hoistedGlobal;
  real_T c1_k_hoistedGlobal;
  real_T c1_l_hoistedGlobal;
  real_T c1_b_des_ddth1;
  real_T c1_b_des_ddth2;
  real_T c1_b_th1;
  real_T c1_b_th2;
  real_T c1_b_dth1;
  real_T c1_b_dth2;
  real_T c1_b_e_th1;
  real_T c1_b_e_th2;
  real_T c1_b_e_dth1;
  real_T c1_b_e_dth2;
  real_T c1_b_e_ith1;
  real_T c1_b_e_ith2;
  uint32_T c1_debug_family_var_map[33];
  real_T c1_a1;
  real_T c1_a2;
  real_T c1_m1;
  real_T c1_m2;
  real_T c1_g;
  real_T c1_Kp[4];
  real_T c1_Kd[4];
  real_T c1_Ki[4];
  real_T c1_D[4];
  real_T c1_H[2];
  real_T c1_C[2];
  real_T c1_e[6];
  real_T c1_u[2];
  real_T c1_U[2];
  real_T c1_ddt[2];
  real_T c1_nargin = 12.0;
  real_T c1_nargout = 4.0;
  real_T c1_b_T1;
  real_T c1_b_T2;
  real_T c1_b_ddth1;
  real_T c1_b_ddth2;
  int32_T c1_i0;
  static real_T c1_a[4] = { 0.0, 0.0, 0.0, 10000.0 };

  int32_T c1_i1;
  int32_T c1_i2;
  real_T c1_d0;
  real_T c1_A;
  real_T c1_x;
  real_T c1_b_x;
  real_T c1_y;
  real_T c1_d1;
  real_T c1_b_A;
  real_T c1_c_x;
  real_T c1_d_x;
  real_T c1_b_y;
  real_T c1_d2;
  real_T c1_d3;
  real_T c1_d4;
  real_T c1_c_A;
  real_T c1_e_x;
  real_T c1_f_x;
  real_T c1_c_y;
  real_T c1_d5;
  real_T c1_d_A;
  real_T c1_g_x;
  real_T c1_h_x;
  real_T c1_d_y;
  real_T c1_d6;
  real_T c1_e_A;
  real_T c1_i_x;
  real_T c1_j_x;
  real_T c1_e_y;
  real_T c1_d7;
  real_T c1_f_A;
  real_T c1_k_x;
  real_T c1_l_x;
  real_T c1_f_y;
  real_T c1_d8;
  real_T c1_g_A;
  real_T c1_m_x;
  real_T c1_n_x;
  real_T c1_g_y;
  real_T c1_d9;
  real_T c1_b[2];
  int32_T c1_i3;
  real_T c1_h_y[2];
  int32_T c1_i4;
  int32_T c1_i5;
  real_T c1_i_y[2];
  int32_T c1_i6;
  int32_T c1_i7;
  int32_T c1_i8;
  int32_T c1_i9;
  real_T c1_j_y[2];
  int32_T c1_i10;
  int32_T c1_i11;
  real_T c1_c_des_ddth1[2];
  real_T c1_b_a[4];
  int32_T c1_i12;
  int32_T c1_i13;
  int32_T c1_i14;
  int32_T c1_i15;
  int32_T c1_i16;
  int32_T c1_i17;
  int32_T c1_i18;
  int32_T c1_i19;
  int32_T c1_i20;
  real_T c1_c_a[4];
  real_T c1_k_y[4];
  real_T c1_n1x;
  int32_T c1_i21;
  real_T c1_n1xinv;
  real_T c1_l_y[4];
  real_T c1_rc;
  real_T c1_o_x;
  boolean_T c1_b_b;
  int32_T c1_i22;
  real_T c1_p_x;
  const mxArray *c1_m_y = NULL;
  int32_T c1_i23;
  static char_T c1_rfmt[6] = { '%', '1', '4', '.', '6', 'e' };

  real_T c1_b_u;
  const mxArray *c1_n_y = NULL;
  int32_T c1_i24;
  char_T c1_str[14];
  int32_T c1_i25;
  int32_T c1_i26;
  int32_T c1_i27;
  int32_T c1_i28;
  int32_T c1_i29;
  boolean_T guard1 = false;
  boolean_T guard2 = false;
  boolean_T guard3 = false;
  _SFD_CC_CALL(CHART_ENTER_DURING_FUNCTION_TAG, 0U, chartInstance->c1_sfEvent);
  c1_hoistedGlobal = *chartInstance->c1_des_ddth1;
  c1_b_hoistedGlobal = *chartInstance->c1_des_ddth2;
  c1_c_hoistedGlobal = *chartInstance->c1_th1;
  c1_d_hoistedGlobal = *chartInstance->c1_th2;
  c1_e_hoistedGlobal = *chartInstance->c1_dth1;
  c1_f_hoistedGlobal = *chartInstance->c1_dth2;
  c1_g_hoistedGlobal = *chartInstance->c1_e_th1;
  c1_h_hoistedGlobal = *chartInstance->c1_e_th2;
  c1_i_hoistedGlobal = *chartInstance->c1_e_dth1;
  c1_j_hoistedGlobal = *chartInstance->c1_e_dth2;
  c1_k_hoistedGlobal = *chartInstance->c1_e_ith1;
  c1_l_hoistedGlobal = *chartInstance->c1_e_ith2;
  c1_b_des_ddth1 = c1_hoistedGlobal;
  c1_b_des_ddth2 = c1_b_hoistedGlobal;
  c1_b_th1 = c1_c_hoistedGlobal;
  c1_b_th2 = c1_d_hoistedGlobal;
  c1_b_dth1 = c1_e_hoistedGlobal;
  c1_b_dth2 = c1_f_hoistedGlobal;
  c1_b_e_th1 = c1_g_hoistedGlobal;
  c1_b_e_th2 = c1_h_hoistedGlobal;
  c1_b_e_dth1 = c1_i_hoistedGlobal;
  c1_b_e_dth2 = c1_j_hoistedGlobal;
  c1_b_e_ith1 = c1_k_hoistedGlobal;
  c1_b_e_ith2 = c1_l_hoistedGlobal;
  _SFD_SYMBOL_SCOPE_PUSH_EML(0U, 33U, 33U, c1_debug_family_names,
    c1_debug_family_var_map);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_a1, 0U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_a2, 1U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_m1, 2U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_m2, 3U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c1_g, 4U, c1_sf_marshallOut,
    c1_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML(c1_Kp, 5U, c1_d_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(c1_Kd, 6U, c1_d_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(c1_Ki, 7U, c1_d_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c1_D, 8U, c1_d_sf_marshallOut,
    c1_d_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c1_H, 9U, c1_b_sf_marshallOut,
    c1_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c1_C, 10U, c1_b_sf_marshallOut,
    c1_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c1_e, 11U, c1_c_sf_marshallOut,
    c1_c_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c1_u, 12U, c1_b_sf_marshallOut,
    c1_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c1_U, 13U, c1_b_sf_marshallOut,
    c1_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(c1_ddt, 14U, c1_b_sf_marshallOut,
    c1_b_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c1_nargin, 15U, c1_sf_marshallOut,
    c1_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c1_nargout, 16U, c1_sf_marshallOut,
    c1_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_b_des_ddth1, 17U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_b_des_ddth2, 18U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_b_th1, 19U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_b_th2, 20U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_b_dth1, 21U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_b_dth2, 22U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_b_e_th1, 23U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_b_e_th2, 24U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_b_e_dth1, 25U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_b_e_dth2, 26U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_b_e_ith1, 27U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML(&c1_b_e_ith2, 28U, c1_sf_marshallOut);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c1_b_T1, 29U, c1_sf_marshallOut,
    c1_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c1_b_T2, 30U, c1_sf_marshallOut,
    c1_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c1_b_ddth1, 31U, c1_sf_marshallOut,
    c1_sf_marshallIn);
  _SFD_SYMBOL_SCOPE_ADD_EML_IMPORTABLE(&c1_b_ddth2, 32U, c1_sf_marshallOut,
    c1_sf_marshallIn);
  CV_EML_FCN(0, 0);
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 5);
  c1_a1 = 0.4;
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 5);
  c1_a2 = 0.35;
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 5);
  c1_m1 = 0.1287;
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 5);
  c1_m2 = 0.1024;
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 5);
  c1_g = 9.8;
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 6);
  for (c1_i0 = 0; c1_i0 < 4; c1_i0++) {
    c1_Kp[c1_i0] = c1_a[c1_i0];
  }

  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 7);
  for (c1_i1 = 0; c1_i1 < 4; c1_i1++) {
    c1_Kd[c1_i1] = 0.0;
  }

  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 8);
  for (c1_i2 = 0; c1_i2 < 4; c1_i2++) {
    c1_Ki[c1_i2] = 0.0;
  }

  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 13);
  c1_d0 = c1_b_th2;
  c1_b_cos(chartInstance, &c1_d0);
  c1_A = c1_a1 * c1_m2 * c1_d0 * c1_a2;
  c1_x = c1_A;
  c1_b_x = c1_x;
  c1_y = c1_b_x / 2.0;
  c1_d1 = c1_b_th2;
  c1_b_cos(chartInstance, &c1_d1);
  c1_b_A = c1_a1 * c1_m2 * c1_d1 * c1_a2;
  c1_c_x = c1_b_A;
  c1_d_x = c1_c_x;
  c1_b_y = c1_d_x / 2.0;
  c1_d2 = c1_b_th2;
  c1_b_cos(chartInstance, &c1_d2);
  c1_d3 = c1_mpower(chartInstance, 0.4);
  c1_D[0] = ((0.006864000000000002 + c1_d3 * c1_m2) + 0.0041813333333333329) +
    c1_a1 * c1_a2 * c1_m2 * c1_d2;
  c1_D[2] = 0.0041813333333333329 + c1_y;
  c1_D[1] = 0.0041813333333333329 + c1_b_y;
  c1_D[3] = 0.0041813333333333329;
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 15);
  c1_d4 = c1_b_th2;
  c1_b_sin(chartInstance, &c1_d4);
  c1_c_A = -(c1_a1 * c1_a2 * c1_m2 * c1_d4 * (2.0 * c1_b_dth1 + c1_b_dth2) *
             c1_b_dth2);
  c1_e_x = c1_c_A;
  c1_f_x = c1_e_x;
  c1_c_y = c1_f_x / 2.0;
  c1_d5 = c1_b_th2;
  c1_b_sin(chartInstance, &c1_d5);
  c1_d_A = c1_a1 * c1_a2 * c1_m2 * c1_d5 * c1_mpower(chartInstance, c1_b_dth1);
  c1_g_x = c1_d_A;
  c1_h_x = c1_g_x;
  c1_d_y = c1_h_x / 2.0;
  c1_H[0] = c1_c_y;
  c1_H[1] = c1_d_y;
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 17);
  c1_d6 = c1_b_th1 + c1_b_th2;
  c1_b_cos(chartInstance, &c1_d6);
  c1_e_A = c1_a2 * c1_g * c1_m2 * c1_d6;
  c1_i_x = c1_e_A;
  c1_j_x = c1_i_x;
  c1_e_y = c1_j_x / 2.0;
  c1_d7 = c1_b_th1;
  c1_b_cos(chartInstance, &c1_d7);
  c1_f_A = c1_a1 * c1_g * c1_m1 * c1_d7;
  c1_k_x = c1_f_A;
  c1_l_x = c1_k_x;
  c1_f_y = c1_l_x / 2.0;
  c1_d8 = c1_b_th1 + c1_b_th2;
  c1_b_cos(chartInstance, &c1_d8);
  c1_g_A = c1_a2 * c1_g * c1_m2 * c1_d8;
  c1_m_x = c1_g_A;
  c1_n_x = c1_m_x;
  c1_g_y = c1_n_x / 2.0;
  c1_d9 = c1_b_th1;
  c1_b_cos(chartInstance, &c1_d9);
  c1_C[0] = (c1_e_y + c1_f_y) + c1_a1 * c1_g * c1_m2 * c1_d9;
  c1_C[1] = c1_g_y;
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 20);
  c1_e[0] = c1_b_e_th1;
  c1_e[1] = c1_b_e_th2;
  c1_e[2] = c1_b_e_dth1;
  c1_e[3] = c1_b_e_dth2;
  c1_e[4] = c1_b_e_ith1;
  c1_e[5] = c1_b_e_ith2;
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 21);
  c1_b[0] = c1_e[2];
  c1_b[1] = c1_e[3];
  for (c1_i3 = 0; c1_i3 < 2; c1_i3++) {
    c1_h_y[c1_i3] = 0.0;
    for (c1_i4 = 0; c1_i4 < 2; c1_i4++) {
      c1_h_y[c1_i3] += -0.0 * c1_b[c1_i4];
    }
  }

  c1_b[0] = c1_e[0];
  c1_b[1] = c1_e[1];
  for (c1_i5 = 0; c1_i5 < 2; c1_i5++) {
    c1_i_y[c1_i5] = 0.0;
    c1_i6 = 0;
    for (c1_i8 = 0; c1_i8 < 2; c1_i8++) {
      c1_i_y[c1_i5] += c1_a[c1_i6 + c1_i5] * c1_b[c1_i8];
      c1_i6 += 2;
    }
  }

  c1_b[0] = c1_e[4];
  c1_b[1] = c1_e[5];
  for (c1_i7 = 0; c1_i7 < 2; c1_i7++) {
    c1_j_y[c1_i7] = 0.0;
    for (c1_i10 = 0; c1_i10 < 2; c1_i10++) {
      c1_j_y[c1_i7] += 0.0 * c1_b[c1_i10];
    }
  }

  for (c1_i9 = 0; c1_i9 < 2; c1_i9++) {
    c1_u[c1_i9] = (c1_h_y[c1_i9] - c1_i_y[c1_i9]) - c1_j_y[c1_i9];
  }

  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 22);
  for (c1_i11 = 0; c1_i11 < 4; c1_i11++) {
    c1_b_a[c1_i11] = c1_D[c1_i11];
  }

  c1_c_des_ddth1[0] = c1_b_des_ddth1;
  c1_c_des_ddth1[1] = c1_b_des_ddth2;
  for (c1_i12 = 0; c1_i12 < 2; c1_i12++) {
    c1_b[c1_i12] = c1_c_des_ddth1[c1_i12] - c1_u[c1_i12];
  }

  for (c1_i13 = 0; c1_i13 < 2; c1_i13++) {
    c1_h_y[c1_i13] = 0.0;
    c1_i15 = 0;
    for (c1_i16 = 0; c1_i16 < 2; c1_i16++) {
      c1_h_y[c1_i13] += c1_b_a[c1_i15 + c1_i13] * c1_b[c1_i16];
      c1_i15 += 2;
    }
  }

  for (c1_i14 = 0; c1_i14 < 2; c1_i14++) {
    c1_i_y[c1_i14] = c1_H[c1_i14] + c1_C[c1_i14];
  }

  for (c1_i17 = 0; c1_i17 < 2; c1_i17++) {
    c1_i_y[c1_i17] *= 0.0;
  }

  for (c1_i18 = 0; c1_i18 < 2; c1_i18++) {
    c1_U[c1_i18] = c1_h_y[c1_i18] + c1_i_y[c1_i18];
  }

  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 23);
  c1_b_T1 = c1_U[0];
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 24);
  c1_b_T2 = c1_U[1];
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 25);
  for (c1_i19 = 0; c1_i19 < 4; c1_i19++) {
    c1_b_a[c1_i19] = c1_D[c1_i19];
  }

  for (c1_i20 = 0; c1_i20 < 4; c1_i20++) {
    c1_c_a[c1_i20] = c1_b_a[c1_i20];
  }

  c1_inv2x2(chartInstance, c1_c_a, c1_k_y);
  c1_n1x = c1_norm(chartInstance, c1_b_a);
  for (c1_i21 = 0; c1_i21 < 4; c1_i21++) {
    c1_l_y[c1_i21] = c1_k_y[c1_i21];
  }

  c1_n1xinv = c1_norm(chartInstance, c1_l_y);
  c1_rc = 1.0 / (c1_n1x * c1_n1xinv);
  guard1 = false;
  guard2 = false;
  if (c1_n1x == 0.0) {
    guard2 = true;
  } else if (c1_n1xinv == 0.0) {
    guard2 = true;
  } else if (c1_rc == 0.0) {
    guard1 = true;
  } else {
    c1_o_x = c1_rc;
    c1_b_b = muDoubleScalarIsNaN(c1_o_x);
    guard3 = false;
    if (c1_b_b) {
      guard3 = true;
    } else {
      if (c1_rc < 2.2204460492503131E-16) {
        guard3 = true;
      }
    }

    if (guard3 == true) {
      c1_p_x = c1_rc;
      c1_m_y = NULL;
      sf_mex_assign(&c1_m_y, sf_mex_create("y", c1_rfmt, 10, 0U, 1U, 0U, 2, 1, 6),
                    false);
      c1_b_u = c1_p_x;
      c1_n_y = NULL;
      sf_mex_assign(&c1_n_y, sf_mex_create("y", &c1_b_u, 0, 0U, 0U, 0U, 0),
                    false);
      c1_f_emlrt_marshallIn(chartInstance, sf_mex_call_debug
                            (sfGlobalDebugInstanceStruct, "sprintf", 1U, 2U, 14,
        c1_m_y, 14, c1_n_y), "sprintf", c1_str);
      c1_b_warning(chartInstance, c1_str);
    }
  }

  if (guard2 == true) {
    guard1 = true;
  }

  if (guard1 == true) {
    c1_warning(chartInstance);
  }

  for (c1_i22 = 0; c1_i22 < 2; c1_i22++) {
    c1_b[c1_i22] = (c1_U[c1_i22] - c1_H[c1_i22]) - c1_C[c1_i22];
  }

  for (c1_i23 = 0; c1_i23 < 2; c1_i23++) {
    c1_ddt[c1_i23] = 0.0;
  }

  for (c1_i24 = 0; c1_i24 < 2; c1_i24++) {
    c1_ddt[c1_i24] = 0.0;
  }

  for (c1_i25 = 0; c1_i25 < 2; c1_i25++) {
    c1_i_y[c1_i25] = c1_ddt[c1_i25];
  }

  for (c1_i26 = 0; c1_i26 < 2; c1_i26++) {
    c1_ddt[c1_i26] = c1_i_y[c1_i26];
  }

  for (c1_i27 = 0; c1_i27 < 2; c1_i27++) {
    c1_ddt[c1_i27] = 0.0;
    c1_i28 = 0;
    for (c1_i29 = 0; c1_i29 < 2; c1_i29++) {
      c1_ddt[c1_i27] += c1_k_y[c1_i28 + c1_i27] * c1_b[c1_i29];
      c1_i28 += 2;
    }
  }

  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 26);
  c1_b_ddth1 = c1_ddt[0];
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, 27);
  c1_b_ddth2 = c1_ddt[1];
  _SFD_EML_CALL(0U, chartInstance->c1_sfEvent, -27);
  _SFD_SYMBOL_SCOPE_POP();
  *chartInstance->c1_T1 = c1_b_T1;
  *chartInstance->c1_T2 = c1_b_T2;
  *chartInstance->c1_ddth1 = c1_b_ddth1;
  *chartInstance->c1_ddth2 = c1_b_ddth2;
  _SFD_CC_CALL(EXIT_OUT_OF_FUNCTION_TAG, 0U, chartInstance->c1_sfEvent);
}

static void initSimStructsc1_computedTorquePD
  (SFc1_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void init_script_number_translation(uint32_T c1_machineNumber, uint32_T
  c1_chartNumber, uint32_T c1_instanceNumber)
{
  (void)c1_machineNumber;
  (void)c1_chartNumber;
  (void)c1_instanceNumber;
}

static const mxArray *c1_sf_marshallOut(void *chartInstanceVoid, void *c1_inData)
{
  const mxArray *c1_mxArrayOutData = NULL;
  real_T c1_u;
  const mxArray *c1_y = NULL;
  SFc1_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc1_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c1_mxArrayOutData = NULL;
  c1_u = *(real_T *)c1_inData;
  c1_y = NULL;
  sf_mex_assign(&c1_y, sf_mex_create("y", &c1_u, 0, 0U, 0U, 0U, 0), false);
  sf_mex_assign(&c1_mxArrayOutData, c1_y, false);
  return c1_mxArrayOutData;
}

static real_T c1_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_b_ddth2, const char_T *c1_identifier)
{
  real_T c1_y;
  emlrtMsgIdentifier c1_thisId;
  c1_thisId.fIdentifier = c1_identifier;
  c1_thisId.fParent = NULL;
  c1_thisId.bParentIsCell = false;
  c1_y = c1_b_emlrt_marshallIn(chartInstance, sf_mex_dup(c1_b_ddth2), &c1_thisId);
  sf_mex_destroy(&c1_b_ddth2);
  return c1_y;
}

static real_T c1_b_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId)
{
  real_T c1_y;
  real_T c1_d10;
  (void)chartInstance;
  sf_mex_import(c1_parentId, sf_mex_dup(c1_u), &c1_d10, 1, 0, 0U, 0, 0U, 0);
  c1_y = c1_d10;
  sf_mex_destroy(&c1_u);
  return c1_y;
}

static void c1_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c1_mxArrayInData, const char_T *c1_varName, void *c1_outData)
{
  const mxArray *c1_b_ddth2;
  const char_T *c1_identifier;
  emlrtMsgIdentifier c1_thisId;
  real_T c1_y;
  SFc1_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc1_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c1_b_ddth2 = sf_mex_dup(c1_mxArrayInData);
  c1_identifier = c1_varName;
  c1_thisId.fIdentifier = c1_identifier;
  c1_thisId.fParent = NULL;
  c1_thisId.bParentIsCell = false;
  c1_y = c1_b_emlrt_marshallIn(chartInstance, sf_mex_dup(c1_b_ddth2), &c1_thisId);
  sf_mex_destroy(&c1_b_ddth2);
  *(real_T *)c1_outData = c1_y;
  sf_mex_destroy(&c1_mxArrayInData);
}

static const mxArray *c1_b_sf_marshallOut(void *chartInstanceVoid, void
  *c1_inData)
{
  const mxArray *c1_mxArrayOutData = NULL;
  int32_T c1_i30;
  const mxArray *c1_y = NULL;
  real_T c1_u[2];
  SFc1_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc1_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c1_mxArrayOutData = NULL;
  for (c1_i30 = 0; c1_i30 < 2; c1_i30++) {
    c1_u[c1_i30] = (*(real_T (*)[2])c1_inData)[c1_i30];
  }

  c1_y = NULL;
  sf_mex_assign(&c1_y, sf_mex_create("y", c1_u, 0, 0U, 1U, 0U, 1, 2), false);
  sf_mex_assign(&c1_mxArrayOutData, c1_y, false);
  return c1_mxArrayOutData;
}

static void c1_c_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId,
  real_T c1_y[2])
{
  real_T c1_dv0[2];
  int32_T c1_i31;
  (void)chartInstance;
  sf_mex_import(c1_parentId, sf_mex_dup(c1_u), c1_dv0, 1, 0, 0U, 1, 0U, 1, 2);
  for (c1_i31 = 0; c1_i31 < 2; c1_i31++) {
    c1_y[c1_i31] = c1_dv0[c1_i31];
  }

  sf_mex_destroy(&c1_u);
}

static void c1_b_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c1_mxArrayInData, const char_T *c1_varName, void *c1_outData)
{
  const mxArray *c1_ddt;
  const char_T *c1_identifier;
  emlrtMsgIdentifier c1_thisId;
  real_T c1_y[2];
  int32_T c1_i32;
  SFc1_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc1_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c1_ddt = sf_mex_dup(c1_mxArrayInData);
  c1_identifier = c1_varName;
  c1_thisId.fIdentifier = c1_identifier;
  c1_thisId.fParent = NULL;
  c1_thisId.bParentIsCell = false;
  c1_c_emlrt_marshallIn(chartInstance, sf_mex_dup(c1_ddt), &c1_thisId, c1_y);
  sf_mex_destroy(&c1_ddt);
  for (c1_i32 = 0; c1_i32 < 2; c1_i32++) {
    (*(real_T (*)[2])c1_outData)[c1_i32] = c1_y[c1_i32];
  }

  sf_mex_destroy(&c1_mxArrayInData);
}

static const mxArray *c1_c_sf_marshallOut(void *chartInstanceVoid, void
  *c1_inData)
{
  const mxArray *c1_mxArrayOutData = NULL;
  int32_T c1_i33;
  const mxArray *c1_y = NULL;
  real_T c1_u[6];
  SFc1_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc1_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c1_mxArrayOutData = NULL;
  for (c1_i33 = 0; c1_i33 < 6; c1_i33++) {
    c1_u[c1_i33] = (*(real_T (*)[6])c1_inData)[c1_i33];
  }

  c1_y = NULL;
  sf_mex_assign(&c1_y, sf_mex_create("y", c1_u, 0, 0U, 1U, 0U, 1, 6), false);
  sf_mex_assign(&c1_mxArrayOutData, c1_y, false);
  return c1_mxArrayOutData;
}

static void c1_d_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId,
  real_T c1_y[6])
{
  real_T c1_dv1[6];
  int32_T c1_i34;
  (void)chartInstance;
  sf_mex_import(c1_parentId, sf_mex_dup(c1_u), c1_dv1, 1, 0, 0U, 1, 0U, 1, 6);
  for (c1_i34 = 0; c1_i34 < 6; c1_i34++) {
    c1_y[c1_i34] = c1_dv1[c1_i34];
  }

  sf_mex_destroy(&c1_u);
}

static void c1_c_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c1_mxArrayInData, const char_T *c1_varName, void *c1_outData)
{
  const mxArray *c1_e;
  const char_T *c1_identifier;
  emlrtMsgIdentifier c1_thisId;
  real_T c1_y[6];
  int32_T c1_i35;
  SFc1_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc1_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c1_e = sf_mex_dup(c1_mxArrayInData);
  c1_identifier = c1_varName;
  c1_thisId.fIdentifier = c1_identifier;
  c1_thisId.fParent = NULL;
  c1_thisId.bParentIsCell = false;
  c1_d_emlrt_marshallIn(chartInstance, sf_mex_dup(c1_e), &c1_thisId, c1_y);
  sf_mex_destroy(&c1_e);
  for (c1_i35 = 0; c1_i35 < 6; c1_i35++) {
    (*(real_T (*)[6])c1_outData)[c1_i35] = c1_y[c1_i35];
  }

  sf_mex_destroy(&c1_mxArrayInData);
}

static const mxArray *c1_d_sf_marshallOut(void *chartInstanceVoid, void
  *c1_inData)
{
  const mxArray *c1_mxArrayOutData = NULL;
  int32_T c1_i36;
  int32_T c1_i37;
  const mxArray *c1_y = NULL;
  int32_T c1_i38;
  real_T c1_u[4];
  SFc1_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc1_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c1_mxArrayOutData = NULL;
  c1_i36 = 0;
  for (c1_i37 = 0; c1_i37 < 2; c1_i37++) {
    for (c1_i38 = 0; c1_i38 < 2; c1_i38++) {
      c1_u[c1_i38 + c1_i36] = (*(real_T (*)[4])c1_inData)[c1_i38 + c1_i36];
    }

    c1_i36 += 2;
  }

  c1_y = NULL;
  sf_mex_assign(&c1_y, sf_mex_create("y", c1_u, 0, 0U, 1U, 0U, 2, 2, 2), false);
  sf_mex_assign(&c1_mxArrayOutData, c1_y, false);
  return c1_mxArrayOutData;
}

static void c1_e_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId,
  real_T c1_y[4])
{
  real_T c1_dv2[4];
  int32_T c1_i39;
  (void)chartInstance;
  sf_mex_import(c1_parentId, sf_mex_dup(c1_u), c1_dv2, 1, 0, 0U, 1, 0U, 2, 2, 2);
  for (c1_i39 = 0; c1_i39 < 4; c1_i39++) {
    c1_y[c1_i39] = c1_dv2[c1_i39];
  }

  sf_mex_destroy(&c1_u);
}

static void c1_d_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c1_mxArrayInData, const char_T *c1_varName, void *c1_outData)
{
  const mxArray *c1_D;
  const char_T *c1_identifier;
  emlrtMsgIdentifier c1_thisId;
  real_T c1_y[4];
  int32_T c1_i40;
  int32_T c1_i41;
  int32_T c1_i42;
  SFc1_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc1_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c1_D = sf_mex_dup(c1_mxArrayInData);
  c1_identifier = c1_varName;
  c1_thisId.fIdentifier = c1_identifier;
  c1_thisId.fParent = NULL;
  c1_thisId.bParentIsCell = false;
  c1_e_emlrt_marshallIn(chartInstance, sf_mex_dup(c1_D), &c1_thisId, c1_y);
  sf_mex_destroy(&c1_D);
  c1_i40 = 0;
  for (c1_i41 = 0; c1_i41 < 2; c1_i41++) {
    for (c1_i42 = 0; c1_i42 < 2; c1_i42++) {
      (*(real_T (*)[4])c1_outData)[c1_i42 + c1_i40] = c1_y[c1_i42 + c1_i40];
    }

    c1_i40 += 2;
  }

  sf_mex_destroy(&c1_mxArrayInData);
}

const mxArray *sf_c1_computedTorquePD_get_eml_resolved_functions_info(void)
{
  const mxArray *c1_nameCaptureInfo = NULL;
  c1_nameCaptureInfo = NULL;
  sf_mex_assign(&c1_nameCaptureInfo, sf_mex_create("nameCaptureInfo", NULL, 0,
    0U, 1U, 0U, 2, 0, 1), false);
  return c1_nameCaptureInfo;
}

static real_T c1_mpower(SFc1_computedTorquePDInstanceStruct *chartInstance,
  real_T c1_a)
{
  real_T c1_c;
  real_T c1_b_a;
  real_T c1_c_a;
  real_T c1_x;
  real_T c1_d_a;
  boolean_T c1_p;
  c1_b_a = c1_a;
  c1_c_a = c1_b_a;
  c1_x = c1_c_a;
  c1_d_a = c1_x;
  c1_c = c1_d_a * c1_d_a;
  c1_p = false;
  if (c1_p) {
    c1_error(chartInstance);
  }

  return c1_c;
}

static void c1_scalarEg(SFc1_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void c1_dimagree(SFc1_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void c1_error(SFc1_computedTorquePDInstanceStruct *chartInstance)
{
  const mxArray *c1_y = NULL;
  static char_T c1_u[31] = { 'C', 'o', 'd', 'e', 'r', ':', 't', 'o', 'o', 'l',
    'b', 'o', 'x', ':', 'p', 'o', 'w', 'e', 'r', '_', 'd', 'o', 'm', 'a', 'i',
    'n', 'E', 'r', 'r', 'o', 'r' };

  (void)chartInstance;
  c1_y = NULL;
  sf_mex_assign(&c1_y, sf_mex_create("y", c1_u, 10, 0U, 1U, 0U, 2, 1, 31), false);
  sf_mex_call_debug(sfGlobalDebugInstanceStruct, "error", 0U, 1U, 14,
                    sf_mex_call_debug(sfGlobalDebugInstanceStruct, "message", 1U,
    1U, 14, c1_y));
}

static real_T c1_cos(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T
                     c1_x)
{
  real_T c1_b_x;
  c1_b_x = c1_x;
  c1_b_cos(chartInstance, &c1_b_x);
  return c1_b_x;
}

static real_T c1_sin(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T
                     c1_x)
{
  real_T c1_b_x;
  c1_b_x = c1_x;
  c1_b_sin(chartInstance, &c1_b_x);
  return c1_b_x;
}

static void c1_b_scalarEg(SFc1_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void c1_c_scalarEg(SFc1_computedTorquePDInstanceStruct *chartInstance)
{
  (void)chartInstance;
}

static void c1_inv2x2(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T
                      c1_x[4], real_T c1_y[4])
{
  real_T c1_b_x;
  real_T c1_d;
  real_T c1_c_x;
  real_T c1_b_d;
  real_T c1_A;
  real_T c1_b_A;
  real_T c1_B;
  real_T c1_b_B;
  real_T c1_d_x;
  real_T c1_e_x;
  real_T c1_b_y;
  real_T c1_c_y;
  real_T c1_f_x;
  real_T c1_g_x;
  real_T c1_d_y;
  real_T c1_e_y;
  real_T c1_r;
  real_T c1_c_B;
  real_T c1_d_B;
  real_T c1_f_y;
  real_T c1_g_y;
  real_T c1_h_y;
  real_T c1_i_y;
  real_T c1_t;
  real_T c1_c_A;
  real_T c1_d_A;
  real_T c1_e_B;
  real_T c1_f_B;
  real_T c1_h_x;
  real_T c1_i_x;
  real_T c1_j_y;
  real_T c1_k_y;
  real_T c1_j_x;
  real_T c1_k_x;
  real_T c1_l_y;
  real_T c1_m_y;
  real_T c1_n_y;
  real_T c1_o_y;
  real_T c1_e_A;
  real_T c1_f_A;
  real_T c1_g_B;
  real_T c1_h_B;
  real_T c1_l_x;
  real_T c1_m_x;
  real_T c1_p_y;
  real_T c1_q_y;
  real_T c1_n_x;
  real_T c1_o_x;
  real_T c1_r_y;
  real_T c1_s_y;
  real_T c1_t_y;
  real_T c1_u_y;
  c1_b_x = c1_x[1];
  c1_d = c1_abs(chartInstance, c1_b_x) + c1_abs(chartInstance, 0.0);
  c1_c_x = c1_x[0];
  c1_b_d = c1_abs(chartInstance, c1_c_x) + c1_abs(chartInstance, 0.0);
  if (c1_d > c1_b_d) {
    c1_b_A = c1_x[0];
    c1_b_B = c1_x[1];
    c1_e_x = c1_b_A;
    c1_c_y = c1_b_B;
    c1_g_x = c1_e_x;
    c1_e_y = c1_c_y;
    c1_r = c1_g_x / c1_e_y;
    c1_d_B = c1_r * c1_x[3] - c1_x[2];
    c1_g_y = c1_d_B;
    c1_i_y = c1_g_y;
    c1_t = 1.0 / c1_i_y;
    c1_d_A = c1_x[3];
    c1_f_B = c1_x[1];
    c1_i_x = c1_d_A;
    c1_k_y = c1_f_B;
    c1_k_x = c1_i_x;
    c1_m_y = c1_k_y;
    c1_o_y = c1_k_x / c1_m_y;
    c1_y[0] = c1_o_y * c1_t;
    c1_y[1] = -c1_t;
    c1_f_A = -c1_x[2];
    c1_h_B = c1_x[1];
    c1_m_x = c1_f_A;
    c1_q_y = c1_h_B;
    c1_o_x = c1_m_x;
    c1_s_y = c1_q_y;
    c1_u_y = c1_o_x / c1_s_y;
    c1_y[2] = c1_u_y * c1_t;
    c1_y[3] = c1_r * c1_t;
  } else {
    c1_A = c1_x[1];
    c1_B = c1_x[0];
    c1_d_x = c1_A;
    c1_b_y = c1_B;
    c1_f_x = c1_d_x;
    c1_d_y = c1_b_y;
    c1_r = c1_f_x / c1_d_y;
    c1_c_B = c1_x[3] - c1_r * c1_x[2];
    c1_f_y = c1_c_B;
    c1_h_y = c1_f_y;
    c1_t = 1.0 / c1_h_y;
    c1_c_A = c1_x[3];
    c1_e_B = c1_x[0];
    c1_h_x = c1_c_A;
    c1_j_y = c1_e_B;
    c1_j_x = c1_h_x;
    c1_l_y = c1_j_y;
    c1_n_y = c1_j_x / c1_l_y;
    c1_y[0] = c1_n_y * c1_t;
    c1_y[1] = -c1_r * c1_t;
    c1_e_A = -c1_x[2];
    c1_g_B = c1_x[0];
    c1_l_x = c1_e_A;
    c1_p_y = c1_g_B;
    c1_n_x = c1_l_x;
    c1_r_y = c1_p_y;
    c1_t_y = c1_n_x / c1_r_y;
    c1_y[2] = c1_t_y * c1_t;
    c1_y[3] = c1_t;
  }
}

static real_T c1_abs(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T
                     c1_x)
{
  real_T c1_b_x;
  real_T c1_c_x;
  (void)chartInstance;
  c1_b_x = c1_x;
  c1_c_x = c1_b_x;
  return muDoubleScalarAbs(c1_c_x);
}

static real_T c1_norm(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T
                      c1_x[4])
{
  real_T c1_y;
  int32_T c1_j;
  real_T c1_b_j;
  real_T c1_s;
  int32_T c1_i;
  real_T c1_b_x;
  real_T c1_b_i;
  boolean_T c1_b;
  boolean_T exitg1;
  c1_y = 0.0;
  c1_j = 0;
  exitg1 = false;
  while ((exitg1 == false) && (c1_j < 2)) {
    c1_b_j = 1.0 + (real_T)c1_j;
    c1_s = 0.0;
    for (c1_i = 0; c1_i < 2; c1_i++) {
      c1_b_i = 1.0 + (real_T)c1_i;
      c1_s += c1_abs(chartInstance, c1_x[((int32_T)c1_b_i + (((int32_T)c1_b_j -
        1) << 1)) - 1]);
    }

    c1_b_x = c1_s;
    c1_b = muDoubleScalarIsNaN(c1_b_x);
    if (c1_b) {
      c1_y = rtNaN;
      exitg1 = true;
    } else {
      if (c1_s > c1_y) {
        c1_y = c1_s;
      }

      c1_j++;
    }
  }

  return c1_y;
}

static void c1_warning(SFc1_computedTorquePDInstanceStruct *chartInstance)
{
  const mxArray *c1_y = NULL;
  static char_T c1_u[7] = { 'w', 'a', 'r', 'n', 'i', 'n', 'g' };

  const mxArray *c1_b_y = NULL;
  static char_T c1_b_u[7] = { 'm', 'e', 's', 's', 'a', 'g', 'e' };

  const mxArray *c1_c_y = NULL;
  static char_T c1_msgID[27] = { 'C', 'o', 'd', 'e', 'r', ':', 'M', 'A', 'T',
    'L', 'A', 'B', ':', 's', 'i', 'n', 'g', 'u', 'l', 'a', 'r', 'M', 'a', 't',
    'r', 'i', 'x' };

  (void)chartInstance;
  c1_y = NULL;
  sf_mex_assign(&c1_y, sf_mex_create("y", c1_u, 10, 0U, 1U, 0U, 2, 1, 7), false);
  c1_b_y = NULL;
  sf_mex_assign(&c1_b_y, sf_mex_create("y", c1_b_u, 10, 0U, 1U, 0U, 2, 1, 7),
                false);
  c1_c_y = NULL;
  sf_mex_assign(&c1_c_y, sf_mex_create("y", c1_msgID, 10, 0U, 1U, 0U, 2, 1, 27),
                false);
  sf_mex_call_debug(sfGlobalDebugInstanceStruct, "feval", 0U, 2U, 14, c1_y, 14,
                    sf_mex_call_debug(sfGlobalDebugInstanceStruct, "feval", 1U,
    2U, 14, c1_b_y, 14, c1_c_y));
}

static void c1_b_warning(SFc1_computedTorquePDInstanceStruct *chartInstance,
  char_T c1_varargin_1[14])
{
  const mxArray *c1_y = NULL;
  static char_T c1_u[7] = { 'w', 'a', 'r', 'n', 'i', 'n', 'g' };

  const mxArray *c1_b_y = NULL;
  static char_T c1_b_u[7] = { 'm', 'e', 's', 's', 'a', 'g', 'e' };

  const mxArray *c1_c_y = NULL;
  static char_T c1_msgID[33] = { 'C', 'o', 'd', 'e', 'r', ':', 'M', 'A', 'T',
    'L', 'A', 'B', ':', 'i', 'l', 'l', 'C', 'o', 'n', 'd', 'i', 't', 'i', 'o',
    'n', 'e', 'd', 'M', 'a', 't', 'r', 'i', 'x' };

  const mxArray *c1_d_y = NULL;
  (void)chartInstance;
  c1_y = NULL;
  sf_mex_assign(&c1_y, sf_mex_create("y", c1_u, 10, 0U, 1U, 0U, 2, 1, 7), false);
  c1_b_y = NULL;
  sf_mex_assign(&c1_b_y, sf_mex_create("y", c1_b_u, 10, 0U, 1U, 0U, 2, 1, 7),
                false);
  c1_c_y = NULL;
  sf_mex_assign(&c1_c_y, sf_mex_create("y", c1_msgID, 10, 0U, 1U, 0U, 2, 1, 33),
                false);
  c1_d_y = NULL;
  sf_mex_assign(&c1_d_y, sf_mex_create("y", c1_varargin_1, 10, 0U, 1U, 0U, 2, 1,
    14), false);
  sf_mex_call_debug(sfGlobalDebugInstanceStruct, "feval", 0U, 2U, 14, c1_y, 14,
                    sf_mex_call_debug(sfGlobalDebugInstanceStruct, "feval", 1U,
    3U, 14, c1_b_y, 14, c1_c_y, 14, c1_d_y));
}

static void c1_f_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_sprintf, const char_T *c1_identifier, char_T
  c1_y[14])
{
  emlrtMsgIdentifier c1_thisId;
  c1_thisId.fIdentifier = c1_identifier;
  c1_thisId.fParent = NULL;
  c1_thisId.bParentIsCell = false;
  c1_g_emlrt_marshallIn(chartInstance, sf_mex_dup(c1_sprintf), &c1_thisId, c1_y);
  sf_mex_destroy(&c1_sprintf);
}

static void c1_g_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId,
  char_T c1_y[14])
{
  char_T c1_cv0[14];
  int32_T c1_i43;
  (void)chartInstance;
  sf_mex_import(c1_parentId, sf_mex_dup(c1_u), c1_cv0, 1, 10, 0U, 1, 0U, 2, 1,
                14);
  for (c1_i43 = 0; c1_i43 < 14; c1_i43++) {
    c1_y[c1_i43] = c1_cv0[c1_i43];
  }

  sf_mex_destroy(&c1_u);
}

static const mxArray *c1_e_sf_marshallOut(void *chartInstanceVoid, void
  *c1_inData)
{
  const mxArray *c1_mxArrayOutData = NULL;
  int32_T c1_u;
  const mxArray *c1_y = NULL;
  SFc1_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc1_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c1_mxArrayOutData = NULL;
  c1_u = *(int32_T *)c1_inData;
  c1_y = NULL;
  sf_mex_assign(&c1_y, sf_mex_create("y", &c1_u, 6, 0U, 0U, 0U, 0), false);
  sf_mex_assign(&c1_mxArrayOutData, c1_y, false);
  return c1_mxArrayOutData;
}

static int32_T c1_h_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId)
{
  int32_T c1_y;
  int32_T c1_i44;
  (void)chartInstance;
  sf_mex_import(c1_parentId, sf_mex_dup(c1_u), &c1_i44, 1, 6, 0U, 0, 0U, 0);
  c1_y = c1_i44;
  sf_mex_destroy(&c1_u);
  return c1_y;
}

static void c1_e_sf_marshallIn(void *chartInstanceVoid, const mxArray
  *c1_mxArrayInData, const char_T *c1_varName, void *c1_outData)
{
  const mxArray *c1_b_sfEvent;
  const char_T *c1_identifier;
  emlrtMsgIdentifier c1_thisId;
  int32_T c1_y;
  SFc1_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc1_computedTorquePDInstanceStruct *)chartInstanceVoid;
  c1_b_sfEvent = sf_mex_dup(c1_mxArrayInData);
  c1_identifier = c1_varName;
  c1_thisId.fIdentifier = c1_identifier;
  c1_thisId.fParent = NULL;
  c1_thisId.bParentIsCell = false;
  c1_y = c1_h_emlrt_marshallIn(chartInstance, sf_mex_dup(c1_b_sfEvent),
    &c1_thisId);
  sf_mex_destroy(&c1_b_sfEvent);
  *(int32_T *)c1_outData = c1_y;
  sf_mex_destroy(&c1_mxArrayInData);
}

static uint8_T c1_i_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_b_is_active_c1_computedTorquePD, const
  char_T *c1_identifier)
{
  uint8_T c1_y;
  emlrtMsgIdentifier c1_thisId;
  c1_thisId.fIdentifier = c1_identifier;
  c1_thisId.fParent = NULL;
  c1_thisId.bParentIsCell = false;
  c1_y = c1_j_emlrt_marshallIn(chartInstance, sf_mex_dup
    (c1_b_is_active_c1_computedTorquePD), &c1_thisId);
  sf_mex_destroy(&c1_b_is_active_c1_computedTorquePD);
  return c1_y;
}

static uint8_T c1_j_emlrt_marshallIn(SFc1_computedTorquePDInstanceStruct
  *chartInstance, const mxArray *c1_u, const emlrtMsgIdentifier *c1_parentId)
{
  uint8_T c1_y;
  uint8_T c1_u0;
  (void)chartInstance;
  sf_mex_import(c1_parentId, sf_mex_dup(c1_u), &c1_u0, 1, 3, 0U, 0, 0U, 0);
  c1_y = c1_u0;
  sf_mex_destroy(&c1_u);
  return c1_y;
}

static void c1_b_cos(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T *
                     c1_x)
{
  (void)chartInstance;
  *c1_x = muDoubleScalarCos(*c1_x);
}

static void c1_b_sin(SFc1_computedTorquePDInstanceStruct *chartInstance, real_T *
                     c1_x)
{
  (void)chartInstance;
  *c1_x = muDoubleScalarSin(*c1_x);
}

static void init_dsm_address_info(SFc1_computedTorquePDInstanceStruct
  *chartInstance)
{
  (void)chartInstance;
}

static void init_simulink_io_address(SFc1_computedTorquePDInstanceStruct
  *chartInstance)
{
  chartInstance->c1_T1 = (real_T *)ssGetOutputPortSignal_wrapper
    (chartInstance->S, 1);
  chartInstance->c1_des_ddth1 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 0);
  chartInstance->c1_des_ddth2 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 1);
  chartInstance->c1_T2 = (real_T *)ssGetOutputPortSignal_wrapper
    (chartInstance->S, 2);
  chartInstance->c1_ddth1 = (real_T *)ssGetOutputPortSignal_wrapper
    (chartInstance->S, 3);
  chartInstance->c1_ddth2 = (real_T *)ssGetOutputPortSignal_wrapper
    (chartInstance->S, 4);
  chartInstance->c1_th1 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 2);
  chartInstance->c1_th2 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 3);
  chartInstance->c1_dth1 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 4);
  chartInstance->c1_dth2 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 5);
  chartInstance->c1_e_th1 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 6);
  chartInstance->c1_e_th2 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 7);
  chartInstance->c1_e_dth1 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 8);
  chartInstance->c1_e_dth2 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 9);
  chartInstance->c1_e_ith1 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 10);
  chartInstance->c1_e_ith2 = (real_T *)ssGetInputPortSignal_wrapper
    (chartInstance->S, 11);
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

void sf_c1_computedTorquePD_get_check_sum(mxArray *plhs[])
{
  ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(4109036890U);
  ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(1868694742U);
  ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(1845238238U);
  ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(1314285357U);
}

mxArray* sf_c1_computedTorquePD_get_post_codegen_info(void);
mxArray *sf_c1_computedTorquePD_get_autoinheritance_info(void)
{
  const char *autoinheritanceFields[] = { "checksum", "inputs", "parameters",
    "outputs", "locals", "postCodegenInfo" };

  mxArray *mxAutoinheritanceInfo = mxCreateStructMatrix(1, 1, sizeof
    (autoinheritanceFields)/sizeof(autoinheritanceFields[0]),
    autoinheritanceFields);

  {
    mxArray *mxChecksum = mxCreateString("ZtfyiWngiJ17dGYWL8CD4G");
    mxSetField(mxAutoinheritanceInfo,0,"checksum",mxChecksum);
  }

  {
    const char *dataFields[] = { "size", "type", "complexity" };

    mxArray *mxData = mxCreateStructMatrix(1,12,3,dataFields);

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
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
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
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
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
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
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
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

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
      mxSetField(mxData,4,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,4,"type",mxType);
    }

    mxSetField(mxData,4,"complexity",mxCreateDoubleScalar(0));

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
      mxSetField(mxData,5,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,5,"type",mxType);
    }

    mxSetField(mxData,5,"complexity",mxCreateDoubleScalar(0));

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
      mxSetField(mxData,6,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,6,"type",mxType);
    }

    mxSetField(mxData,6,"complexity",mxCreateDoubleScalar(0));

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
      mxSetField(mxData,7,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,7,"type",mxType);
    }

    mxSetField(mxData,7,"complexity",mxCreateDoubleScalar(0));

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
      mxSetField(mxData,8,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,8,"type",mxType);
    }

    mxSetField(mxData,8,"complexity",mxCreateDoubleScalar(0));

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
      mxSetField(mxData,9,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,9,"type",mxType);
    }

    mxSetField(mxData,9,"complexity",mxCreateDoubleScalar(0));

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
      mxSetField(mxData,10,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,10,"type",mxType);
    }

    mxSetField(mxData,10,"complexity",mxCreateDoubleScalar(0));

    {
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
      mxSetField(mxData,11,"size",mxSize);
    }

    {
      const char *typeFields[] = { "base", "fixpt", "isFixedPointType" };

      mxArray *mxType = mxCreateStructMatrix(1,1,sizeof(typeFields)/sizeof
        (typeFields[0]),typeFields);
      mxSetField(mxType,0,"base",mxCreateDoubleScalar(10));
      mxSetField(mxType,0,"fixpt",mxCreateDoubleMatrix(0,0,mxREAL));
      mxSetField(mxType,0,"isFixedPointType",mxCreateDoubleScalar(0));
      mxSetField(mxData,11,"type",mxType);
    }

    mxSetField(mxData,11,"complexity",mxCreateDoubleScalar(0));
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
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
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
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
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
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
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
      mxArray *mxSize = mxCreateDoubleMatrix(1,0,mxREAL);
      double *pr = mxGetPr(mxSize);
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
    mxArray* mxPostCodegenInfo = sf_c1_computedTorquePD_get_post_codegen_info();
    mxSetField(mxAutoinheritanceInfo,0,"postCodegenInfo",mxPostCodegenInfo);
  }

  return(mxAutoinheritanceInfo);
}

mxArray *sf_c1_computedTorquePD_third_party_uses_info(void)
{
  mxArray * mxcell3p = mxCreateCellMatrix(1,0);
  return(mxcell3p);
}

mxArray *sf_c1_computedTorquePD_jit_fallback_info(void)
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

mxArray *sf_c1_computedTorquePD_updateBuildInfo_args_info(void)
{
  mxArray *mxBIArgs = mxCreateCellMatrix(1,0);
  return mxBIArgs;
}

mxArray* sf_c1_computedTorquePD_get_post_codegen_info(void)
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

static const mxArray *sf_get_sim_state_info_c1_computedTorquePD(void)
{
  const char *infoFields[] = { "chartChecksum", "varInfo" };

  mxArray *mxInfo = mxCreateStructMatrix(1, 1, 2, infoFields);
  const char *infoEncStr[] = {
    "100 S1x5'type','srcId','name','auxInfo'{{M[1],M[5],T\"T1\",},{M[1],M[7],T\"T2\",},{M[1],M[8],T\"ddth1\",},{M[1],M[9],T\"ddth2\",},{M[8],M[0],T\"is_active_c1_computedTorquePD\",}}"
  };

  mxArray *mxVarInfo = sf_mex_decode_encoded_mx_struct_array(infoEncStr, 5, 10);
  mxArray *mxChecksum = mxCreateDoubleMatrix(1, 4, mxREAL);
  sf_c1_computedTorquePD_get_check_sum(&mxChecksum);
  mxSetField(mxInfo, 0, infoFields[0], mxChecksum);
  mxSetField(mxInfo, 0, infoFields[1], mxVarInfo);
  return mxInfo;
}

static void chart_debug_initialization(SimStruct *S, unsigned int
  fullDebuggerInitialization)
{
  if (!sim_mode_is_rtw_gen(S)) {
    SFc1_computedTorquePDInstanceStruct *chartInstance =
      (SFc1_computedTorquePDInstanceStruct *)sf_get_chart_instance_ptr(S);
    if (ssIsFirstInitCond(S) && fullDebuggerInitialization==1) {
      /* do this only if simulation is starting */
      {
        unsigned int chartAlreadyPresent;
        chartAlreadyPresent = sf_debug_initialize_chart
          (sfGlobalDebugInstanceStruct,
           _computedTorquePDMachineNumber_,
           1,
           1,
           1,
           0,
           16,
           0,
           0,
           0,
           0,
           0,
           &chartInstance->chartNumber,
           &chartInstance->instanceNumber,
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
          _SFD_SET_DATA_PROPS(0,1,1,0,"des_ddth1");
          _SFD_SET_DATA_PROPS(1,1,1,0,"des_ddth2");
          _SFD_SET_DATA_PROPS(2,1,1,0,"th1");
          _SFD_SET_DATA_PROPS(3,1,1,0,"th2");
          _SFD_SET_DATA_PROPS(4,1,1,0,"dth1");
          _SFD_SET_DATA_PROPS(5,1,1,0,"dth2");
          _SFD_SET_DATA_PROPS(6,1,1,0,"e_th1");
          _SFD_SET_DATA_PROPS(7,1,1,0,"e_th2");
          _SFD_SET_DATA_PROPS(8,1,1,0,"e_dth1");
          _SFD_SET_DATA_PROPS(9,1,1,0,"e_dth2");
          _SFD_SET_DATA_PROPS(10,1,1,0,"e_ith1");
          _SFD_SET_DATA_PROPS(11,1,1,0,"e_ith2");
          _SFD_SET_DATA_PROPS(12,2,0,1,"T1");
          _SFD_SET_DATA_PROPS(13,2,0,1,"T2");
          _SFD_SET_DATA_PROPS(14,2,0,1,"ddth1");
          _SFD_SET_DATA_PROPS(15,2,0,1,"ddth2");
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
        _SFD_CV_INIT_EML(0,1,1,0,0,0,0,0,0,0,0,0);
        _SFD_CV_INIT_EML_FCN(0,0,"eML_blk_kernel",0,-1,1263);
        _SFD_SET_DATA_COMPILED_PROPS(0,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(1,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(2,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(3,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(4,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(5,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(6,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(7,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(8,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(9,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(10,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(11,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)NULL);
        _SFD_SET_DATA_COMPILED_PROPS(12,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)c1_sf_marshallIn);
        _SFD_SET_DATA_COMPILED_PROPS(13,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)c1_sf_marshallIn);
        _SFD_SET_DATA_COMPILED_PROPS(14,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)c1_sf_marshallIn);
        _SFD_SET_DATA_COMPILED_PROPS(15,SF_DOUBLE,0,NULL,0,0,0,0.0,1.0,0,0,
          (MexFcnForType)c1_sf_marshallOut,(MexInFcnForType)c1_sf_marshallIn);
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
    SFc1_computedTorquePDInstanceStruct *chartInstance =
      (SFc1_computedTorquePDInstanceStruct *)sf_get_chart_instance_ptr(S);
    if (ssIsFirstInitCond(S)) {
      /* do this only if simulation is starting and after we know the addresses of all data */
      {
        _SFD_SET_DATA_VALUE_PTR(12U, chartInstance->c1_T1);
        _SFD_SET_DATA_VALUE_PTR(0U, chartInstance->c1_des_ddth1);
        _SFD_SET_DATA_VALUE_PTR(1U, chartInstance->c1_des_ddth2);
        _SFD_SET_DATA_VALUE_PTR(13U, chartInstance->c1_T2);
        _SFD_SET_DATA_VALUE_PTR(14U, chartInstance->c1_ddth1);
        _SFD_SET_DATA_VALUE_PTR(15U, chartInstance->c1_ddth2);
        _SFD_SET_DATA_VALUE_PTR(2U, chartInstance->c1_th1);
        _SFD_SET_DATA_VALUE_PTR(3U, chartInstance->c1_th2);
        _SFD_SET_DATA_VALUE_PTR(4U, chartInstance->c1_dth1);
        _SFD_SET_DATA_VALUE_PTR(5U, chartInstance->c1_dth2);
        _SFD_SET_DATA_VALUE_PTR(6U, chartInstance->c1_e_th1);
        _SFD_SET_DATA_VALUE_PTR(7U, chartInstance->c1_e_th2);
        _SFD_SET_DATA_VALUE_PTR(8U, chartInstance->c1_e_dth1);
        _SFD_SET_DATA_VALUE_PTR(9U, chartInstance->c1_e_dth2);
        _SFD_SET_DATA_VALUE_PTR(10U, chartInstance->c1_e_ith1);
        _SFD_SET_DATA_VALUE_PTR(11U, chartInstance->c1_e_ith2);
      }
    }
  }
}

static const char* sf_get_instance_specialization(void)
{
  return "sIL1ugInzawBrmEvyXBELvF";
}

static void sf_opaque_initialize_c1_computedTorquePD(void *chartInstanceVar)
{
  chart_debug_initialization(((SFc1_computedTorquePDInstanceStruct*)
    chartInstanceVar)->S,0);
  initialize_params_c1_computedTorquePD((SFc1_computedTorquePDInstanceStruct*)
    chartInstanceVar);
  initialize_c1_computedTorquePD((SFc1_computedTorquePDInstanceStruct*)
    chartInstanceVar);
}

static void sf_opaque_enable_c1_computedTorquePD(void *chartInstanceVar)
{
  enable_c1_computedTorquePD((SFc1_computedTorquePDInstanceStruct*)
    chartInstanceVar);
}

static void sf_opaque_disable_c1_computedTorquePD(void *chartInstanceVar)
{
  disable_c1_computedTorquePD((SFc1_computedTorquePDInstanceStruct*)
    chartInstanceVar);
}

static void sf_opaque_gateway_c1_computedTorquePD(void *chartInstanceVar)
{
  sf_gateway_c1_computedTorquePD((SFc1_computedTorquePDInstanceStruct*)
    chartInstanceVar);
}

static const mxArray* sf_opaque_get_sim_state_c1_computedTorquePD(SimStruct* S)
{
  return get_sim_state_c1_computedTorquePD((SFc1_computedTorquePDInstanceStruct *)
    sf_get_chart_instance_ptr(S));     /* raw sim ctx */
}

static void sf_opaque_set_sim_state_c1_computedTorquePD(SimStruct* S, const
  mxArray *st)
{
  set_sim_state_c1_computedTorquePD((SFc1_computedTorquePDInstanceStruct*)
    sf_get_chart_instance_ptr(S), st);
}

static void sf_opaque_terminate_c1_computedTorquePD(void *chartInstanceVar)
{
  if (chartInstanceVar!=NULL) {
    SimStruct *S = ((SFc1_computedTorquePDInstanceStruct*) chartInstanceVar)->S;
    if (sim_mode_is_rtw_gen(S) || sim_mode_is_external(S)) {
      sf_clear_rtw_identifier(S);
      unload_computedTorquePD_optimization_info();
    }

    finalize_c1_computedTorquePD((SFc1_computedTorquePDInstanceStruct*)
      chartInstanceVar);
    utFree(chartInstanceVar);
    if (ssGetUserData(S)!= NULL) {
      sf_free_ChartRunTimeInfo(S);
    }

    ssSetUserData(S,NULL);
  }
}

static void sf_opaque_init_subchart_simstructs(void *chartInstanceVar)
{
  initSimStructsc1_computedTorquePD((SFc1_computedTorquePDInstanceStruct*)
    chartInstanceVar);
}

extern unsigned int sf_machine_global_initializer_called(void);
static void mdlProcessParameters_c1_computedTorquePD(SimStruct *S)
{
  int i;
  for (i=0;i<ssGetNumRunTimeParams(S);i++) {
    if (ssGetSFcnParamTunable(S,i)) {
      ssUpdateDlgParamAsRunTimeParam(S,i);
    }
  }

  if (sf_machine_global_initializer_called()) {
    initialize_params_c1_computedTorquePD((SFc1_computedTorquePDInstanceStruct*)
      sf_get_chart_instance_ptr(S));
  }
}

static void mdlSetWorkWidths_c1_computedTorquePD(SimStruct *S)
{
  /* Set overwritable ports for inplace optimization */
  ssMdlUpdateIsEmpty(S, 1);
  if (sim_mode_is_rtw_gen(S) || sim_mode_is_external(S)) {
    mxArray *infoStruct = load_computedTorquePD_optimization_info
      (sim_mode_is_rtw_gen(S), sim_mode_is_modelref_sim(S), sim_mode_is_external
       (S));
    int_T chartIsInlinable =
      (int_T)sf_is_chart_inlinable(sf_get_instance_specialization(),infoStruct,1);
    ssSetStateflowIsInlinable(S,chartIsInlinable);
    ssSetRTWCG(S,1);
    ssSetEnableFcnIsTrivial(S,1);
    ssSetDisableFcnIsTrivial(S,1);
    ssSetNotMultipleInlinable(S,sf_rtw_info_uint_prop
      (sf_get_instance_specialization(),infoStruct,1,
       "gatewayCannotBeInlinedMultipleTimes"));
    sf_set_chart_accesses_machine_info(S, sf_get_instance_specialization(),
      infoStruct, 1);
    sf_update_buildInfo(S, sf_get_instance_specialization(),infoStruct,1);
    if (chartIsInlinable) {
      ssSetInputPortOptimOpts(S, 0, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 1, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 2, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 3, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 4, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 5, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 6, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 7, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 8, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 9, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 10, SS_REUSABLE_AND_LOCAL);
      ssSetInputPortOptimOpts(S, 11, SS_REUSABLE_AND_LOCAL);
      sf_mark_chart_expressionable_inputs(S,sf_get_instance_specialization(),
        infoStruct,1,12);
      sf_mark_chart_reusable_outputs(S,sf_get_instance_specialization(),
        infoStruct,1,4);
    }

    {
      unsigned int outPortIdx;
      for (outPortIdx=1; outPortIdx<=4; ++outPortIdx) {
        ssSetOutputPortOptimizeInIR(S, outPortIdx, 1U);
      }
    }

    {
      unsigned int inPortIdx;
      for (inPortIdx=0; inPortIdx < 12; ++inPortIdx) {
        ssSetInputPortOptimizeInIR(S, inPortIdx, 1U);
      }
    }

    sf_set_rtw_dwork_info(S,sf_get_instance_specialization(),infoStruct,1);
    ssSetHasSubFunctions(S,!(chartIsInlinable));
  } else {
  }

  ssSetOptions(S,ssGetOptions(S)|SS_OPTION_WORKS_WITH_CODE_REUSE);
  ssSetChecksum0(S,(2133683958U));
  ssSetChecksum1(S,(292431584U));
  ssSetChecksum2(S,(3999883427U));
  ssSetChecksum3(S,(3027113906U));
  ssSetmdlDerivatives(S, NULL);
  ssSetExplicitFCSSCtrl(S,1);
  ssSetStateSemanticsClassicAndSynchronous(S, true);
  ssSupportsMultipleExecInstances(S,1);
}

static void mdlRTW_c1_computedTorquePD(SimStruct *S)
{
  if (sim_mode_is_rtw_gen(S)) {
    ssWriteRTWStrParam(S, "StateflowChartType", "Embedded MATLAB");
  }
}

static void mdlStart_c1_computedTorquePD(SimStruct *S)
{
  SFc1_computedTorquePDInstanceStruct *chartInstance;
  chartInstance = (SFc1_computedTorquePDInstanceStruct *)utMalloc(sizeof
    (SFc1_computedTorquePDInstanceStruct));
  if (chartInstance==NULL) {
    sf_mex_error_message("Could not allocate memory for chart instance.");
  }

  memset(chartInstance, 0, sizeof(SFc1_computedTorquePDInstanceStruct));
  chartInstance->chartInfo.chartInstance = chartInstance;
  chartInstance->chartInfo.isEMLChart = 1;
  chartInstance->chartInfo.chartInitialized = 0;
  chartInstance->chartInfo.sFunctionGateway =
    sf_opaque_gateway_c1_computedTorquePD;
  chartInstance->chartInfo.initializeChart =
    sf_opaque_initialize_c1_computedTorquePD;
  chartInstance->chartInfo.terminateChart =
    sf_opaque_terminate_c1_computedTorquePD;
  chartInstance->chartInfo.enableChart = sf_opaque_enable_c1_computedTorquePD;
  chartInstance->chartInfo.disableChart = sf_opaque_disable_c1_computedTorquePD;
  chartInstance->chartInfo.getSimState =
    sf_opaque_get_sim_state_c1_computedTorquePD;
  chartInstance->chartInfo.setSimState =
    sf_opaque_set_sim_state_c1_computedTorquePD;
  chartInstance->chartInfo.getSimStateInfo =
    sf_get_sim_state_info_c1_computedTorquePD;
  chartInstance->chartInfo.zeroCrossings = NULL;
  chartInstance->chartInfo.outputs = NULL;
  chartInstance->chartInfo.derivatives = NULL;
  chartInstance->chartInfo.mdlRTW = mdlRTW_c1_computedTorquePD;
  chartInstance->chartInfo.mdlStart = mdlStart_c1_computedTorquePD;
  chartInstance->chartInfo.mdlSetWorkWidths =
    mdlSetWorkWidths_c1_computedTorquePD;
  chartInstance->chartInfo.callGetHoverDataForMsg = NULL;
  chartInstance->chartInfo.extModeExec = NULL;
  chartInstance->chartInfo.restoreLastMajorStepConfiguration = NULL;
  chartInstance->chartInfo.restoreBeforeLastMajorStepConfiguration = NULL;
  chartInstance->chartInfo.storeCurrentConfiguration = NULL;
  chartInstance->chartInfo.callAtomicSubchartUserFcn = NULL;
  chartInstance->chartInfo.callAtomicSubchartAutoFcn = NULL;
  chartInstance->chartInfo.debugInstance = sfGlobalDebugInstanceStruct;
  chartInstance->S = S;
  sf_init_ChartRunTimeInfo(S, &(chartInstance->chartInfo), false, 0);
  init_dsm_address_info(chartInstance);
  init_simulink_io_address(chartInstance);
  if (!sim_mode_is_rtw_gen(S)) {
  }

  chart_debug_initialization(S,1);
  mdl_start_c1_computedTorquePD(chartInstance);
}

void c1_computedTorquePD_method_dispatcher(SimStruct *S, int_T method, void
  *data)
{
  switch (method) {
   case SS_CALL_MDL_START:
    mdlStart_c1_computedTorquePD(S);
    break;

   case SS_CALL_MDL_SET_WORK_WIDTHS:
    mdlSetWorkWidths_c1_computedTorquePD(S);
    break;

   case SS_CALL_MDL_PROCESS_PARAMETERS:
    mdlProcessParameters_c1_computedTorquePD(S);
    break;

   default:
    /* Unhandled method */
    sf_mex_error_message("Stateflow Internal Error:\n"
                         "Error calling c1_computedTorquePD_method_dispatcher.\n"
                         "Can't handle method %d.\n", method);
    break;
  }
}
