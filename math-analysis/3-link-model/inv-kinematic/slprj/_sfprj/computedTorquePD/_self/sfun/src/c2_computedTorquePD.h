#ifndef __c2_computedTorquePD_h__
#define __c2_computedTorquePD_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc2_computedTorquePDInstanceStruct
#define typedef_SFc2_computedTorquePDInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c2_sfEvent;
  boolean_T c2_isStable;
  boolean_T c2_doneDoubleBufferReInit;
  uint8_T c2_is_active_c2_computedTorquePD;
  real_T *c2_des_th1;
  real_T *c2_T1;
  real_T *c2_des_th2;
  real_T *c2_T2;
  real_T (*c2_th1)[2];
  real_T (*c2_th2)[2];
} SFc2_computedTorquePDInstanceStruct;

#endif                                 /*typedef_SFc2_computedTorquePDInstanceStruct*/

/* Named Constants */

/* Variable Declarations */
extern struct SfDebugInstanceStruct *sfGlobalDebugInstanceStruct;

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c2_computedTorquePD_get_eml_resolved_functions_info
  (void);

/* Function Definitions */
extern void sf_c2_computedTorquePD_get_check_sum(mxArray *plhs[]);
extern void c2_computedTorquePD_method_dispatcher(SimStruct *S, int_T method,
  void *data);

#endif
