#ifndef __c1_computedTorquePD_h__
#define __c1_computedTorquePD_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc1_computedTorquePDInstanceStruct
#define typedef_SFc1_computedTorquePDInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c1_sfEvent;
  boolean_T c1_doneDoubleBufferReInit;
  uint8_T c1_is_active_c1_computedTorquePD;
  real_T *c1_T1;
  real_T *c1_des_ddth1;
  real_T *c1_des_ddth2;
  real_T *c1_T2;
  real_T *c1_ddth1;
  real_T *c1_ddth2;
  real_T *c1_th1;
  real_T *c1_th2;
  real_T *c1_dth1;
  real_T *c1_dth2;
  real_T *c1_e_th1;
  real_T *c1_e_th2;
  real_T *c1_e_dth1;
  real_T *c1_e_dth2;
  real_T *c1_e_ith1;
  real_T *c1_e_ith2;
} SFc1_computedTorquePDInstanceStruct;

#endif                                 /*typedef_SFc1_computedTorquePDInstanceStruct*/

/* Named Constants */

/* Variable Declarations */
extern struct SfDebugInstanceStruct *sfGlobalDebugInstanceStruct;

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c1_computedTorquePD_get_eml_resolved_functions_info
  (void);

/* Function Definitions */
extern void sf_c1_computedTorquePD_get_check_sum(mxArray *plhs[]);
extern void c1_computedTorquePD_method_dispatcher(SimStruct *S, int_T method,
  void *data);

#endif
