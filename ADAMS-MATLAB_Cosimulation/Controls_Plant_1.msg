
-------------------------------------------------------------------------------
|        ..          ..                                                       |
|       ####*.      ####.                                                     |
|         `###*.       `#.              MSC Software                          |
|            `###.       #.             ------------                          |
|               `##.     ##                                                   |
|                 `##.   ##                                                   |
|                   `## ##'             A d a m s   C++   S o l v e r         |
|                     ####              Build:   2017.2.0-CL501464            |
|                     ###.              Version: Adams 2017.2 Student Edition |
|                    ###`#.                                                   |
|                  .###  `#                                                   |
|                 ####    `#                                                  |
|                ####      #.                                                 |
|              #####       `#           http://www.mscsoftware.com            |
|            .#####                                                           |
|           #####'                                                            |
|           ####                                                              |
|                                                                             |
|    *********************************************************************    |
|    *                                                                   *    |
|    *                      MSC Software Corporation                     *    |
|    *                                                                   *    |
|    *                             A d a m s                             *    |
|    *                                                                   *    |
|    *          Automatic Dynamic Analysis of Mechanical Systems         *    |
|    *                                                                   *    |
|    *********************************************************************    |
|    *                                                                   *    |
|    *                         LEGAL INFORMATION                         *    |
|    *                                                                   *    |
|    *  Warning:  This computer  program is protected  by copyright law  *    |
|    *  and  international  treaties.    Unauthorized  reproduction  or  *    |
|    *  distribution  of this  computer program, or any  portion of it,  *    |
|    *  may result in severe civil and criminal penalties.               *    |
|    *                                                                   *    |
|    *  Copyright (C) 2017 MSC Software Corporation and  its licensors.  *    |
|    *                        All rights reserved.                       *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
|-----------------------------------------------------------------------------|
|                                                                             |
|    *********************************************************************    |
|    *                                                                   *    |
|    *   Local Time: 2017-11-22 23:35:48                                 *    |
|    *    Host Name: AUM                                                 *    |
|    *        Uname: MS Windows NT                                       *    |
|    *      OS Info: 6.2                                                 *    |
|    *         User: BhaviK                                              *    |
|    *  Customer ID: Unknown                                             *    |
|    *  Current dir: C:\Users\BhaviK\Desktop\final_year_project\adams_model\three_link_model\exoskeleton model files*    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
|                                                                             |
|-----------------------------------------------------------------------------|
|                                                                             |
|    *********************************************************************    |
|    *                                                                   *    |
|    *                          STUDENT EDITION                          *    |
|    *                                                                   *    |
|    *                       (Expires: 06-30-2019)                       *    |
|    *                                                                   *    |
|    *  This  Student  Edition is intended for use by eligible students  *    |
|    *                                                                   *    |
|    *  using   the  Software   for  educational   learning   purposes.  *    |
|    *                                                                   *    |
|    *  Commercial,  professional or other  for-profit use, or use  for  *    |
|    *                                                                   *    |
|    *  classroom   teaching  or  research  is  strictly    prohibited.  *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
-------------------------------------------------------------------------------

  OS-environment variable
  MDI_ADAMS_SCONTROLS_APPLICATION=1
  Adams Controls. Announces Adams Solver (C++) is being run with Adams Controls in either function evaluation mode or cosimulation mode.



-------------------------------------------------------------------------------
|                                 Model Title                                 |
|=============================================================================|
|                                                                             |
|                       Adams View model name: MODEL_3                        |
|                                                                             |
-------------------------------------------------------------------------------

 command: simulate/initial_conditions


  Begin Displacement Initial Conditions

  Time T=0.000000000E+00.
  Degree-of-freedom analysis identified redundant constraints in the model:
  -------------------------------------------------------------------------
   -  deactivating constraint equation  Xi.Yj in plant.JOINT_8
   -  deactivating constraint equation  Zi.Yj in plant.JOINT_7
   -  deactivating constraint equation  Zi.Yj in plant.JOINT_5
   -  deactivating constraint equation  Zi.Xj in plant.JOINT_4
   -  deactivating constraint equation  Zi.Yj in plant.JOINT_3
   -  deactivating constraint equation  Zi.Yj in plant.JOINT_2
  Time T=0.000000000E+00.
  Degree-of-freedom analysis identified redundant constraints in the model:
  -------------------------------------------------------------------------
   -  deactivating constraint equation  Zi.Yj in plant.JOINT_7
   -  deactivating constraint equation  Zi.Xj in plant.JOINT_7
   -  deactivating constraint equation  Zi.Yj in plant.JOINT_5
   -  deactivating constraint equation  Zi.Xj in plant.JOINT_4
   -  deactivating constraint equation  Zi.Yj in plant.JOINT_3
   -  deactivating constraint equation  Zi.Yj in plant.JOINT_2

  End Displacement Initial Conditions


  Begin Velocity Initial Conditions


  End Velocity Initial Conditions


  Begin Acceleration Initial Conditions


  End Acceleration Initial Conditions
 command: var/1, fun=  6.87963048795054965e+03
 command: var/2, fun=  1.78108985326596530e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   0.00000E+00  0.00000E+00            9            0       0            0.00 
   0.00000E+00  0.00000E+00            9            0       0            0.17 

---- START: WARNING ----
Integrator HMAX could not be determined. Setting to HINIT.

---- END: WARNING ----
   0.00000E+00  5.00000E-06            0            0       1            0.19 

  End Simulation
 command: var/1, fun=  6.87963048795054965e+03
 command: var/2, fun=  1.78108985326596530e+03
 command: var/1, fun=  6.87963048795054965e+03
 command: var/2, fun=  1.78108985326596530e+03
 command: var/1, fun=  6.87963048795052327e+03
 command: var/2, fun=  1.78108985326595462e+03
 command: var/1, fun=  6.87963048795057693e+03
 command: var/2, fun=  1.78108985326597622e+03
 command: var/1, fun=  6.87963048792864629e+03
 command: var/2, fun=  1.78108985325720414e+03
 command: var/1, fun=  6.87963048797245210e+03
 command: var/2, fun=  1.78108985327472647e+03
 command: var/1, fun=  6.87963048795054965e+03
 command: var/2, fun=  1.78108985326596530e+03
 command: var/1, fun=  6.87963048795054965e+03
 command: var/2, fun=  1.78108985326596530e+03
 command: var/1, fun=  6.87963048795045961e+03
 command: var/2, fun=  1.78108985326593870e+03
 command: var/1, fun=  6.87963048795064060e+03
 command: var/2, fun=  1.78108985326599213e+03
 command: var/1, fun=  6.87963048787647767e+03
 command: var/2, fun=  1.78108985324406217e+03
 command: var/1, fun=  6.87963048802462254e+03
 command: var/2, fun=  1.78108985328786844e+03
 command: var/1, fun=  3.32866701272845739e+03
 command: var/2, fun= -1.05292596117879725e+02
 command: var/1, fun=  3.32866701272845739e+03
 command: var/2, fun= -1.05292596117879725e+02
 command: var/1, fun=  3.32866701272845739e+03
 command: var/2, fun= -1.05292596117879725e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   0.00000E+00  5.00000E-06            0            0       1            0.19 
   5.00000E-03  1.00000E-04          114           56       2            1.58 

  End Simulation
 command: var/1, fun=  3.32866574691992355e+03
 command: var/2, fun= -1.05293427668226300e+02
 command: var/1, fun=  3.32866827853622272e+03
 command: var/2, fun= -1.05291764567533136e+02
 command: var/1, fun= -2.31596871038268800e+04
 command: var/2, fun= -5.68544196764373282e+03
 command: var/1, fun= -4.53043172508695261e+03
 command: var/2, fun=  5.47479399859880141e+03
 command: var/1, fun=  3.32866510071819903e+03
 command: var/2, fun= -1.05293049038516301e+02
 command: var/1, fun=  3.32866892473871440e+03
 command: var/2, fun= -1.05292143197139751e+02
 command: var/1, fun= -9.50527693392078254e+03
 command: var/2, fun= -8.10910914526313718e+02
 command: var/1, fun=  1.61572289549596208e+04
 command: var/2, fun=  5.26806256800299070e+03
 command: var/1, fun=  3.61488499561197386e+03
 command: var/2, fun=  1.15112227607736539e+01
 command: var/1, fun=  3.61488499561197386e+03
 command: var/2, fun=  1.15112227607736539e+01
 command: var/1, fun=  3.33372308708683704e+03
 command: var/2, fun= -1.02111572274050943e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.00000E-03  1.00000E-04          114           56       2            1.58 
   1.00000E-02  1.00000E-04          216          106       1            2.78 

  End Simulation
 command: var/1, fun=  3.33372182112048176e+03
 command: var/2, fun= -1.02112402729298609e+02
 command: var/1, fun=  3.33372435305242652e+03
 command: var/2, fun= -1.02110741818803248e+02
 command: var/1, fun= -2.31002379088243615e+04
 command: var/2, fun= -5.67493056661452738e+03
 command: var/1, fun= -4.46859066886925757e+03
 command: var/2, fun=  5.47060957073189820e+03
 command: var/1, fun=  3.33372117646229526e+03
 command: var/2, fun= -1.02112025210153888e+02
 command: var/1, fun=  3.33372499771139428e+03
 command: var/2, fun= -1.02111119337840620e+02
 command: var/1, fun= -9.49091691211501347e+03
 command: var/2, fun= -8.15775167886688450e+02
 command: var/1, fun=  1.61529907585269684e+04
 command: var/2, fun=  5.26340606431623019e+03
 command: var/1, fun=  3.90008069279858864e+03
 command: var/2, fun=  1.27849863131632745e+02
 command: var/1, fun=  3.90008069279858864e+03
 command: var/2, fun=  1.27849863131632745e+02
 command: var/1, fun=  3.34380501002955089e+03
 command: var/2, fun= -9.59399476506473121e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.00000E-02  1.00000E-04          216          106       1            2.78 
   1.50000E-02  1.00000E-04          316          156       1            4.03 

  End Simulation
 command: var/1, fun=  3.34380374378035594e+03
 command: var/2, fun= -9.59407760449216767e+01
 command: var/1, fun=  3.34380627627796866e+03
 command: var/2, fun= -9.59391192563832504e+01
 command: var/1, fun= -2.29877850290224742e+04
 command: var/2, fun= -5.65496389212947179e+03
 command: var/1, fun= -4.35193686752218764e+03
 command: var/2, fun=  5.46291858748100185e+03
 command: var/1, fun=  3.34380310257477277e+03
 command: var/2, fun= -9.59404004801052395e+01
 command: var/1, fun=  3.34380691748432810e+03
 command: var/2, fun= -9.59394948210870524e+01
 command: var/1, fun= -9.45955292405868204e+03
 command: var/2, fun= -8.25133346989384336e+02
 command: var/1, fun=  1.61418114104906399e+04
 command: var/2, fun=  5.25261669752578018e+03
 command: var/1, fun=  3.91838599055791565e+03
 command: var/2, fun=  1.24109559179496031e+02
 command: var/1, fun=  3.91838599055791565e+03
 command: var/2, fun=  1.24109559179496031e+02
 command: var/1, fun=  3.35379910187700671e+03
 command: var/2, fun= -9.01705770764015568e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.50000E-02  1.00000E-04          316          156       1            4.03 
   2.00000E-02  1.00000E-04          416          206       1            5.28 

  End Simulation
 command: var/1, fun=  3.35379783539441269e+03
 command: var/2, fun= -9.01714036780983292e+01
 command: var/1, fun=  3.35380036835885903e+03
 command: var/2, fun= -9.01697504746945668e+01
 command: var/1, fun= -2.28887071251621273e+04
 command: var/2, fun= -5.63719805603507120e+03
 command: var/1, fun= -4.24948977070057117e+03
 command: var/2, fun=  5.45662885576221743e+03
 command: var/1, fun=  3.35379719839344716e+03
 command: var/2, fun= -9.01710295226831562e+01
 command: var/1, fun=  3.35380100536054988e+03
 command: var/2, fun= -9.01701246300222863e+01
 command: var/1, fun= -9.42289684079008111e+03
 command: var/2, fun= -8.33771044353429602e+02
 command: var/1, fun=  1.61251672003853491e+04
 command: var/2, fun=  5.23883627485605484e+03
 command: var/1, fun=  3.99694066615775137e+03
 command: var/2, fun=  1.47832668269002994e+02
 command: var/1, fun=  3.99694066615775137e+03
 command: var/2, fun=  1.47832668269002994e+02
 command: var/1, fun=  3.36484926156448637e+03
 command: var/2, fun= -8.40434357178293965e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.00000E-02  1.00000E-04          416          206       1            5.28 
   2.50000E-02  1.00000E-04          516          256       1            6.56 

  End Simulation
 command: var/1, fun=  3.36484799485992744e+03
 command: var/2, fun= -8.40442605194773051e+01
 command: var/1, fun=  3.36485052826829178e+03
 command: var/2, fun= -8.40426109161818999e+01
 command: var/1, fun= -2.27881718621878790e+04
 command: var/2, fun= -5.61902576586405030e+03
 command: var/1, fun= -4.14584637865931199e+03
 command: var/2, fun=  5.45064483528312940e+03
 command: var/1, fun=  3.36484736307952562e+03
 command: var/2, fun= -8.40438875361302138e+01
 command: var/1, fun=  3.36485116004943029e+03
 command: var/2, fun= -8.40429838994317606e+01
 command: var/1, fun= -9.37828774911780965e+03
 command: var/2, fun= -8.42799129303033169e+02
 command: var/1, fun=  1.61026868614183622e+04
 command: var/2, fun=  5.22137980074444840e+03
 command: var/1, fun=  4.09084441820130633e+03
 command: var/2, fun=  1.78658757395605022e+02
 command: var/1, fun=  4.09084441820130633e+03
 command: var/2, fun=  1.78658757395605022e+02
 command: var/1, fun=  3.37722392962764570e+03
 command: var/2, fun= -7.73799554171967543e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.50000E-02  1.00000E-04          516          256       1            6.56 
   3.00000E-02  1.00000E-04          616          306       1            7.81 

  End Simulation
 command: var/1, fun=  3.37722266270647606e+03
 command: var/2, fun= -7.73807783470479791e+01
 command: var/1, fun=  3.37722519654808320e+03
 command: var/2, fun= -7.73791324873351556e+01
 command: var/1, fun= -2.26827347431602393e+04
 command: var/2, fun= -5.59983845846292206e+03
 command: var/1, fun= -4.03748131432639229e+03
 command: var/2, fun=  5.44471326362281616e+03
 command: var/1, fun=  3.37722203722817676e+03
 command: var/2, fun= -7.73804063671584288e+01
 command: var/1, fun=  3.37722582202709873e+03
 command: var/2, fun= -7.73795044671389718e+01
 command: var/1, fun= -9.32505777110297277e+03
 command: var/2, fun= -8.52426351536753373e+02
 command: var/1, fun=  1.60742398400185957e+04
 command: var/2, fun=  5.20009827595799743e+03
 command: var/1, fun=  4.19103606870923431e+03
 command: var/2, fun=  2.12521692588795219e+02
 command: var/1, fun=  4.19103606870923431e+03
 command: var/2, fun=  2.12521692588795219e+02
 command: var/1, fun=  3.39101504096998497e+03
 command: var/2, fun= -7.01186895510722792e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.00000E-02  1.00000E-04          616          306       1            7.81 
   3.50000E-02  1.00000E-04          716          356       1            9.17 

  End Simulation
 command: var/1, fun=  3.39101377383773797e+03
 command: var/2, fun= -7.01195105159273027e+01
 command: var/1, fun=  3.39101630810150391e+03
 command: var/2, fun= -7.01178685862069386e+01
 command: var/1, fun= -2.25712506525763056e+04
 command: var/2, fun= -5.57943079416691580e+03
 command: var/1, fun= -3.92326673866065812e+03
 command: var/2, fun=  5.43875116418255220e+03
 command: var/1, fun=  3.39101315576971911e+03
 command: var/2, fun= -7.01191393909691243e+01
 command: var/1, fun=  3.39101692617023537e+03
 command: var/2, fun= -7.01182397110804914e+01
 command: var/1, fun= -9.26293465217056473e+03
 command: var/2, fun= -8.62673126987963656e+02
 command: var/1, fun=  1.60397379118639874e+04
 command: var/2, fun=  5.17495280565505709e+03
 command: var/1, fun=  4.26258729572491666e+03
 command: var/2, fun=  2.32976292923197889e+02
 command: var/1, fun=  4.26258729572491666e+03
 command: var/2, fun=  2.32976292923197889e+02
 command: var/1, fun=  3.40563777698505055e+03
 command: var/2, fun= -6.26455952332236023e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.50000E-02  1.00000E-04          716          356       1            9.17 
   4.00000E-02  1.00000E-04          816          406       1           10.47 

  End Simulation
 command: var/1, fun=  3.40563650966158457e+03
 command: var/2, fun= -6.26464142807480897e+01
 command: var/1, fun=  3.40563904430779394e+03
 command: var/2, fun= -6.26447761856889471e+01
 command: var/1, fun= -2.24612863289309316e+04
 command: var/2, fun= -5.55913188365123460e+03
 command: var/1, fun= -3.81095761680664782e+03
 command: var/2, fun=  5.43331985608937157e+03
 command: var/1, fun=  3.40563589998833777e+03
 command: var/2, fun= -6.26460437034003235e+01
 command: var/1, fun=  3.40563965398176470e+03
 command: var/2, fun= -6.26451467629494658e+01
 command: var/1, fun= -9.19323767149316700e+03
 command: var/2, fun= -8.72923150707632544e+02
 command: var/1, fun=  1.59993297809540800e+04
 command: var/2, fun=  5.14631908759431735e+03
 command: var/1, fun=  4.33043169180251607e+03
 command: var/2, fun=  2.51516787556426635e+02
 command: var/1, fun=  4.33043169180251607e+03
 command: var/2, fun=  2.51516787556426635e+02
 command: var/1, fun=  3.42099652678285929e+03
 command: var/2, fun= -5.50228399740261693e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.00000E-02  1.00000E-04          816          406       1           10.47 
   4.50000E-02  1.00000E-04          916          456       1           11.73 

  End Simulation
 command: var/1, fun=  3.42099525928842968e+03
 command: var/2, fun= -5.50236571752926693e+01
 command: var/1, fun=  3.42099779427655312e+03
 command: var/2, fun= -5.50220227727597120e+01
 command: var/1, fun= -2.23540953711303882e+04
 command: var/2, fun= -5.53916066964573201e+03
 command: var/1, fun= -3.70179822380583664e+03
 command: var/2, fun=  5.42851458145451306e+03
 command: var/1, fun=  3.42099465898197286e+03
 command: var/2, fun= -5.50232868101359074e+01
 command: var/1, fun=  3.42099839458376209e+03
 command: var/2, fun= -5.50223931378160671e+01
 command: var/1, fun= -9.11614357927587116e+03
 command: var/2, fun= -8.83039922966390805e+02
 command: var/1, fun=  1.59530008290086771e+04
 command: var/2, fun=  5.11427066276068854e+03
 command: var/1, fun=  4.42831858159684271e+03
 command: var/2, fun=  2.84107104504386825e+02
 command: var/1, fun=  4.42831858159684271e+03
 command: var/2, fun=  2.84107104504386825e+02
 command: var/1, fun=  3.43764955055551172e+03
 command: var/2, fun= -4.68804847808267908e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.50000E-02  1.00000E-04          916          456       1           11.73 
   5.00000E-02  1.00000E-04         1016          506       1           12.94 

  End Simulation
 command: var/1, fun=  3.43764828290019068e+03
 command: var/2, fun= -4.68813000738559609e+01
 command: var/1, fun=  3.43765081821010108e+03
 command: var/2, fun= -4.68796694877976350e+01
 command: var/1, fun= -2.22425436213156609e+04
 command: var/2, fun= -5.51825630883187750e+03
 command: var/1, fun= -3.58853933142070218e+03
 command: var/2, fun=  5.42381061922912431e+03
 command: var/1, fun=  3.43764769306650624e+03
 command: var/2, fun= -4.68809297277753529e+01
 command: var/1, fun=  3.43765140804451721e+03
 command: var/2, fun= -4.68800398337830160e+01
 command: var/1, fun= -9.03026296713612646e+03
 command: var/2, fun= -8.93468113605647659e+02
 command: var/1, fun=  1.59004790841877621e+04
 command: var/2, fun=  5.07848704075116530e+03
 command: var/1, fun=  4.53552141199295602e+03
 command: var/2, fun=  3.21185260765638304e+02
 command: var/1, fun=  4.53552141199295602e+03
 command: var/2, fun=  3.21185260765638304e+02
 command: var/1, fun=  3.45574598757313743e+03
 command: var/2, fun= -3.81188777305532511e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.00000E-02  1.00000E-04         1016          506       1           12.94 
   5.50000E-02  1.00000E-04         1116          556       1           14.17 

  End Simulation
 command: var/1, fun=  3.45574471976715677e+03
 command: var/2, fun= -3.81196910184077069e+01
 command: var/1, fun=  3.45574725537839140e+03
 command: var/2, fun= -3.81180644426988238e+01
 command: var/1, fun= -2.21247676206283068e+04
 command: var/2, fun= -5.49608510242789362e+03
 command: var/1, fun= -3.46934104939290182e+03
 command: var/2, fun=  5.41907269260864632e+03
 command: var/1, fun=  3.45574414155481918e+03
 command: var/2, fun= -3.81193205316253554e+01
 command: var/1, fun=  3.45574783359145658e+03
 command: var/2, fun= -3.81184349293874476e+01
 command: var/1, fun= -8.93515953610908582e+03
 command: var/2, fun= -9.04249881051905390e+02
 command: var/1, fun=  1.58416267758304311e+04
 command: var/2, fun=  5.03890424481379250e+03
 command: var/1, fun=  4.64845041251413204e+03
 command: var/2, fun=  3.61125533854829825e+02
 command: var/1, fun=  4.64845041251413204e+03
 command: var/2, fun=  3.61125533854829825e+02
 command: var/1, fun=  3.47536295904551798e+03
 command: var/2, fun= -2.86858452473512173e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.50000E-02  1.00000E-04         1116          556       1           14.17 
   6.00000E-02  1.00000E-04         1216          606       1           15.39 

  End Simulation
 command: var/1, fun=  3.47536169110148330e+03
 command: var/2, fun= -2.86866564154979891e+01
 command: var/1, fun=  3.47536422698883052e+03
 command: var/2, fun= -2.86850340792044456e+01
 command: var/1, fun= -2.19998371548568648e+04
 command: var/2, fun= -5.47247687008345110e+03
 command: var/1, fun= -3.34332942268305442e+03
 command: var/2, fun=  5.41423461048306308e+03
 command: var/1, fun=  3.47536112568657927e+03
 command: var/2, fun= -2.86862856417225984e+01
 command: var/1, fun=  3.47536479240445715e+03
 command: var/2, fun= -2.86854048528877570e+01
 command: var/1, fun= -8.83055581867270121e+03
 command: var/2, fun= -9.15346124912293703e+02
 command: var/1, fun=  1.57763208095383488e+04
 command: var/2, fun=  4.99550636168507572e+03
 command: var/1, fun=  4.76686535970380373e+03
 command: var/2, fun=  4.03866985443110593e+02
 command: var/1, fun=  4.76686535970380373e+03
 command: var/2, fun=  4.03866985443110593e+02
 command: var/1, fun=  3.49657149519834184e+03
 command: var/2, fun= -1.85331183786824312e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.00000E-02  1.00000E-04         1216          606       1           15.39 
   6.50000E-02  1.00000E-04         1316          656       1           16.63 

  End Simulation
 command: var/1, fun=  3.49657022713229753e+03
 command: var/2, fun= -1.85339272964951682e+01
 command: var/1, fun=  3.49657276326368537e+03
 command: var/2, fun= -1.85323094608594019e+01
 command: var/1, fun= -2.18669085001599851e+04
 command: var/2, fun= -5.44727564563961550e+03
 command: var/1, fun= -3.20973488684220774e+03
 command: var/2, fun=  5.40923666193985810e+03
 command: var/1, fun=  3.49656967571794803e+03
 command: var/2, fun= -1.85335561004417464e+01
 command: var/1, fun=  3.49657331467875292e+03
 command: var/2, fun= -1.85326806568287878e+01
 command: var/1, fun= -8.71617594128903693e+03
 command: var/2, fun= -9.26696362309112942e+02
 command: var/1, fun=  1.57044274902597681e+04
 command: var/2, fun=  4.94828546206437568e+03
 command: var/1, fun=  4.89127404435466997e+03
 command: var/2, fun=  4.49714537151075490e+02
 command: var/1, fun=  4.89127404435466997e+03
 command: var/2, fun=  4.49714537151075490e+02
 command: var/1, fun=  3.51945139129462859e+03
 command: var/2, fun= -7.60651199866066197e+00


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.50000E-02  1.00000E-04         1316          656       1           16.63 
   7.00000E-02  1.00000E-04         1416          706       1           17.84 

  End Simulation
 command: var/1, fun=  3.51945012312694507e+03
 command: var/2, fun= -7.60731851744581622e+00
 command: var/1, fun=  3.51945265946158452e+03
 command: var/2, fun= -7.60570547988566670e+00
 command: var/1, fun= -2.17250349197726464e+04
 command: var/2, fun= -5.42030605225311865e+03
 command: var/1, fun= -3.06770393891711001e+03
 command: var/2, fun=  5.40401154063102331e+03
 command: var/1, fun=  3.51944958694649222e+03
 command: var/2, fun= -7.60694677597643842e+00
 command: var/1, fun=  3.51945319564274905e+03
 command: var/2, fun= -7.60607722126042685e+00
 command: var/1, fun= -8.59170838576852293e+03
 command: var/2, fun= -9.38229591622574389e+02
 command: var/1, fun=  1.56257950188865307e+04
 command: var/2, fun=  4.89723317331013641e+03
 command: var/1, fun=  5.00251197022992710e+03
 command: var/2, fun=  4.90657816366741088e+02
 command: var/1, fun=  5.00251197022992710e+03
 command: var/2, fun=  4.90657816366741088e+02
 command: var/1, fun=  3.54373046543252076e+03
 command: var/2, fun=  3.95091321302604337e+00


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.00000E-02  1.00000E-04         1416          706       1           17.84 
   7.50000E-02  1.00000E-04         1516          756       1           19.08 

  End Simulation
 command: var/1, fun=  3.54372919718973981e+03
 command: var/2, fun=  3.95010920177332903e+00
 command: var/1, fun=  3.54373173367457957e+03
 command: var/2, fun=  3.95171722426846861e+00
 command: var/1, fun= -2.15765012499044933e+04
 command: var/2, fun= -5.39198007647611757e+03
 command: var/1, fun= -2.91960941876089009e+03
 command: var/2, fun=  5.39868674014104818e+03
 command: var/1, fun=  3.54372867734361125e+03
 command: var/2, fun=  3.95048163580720413e+00
 command: var/1, fun=  3.54373225352142981e+03
 command: var/2, fun=  3.95134479033118158e+00
 command: var/1, fun= -8.45827612125957239e+03
 command: var/2, fun= -9.49648026405678252e+02
 command: var/1, fun=  1.55410012302558043e+04
 command: var/2, fun=  4.84286434830463168e+03
 command: var/1, fun=  5.04749206293449333e+03
 command: var/2, fun=  5.05924705454418813e+02
 command: var/1, fun=  5.04749206293449333e+03
 command: var/2, fun=  5.05924705454418813e+02
 command: var/1, fun=  3.56821184872926915e+03
 command: var/2, fun=  1.55226520324438884e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.50000E-02  1.00000E-04         1516          756       1           19.08 
   8.00000E-02  1.00000E-04         1616          806       1           20.30 

  End Simulation
 command: var/1, fun=  3.56821058044261099e+03
 command: var/2, fun=  1.55218504778956330e+01
 command: var/1, fun=  3.56821311701521017e+03
 command: var/2, fun=  1.55234535869817645e+01
 command: var/1, fun= -2.14303891951373334e+04
 command: var/2, fun= -5.36398028450389938e+03
 command: var/1, fun= -2.77450811396530025e+03
 command: var/2, fun=  5.39371788561331141e+03
 command: var/1, fun=  3.56821007735270359e+03
 command: var/2, fun=  1.55222237949893564e+01
 command: var/1, fun=  3.56821362010583562e+03
 command: var/2, fun=  1.55230802699827084e+01
 command: var/1, fun= -8.32160008217923678e+03
 command: var/2, fun= -9.60237276697136735e+02
 command: var/1, fun=  1.54533697822275535e+04
 command: var/2, fun=  4.78745016854875303e+03
 command: var/1, fun=  5.11667145436925875e+03
 command: var/2, fun=  5.34470851341888874e+02
 command: var/1, fun=  5.11667145436925875e+03
 command: var/2, fun=  5.34470851341888874e+02
 command: var/1, fun=  3.59340310191983281e+03
 command: var/2, fun=  2.74734315803538607e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.00000E-02  1.00000E-04         1616          806       1           20.30 
   8.50000E-02  1.00000E-04         1716          856       1           21.53 

  End Simulation
 command: var/1, fun=  3.59340183362198104e+03
 command: var/2, fun=  2.74726325738306407e+01
 command: var/1, fun=  3.59340437021700609e+03
 command: var/2, fun=  2.74742305868873586e+01
 command: var/1, fun= -2.12792166928705956e+04
 command: var/2, fun= -5.33498984089126679e+03
 command: var/1, fun= -2.62503059886496521e+03
 command: var/2, fun=  5.38851430211894876e+03
 command: var/1, fun=  3.59340134775724846e+03
 command: var/2, fun=  2.74730067957231157e+01
 command: var/1, fun=  3.59340485608241670e+03
 command: var/2, fun=  2.74738563650671566e+01
 command: var/1, fun= -8.18084660063660976e+03
 command: var/2, fun= -9.70369154539730857e+02
 command: var/1, fun=  1.53630826771008324e+04
 command: var/2, fun=  4.73097585972157049e+03
 command: var/1, fun=  5.20792388033748830e+03
 command: var/2, fun=  5.73814840165080454e+02
 command: var/1, fun=  5.20792388033748830e+03
 command: var/2, fun=  5.73814840165080454e+02
 command: var/1, fun=  3.61972240750613946e+03
 command: var/2, fun=  4.00714128090055226e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.50000E-02  1.00000E-04         1716          856       1           21.53 
   9.00000E-02  1.00000E-04         1816          906       1           22.73 

  End Simulation
 command: var/1, fun=  3.61972113923652205e+03
 command: var/2, fun=  4.00706165348760806e+01
 command: var/1, fun=  3.61972367577508339e+03
 command: var/2, fun=  4.00722090831452959e+01
 command: var/1, fun= -2.11180216238363246e+04
 command: var/2, fun= -5.30411717463913192e+03
 command: var/1, fun= -2.46640034881883730e+03
 command: var/2, fun=  5.38271850641432957e+03
 command: var/1, fun=  3.61972067118522637e+03
 command: var/2, fun=  4.00709915977174020e+01
 command: var/1, fun=  3.61972414382703437e+03
 command: var/2, fun=  4.00718340203700407e+01
 command: var/1, fun= -8.03475140611871575e+03
 command: var/2, fun= -9.80232524975004708e+02
 command: var/1, fun=  1.52697127493125008e+04
 command: var/2, fun=  4.67315252534189494e+03
 command: var/1, fun=  5.31454409841114193e+03
 command: var/2, fun=  6.20693174655390180e+02
 command: var/1, fun=  5.31454409841114193e+03
 command: var/2, fun=  6.20693174655390180e+02
 command: var/1, fun=  3.64744482438954174e+03
 command: var/2, fun=  5.34877243904086725e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.00000E-02  1.00000E-04         1816          906       1           22.73 
   9.50000E-02  1.00000E-04         1916          956       1           23.95 

  End Simulation
 command: var/1, fun=  3.64744355619813086e+03
 command: var/2, fun=  5.34869310900349504e+01
 command: var/1, fun=  3.64744609258028549e+03
 command: var/2, fun=  5.34885176907926976e+01
 command: var/1, fun= -2.09437784774101383e+04
 command: var/2, fun= -5.27080955746263135e+03
 command: var/1, fun= -2.29582395574137854e+03
 command: var/2, fun=  5.37611882543489810e+03
 command: var/1, fun=  3.64744310664269369e+03
 command: var/2, fun=  5.34873068865445092e+01
 command: var/1, fun=  3.64744654213637250e+03
 command: var/2, fun=  5.34881418943470877e+01
 command: var/1, fun= -7.88233647197281880e+03
 command: var/2, fun= -9.89865488995491205e+02
 command: var/1, fun=  1.51728326131368267e+04
 command: var/2, fun=  4.61376001342015661e+03
 command: var/1, fun=  5.43592009251646687e+03
 command: var/2, fun=  6.74953746328581133e+02
 command: var/1, fun=  5.43592009251646687e+03
 command: var/2, fun=  6.74953746328581133e+02
 command: var/1, fun=  3.67683003029034353e+03
 command: var/2, fun=  6.78821414031624784e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.50000E-02  1.00000E-04         1916          956       1           23.95 
   1.00000E-01  1.00000E-04         2016         1006       1           25.14 

  End Simulation
 command: var/1, fun=  3.67682876224141455e+03
 command: var/2, fun=  6.78813513702330482e+01
 command: var/1, fun=  3.67683129833858038e+03
 command: var/2, fun=  6.78829314360815346e+01
 command: var/1, fun= -2.07537233750464911e+04
 command: var/2, fun= -5.23455638220885976e+03
 command: var/1, fun= -2.11083805994600561e+03
 command: var/2, fun=  5.36852323982198141e+03
 command: var/1, fun=  3.67682833195839976e+03
 command: var/2, fun=  6.78817277578170888e+01
 command: var/1, fun=  3.67683172862227002e+03
 command: var/2, fun=  6.78825550485795048e+01
 command: var/1, fun= -7.72261402596326479e+03
 command: var/2, fun= -9.99251647391255005e+02
 command: var/1, fun=  1.50719743519682033e+04
 command: var/2, fun=  4.55258633225991161e+03
 command: var/1, fun=  5.51912250543742812e+03
 command: var/2, fun=  7.09053888176371629e+02
 command: var/1, fun=  5.51912250543742812e+03
 command: var/2, fun=  7.09053888176371629e+02
 command: var/1, fun=  3.70703003238086831e+03
 command: var/2, fun=  8.26839259086702185e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.00000E-01  1.00000E-04         2016         1006       1           25.14 
   1.05000E-01  1.00000E-04         2116         1056       1           26.41 

  End Simulation
 command: var/1, fun=  3.70702876453526142e+03
 command: var/2, fun=  8.26831392258897466e+01
 command: var/1, fun=  3.70703130022580672e+03
 command: var/2, fun=  8.26847125914506904e+01
 command: var/1, fun= -2.05590769357294776e+04
 command: var/2, fun= -5.19734173856097277e+03
 command: var/1, fun= -1.92245779659454638e+03
 command: var/2, fun=  5.36077955545453460e+03
 command: var/1, fun=  3.70702835415025129e+03
 command: var/2, fun=  8.26835162934402774e+01
 command: var/1, fun=  3.70703171061146895e+03
 command: var/2, fun=  8.26843355239695086e+01
 command: var/1, fun= -7.55746901843741944e+03
 command: var/2, fun= -1.00772821272031933e+03
 command: var/1, fun=  1.49673256147274788e+04
 command: var/2, fun=  4.49001911066163757e+03
 command: var/1, fun=  5.57885357308004586e+03
 command: var/2, fun=  7.29890395893855384e+02
 command: var/1, fun=  5.57885357308004586e+03
 command: var/2, fun=  7.29890395893855384e+02
 command: var/1, fun=  3.73750342990847548e+03
 command: var/2, fun=  9.75174721978494432e+01


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.05000E-01  1.00000E-04         2116         1056       1           26.41 
   1.10000E-01  1.00000E-04         2216         1106       1           27.63 

  End Simulation
 command: var/1, fun=  3.73750216231635932e+03
 command: var/2, fun=  9.75166888042355282e+01
 command: var/1, fun=  3.73750469749994727e+03
 command: var/2, fun=  9.75182555914735332e+01
 command: var/1, fun= -2.03674065049217861e+04
 command: var/2, fun= -5.16050356296536575e+03
 command: var/1, fun= -1.73795433961721369e+03
 command: var/2, fun=  5.35347763631109592e+03
 command: var/1, fun=  3.73750177239491950e+03
 command: var/2, fun=  9.75170668044335400e+01
 command: var/1, fun=  3.73750508742203147e+03
 command: var/2, fun=  9.75178775913367559e+01
 command: var/1, fun= -7.38791778148551384e+03
 command: var/2, fun= -1.01489357004921499e+03
 command: var/1, fun=  1.48588191892883897e+04
 command: var/2, fun=  4.42619024821698258e+03
 command: var/1, fun=  5.68767049925091214e+03
 command: var/2, fun=  7.75246943185025998e+02
 command: var/1, fun=  5.68767049925091214e+03
 command: var/2, fun=  7.75246943185025998e+02
 command: var/1, fun=  3.76922938476044783e+03
 command: var/2, fun=  1.13009294624097734e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.10000E-01  1.00000E-04         2216         1106       1           27.63 
   1.15000E-01  1.00000E-04         2316         1156       1           28.83 

  End Simulation
 command: var/1, fun=  3.76922811749439461e+03
 command: var/2, fun=  1.13008514675869449e+02
 command: var/1, fun=  3.76923065202586349e+03
 command: var/2, fun=  1.13010074572336293e+02
 command: var/1, fun= -2.01671640346969689e+04
 command: var/2, fun= -5.12196058745256050e+03
 command: var/1, fun= -1.54633281703155308e+03
 command: var/2, fun=  5.34578423893689433e+03
 command: var/1, fun=  3.76922774888228878e+03
 command: var/2, fun=  1.13008893665604376e+02
 command: var/1, fun=  3.76923102063860688e+03
 command: var/2, fun=  1.13009695582660243e+02
 command: var/1, fun= -7.21094930158820080e+03
 command: var/2, fun= -1.02113433543741780e+03
 command: var/1, fun=  1.47454041174969461e+04
 command: var/2, fun=  4.36042564295878128e+03
 command: var/1, fun=  5.81969578440879650e+03
 command: var/2, fun=  8.32123959803731850e+02
 command: var/1, fun=  5.81969578440879650e+03
 command: var/2, fun=  8.32123959803731850e+02
 command: var/1, fun=  3.80263429294557818e+03
 command: var/2, fun=  1.29424717390053786e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.15000E-01  1.00000E-04         2316         1156       1           28.83 
   1.20000E-01  1.00000E-04         2416         1206       1           30.05 

  End Simulation
 command: var/1, fun=  3.80263302609814991e+03
 command: var/2, fun=  1.29423941131578829e+02
 command: var/1, fun=  3.80263555979237753e+03
 command: var/2, fun=  1.29425493648538946e+02
 command: var/1, fun= -1.99536948727758281e+04
 command: var/2, fun= -5.08085667088578703e+03
 command: var/1, fun= -1.34336191678326418e+03
 command: var/2, fun=  5.33737214102754569e+03
 command: var/1, fun=  3.80263267979119155e+03
 command: var/2, fun=  1.29424321103949154e+02
 command: var/1, fun=  3.80263590609996572e+03
 command: var/2, fun=  1.29425113676225322e+02
 command: var/1, fun= -7.02499563218990716e+03
 command: var/2, fun= -1.02645143425103993e+03
 command: var/1, fun=  1.46263660248874112e+04
 command: var/2, fun=  4.29239742273653337e+03
 command: var/1, fun=  5.96815559933141049e+03
 command: var/2, fun=  8.97240628946508764e+02
 command: var/1, fun=  5.96815559933141049e+03
 command: var/2, fun=  8.97240628946508764e+02
 command: var/1, fun=  3.83799740959739165e+03
 command: var/2, fun=  1.46932315577188177e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.20000E-01  1.00000E-04         2416         1206       1           30.05 
   1.25000E-01  1.00000E-04         2516         1256       1           31.25 

  End Simulation
 command: var/1, fun=  3.83799614328300368e+03
 command: var/2, fun=  1.46931543306254525e+02
 command: var/1, fun=  3.83799867591112570e+03
 command: var/2, fun=  1.46933087848111541e+02
 command: var/1, fun= -1.97242182227729027e+04
 command: var/2, fun= -5.03666537632063682e+03
 command: var/1, fun= -1.12669070355305848e+03
 command: var/2, fun=  5.32805128626122769e+03
 command: var/1, fun=  3.83799582039508914e+03
 command: var/2, fun=  1.46931924228301710e+02
 command: var/1, fun=  3.83799899879969416e+03
 command: var/2, fun=  1.46932706926139247e+02
 command: var/1, fun= -6.82883847413854710e+03
 command: var/2, fun= -1.03071171635032283e+03
 command: var/1, fun=  1.45010456400523217e+04
 command: var/2, fun=  4.22187163647358466e+03
 command: var/1, fun=  6.13248578832175190e+03
 command: var/2, fun=  9.70502425021698059e+02
 command: var/1, fun=  6.13248578832175190e+03
 command: var/2, fun=  9.70502425021698059e+02
 command: var/1, fun=  3.87558201486103280e+03
 command: var/2, fun=  1.65689367905310064e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.25000E-01  1.00000E-04         2516         1256       1           31.25 
   1.30000E-01  1.00000E-04         2616         1306       1           32.48 

  End Simulation
 command: var/1, fun=  3.87558074922052401e+03
 command: var/2, fun=  1.65688599968788424e+02
 command: var/1, fun=  3.87558328050091404e+03
 command: var/2, fun=  1.65690135841831733e+02
 command: var/1, fun= -1.94762122834240508e+04
 command: var/2, fun= -4.98890032419170348e+03
 command: var/1, fun= -8.94305140120231954e+02
 command: var/2, fun=  5.31764934542920855e+03
 command: var/1, fun=  3.87558045098336197e+03
 command: var/2, fun=  1.65688981789622574e+02
 command: var/1, fun=  3.87558357873868727e+03
 command: var/2, fun=  1.65689754021055052e+02
 command: var/1, fun= -6.62124603578491133e+03
 command: var/2, fun= -1.03371525053652863e+03
 command: var/1, fun=  1.43687382044085625e+04
 command: var/2, fun=  4.14862993588167319e+03
 command: var/1, fun=  6.31459931663378848e+03
 command: var/2, fun=  1.05317763723901157e+03
 command: var/1, fun=  6.31459931663378848e+03
 command: var/2, fun=  1.05317763723901157e+03
 command: var/1, fun=  3.91568893279661279e+03
 command: var/2, fun=  1.85876612145818171e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.30000E-01  1.00000E-04         2616         1306       1           32.48 
   1.35000E-01  1.00000E-04         2716         1356       1           33.69 

  End Simulation
 command: var/1, fun=  3.91568766800469166e+03
 command: var/2, fun=  1.85875848947816223e+02
 command: var/1, fun=  3.91569019758793138e+03
 command: var/2, fun=  1.85877375343830238e+02
 command: var/1, fun= -1.92067652895973006e+04
 command: var/2, fun= -4.93699694928846293e+03
 command: var/1, fun= -6.43937409154192551e+02
 command: var/2, fun=  5.30596275415018499e+03
 command: var/1, fun=  3.91568739578053601e+03
 command: var/2, fun=  1.85876231595509807e+02
 command: var/1, fun=  3.91569046981268821e+03
 command: var/2, fun=  1.85876992696185511e+02
 command: var/1, fun= -6.40081428708854128e+03
 command: var/2, fun= -1.03520794417127195e+03
 command: var/1, fun=  1.42286418470942917e+04
 command: var/2, fun=  4.07244077719325651e+03
 command: var/1, fun=  6.51339872967740030e+03
 command: var/2, fun=  1.14491784957469531e+03
 command: var/1, fun=  6.51339872967740030e+03
 command: var/2, fun=  1.14491784957469531e+03
 command: var/1, fun=  3.95859053028070912e+03
 command: var/2, fun=  2.07654810454166039e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.35000E-01  1.00000E-04         2716         1356       1           33.69 
   1.40000E-01  1.00000E-04         2816         1406       1           34.94 

  End Simulation
 command: var/1, fun=  3.95858926655172991e+03
 command: var/2, fun=  2.07654052448664089e+02
 command: var/1, fun=  3.95859179400906396e+03
 command: var/2, fun=  2.07655568459657644e+02
 command: var/1, fun= -1.89134004984437706e+04
 command: var/2, fun= -4.88045975075271235e+03
 command: var/1, fun= -3.73847477104135351e+02
 command: var/2, fun=  5.29281743325603020e+03
 command: var/1, fun=  3.95858902183108603e+03
 command: var/2, fun=  2.07654435842330230e+02
 command: var/1, fun=  3.95859203873035085e+03
 command: var/2, fun=  2.07655185066062785e+02
 command: var/1, fun= -6.16614339027235292e+03
 command: var/2, fun= -1.03484982678441816e+03
 command: var/1, fun=  1.40799018980549663e+04
 command: var/2, fun=  3.99309473755365252e+03
 command: var/1, fun=  6.72045062057745963e+03
 command: var/2, fun=  1.24105748425092429e+03
 command: var/1, fun=  6.72045062057745963e+03
 command: var/2, fun=  1.24105748425092429e+03
 command: var/1, fun=  4.00436243194122471e+03
 command: var/2, fun=  2.31054776046835514e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.40000E-01  1.00000E-04         2816         1406       1           34.94 
   1.45000E-01  1.00000E-04         2916         1456       1           36.14 

  End Simulation
 command: var/1, fun=  4.00436116952507246e+03
 command: var/2, fun=  2.31054023690995052e+02
 command: var/1, fun=  4.00436369435676397e+03
 command: var/2, fun=  2.31055528402665544e+02
 command: var/1, fun= -1.85961344518949081e+04
 command: var/2, fun= -4.81923622970562974e+03
 command: var/1, fun= -8.46694940328824828e+01
 command: var/2, fun=  5.27822345657971255e+03
 command: var/1, fun=  4.00436095388687909e+03
 command: var/2, fun=  2.31054407788513174e+02
 command: var/1, fun=  4.00436390999557079e+03
 command: var/2, fun=  2.31055144305211513e+02
 command: var/1, fun= -5.91632610669592850e+03
 command: var/2, fun= -1.03218269146664466e+03
 command: var/1, fun=  1.39217624476291985e+04
 command: var/2, fun=  3.91048717967338689e+03
 command: var/1, fun=  6.93232137053964470e+03
 command: var/2, fun=  1.33946181350024381e+03
 command: var/1, fun=  6.93232137053964470e+03
 command: var/2, fun=  1.33946181350024381e+03
 command: var/1, fun=  4.05298985294599333e+03
 command: var/2, fun=  2.56047528830361330e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.45000E-01  1.00000E-04         2916         1456       1           36.14 
   1.50000E-01  1.00000E-04         3016         1506       1           37.33 

  End Simulation
 command: var/1, fun=  4.05298859212508478e+03
 command: var/2, fun=  2.56046782562999908e+02
 command: var/1, fun=  4.05299111376631663e+03
 command: var/2, fun=  2.56048275097722637e+02
 command: var/1, fun= -1.82561358726961007e+04
 command: var/2, fun= -4.75347778213789024e+03
 command: var/1, fun=  2.21890678738765786e+02
 command: var/2, fun=  5.26227565045016672e+03
 command: var/1, fun=  4.05298840722160685e+03
 command: var/2, fun=  2.56047167383367480e+02
 command: var/1, fun=  4.05299129867037936e+03
 command: var/2, fun=  2.56047890277405997e+02
 command: var/1, fun= -5.65066694531700796e+03
 command: var/2, fun= -1.02669048272529699e+03
 command: var/1, fun=  1.37534983308538503e+04
 command: var/2, fun=  3.82456009979789860e+03
 command: var/1, fun=  7.15266398071475578e+03
 command: var/2, fun=  1.44219620601892416e+03
 command: var/1, fun=  7.15266398071475578e+03
 command: var/2, fun=  1.44219620601892416e+03
 command: var/1, fun=  4.10453290775340520e+03
 command: var/2, fun=  2.82654037585718186e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.50000E-01  1.00000E-04         3016         1506       1           37.33 
   1.55000E-01  1.00000E-04         3116         1556       1           38.56 

  End Simulation
 command: var/1, fun=  4.10453164884902890e+03
 command: var/2, fun=  2.82653297845932968e+02
 command: var/1, fun=  4.10453416665721124e+03
 command: var/2, fun=  2.82654777325503346e+02
 command: var/1, fun= -1.78936363090164050e+04
 command: var/2, fun= -4.68316086362096758e+03
 command: var/1, fun=  5.44948674563635791e+02
 command: var/2, fun=  5.24499353918445831e+03
 command: var/1, fun=  4.10453149642393055e+03
 command: var/2, fun=  2.82653683453556255e+02
 command: var/1, fun=  4.10453431908288076e+03
 command: var/2, fun=  2.82654391717928092e+02
 command: var/1, fun= -5.36823127318086335e+03
 command: var/2, fun= -1.01783826599440272e+03
 command: var/1, fun=  1.35742950986122923e+04
 command: var/2, fun=  3.73523504443800039e+03
 command: var/1, fun=  7.37982789571853664e+03
 command: var/2, fun=  1.54866979289318374e+03
 command: var/1, fun=  7.37982789571853664e+03
 command: var/2, fun=  1.54866979289318374e+03
 command: var/1, fun=  4.15901828570078123e+03
 command: var/2, fun=  3.10881602460865224e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.55000E-01  1.00000E-04         3116         1556       1           38.56 
   1.60000E-01  1.00000E-04         3216         1606       1           39.80 

  End Simulation
 command: var/1, fun=  4.15901702907540948e+03
 command: var/2, fun=  3.10880869687139921e+02
 command: var/1, fun=  4.15901954232561366e+03
 command: var/2, fun=  3.10882335234600760e+02
 command: var/1, fun= -1.75089830871208360e+04
 command: var/2, fun= -4.60828165975439697e+03
 command: var/1, fun=  8.83479177571767423e+02
 command: var/2, fun=  5.22638922019979873e+03
 command: var/1, fun=  4.15901691093565842e+03
 command: var/2, fun=  3.10881256187384906e+02
 command: var/1, fun=  4.15901966046592042e+03
 command: var/2, fun=  3.10881948734394541e+02
 command: var/1, fun= -5.06829144366683340e+03
 command: var/2, fun= -1.00506329472120569e+03
 command: var/1, fun=  1.33834782486313561e+04
 command: var/2, fun=  3.64253331561693858e+03
 command: var/1, fun=  7.58366971852663573e+03
 command: var/2, fun=  1.64290243366681011e+03
 command: var/1, fun=  7.58366971852663573e+03
 command: var/2, fun=  1.64290243366681011e+03
 command: var/1, fun=  4.21584335607879893e+03
 command: var/2, fun=  3.40374763701162351e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.60000E-01  1.00000E-04         3216         1606       1           39.80 
   1.65000E-01  1.00000E-04         3316         1656       1           41.05 

  End Simulation
 command: var/1, fun=  4.21584210209622779e+03
 command: var/2, fun=  3.40374038221771229e+02
 command: var/1, fun=  4.21584461006082620e+03
 command: var/2, fun=  3.40375489180553473e+02
 command: var/1, fun= -1.71083385560113020e+04
 command: var/2, fun= -4.52993346773618123e+03
 command: var/1, fun=  1.23144771603945810e+03
 command: var/2, fun=  5.20684837089516441e+03
 command: var/1, fun=  4.21584201983125968e+03
 command: var/2, fun=  3.40374425809766251e+02
 command: var/1, fun=  4.21584469232633819e+03
 command: var/2, fun=  3.40375101592600288e+02
 command: var/1, fun= -4.75290184423358369e+03
 command: var/2, fun= -9.87898201773084793e+02
 command: var/1, fun=  1.31818952197600556e+04
 command: var/2, fun=  3.54719668396547286e+03
 command: var/1, fun=  7.51856718742500652e+03
 command: var/2, fun=  1.59699848639925494e+03
 command: var/1, fun=  7.51856718742500652e+03
 command: var/2, fun=  1.59699848639925494e+03
 command: var/1, fun=  4.26945897001845697e+03
 command: var/2, fun=  3.67936476858854860e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.65000E-01  1.00000E-04         3316         1656       1           41.05 
   1.70000E-01  1.00000E-04         3416         1706       1           42.30 

  End Simulation
 command: var/1, fun=  4.26945771866932591e+03
 command: var/2, fun=  3.67935758031591376e+02
 command: var/1, fun=  4.26946022136705778e+03
 command: var/2, fun=  3.67937195686118230e+02
 command: var/1, fun= -1.67428959390786476e+04
 command: var/2, fun= -4.45781668389973584e+03
 command: var/1, fun=  1.54505994688914916e+03
 command: var/2, fun=  5.18969430409174493e+03
 command: var/1, fun=  4.26945767138534029e+03
 command: var/2, fun=  3.67936147324768910e+02
 command: var/1, fun=  4.26946026865157273e+03
 command: var/2, fun=  3.67936806392979406e+02
 command: var/1, fun= -4.44678676395093953e+03
 command: var/2, fun= -9.67387272970215122e+02
 command: var/1, fun=  1.29831595361840900e+04
 command: var/2, fun=  3.45553833375986960e+03
 command: var/1, fun=  7.51569371042083185e+03
 command: var/2, fun=  1.59343065692273603e+03
 command: var/1, fun=  7.51569371042083185e+03
 command: var/2, fun=  1.59343065692273603e+03
 command: var/1, fun=  4.32156951527715228e+03
 command: var/2, fun=  3.94705221846613938e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.70000E-01  1.00000E-04         3416         1706       1           42.30 
   1.75000E-01  1.00000E-04         3516         1756       1           43.52 

  End Simulation
 command: var/1, fun=  4.32156826668085978e+03
 command: var/2, fun=  3.94704509455678874e+02
 command: var/1, fun=  4.32157076387294546e+03
 command: var/2, fun=  3.94705934237559347e+02
 command: var/1, fun= -1.63907195571849988e+04
 command: var/2, fun= -4.38793490034706065e+03
 command: var/1, fun=  1.84365937729343000e+03
 command: var/2, fun=  5.17320110629377268e+03
 command: var/1, fun=  4.32156825375392509e+03
 command: var/2, fun=  3.94704900659145778e+02
 command: var/1, fun=  4.32157077680036218e+03
 command: var/2, fun=  3.94705543034113873e+02
 command: var/1, fun= -4.14556540775481881e+03
 command: var/2, fun= -9.43920322128094881e+02
 command: var/1, fun=  1.27863015194102372e+04
 command: var/2, fun=  3.36697941797995782e+03
 command: var/1, fun=  7.62518167047909083e+03
 command: var/2, fun=  1.65270508020090847e+03
 command: var/1, fun=  7.62518167047909083e+03
 command: var/2, fun=  1.65270508020090847e+03
 command: var/1, fun=  4.37464157266382972e+03
 command: var/2, fun=  4.22205162259112001e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.75000E-01  1.00000E-04         3516         1756       1           43.52 
   1.80000E-01  1.00000E-04         3616         1806       1           44.77 

  End Simulation
 command: var/1, fun=  4.37464032717008831e+03
 command: var/2, fun=  4.22204456611607952e+02
 command: var/1, fun=  4.37464281815708364e+03
 command: var/2, fun=  4.22205867906626338e+02
 command: var/1, fun= -1.60250684355567118e+04
 command: var/2, fun= -4.31525870563150511e+03
 command: var/1, fun=  2.14957341259952818e+03
 command: var/2, fun=  5.15538093833073981e+03
 command: var/1, fun=  4.37464034873409400e+03
 command: var/2, fun=  4.22204849571115119e+02
 command: var/1, fun=  4.37464279659358181e+03
 command: var/2, fun=  4.22205474947147366e+02
 command: var/1, fun= -3.84013816495065203e+03
 command: var/2, fun= -9.17079208365805016e+02
 command: var/1, fun=  1.25871589454801451e+04
 command: var/2, fun=  3.27974318101745394e+03
 command: var/1, fun=  7.81096505465089376e+03
 command: var/2, fun=  1.75469606868143751e+03
 command: var/1, fun=  7.81096505465089376e+03
 command: var/2, fun=  1.75469606868143751e+03
 command: var/1, fun=  4.43027905631611611e+03
 command: var/2, fun=  4.51416822400176727e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.80000E-01  1.00000E-04         3616         1806       1           44.77 
   1.85000E-01  1.00000E-04         3716         1856       1           45.95 

  End Simulation
 command: var/1, fun=  4.43027781447858979e+03
 command: var/2, fun=  4.51416124142768126e+02
 command: var/1, fun=  4.43028029815314949e+03
 command: var/2, fun=  4.51417520657585214e+02
 command: var/1, fun= -1.56290419248433845e+04
 command: var/2, fun= -4.23653045192771151e+03
 command: var/1, fun=  2.47595354181623225e+03
 command: var/2, fun=  5.13493444691342120e+03
 command: var/1, fun=  4.43027787116535728e+03
 command: var/2, fun=  4.51416518500104246e+02
 command: var/1, fun=  4.43028024146688404e+03
 command: var/2, fun=  4.51417126300282632e+02
 command: var/1, fun= -3.52418929283424995e+03
 command: var/2, fun= -8.86160311781857899e+02
 command: var/1, fun=  1.23826264096697450e+04
 command: var/2, fun=  3.19271308939906567e+03
 command: var/1, fun=  7.63553973467156720e+03
 command: var/2, fun=  1.64108593677011322e+03
 command: var/1, fun=  7.63553973467156720e+03
 command: var/2, fun=  1.64108593677011322e+03
 command: var/1, fun=  4.48012800442054777e+03
 command: var/2, fun=  4.76930397558355367e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.85000E-01  1.00000E-04         3716         1856       1           45.95 
   1.90000E-01  1.00000E-04         3816         1906       1           47.20 

  End Simulation
 command: var/1, fun=  4.48012676576561444e+03
 command: var/2, fun=  4.76929705355451858e+02
 command: var/1, fun=  4.48012924307498270e+03
 command: var/2, fun=  4.76931089761248700e+02
 command: var/1, fun= -1.53020020535839831e+04
 command: var/2, fun= -4.17045205121220351e+03
 command: var/1, fun=  2.74286965570103303e+03
 command: var/2, fun=  5.11976146816825076e+03
 command: var/1, fun=  4.48012685648720799e+03
 command: var/2, fun=  4.76930102323401286e+02
 command: var/1, fun=  4.48012915235388027e+03
 command: var/2, fun=  4.76930692793336220e+02
 command: var/1, fun= -3.22451369906823720e+03
 command: var/2, fun= -8.53436756946894207e+02
 command: var/1, fun=  1.21827790834403258e+04
 command: var/2, fun=  3.10913580749185166e+03
 command: var/1, fun=  7.06190794836069017e+03
 command: var/2, fun=  1.32458632261819434e+03
 command: var/1, fun=  7.06190794836069017e+03
 command: var/2, fun=  1.32458632261819434e+03
 command: var/1, fun=  4.51649157555652801e+03
 command: var/2, fun=  4.93728968816697716e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.90000E-01  1.00000E-04         3816         1906       1           47.20 
   1.95000E-01  1.00000E-04         3916         1956       1           48.44 

  End Simulation
 command: var/1, fun=  4.51649033842663903e+03
 command: var/2, fun=  4.93728279444064412e+02
 command: var/1, fun=  4.51649281268595132e+03
 command: var/2, fun=  4.93729658189336135e+02
 command: var/1, fun= -1.51365583856871417e+04
 command: var/2, fun= -4.13470846962125779e+03
 command: var/1, fun=  2.87953121279032212e+03
 command: var/2, fun=  5.11752276800334403e+03
 command: var/1, fun=  4.51649046074987655e+03
 command: var/2, fun=  4.93728681699281367e+02
 command: var/1, fun=  4.51649269036316946e+03
 command: var/2, fun=  4.93729255934138905e+02
 command: var/1, fun= -2.96578613605520650e+03
 command: var/2, fun= -8.22463059846926740e+02
 command: var/1, fun=  1.19968886014715081e+04
 command: var/2, fun=  3.03115813753610200e+03
 command: var/1, fun=  7.11407526905589384e+03
 command: var/2, fun=  1.33912709918632299e+03
 command: var/1, fun=  7.11407526905589384e+03
 command: var/2, fun=  1.33912709918632299e+03
 command: var/1, fun=  4.55258744697036491e+03
 command: var/2, fun=  5.10253359783854762e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.95000E-01  1.00000E-04         3916         1956       1           48.44 
   2.00000E-01  1.00000E-04         4016         2006       1           49.67 

  End Simulation
 command: var/1, fun=  4.55258621129848234e+03
 command: var/2, fun=  5.10252673058622122e+02
 command: var/1, fun=  4.55258868264178454e+03
 command: var/2, fun=  5.10254046509092234e+02
 command: var/1, fun= -1.49800690442544583e+04
 command: var/2, fun= -4.10046533827983149e+03
 command: var/1, fun=  3.00858663647361345e+03
 command: var/2, fun=  5.11623770695270014e+03
 command: var/1, fun=  4.55258636590664537e+03
 command: var/2, fun=  5.10253080993145943e+02
 command: var/1, fun=  4.55258852803407535e+03
 command: var/2, fun=  5.10253638574586603e+02
 command: var/1, fun= -2.70319124065648066e+03
 command: var/2, fun= -7.89327863087909236e+02
 command: var/1, fun=  1.18065943057925015e+04
 command: var/2, fun=  2.95253451056371523e+03
 command: var/1, fun=  7.24026571852323468e+03
 command: var/2, fun=  1.38973105157421310e+03
 command: var/1, fun=  7.24026571852323468e+03
 command: var/2, fun=  1.38973105157421310e+03
 command: var/1, fun=  4.58981313457797296e+03
 command: var/2, fun=  5.27389762754476465e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.00000E-01  1.00000E-04         4016         2006       1           49.67 
   2.05000E-01  1.00000E-04         4116         2056       1           50.88 

  End Simulation
 command: var/1, fun=  4.58981190047476139e+03
 command: var/2, fun=  5.27389078809286389e+02
 command: var/1, fun=  4.58981436868071069e+03
 command: var/2, fun=  5.27390446699661311e+02
 command: var/1, fun= -1.48167914698350487e+04
 command: var/2, fun= -4.06472059324773727e+03
 command: var/1, fun=  3.14246472499498714e+03
 command: var/2, fun=  5.11467409376725482e+03
 command: var/1, fun=  4.58981208843196600e+03
 command: var/2, fun=  5.27389492601507300e+02
 command: var/1, fun=  4.58981418072397173e+03
 command: var/2, fun=  5.27390032907467003e+02
 command: var/1, fun= -2.43158223613464224e+03
 command: var/2, fun= -7.53343806439584341e+02
 command: var/1, fun=  1.16095462852565597e+04
 command: var/2, fun=  2.87258508626665935e+03
 command: var/1, fun=  7.37872333735218945e+03
 command: var/2, fun=  1.44606616744936377e+03
 command: var/1, fun=  7.37872333735218945e+03
 command: var/2, fun=  1.44606616744936377e+03
 command: var/1, fun=  4.62833916501299882e+03
 command: var/2, fun=  5.45242326075860433e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.05000E-01  1.00000E-04         4116         2056       1           50.88 
   2.10000E-01  1.00000E-04         4216         2106       1           52.14 

  End Simulation
 command: var/1, fun=  4.62833793261425581e+03
 command: var/2, fun=  5.45241645076682971e+02
 command: var/1, fun=  4.62834039741129072e+03
 command: var/2, fun=  5.45243007075042897e+02
 command: var/1, fun= -1.46451055092751540e+04
 command: var/2, fun= -4.02714658767093533e+03
 command: var/1, fun=  3.28233729779364558e+03
 command: var/2, fun=  5.11271250556134510e+03
 command: var/1, fun=  4.62833815507946929e+03
 command: var/2, fun=  5.45242064901653180e+02
 command: var/1, fun=  4.62834017494652926e+03
 command: var/2, fun=  5.45242587250089628e+02
 command: var/1, fun= -2.14998353638936351e+03
 command: var/2, fun= -7.14207311092686496e+02
 command: var/1, fun=  1.14051100148630867e+04
 command: var/2, fun=  2.79121099948381880e+03
 command: var/1, fun=  7.37305643448161845e+03
 command: var/2, fun=  1.43949045735882783e+03
 command: var/1, fun=  7.37305643448161845e+03
 command: var/2, fun=  1.43949045735882783e+03
 command: var/1, fun=  4.66568592471206557e+03
 command: var/2, fun=  5.62402083925123975e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.10000E-01  1.00000E-04         4216         2106       1           52.14 
   2.15000E-01  1.00000E-04         4316         2156       1           53.36 

  End Simulation
 command: var/1, fun=  4.66568469390212340e+03
 command: var/2, fun=  5.62401405615510271e+02
 command: var/1, fun=  4.66568715552155209e+03
 command: var/2, fun=  5.62402762234737793e+02
 command: var/1, fun= -1.44865726666503597e+04
 command: var/2, fun= -3.99198437072742081e+03
 command: var/1, fun=  3.41130336944929377e+03
 command: var/2, fun=  5.11178062518889328e+03
 command: var/1, fun=  4.66568495080742832e+03
 command: var/2, fun=  5.62401831741211481e+02
 command: var/1, fun=  4.66568689861670282e+03
 command: var/2, fun=  5.62402336109056819e+02
 command: var/1, fun= -1.87079821429005210e+03
 command: var/2, fun= -6.73611674864459133e+02
 command: var/1, fun=  1.12007243573510641e+04
 command: var/2, fun=  2.71114123984201115e+03
 command: var/1, fun=  7.37835322748716135e+03
 command: var/2, fun=  1.44592461924556346e+03
 command: var/1, fun=  7.37835322748716135e+03
 command: var/2, fun=  1.44592461924556346e+03
 command: var/1, fun=  4.70238387916337069e+03
 command: var/2, fun=  5.79341454099364910e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.15000E-01  1.00000E-04         4316         2156       1           53.36 
   2.20000E-01  1.00000E-04         4416         2206       1           54.63 

  End Simulation
 command: var/1, fun=  4.70238264997003171e+03
 command: var/2, fun=  5.79340778466861821e+02
 command: var/1, fun=  4.70238510835626857e+03
 command: var/2, fun=  5.79342129731873001e+02
 command: var/1, fun= -1.43296128901957618e+04
 command: var/2, fun= -3.95712446110324390e+03
 command: var/1, fun=  3.53828708634716077e+03
 command: var/2, fun=  5.11071359650919294e+03
 command: var/1, fun=  4.70238294085454436e+03
 command: var/2, fun=  5.79341210821227037e+02
 command: var/1, fun=  4.70238481747220703e+03
 command: var/2, fun=  5.79341697377523928e+02
 command: var/1, fun= -1.59517036113653035e+03
 command: var/2, fun= -6.31803183881041264e+02
 command: var/1, fun=  1.09985938951619355e+04
 command: var/2, fun=  2.63341872112641977e+03
 command: var/1, fun=  7.46064971627188424e+03
 command: var/2, fun=  1.48813061547509642e+03
 command: var/1, fun=  7.46064971627188424e+03
 command: var/2, fun=  1.48813061547509642e+03
 command: var/1, fun=  4.73982165733994680e+03
 command: var/2, fun=  5.96896321568789290e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.20000E-01  1.00000E-04         4416         2206       1           54.63 
   2.25000E-01  1.00000E-04         4516         2256       1           55.83 

  End Simulation
 command: var/1, fun=  4.73982042996930250e+03
 command: var/2, fun=  5.96895648881491525e+02
 command: var/1, fun=  4.73982288471013635e+03
 command: var/2, fun=  5.96896994256081598e+02
 command: var/1, fun= -1.41602727566801004e+04
 command: var/2, fun= -3.91984938969067025e+03
 command: var/1, fun=  3.67397406392673656e+03
 command: var/2, fun=  5.10846382998962054e+03
 command: var/1, fun=  4.73982075489123872e+03
 command: var/2, fun=  5.96896087261983098e+02
 command: var/1, fun=  4.73982255978866579e+03
 command: var/2, fun=  5.96896555875614922e+02
 command: var/1, fun= -1.31703018229434133e+03
 command: var/2, fun= -5.87823639458871526e+02
 command: var/1, fun=  1.07954282258108833e+04
 command: var/2, fun=  2.55698733602595939e+03
 command: var/1, fun=  7.57116626157146857e+03
 command: var/2, fun=  1.54234458328917526e+03
 command: var/1, fun=  7.57116626157146857e+03
 command: var/2, fun=  1.54234458328917526e+03
 command: var/1, fun=  4.77842553003888042e+03
 command: var/2, fun=  6.15293309962978014e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.25000E-01  1.00000E-04         4516         2256       1           55.83 
   2.30000E-01  1.00000E-04         4616         2306       1           57.03 

  End Simulation
 command: var/1, fun=  4.77842430474789217e+03
 command: var/2, fun=  6.15292640550367196e+02
 command: var/1, fun=  4.77842675532942121e+03
 command: var/2, fun=  6.15293979375583376e+02
 command: var/1, fun= -1.39754969251974326e+04
 command: var/2, fun= -3.87952084159993365e+03
 command: var/1, fun=  3.82052138755478427e+03
 command: var/2, fun=  5.10484593188116742e+03
 command: var/1, fun=  4.77842466404484912e+03
 command: var/2, fun=  6.15293084776590376e+02
 command: var/1, fun=  4.77842639603290354e+03
 command: var/2, fun=  6.15293535149379068e+02
 command: var/1, fun= -1.03373472483529531e+03
 command: var/2, fun= -5.41138860041754810e+02
 command: var/1, fun=  1.05894376605970538e+04
 command: var/2, fun=  2.48126013439559802e+03
 command: var/1, fun=  7.70162568154220753e+03
 command: var/2, fun=  1.60505088849935441e+03
 command: var/1, fun=  7.70162568154220753e+03
 command: var/2, fun=  1.60505088849935441e+03
 command: var/1, fun=  4.81846840915506800e+03
 command: var/2, fun=  6.34670323740098524e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.30000E-01  1.00000E-04         4616         2306       1           57.03 
   2.35000E-01  1.00000E-04         4716         2356       1           58.28 

  End Simulation
 command: var/1, fun=  4.81846718623827201e+03
 command: var/2, fun=  6.34669657965716056e+02
 command: var/1, fun=  4.81846963207144108e+03
 command: var/2, fun=  6.34670989514486337e+02
 command: var/1, fun= -1.37736493443608160e+04
 command: var/2, fun= -3.83577233488558068e+03
 command: var/1, fun=  3.97892356924967680e+03
 command: var/2, fun=  5.09976926410892338e+03
 command: var/1, fun=  4.81846758046167452e+03
 command: var/2, fun=  6.34670107890692520e+02
 command: var/1, fun=  4.81846923784845239e+03
 command: var/2, fun=  6.34670539589516693e+02
 command: var/1, fun= -7.43323792729708771e+02
 command: var/2, fun= -4.91268534409242307e+02
 command: var/1, fun=  1.03792081952699064e+04
 command: var/2, fun=  2.40581179926504592e+03
 command: var/1, fun=  7.85025538282654634e+03
 command: var/2, fun=  1.67603690399960988e+03
 command: var/1, fun=  7.85025538282654634e+03
 command: var/2, fun=  1.67603690399960988e+03
 command: var/1, fun=  4.86020142691661295e+03
 command: var/2, fun=  6.55161113252350901e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.35000E-01  1.00000E-04         4716         2356       1           58.28 
   2.40000E-01  1.00000E-04         4816         2406       1           59.45 

  End Simulation
 command: var/1, fun=  4.86020020671311340e+03
 command: var/2, fun=  6.55160451518163541e+02
 command: var/1, fun=  4.86020264711969594e+03
 command: var/2, fun=  6.55161774986543492e+02
 command: var/1, fun= -1.35529643069815556e+04
 command: var/2, fun= -3.78821209246957142e+03
 command: var/1, fun=  4.15019114460574747e+03
 command: var/2, fun=  5.09310979836203751e+03
 command: var/1, fun=  4.86020063658886556e+03
 command: var/2, fun=  6.55160907016397346e+02
 command: var/1, fun=  4.86020221724437033e+03
 command: var/2, fun=  6.55161319488319918e+02
 command: var/1, fun= -4.44076362132842291e+02
 command: var/2, fun= -4.37720621935609927e+02
 command: var/1, fun=  1.01635212493417275e+04
 command: var/2, fun=  2.33033039084664870e+03
 command: var/1, fun=  8.01535672182454073e+03
 command: var/2, fun=  1.75530161184237932e+03
 command: var/1, fun=  8.01535672182454073e+03
 command: var/2, fun=  1.75530161184237932e+03
 command: var/1, fun=  4.90386321313914868e+03
 command: var/2, fun=  6.76902863966595305e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.40000E-01  1.00000E-04         4816         2406       1           59.45 
   2.45000E-01  1.00000E-04         4916         2456       1            1:00 

  End Simulation
 command: var/1, fun=  4.90386199604382182e+03
 command: var/2, fun=  6.76902206721849780e+02
 command: var/1, fun=  4.90386443023404536e+03
 command: var/2, fun=  6.76903521211335260e+02
 command: var/1, fun= -1.33113513208510340e+04
 command: var/2, fun= -3.73638542230465873e+03
 command: var/1, fun=  4.33547414690020287e+03
 command: var/2, fun=  5.08468771296032719e+03
 command: var/1, fun=  4.90386246242375728e+03
 command: var/2, fun=  6.76902667671364043e+02
 command: var/1, fun=  4.90386396385453827e+03
 command: var/2, fun=  6.76903060261837823e+02
 command: var/1, fun= -1.34534038738951097e+02
 command: var/2, fun= -3.79997396670091575e+02
 command: var/1, fun=  9.94139567647176045e+03
 command: var/2, fun=  2.25463163246307931e+03
 command: var/1, fun=  8.19278244899211859e+03
 command: var/2, fun=  1.84202834313919880e+03
 command: var/1, fun=  8.19278244899211859e+03
 command: var/2, fun=  1.84202834313919880e+03
 command: var/1, fun=  4.94965189862761235e+03
 command: var/2, fun=  7.00024145200073463e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.45000E-01  1.00000E-04         4916         2456       1            1:00 
   2.50000E-01  1.00000E-04         5016         2506       1            1:01 

  End Simulation
 command: var/1, fun=  4.94965068510403762e+03
 command: var/2, fun=  7.00023492950139030e+02
 command: var/1, fun=  4.94965311215078600e+03
 command: var/2, fun=  7.00024797450013352e+02
 command: var/1, fun= -1.30464422463223709e+04
 command: var/2, fun= -3.67978681612906303e+03
 command: var/1, fun=  4.53599054253696613e+03
 command: var/2, fun=  5.07425550102082434e+03
 command: var/1, fun=  4.94965118887917288e+03
 command: var/2, fun=  7.00023959205216102e+02
 command: var/1, fun=  4.94965260837605092e+03
 command: var/2, fun=  7.00024331194941283e+02
 command: var/1, fun=  1.86224817872099550e+02
 command: var/2, fun= -3.17651455010672976e+02
 command: var/1, fun=  9.71230582792172936e+03
 command: var/2, fun=  2.17872848991298224e+03
 command: var/1, fun=  8.38074519616891666e+03
 command: var/2, fun=  1.93701532483023811e+03
 command: var/1, fun=  8.38074519616891666e+03
 command: var/2, fun=  1.93701532483023811e+03
 command: var/1, fun=  4.99779098713511485e+03
 command: var/2, fun=  7.24690026289232378e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.50000E-01  1.00000E-04         5016         2506       1            1:01 
   2.55000E-01  1.00000E-04         5116         2556       1            1:03 

  End Simulation
 command: var/1, fun=  4.99778977774592568e+03
 command: var/2, fun=  7.24689379624737740e+02
 command: var/1, fun=  4.99779219652389475e+03
 command: var/2, fun=  7.24690672953721673e+02
 command: var/1, fun= -1.27546623719822037e+04
 command: var/2, fun= -3.61767830717548304e+03
 command: var/1, fun=  4.75365046763593637e+03
 command: var/2, fun=  5.06140663302940084e+03
 command: var/1, fun=  4.99779031975049202e+03
 command: var/2, fun=  7.24689850969119902e+02
 command: var/1, fun=  4.99779165451974768e+03
 command: var/2, fun=  7.24690201609356563e+02
 command: var/1, fun=  5.18707354617212104e+02
 command: var/2, fun= -2.50262814390782808e+02
 command: var/1, fun=  9.47619109607489008e+03
 command: var/2, fun=  2.10284327232392798e+03
 command: var/1, fun=  8.57775414280998484e+03
 command: var/2, fun=  2.04191703208957165e+03
 command: var/1, fun=  8.57775414280998484e+03
 command: var/2, fun=  2.04191703208957165e+03
 command: var/1, fun=  5.04856595162450321e+03
 command: var/2, fun=  7.51130242103882892e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.55000E-01  1.00000E-04         5116         2556       1            1:03 
   2.60000E-01  1.00000E-04         5216         2606       1            1:04 

  End Simulation
 command: var/1, fun=  5.04856474708026053e+03
 command: var/2, fun=  7.51129601746420803e+02
 command: var/1, fun=  5.04856715616835572e+03
 command: var/2, fun=  7.51130882461344754e+02
 command: var/1, fun= -1.24305391879558592e+04
 command: var/2, fun= -3.54895055371231820e+03
 command: var/1, fun=  4.99143928486886216e+03
 command: var/2, fun=  5.04549316867717516e+03
 command: var/1, fun=  5.04856532796382999e+03
 command: var/2, fun=  7.51130077825969920e+02
 command: var/1, fun=  5.04856657528518645e+03
 command: var/2, fun=  7.51130406381806097e+02
 command: var/1, fun=  8.62952134963226740e+02
 command: var/2, fun= -1.77444811370639457e+02
 command: var/1, fun=  9.23358320807800374e+03
 command: var/2, fun=  2.02745551804789511e+03
 command: var/1, fun=  8.77490518756492929e+03
 command: var/2, fun=  2.15624778216404957e+03
 command: var/1, fun=  8.77490518756492929e+03
 command: var/2, fun=  2.15624778216404957e+03
 command: var/1, fun=  5.10225625418923210e+03
 command: var/2, fun=  7.79614758984351170e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.60000E-01  1.00000E-04         5216         2606       1            1:04 
   2.65000E-01  1.00000E-04         5316         2656       1            1:05 

  End Simulation
 command: var/1, fun=  5.10225505541293023e+03
 command: var/2, fun=  7.79614125839567691e+02
 command: var/1, fun=  5.10225745296515197e+03
 command: var/2, fun=  7.79615392129134648e+02
 command: var/1, fun= -1.20665549097269886e+04
 command: var/2, fun= -3.47209686807048411e+03
 command: var/1, fun=  5.25331861536237830e+03
 command: var/2, fun=  5.02555136504153779e+03
 command: var/1, fun=  5.10225567537708503e+03
 command: var/2, fun=  7.79614606056514390e+02
 command: var/1, fun=  5.10225683300137371e+03
 command: var/2, fun=  7.79614911912193179e+02
 command: var/1, fun=  1.21765740270868605e+03
 command: var/2, fun= -9.90284472142131733e+01
 command: var/1, fun=  8.98634183825557739e+03
 command: var/2, fun=  1.95353382713199585e+03
 command: var/1, fun=  8.93953705809506573e+03
 command: var/2, fun=  2.26853223721468703e+03
 command: var/1, fun=  8.93953705809506573e+03
 command: var/2, fun=  2.26853223721468703e+03
 command: var/1, fun=  5.15875428479075799e+03
 command: var/2, fun=  8.10236829388320643e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.65000E-01  1.00000E-04         5316         2656       1            1:05 
   2.70000E-01  1.00000E-04         5416         2706       1            1:06 

  End Simulation
 command: var/1, fun=  5.15875309294574163e+03
 command: var/2, fun=  8.10236204539723417e+02
 command: var/1, fun=  5.15875547663540874e+03
 command: var/2, fun=  8.10237454236917529e+02
 command: var/1, fun= -1.16562110200456427e+04
 command: var/2, fun= -3.38582825211422187e+03
 command: var/1, fun=  5.54185340779542366e+03
 command: var/2, fun=  5.00048325527423549e+03
 command: var/1, fun=  5.15875375121688012e+03
 command: var/2, fun=  8.10236687930630183e+02
 command: var/1, fun=  5.15875481836463769e+03
 command: var/2, fun=  8.10236970846016220e+02
 command: var/1, fun=  1.57778316018239775e+03
 command: var/2, fun= -1.56741763696920948e+01
 command: var/1, fun=  8.73929004157262352e+03
 command: var/2, fun=  1.88293850275373757e+03
 command: var/1, fun=  9.01531994804366514e+03
 command: var/2, fun=  2.35508579991939814e+03
 command: var/1, fun=  9.01531994804366514e+03
 command: var/2, fun=  2.35508579991939814e+03
 command: var/1, fun=  5.21715835407742088e+03
 command: var/2, fun=  8.42676306386274860e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.70000E-01  1.00000E-04         5416         2706       1            1:06 
   2.75000E-01  1.00000E-04         5516         2756       1            1:08 

  End Simulation
 command: var/1, fun=  5.21715717053721346e+03
 command: var/2, fun=  8.42675691017605686e+02
 command: var/1, fun=  5.21715953761727815e+03
 command: var/2, fun=  8.42676921754944146e+02
 command: var/1, fun= -1.11975216269663124e+04
 command: var/2, fun= -3.28978926073938965e+03
 command: var/1, fun=  5.85575892432255932e+03
 command: var/2, fun=  4.96929908795713982e+03
 command: var/1, fun=  5.21715786457487229e+03
 command: var/2, fun=  8.42676176117567366e+02
 command: var/1, fun=  5.21715884357997493e+03
 command: var/2, fun=  8.42676436654988152e+02
 command: var/1, fun=  1.93197978112050055e+03
 command: var/2, fun=  7.03394170071832718e+01
 command: var/1, fun=  8.50197149993478342e+03
 command: var/2, fun=  1.81877621136076777e+03
 command: var/1, fun=  8.91929562094225366e+03
 command: var/2, fun=  2.37770342308882755e+03
 command: var/1, fun=  8.91929562094225366e+03
 command: var/2, fun=  2.37770342308882755e+03
 command: var/1, fun=  5.27527050937473723e+03
 command: var/2, fun=  8.75902685045366411e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.75000E-01  1.00000E-04         5516         2756       1            1:08 
   2.80000E-01  1.00000E-04         5616         2806       1            1:09 

  End Simulation
 command: var/1, fun=  5.27526933558470864e+03
 command: var/2, fun=  8.75902080259573836e+02
 command: var/1, fun=  5.27527168316443112e+03
 command: var/2, fun=  8.75903289831158759e+02
 command: var/1, fun= -1.06977129762592649e+04
 command: var/2, fun= -3.18554903972023794e+03
 command: var/1, fun=  6.18705299055318119e+03
 command: var/2, fun=  4.93151360765205391e+03
 command: var/1, fun=  5.27527006003031966e+03
 command: var/2, fun=  8.75902564968436764e+02
 command: var/1, fun=  5.27527095871915571e+03
 command: var/2, fun=  8.75902805122300038e+02
 command: var/1, fun=  2.25961789268888697e+03
 command: var/2, fun=  1.54092756948245579e+02
 command: var/1, fun=  8.29061632307232321e+03
 command: var/2, fun=  1.76573786254429524e+03
 command: var/1, fun=  8.20607974720447055e+03
 command: var/2, fun=  2.07286608536396488e+03
 command: var/1, fun=  8.20607974720447055e+03
 command: var/2, fun=  2.07286608536396488e+03
 command: var/1, fun=  5.32100042895551996e+03
 command: var/2, fun=  9.02516024570854597e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.80000E-01  1.00000E-04         5616         2806       1            1:09 
   2.85000E-01  1.00000E-04         5716         2856       1            1:10 

  End Simulation
 command: var/1, fun=  5.32099926381926889e+03
 command: var/2, fun=  9.02515428755642233e+02
 command: var/1, fun=  5.32100159409145908e+03
 command: var/2, fun=  9.02516620386071963e+02
 command: var/1, fun= -1.02819565524929312e+04
 command: var/2, fun= -3.09873209520947648e+03
 command: var/1, fun=  6.45445067599575304e+03
 command: var/2, fun=  4.89794199410334204e+03
 command: var/1, fun=  5.32100000922380968e+03
 command: var/2, fun=  9.02515912023722990e+02
 command: var/1, fun=  5.32100084868723025e+03
 command: var/2, fun=  9.02516137117989729e+02
 command: var/1, fun=  2.50409532438533370e+03
 command: var/2, fun=  2.19182635007686798e+02
 command: var/1, fun=  8.13763874207950266e+03
 command: var/2, fun=  1.72976453189432641e+03
 command: var/1, fun=  6.40723138074313010e+03
 command: var/2, fun=  1.24662754721495753e+03
 command: var/1, fun=  6.40723138074313010e+03
 command: var/2, fun=  1.24662754721495753e+03
 command: var/1, fun=  5.33420571696735260e+03
 command: var/2, fun=  9.09038408042111200e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.85000E-01  1.00000E-04         5716         2856       1            1:10 
   2.90000E-01  1.00000E-04         5816         2906       1            1:12 

  End Simulation
 command: var/1, fun=  5.33420455311852584e+03
 command: var/2, fun=  9.09037813540408820e+02
 command: var/1, fun=  5.33420688081585922e+03
 command: var/2, fun=  9.09039002543813353e+02
 command: var/1, fun= -1.02151282421814285e+04
 command: var/2, fun= -3.08340163234849888e+03
 command: var/1, fun=  6.49927944260775439e+03
 command: var/2, fun=  4.89564461415305050e+03
 command: var/1, fun=  5.33420531088338703e+03
 command: var/2, fun=  9.09038299099885876e+02
 command: var/1, fun=  5.33420612305131272e+03
 command: var/2, fun=  9.09038516984338457e+02
 command: var/1, fun=  2.60889759680239649e+03
 command: var/2, fun=  2.45113538347242752e+02
 command: var/1, fun=  8.05926410045163902e+03
 command: var/2, fun=  1.70731121286033226e+03
 command: var/1, fun=  5.85480555004260805e+03
 command: var/2, fun=  1.05300272698146250e+03
 command: var/1, fun=  5.85480555004260805e+03
 command: var/2, fun=  1.05300272698146250e+03
 command: var/1, fun=  5.33973263316341854e+03
 command: var/2, fun=  9.11334222557286807e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.90000E-01  1.00000E-04         5816         2906       1            1:12 
   2.95000E-01  1.00000E-04         5916         2956       1            1:13 

  End Simulation
 command: var/1, fun=  5.33973146936868216e+03
 command: var/2, fun=  9.11333628117577064e+02
 command: var/1, fun=  5.33973379695782296e+03
 command: var/2, fun=  9.11334816996991208e+02
 command: var/1, fun= -1.02072316143821699e+04
 command: var/2, fun= -3.08069580155673066e+03
 command: var/1, fun=  6.50623824107018663e+03
 command: var/2, fun=  4.89751853031858536e+03
 command: var/1, fun=  5.33973223472443442e+03
 command: var/2, fun=  9.11334115662846898e+02
 command: var/1, fun=  5.33973303160240266e+03
 command: var/2, fun=  9.11334329451729559e+02
 command: var/1, fun=  2.66573368153803676e+03
 command: var/2, fun=  2.58640599513077916e+02
 command: var/1, fun=  8.01349106374587245e+03
 command: var/2, fun=  1.69335338681426788e+03
 command: var/1, fun=  5.73742128487190894e+03
 command: var/2, fun=  1.04266548858602414e+03
 command: var/1, fun=  5.73742128487190894e+03
 command: var/2, fun=  1.04266548858602414e+03
 command: var/1, fun=  5.34485351330033245e+03
 command: var/2, fun=  9.14064633144517757e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.95000E-01  1.00000E-04         5916         2956       1            1:13 
   3.00000E-01  1.00000E-04         6016         3006       1            1:14 

  End Simulation
 command: var/1, fun=  5.34485235023099722e+03
 command: var/2, fun=  9.14064039438179861e+02
 command: var/1, fun=  5.34485467636934936e+03
 command: var/2, fun=  9.14065226850855652e+02
 command: var/1, fun= -1.01721426487628341e+04
 command: var/2, fun= -3.07304489596963776e+03
 command: var/1, fun=  6.52894915499000763e+03
 command: var/2, fun=  4.89532726215427647e+03
 command: var/1, fun=  5.34485311929817453e+03
 command: var/2, fun=  9.14064527411188465e+02
 command: var/1, fun=  5.34485390730249128e+03
 command: var/2, fun=  9.14064738877850459e+02
 command: var/1, fun=  2.70063228423428563e+03
 command: var/2, fun=  2.67635318718012968e+02
 command: var/1, fun=  7.98883958647542750e+03
 command: var/2, fun=  1.68676394506374459e+03
 command: var/1, fun=  5.75175658932143142e+03
 command: var/2, fun=  1.08784464648384414e+03
 command: var/1, fun=  5.75175658932143142e+03
 command: var/2, fun=  1.08784464648384414e+03
 command: var/1, fun=  5.35171313298334917e+03
 command: var/2, fun=  9.18590585597937206e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.00000E-01  1.00000E-04         6016         3006       1            1:14 
   3.05000E-01  1.00000E-04         6116         3056       1            1:15 

  End Simulation
 command: var/1, fun=  5.35171197187634607e+03
 command: var/2, fun=  9.18589993854230215e+02
 command: var/1, fun=  5.35171429409003485e+03
 command: var/2, fun=  9.18591177341643856e+02
 command: var/1, fun= -1.00849973176419662e+04
 command: var/2, fun= -3.05534283160762425e+03
 command: var/1, fun=  6.58266492847721111e+03
 command: var/2, fun=  4.88668994384244797e+03
 command: var/1, fun=  5.35171274107840054e+03
 command: var/2, fun=  9.18590480350751250e+02
 command: var/1, fun=  5.35171352488830235e+03
 command: var/2, fun=  9.18590690845126915e+02
 command: var/1, fun=  2.72156739054917125e+03
 command: var/2, fun=  2.74497147544343420e+02
 command: var/1, fun=  7.98162644962269678e+03
 command: var/2, fun=  1.68710087177044556e+03
 command: var/1, fun=  5.81533598883461855e+03
 command: var/2, fun=  1.15599571429894718e+03
 command: var/1, fun=  5.81533598883461855e+03
 command: var/2, fun=  1.15599571429894718e+03
 command: var/1, fun=  5.36113555690302201e+03
 command: var/2, fun=  9.25419498915498252e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.05000E-01  1.00000E-04         6116         3056       1            1:15 
   3.10000E-01  1.00000E-04         6216         3106       1            1:16 

  End Simulation
 command: var/1, fun=  5.36113439923917485e+03
 command: var/2, fun=  9.25418910572617392e+02
 command: var/1, fun=  5.36113671456655902e+03
 command: var/2, fun=  9.25420087258379112e+02
 command: var/1, fun= -9.93684690524615507e+03
 command: var/2, fun= -3.02567941201890426e+03
 command: var/1, fun=  6.67228886902825707e+03
 command: var/2, fun=  4.87071277765077048e+03
 command: var/1, fun=  5.36113516511416128e+03
 command: var/2, fun=  9.25419393567772431e+02
 command: var/1, fun=  5.36113594869188455e+03
 command: var/2, fun=  9.25419604263227029e+02
 command: var/1, fun=  2.73176918998514702e+03
 command: var/2, fun=  2.80170849159421266e+02
 command: var/1, fun=  7.99027008447296430e+03
 command: var/2, fun=  1.69412398306655564e+03
 command: var/1, fun=  5.87150817802976781e+03
 command: var/2, fun=  1.21755544239023061e+03
 command: var/1, fun=  5.87150817802976781e+03
 command: var/2, fun=  1.21755544239023061e+03
 command: var/1, fun=  5.37275633240803199e+03
 command: var/2, fun=  9.34199108432642106e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.10000E-01  1.00000E-04         6216         3106       1            1:16 
   3.15000E-01  1.00000E-04         6316         3156       1            1:17 

  End Simulation
 command: var/1, fun=  5.37275517951262646e+03
 command: var/2, fun=  9.34198524718882823e+02
 command: var/1, fun=  5.37275748530313194e+03
 command: var/2, fun=  9.34199692146401276e+02
 command: var/1, fun= -9.73731638017731893e+03
 command: var/2, fun= -2.98581607790802491e+03
 command: var/1, fun=  6.79102013258413081e+03
 command: var/2, fun=  4.84845101706028163e+03
 command: var/1, fun=  5.37275593906078484e+03
 command: var/2, fun=  9.34199002487577445e+02
 command: var/1, fun=  5.37275672575528461e+03
 command: var/2, fun=  9.34199214377710973e+02
 command: var/1, fun=  2.73293116233812225e+03
 command: var/2, fun=  2.84827149630691906e+02
 command: var/1, fun=  8.01234844786991289e+03
 command: var/2, fun=  1.70679765133322894e+03
 command: var/1, fun=  5.96059664538411107e+03
 command: var/2, fun=  1.29360931349606290e+03
 command: var/1, fun=  5.96059664538411107e+03
 command: var/2, fun=  1.29360931349606290e+03
 command: var/1, fun=  5.38706310042186306e+03
 command: var/2, fun=  9.45184064551928259e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.15000E-01  1.00000E-04         6316         3156       1            1:17 
   3.20000E-01  1.00000E-04         6416         3206       1            1:19 

  End Simulation
 command: var/1, fun=  5.38706195379180826e+03
 command: var/2, fun=  9.45183486788568757e+02
 command: var/1, fun=  5.38706424705160953e+03
 command: var/2, fun=  9.45184642315282304e+02
 command: var/1, fun= -9.48308838569045110e+03
 command: var/2, fun= -2.93487376043242648e+03
 command: var/1, fun=  6.93951532691173088e+03
 command: var/2, fun=  4.81953591084862455e+03
 command: var/1, fun=  5.38706270418046915e+03
 command: var/2, fun=  9.45183957599155178e+02
 command: var/1, fun=  5.38706349666325332e+03
 command: var/2, fun=  9.45184171504702931e+02
 command: var/1, fun=  2.72781436416138877e+03
 command: var/2, fun=  2.89172327124276535e+02
 command: var/1, fun=  8.04607616667192724e+03
 command: var/2, fun=  1.72466804341905004e+03
 command: var/1, fun=  6.10894740409314181e+03
 command: var/2, fun=  1.40814488477247050e+03
 command: var/1, fun=  6.10894740409314181e+03
 command: var/2, fun=  1.40814488477247050e+03
 command: var/1, fun=  5.40548883352852044e+03
 command: var/2, fun=  9.59380502807782818e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.20000E-01  1.00000E-04         6416         3206       1            1:19 
   3.25000E-01  1.00000E-04         6516         3256       1            1:20 

  End Simulation
 command: var/1, fun=  5.40548769534777330e+03
 command: var/2, fun=  9.59379932851032322e+02
 command: var/1, fun=  5.40548997170898019e+03
 command: var/2, fun=  9.59381072764533315e+02
 command: var/1, fun= -9.15271895187954578e+03
 command: var/2, fun= -2.86825372670584102e+03
 command: var/1, fun=  7.12803663530813537e+03
 command: var/2, fun=  4.78138700040807998e+03
 command: var/1, fun=  5.40548843302071418e+03
 command: var/2, fun=  9.59380394405344873e+02
 command: var/1, fun=  5.40548923403632034e+03
 command: var/2, fun=  9.59380611210222355e+02
 command: var/1, fun=  2.71760671506558356e+03
 command: var/2, fun=  2.93929274690606462e+02
 command: var/1, fun=  8.09313127544264080e+03
 command: var/2, fun=  1.74888205345960046e+03
 command: var/1, fun=  6.21275905219228298e+03
 command: var/2, fun=  1.48922956293318794e+03
 command: var/1, fun=  6.21275905219228298e+03
 command: var/2, fun=  1.48922956293318794e+03
 command: var/1, fun=  5.42656362626623468e+03
 command: var/2, fun=  9.75589036248340335e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.25000E-01  1.00000E-04         6516         3256       1            1:20 
   3.30000E-01  1.00000E-04         6617         3306       1            1:21 

  End Simulation
 command: var/1, fun=  5.42656249816901800e+03
 command: var/2, fun=  9.75588475310908166e+02
 command: var/1, fun=  5.42656475436318760e+03
 command: var/2, fun=  9.75589597185777507e+02
 command: var/1, fun= -8.77528090338792754e+03
 command: var/2, fun= -2.79147591322650624e+03
 command: var/1, fun=  7.33724811777652849e+03
 command: var/2, fun=  4.73712020098658286e+03
 command: var/1, fun=  5.42656322056100635e+03
 command: var/2, fun=  9.75588926096672139e+02
 command: var/1, fun=  5.42656403197146847e+03
 command: var/2, fun=  9.75589146400012964e+02
 command: var/1, fun=  2.70379965066503746e+03
 command: var/2, fun=  2.98788116127410547e+02
 command: var/1, fun=  8.14908294019210371e+03
 command: var/2, fun=  1.77721869273678044e+03
 command: var/1, fun=  5.99169351256350092e+03
 command: var/2, fun=  1.31431340849683693e+03
 command: var/1, fun=  5.99169351256350092e+03
 command: var/2, fun=  1.31431340849683693e+03
 command: var/1, fun=  5.44001974299716767e+03
 command: var/2, fun=  9.85806479844698401e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.30000E-01  1.00000E-04         6617         3306       1            1:21 
   3.35000E-01  1.00000E-04         6717         3356       1            1:22 

  End Simulation
 command: var/1, fun=  5.44001862141880156e+03
 command: var/2, fun=  9.85805924581546265e+02
 command: var/1, fun=  5.44002086457526639e+03
 command: var/2, fun=  9.85807035107850311e+02
 command: var/1, fun= -8.53988062325286592e+03
 command: var/2, fun= -2.74315207867375921e+03
 command: var/1, fun=  7.46447502816178985e+03
 command: var/2, fun=  4.70929157468551693e+03
 command: var/1, fun=  5.44001933433202794e+03
 command: var/2, fun=  9.85806368675818021e+02
 command: var/1, fun=  5.44002015166230649e+03
 command: var/2, fun=  9.85806591013581624e+02
 command: var/1, fun=  2.69739077541647930e+03
 command: var/2, fun=  3.02313492977632450e+02
 command: var/1, fun=  8.18240126123456866e+03
 command: var/2, fun=  1.79439684465234745e+03
 command: var/1, fun=  5.84795093029504733e+03
 command: var/2, fun=  1.21931974974275454e+03
 command: var/1, fun=  5.84795093029504733e+03
 command: var/2, fun=  1.21931974974275454e+03
 command: var/1, fun=  5.44928740400527113e+03
 command: var/2, fun=  9.92791094193609979e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.35000E-01  1.00000E-04         6717         3356       1            1:22 
   3.40000E-01  1.00000E-04         6817         3406       1            1:24 

  End Simulation
 command: var/1, fun=  5.44928628695875341e+03
 command: var/2, fun=  9.92790542807870452e+02
 command: var/1, fun=  5.44928852105153692e+03
 command: var/2, fun=  9.92791645579354849e+02
 command: var/1, fun= -8.37995990899331809e+03
 command: var/2, fun= -2.71012786908777207e+03
 command: var/1, fun=  7.54945396669510774e+03
 command: var/2, fun=  4.69027836600719002e+03
 command: var/1, fun=  5.44928699343519474e+03
 command: var/2, fun=  9.92790982361443184e+02
 command: var/1, fun=  5.44928781457534114e+03
 command: var/2, fun=  9.92791206025778138e+02
 command: var/1, fun=  2.69387374951194761e+03
 command: var/2, fun=  3.04896267705038326e+02
 command: var/1, fun=  8.20445183725512652e+03
 command: var/2, fun=  1.80588208886873531e+03
 command: var/1, fun=  5.81898778194912120e+03
 command: var/2, fun=  1.20619946915264359e+03
 command: var/1, fun=  5.81898778194912120e+03
 command: var/2, fun=  1.20619946915264359e+03
 command: var/1, fun=  5.45775833449817856e+03
 command: var/2, fun=  9.99204712621389035e+02


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.40000E-01  1.00000E-04         6817         3406       1            1:24 
   3.45000E-01  1.00000E-04         6917         3456       1            1:25 

  End Simulation
 command: var/1, fun=  5.45775722171755024e+03
 command: var/2, fun=  9.99204164837381427e+02
 command: var/1, fun=  5.45775944727855131e+03
 command: var/2, fun=  9.99205260405396416e+02
 command: var/1, fun= -8.23227767301854146e+03
 command: var/2, fun= -2.67952563468230528e+03
 command: var/1, fun=  7.62678194033974160e+03
 command: var/2, fun=  4.67254293321871137e+03
 command: var/1, fun=  5.45775792196838484e+03
 command: var/2, fun=  9.99204600121154499e+02
 command: var/1, fun=  5.45775874702796864e+03
 command: var/2, fun=  9.99204825121625049e+02
 command: var/1, fun=  2.68919230396419653e+03
 command: var/2, fun=  3.06925632727903064e+02
 command: var/1, fun=  8.22607326358782484e+03
 command: var/2, fun=  1.81687810095986242e+03
 command: var/1, fun=  5.81949052741123432e+03
 command: var/2, fun=  1.21254322527813815e+03
 command: var/1, fun=  5.81949052741123432e+03
 command: var/2, fun=  1.21254322527813815e+03
 command: var/1, fun=  5.46623006419981448e+03
 command: var/2, fun=  1.00566706608989648e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.45000E-01  1.00000E-04         6917         3456       1            1:25 
   3.50000E-01  1.00000E-04         7017         3506       1            1:26 

  End Simulation
 command: var/1, fun=  5.46622895583593072e+03
 command: var/2, fun=  1.00566652198783140e+03
 command: var/1, fun=  5.46623117256343721e+03
 command: var/2, fun=  1.00566761019195621e+03
 command: var/1, fun= -8.08222264343875122e+03
 command: var/2, fun= -2.64833550405509277e+03
 command: var/1, fun=  7.70418376075209744e+03
 command: var/2, fun=  4.65431878696649983e+03
 command: var/1, fun=  5.46622964940354268e+03
 command: var/2, fun=  1.00566695283469926e+03
 command: var/1, fun=  5.46623047899608173e+03
 command: var/2, fun=  1.00566717934509506e+03
 command: var/1, fun=  2.68245284554614364e+03
 command: var/2, fun=  3.08497471093725039e+02
 command: var/1, fun=  8.24975393507406625e+03
 command: var/2, fun=  1.82858287039284392e+03
 command: var/1, fun=  5.82670432248603902e+03
 command: var/2, fun=  1.22244156802218617e+03
 command: var/1, fun=  5.82670432248603902e+03
 command: var/2, fun=  1.22244156802218617e+03
 command: var/1, fun=  5.47484059746405728e+03
 command: var/2, fun=  1.01227520908649592e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.50000E-01  1.00000E-04         7017         3506       1            1:26 
   3.55000E-01  1.00000E-04         7117         3556       1            1:28 

  End Simulation
 command: var/1, fun=  5.47483949373457926e+03
 command: var/2, fun=  1.01227466879840767e+03
 command: var/1, fun=  5.47484170119328701e+03
 command: var/2, fun=  1.01227574937458417e+03
 command: var/1, fun= -7.92773263703435623e+03
 command: var/2, fun= -2.61611244069609847e+03
 command: var/1, fun=  7.78264249086983818e+03
 command: var/2, fun=  4.63535555677607135e+03
 command: var/1, fun=  5.47484018009048123e+03
 command: var/2, fun=  1.01227509498614882e+03
 command: var/1, fun=  5.47484101483763243e+03
 command: var/2, fun=  1.01227532318684598e+03
 command: var/1, fun=  2.67376603953316271e+03
 command: var/2, fun=  3.09679639992023169e+02
 command: var/1, fun=  8.27565919329276221e+03
 command: var/2, fun=  1.84110847269022588e+03
 command: var/1, fun=  5.83303990244413944e+03
 command: var/2, fun=  1.23114433595792912e+03
 command: var/1, fun=  5.83303990244413944e+03
 command: var/2, fun=  1.23114433595792912e+03
 command: var/1, fun=  5.48353542465845658e+03
 command: var/2, fun=  1.01897953973938058e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.55000E-01  1.00000E-04         7117         3556       1            1:28 
   3.60000E-01  1.00000E-04         7217         3606       1            1:29 

  End Simulation
 command: var/1, fun=  5.48353432574791805e+03
 command: var/2, fun=  1.01897900336575287e+03
 command: var/1, fun=  5.48353652356875409e+03
 command: var/2, fun=  1.01898007611300829e+03
 command: var/1, fun= -7.77014554168658560e+03
 command: var/2, fun= -2.58311790917007329e+03
 command: var/1, fun=  7.86138549551396773e+03
 command: var/2, fun=  4.61581512765549815e+03
 command: var/1, fun=  5.48353500444315159e+03
 command: var/2, fun=  1.01897942471729391e+03
 command: var/1, fun=  5.48353584487376702e+03
 command: var/2, fun=  1.01897965476147135e+03
 command: var/1, fun=  2.66338887733709043e+03
 command: var/2, fun=  3.10503113148464308e+02
 command: var/1, fun=  8.30342307543554853e+03
 command: var/2, fun=  1.85430332164411129e+03
 command: var/1, fun=  5.84832711917491997e+03
 command: var/2, fun=  1.24554425237646433e+03
 command: var/1, fun=  5.84832711917491997e+03
 command: var/2, fun=  1.24554425237646433e+03
 command: var/1, fun=  5.49253609103990220e+03
 command: var/2, fun=  1.02594781941464862e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.60000E-01  1.00000E-04         7217         3606       1            1:29 
   3.65000E-01  1.00000E-04         7317         3656       1            1:30 

  End Simulation
 command: var/1, fun=  5.49253499726140399e+03
 command: var/2, fun=  1.02594728715470274e+03
 command: var/1, fun=  5.49253718481816304e+03
 command: var/2, fun=  1.02594835167459428e+03
 command: var/1, fun= -7.60558596606737865e+03
 command: var/2, fun= -2.54852102229279171e+03
 command: var/1, fun=  7.94221331780376659e+03
 command: var/2, fun=  4.59520330427446333e+03
 command: var/1, fun=  5.49253566765130563e+03
 command: var/2, fun=  1.02594770337197133e+03
 command: var/1, fun=  5.49253651442849878e+03
 command: var/2, fun=  1.02594793545732841e+03
 command: var/1, fun=  2.65109227852383083e+03
 command: var/2, fun=  3.10991323125296674e+02
 command: var/1, fun=  8.33371767908111178e+03
 command: var/2, fun=  1.86848966627366576e+03
 command: var/1, fun=  5.87302287770346356e+03
 command: var/2, fun=  1.26588440168298484e+03
 command: var/1, fun=  5.87302287770346356e+03
 command: var/2, fun=  1.26588440168298484e+03
 command: var/1, fun=  5.50206620057774762e+03
 command: var/2, fun=  1.03334684431828373e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.65000E-01  1.00000E-04         7317         3656       1            1:30 
   3.70000E-01  1.00000E-04         7417         3706       1            1:31 

  End Simulation
 command: var/1, fun=  5.50206511238078383e+03
 command: var/2, fun=  1.03334631647067681e+03
 command: var/1, fun=  5.50206728877448950e+03
 command: var/2, fun=  1.03334737216589542e+03
 command: var/1, fun= -7.43024616835491997e+03
 command: var/2, fun= -2.51148712601401621e+03
 command: var/1, fun=  8.02675634212843852e+03
 command: var/2, fun=  4.57302024782715125e+03
 command: var/1, fun=  5.50206577361879863e+03
 command: var/2, fun=  1.03334672713424607e+03
 command: var/1, fun=  5.50206662753669752e+03
 command: var/2, fun=  1.03334696150232412e+03
 command: var/1, fun=  2.63666028213196068e+03
 command: var/2, fun=  3.11167657180733556e+02
 command: var/1, fun=  8.36720609974270883e+03
 command: var/2, fun=  1.88398506570421068e+03
 command: var/1, fun=  5.90534006563382263e+03
 command: var/2, fun=  1.29094629900892073e+03
 command: var/1, fun=  5.90534006563382263e+03
 command: var/2, fun=  1.29094629900892073e+03
 command: var/1, fun=  5.51229336430648254e+03
 command: var/2, fun=  1.04129772437129918e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.70000E-01  1.00000E-04         7417         3706       1            1:31 
   3.75000E-01  1.00000E-04         7517         3756       1            1:33 

  End Simulation
 command: var/1, fun=  5.51229228225165934e+03
 command: var/2, fun=  1.04129720130848114e+03
 command: var/1, fun=  5.51229444636106746e+03
 command: var/2, fun=  1.04129824743411223e+03
 command: var/1, fun= -7.24143876526825534e+03
 command: var/2, fun= -2.47139936884506005e+03
 command: var/1, fun=  8.11596233438988475e+03
 command: var/2, fun=  4.54889228711182022e+03
 command: var/1, fun=  5.51229293333607711e+03
 command: var/2, fun=  1.04129760590995579e+03
 command: var/1, fun=  5.51229379527688252e+03
 command: var/2, fun=  1.04129784283264394e+03
 command: var/1, fun=  2.61996488169476470e+03
 command: var/2, fun=  3.11051391047927268e+02
 command: var/1, fun=  8.40435151316917108e+03
 command: var/2, fun=  1.90101249944112897e+03
 command: var/1, fun=  5.94615509437772835e+03
 command: var/2, fun=  1.32148267550707396e+03
 command: var/1, fun=  5.94615509437772835e+03
 command: var/2, fun=  1.32148267550707396e+03
 command: var/1, fun=  5.52340924171116239e+03
 command: var/2, fun=  1.04993928067933848e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.75000E-01  1.00000E-04         7517         3756       1            1:33 
   3.80000E-01  1.00000E-04         7617         3806       1            1:34 

  End Simulation
 command: var/1, fun=  5.52340816649459248e+03
 command: var/2, fun=  1.04993876286076511e+03
 command: var/1, fun=  5.52341031692751221e+03
 command: var/2, fun=  1.04993979849791185e+03
 command: var/1, fun= -7.03606692660625777e+03
 command: var/2, fun= -2.42753457333718825e+03
 command: var/1, fun=  8.21082278531092197e+03
 command: var/2, fun=  4.52237505360580235e+03
 command: var/1, fun=  5.52340880622895111e+03
 command: var/2, fun=  1.04993916078482084e+03
 command: var/1, fun=  5.52340967719337459e+03
 command: var/2, fun=  1.04993940057385907e+03
 command: var/1, fun=  2.60080007219034587e+03
 command: var/2, fun=  3.10649262569234281e+02
 command: var/1, fun=  8.44574317101286033e+03
 command: var/2, fun=  1.91984611910865806e+03
 command: var/1, fun=  5.99634296995727254e+03
 command: var/2, fun=  1.35828629256882277e+03
 command: var/1, fun=  5.99634296995727254e+03
 command: var/2, fun=  1.35828629256882277e+03
 command: var/1, fun=  5.53562993745935091e+03
 command: var/2, fun=  1.05942774132415047e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.80000E-01  1.00000E-04         7617         3806       1            1:34 
   3.85000E-01  1.00000E-04         7717         3856       1            1:35 

  End Simulation
 command: var/1, fun=  5.53562886994031396e+03
 command: var/2, fun=  1.05942722931001663e+03
 command: var/1, fun=  5.53563100497817777e+03
 command: var/2, fun=  1.05942825333828364e+03
 command: var/1, fun= -6.81064260869819373e+03
 command: var/2, fun= -2.37905972090371142e+03
 command: var/1, fun=  8.31231151005725587e+03
 command: var/2, fun=  4.49294937538142949e+03
 command: var/1, fun=  5.53562949688966637e+03
 command: var/2, fun=  1.05942761981562217e+03
 command: var/1, fun=  5.53563037802904182e+03
 command: var/2, fun=  1.05942786283268288e+03
 command: var/1, fun=  2.57887650775197244e+03
 command: var/2, fun=  3.09952906948656732e+02
 command: var/1, fun=  8.49210253447673131e+03
 command: var/2, fun=  1.94081264495662163e+03
 command: var/1, fun=  6.05821113799992327e+03
 command: var/2, fun=  1.40337255066333273e+03
 command: var/1, fun=  6.05821113799992327e+03
 command: var/2, fun=  1.40337255066333273e+03
 command: var/1, fun=  5.54924302857283783e+03
 command: var/2, fun=  1.06997329293747634e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.85000E-01  1.00000E-04         7717         3856       1            1:35 
   3.90000E-01  1.00000E-04         7817         3906       1            1:36 

  End Simulation
 command: var/1, fun=  5.54924196983788079e+03
 command: var/2, fun=  1.06997278742672097e+03
 command: var/1, fun=  5.54924408730760115e+03
 command: var/2, fun=  1.06997379844823649e+03
 command: var/1, fun= -6.56041337712952281e+03
 command: var/2, fun= -2.32483265248889847e+03
 command: var/1, fun=  8.42169056573009766e+03
 command: var/2, fun=  4.45989540315304839e+03
 command: var/1, fun=  5.54924258222292974e+03
 command: var/2, fun=  1.06997316959606246e+03
 command: var/1, fun=  5.54924347492275137e+03
 command: var/2, fun=  1.06997341627889432e+03
 command: var/1, fun=  2.55369595000067739e+03
 command: var/2, fun=  3.08924815937334927e+02
 command: var/1, fun=  8.54450284948095032e+03
 command: var/2, fun=  1.96438513526333782e+03
 command: var/1, fun=  6.13487957979924795e+03
 command: var/2, fun=  1.45966018038495349e+03
 command: var/1, fun=  6.13487957979924795e+03
 command: var/2, fun=  1.45966018038495349e+03
 command: var/1, fun=  5.56463966204113149e+03
 command: var/2, fun=  1.08186409531637605e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.90000E-01  1.00000E-04         7817         3906       1            1:36 
   3.95000E-01  1.00000E-04         7917         3956       1            1:37 

  End Simulation
 command: var/1, fun=  5.56463861350069419e+03
 command: var/2, fun=  1.08186359720259247e+03
 command: var/1, fun=  5.56464071058138143e+03
 command: var/2, fun=  1.08186459343016395e+03
 command: var/1, fun= -6.27880371634760559e+03
 command: var/2, fun= -2.26325757337765708e+03
 command: var/1, fun=  8.54058139633149040e+03
 command: var/2, fun=  4.42219640749385599e+03
 command: var/1, fun=  5.56463920903810958e+03
 command: var/2, fun=  1.08186396986542968e+03
 command: var/1, fun=  5.56464011504415794e+03
 command: var/2, fun=  1.08186422076732629e+03
 command: var/1, fun=  2.52444057363855109e+03
 command: var/2, fun=  3.07479860837418187e+02
 command: var/1, fun=  8.60454400792070737e+03
 command: var/2, fun=  1.99125383179907544e+03
 command: var/1, fun=  6.22943401504966278e+03
 command: var/2, fun=  1.53033462834866714e+03
 command: var/1, fun=  6.22943401504966278e+03
 command: var/2, fun=  1.53033462834866714e+03
 command: var/1, fun=  5.58231917194531343e+03
 command: var/2, fun=  1.09546666806160079e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.95000E-01  1.00000E-04         7917         3956       1            1:37 
   4.00000E-01  1.00000E-04         8017         4006       1            1:39 

  End Simulation
 command: var/1, fun=  5.58231813544894703e+03
 command: var/2, fun=  1.09546617849298400e+03
 command: var/1, fun=  5.58232020844147974e+03
 command: var/2, fun=  1.09546715763021189e+03
 command: var/1, fun= -5.95746539622374439e+03
 command: var/2, fun= -2.19225758044763052e+03
 command: var/1, fun=  8.67067343480697127e+03
 command: var/2, fun=  4.37851217210811046e+03
 command: var/1, fun=  5.58231871116846651e+03
 command: var/2, fun=  1.09546654014535193e+03
 command: var/1, fun=  5.58231963272216399e+03
 command: var/2, fun=  1.09546679597785374e+03
 command: var/1, fun=  2.48994638681839069e+03
 command: var/2, fun=  3.05473147610986757e+02
 command: var/1, fun=  8.67438834968603260e+03
 command: var/2, fun=  2.02233585072648839e+03
 command: var/1, fun=  6.33185078361743672e+03
 command: var/2, fun=  1.60489375808212117e+03
 command: var/1, fun=  6.33185078361743672e+03
 command: var/2, fun=  1.60489375808212117e+03
 command: var/1, fun=  5.60234245724836182e+03
 command: var/2, fun=  1.11077938232414476e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.00000E-01  1.00000E-04         8017         4006       1            1:39 
   4.05000E-01  1.00000E-04         8117         4056       1            1:40 

  End Simulation
 command: var/1, fun=  5.60234143478423812e+03
 command: var/2, fun=  1.11077890246734501e+03
 command: var/1, fun=  5.60234347971230818e+03
 command: var/2, fun=  1.11077986218094429e+03
 command: var/1, fun= -5.59739196852687110e+03
 command: var/2, fun= -2.11171016144792111e+03
 command: var/1, fun=  8.80922928810084886e+03
 command: var/2, fun=  4.32871750758261351e+03
 command: var/1, fun=  5.60234198763058976e+03
 command: var/2, fun=  1.11077925159951974e+03
 command: var/1, fun=  5.60234292686613844e+03
 command: var/2, fun=  1.11077951304877411e+03
 command: var/1, fun=  2.45063411685561232e+03
 command: var/2, fun=  3.02950142174429175e+02
 command: var/1, fun=  8.75373696867529725e+03
 command: var/2, fun=  2.05750623152293019e+03
 command: var/1, fun=  6.43160846172199854e+03
 command: var/2, fun=  1.67225641624406603e+03
 command: var/1, fun=  6.43160846172199854e+03
 command: var/2, fun=  1.67225641624406603e+03
 command: var/1, fun=  5.62432999167628168e+03
 command: var/2, fun=  1.12744969510053761e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.05000E-01  1.00000E-04         8117         4056       1            1:40 
   4.10000E-01  1.00000E-04         8217         4106       1            1:41 

  End Simulation
 command: var/1, fun=  5.62432898504133755e+03
 command: var/2, fun=  1.12744922591121099e+03
 command: var/1, fun=  5.62433099831105756e+03
 command: var/2, fun=  1.12745016428986423e+03
 command: var/1, fun= -5.20812474964197918e+03
 command: var/2, fun= -2.02338493642113281e+03
 command: var/1, fun=  8.95020804162225795e+03
 command: var/2, fun=  4.27387437718592264e+03
 command: var/1, fun=  5.62432951246810717e+03
 command: var/2, fun=  1.12744956131926529e+03
 command: var/1, fun=  5.62433047088444982e+03
 command: var/2, fun=  1.12744982888181175e+03
 command: var/1, fun=  2.40825599409448978e+03
 command: var/2, fun=  3.00114654586686356e+02
 command: var/1, fun=  8.84007892312022523e+03
 command: var/2, fun=  2.09569633691949775e+03
 command: var/1, fun=  6.53473276297171924e+03
 command: var/2, fun=  1.74063772159224072e+03
 command: var/1, fun=  6.53473276297171924e+03
 command: var/2, fun=  1.74063772159224072e+03
 command: var/1, fun=  5.64823840046125588e+03
 command: var/2, fun=  1.14541307763769714e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.10000E-01  1.00000E-04         8217         4106       1            1:41 
   4.15000E-01  1.00000E-04         8317         4156       1            1:42 

  End Simulation
 command: var/1, fun=  5.64823741154958770e+03
 command: var/2, fun=  1.14541262006323154e+03
 command: var/1, fun=  5.64823938937278035e+03
 command: var/2, fun=  1.14541353521216797e+03
 command: var/1, fun= -4.79174925817501025e+03
 command: var/2, fun= -1.92740179982667883e+03
 command: var/1, fun=  9.09048791037636693e+03
 command: var/2, fun=  4.21397368435866065e+03
 command: var/1, fun=  5.64823791093207183e+03
 command: var/2, fun=  1.14541294055642720e+03
 command: var/1, fun=  5.64823888999044721e+03
 command: var/2, fun=  1.14541321471897163e+03
 command: var/1, fun=  2.36289507815532443e+03
 command: var/2, fun=  2.96909464932417677e+02
 command: var/1, fun=  8.93324438663131150e+03
 command: var/2, fun=  2.13678299144741914e+03
 command: var/1, fun=  6.64394322814006682e+03
 command: var/2, fun=  1.81314628723151031e+03
 command: var/1, fun=  6.64394322814006682e+03
 command: var/2, fun=  1.81314628723151031e+03
 command: var/1, fun=  5.67414177121920784e+03
 command: var/2, fun=  1.16470026116644931e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.15000E-01  1.00000E-04         8317         4156       1            1:42 
   4.20000E-01  1.00000E-04         8417         4206       1            1:44 

  End Simulation
 command: var/1, fun=  5.67414080214307432e+03
 command: var/2, fun=  1.16469981621880925e+03
 command: var/1, fun=  5.67414274029521039e+03
 command: var/2, fun=  1.16470070611409460e+03
 command: var/1, fun= -4.34797499177959344e+03
 command: var/2, fun= -1.82329614418906090e+03
 command: var/1, fun=  9.22751163823706702e+03
 command: var/2, fun=  4.14861324806174707e+03
 command: var/1, fun=  5.67414127055636800e+03
 command: var/2, fun=  1.16470012051610934e+03
 command: var/1, fun=  5.67414227188204950e+03
 command: var/2, fun=  1.16470040181679224e+03
 command: var/1, fun=  2.31407504382520756e+03
 command: var/2, fun=  2.93180043258592889e+02
 command: var/1, fun=  9.03385771102295985e+03
 command: var/2, fun=  2.18095679997292973e+03
 command: var/1, fun=  6.76035736052221819e+03
 command: var/2, fun=  1.89024317055823781e+03
 command: var/1, fun=  6.76035736052221819e+03
 command: var/2, fun=  1.89024317055823781e+03
 command: var/1, fun=  5.70212021431630728e+03
 command: var/2, fun=  1.18534199173696607e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.20000E-01  1.00000E-04         8417         4206       1            1:44 
   4.25000E-01  1.00000E-04         8517         4256       1            1:45 

  End Simulation
 command: var/1, fun=  5.70211926743738968e+03
 command: var/2, fun=  1.18534156050081947e+03
 command: var/1, fun=  5.70212116119509483e+03
 command: var/2, fun=  1.18534242297311243e+03
 command: var/1, fun= -3.87658502215474209e+03
 command: var/2, fun= -1.71054880927892350e+03
 command: var/1, fun=  9.35827812960581286e+03
 command: var/2, fun=  4.07733633900141513e+03
 command: var/1, fun=  5.70211970161988029e+03
 command: var/2, fun=  1.18534184722106306e+03
 command: var/1, fun=  5.70212072701273064e+03
 command: var/2, fun=  1.18534213625287089e+03
 command: var/1, fun=  2.26129011415772493e+03
 command: var/2, fun=  2.88754256111811401e+02
 command: var/1, fun=  9.14258472712128787e+03
 command: var/2, fun=  2.22841368749384401e+03
 command: var/1, fun=  6.82872955827121677e+03
 command: var/2, fun=  1.85187307641306302e+03
 command: var/1, fun=  6.82872955827121677e+03
 command: var/2, fun=  1.85187307641306302e+03
 command: var/1, fun=  5.72758263431952491e+03
 command: var/2, fun=  1.20341111725657561e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.25000E-01  1.00000E-04         8517         4256       1            1:45 
   4.30000E-01  1.00000E-04         8617         4306       1            1:46 

  End Simulation
 command: var/1, fun=  5.72758170704323766e+03
 command: var/2, fun=  1.20341069779946974e+03
 command: var/1, fun=  5.72758356159569030e+03
 command: var/2, fun=  1.20341153671368102e+03
 command: var/1, fun= -3.47883570877299962e+03
 command: var/2, fun= -1.61335535241925390e+03
 command: var/1, fun=  9.45740958000181308e+03
 command: var/2, fun=  4.01644082755810769e+03
 command: var/1, fun=  5.72758211366866544e+03
 command: var/2, fun=  1.20341097008935617e+03
 command: var/1, fun=  5.72758315497038438e+03
 command: var/2, fun=  1.20341126442379800e+03
 command: var/1, fun=  2.23336644306796734e+03
 command: var/2, fun=  2.89002555034586521e+02
 command: var/1, fun=  9.22142369587871326e+03
 command: var/2, fun=  2.26424736865652494e+03
 command: var/1, fun=  6.69532365391557414e+03
 command: var/2, fun=  1.67040009460644978e+03
 command: var/1, fun=  6.69532365391557414e+03
 command: var/2, fun=  1.67040009460644978e+03
 command: var/1, fun=  5.74515360162320849e+03
 command: var/2, fun=  1.21494474663551796e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.30000E-01  1.00000E-04         8617         4306       1            1:46 
   4.35000E-01  1.00000E-04         8717         4356       1            1:48 

  End Simulation
 command: var/1, fun=  5.74515268614183969e+03
 command: var/2, fun=  1.21494433413092679e+03
 command: var/1, fun=  5.74515451710444995e+03
 command: var/2, fun=  1.21494515914010390e+03
 command: var/1, fun= -3.24531237635166462e+03
 command: var/2, fun= -1.55512010795250353e+03
 command: var/1, fun=  9.51219636607572647e+03
 command: var/2, fun=  3.98136465667503580e+03
 command: var/1, fun=  5.74515308020483008e+03
 command: var/2, fun=  1.21494459901524760e+03
 command: var/1, fun=  5.74515412304157962e+03
 command: var/2, fun=  1.21494489425578990e+03
 command: var/1, fun=  2.24578664784806642e+03
 command: var/2, fun=  2.96351703361242983e+02
 command: var/1, fun=  9.24414533606107761e+03
 command: var/2, fun=  2.27767726011333025e+03
 command: var/1, fun=  6.64205562083163659e+03
 command: var/2, fun=  1.67179769412547535e+03
 command: var/1, fun=  6.64205562083163659e+03
 command: var/2, fun=  1.67179769412547535e+03
 command: var/1, fun=  5.76236429263729497e+03
 command: var/2, fun=  1.22656165043011720e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.35000E-01  1.00000E-04         8717         4356       1            1:48 
   4.40000E-01  1.00000E-04         8817         4406       1            1:49 

  End Simulation
 command: var/1, fun=  5.76236338985391831e+03
 command: var/2, fun=  1.22656124530149395e+03
 command: var/1, fun=  5.76236519542056067e+03
 command: var/2, fun=  1.22656205555874021e+03
 command: var/1, fun= -3.00194427157951122e+03
 command: var/2, fun= -1.49395624394888091e+03
 command: var/1, fun=  9.56390074399459081e+03
 command: var/2, fun=  3.94353373136106165e+03
 command: var/1, fun=  5.76236376838096658e+03
 command: var/2, fun=  1.22656150175964831e+03
 command: var/1, fun=  5.76236481689362790e+03
 command: var/2, fun=  1.22656179910059086e+03
 command: var/1, fun=  2.24395067040969707e+03
 command: var/2, fun=  3.00256380685963848e+02
 command: var/1, fun=  9.28039970374953737e+03
 command: var/2, fun=  2.29567747086230793e+03
 command: var/1, fun=  6.62071015136787173e+03
 command: var/2, fun=  1.68219578929256932e+03
 command: var/1, fun=  6.62071015136787173e+03
 command: var/2, fun=  1.68219578929256932e+03
 command: var/1, fun=  5.77951674474876199e+03
 command: var/2, fun=  1.23835699215524551e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.40000E-01  1.00000E-04         8817         4406       1            1:49 
   4.45000E-01  1.00000E-04         8917         4456       1            1:50 

  End Simulation
 command: var/1, fun=  5.77951585557248018e+03
 command: var/2, fun=  1.23835659481283665e+03
 command: var/1, fun=  5.77951763392493922e+03
 command: var/2, fun=  1.23835738949765437e+03
 command: var/1, fun= -2.74935324500227853e+03
 command: var/2, fun= -1.42985749860388182e+03
 command: var/1, fun=  9.61194859039116454e+03
 command: var/2, fun=  3.90313139241426143e+03
 command: var/1, fun=  5.77951621610032998e+03
 command: var/2, fun=  1.23835684198225044e+03
 command: var/1, fun=  5.77951727339719855e+03
 command: var/2, fun=  1.23835714232824512e+03
 command: var/1, fun=  2.23162561153320758e+03
 command: var/2, fun=  3.01621136902086903e+02
 command: var/1, fun=  9.32702448569331864e+03
 command: var/2, fun=  2.31720879660523997e+03
 command: var/1, fun=  6.60976165382403451e+03
 command: var/2, fun=  1.69024397455090184e+03
 command: var/1, fun=  6.60976165382403451e+03
 command: var/2, fun=  1.69024397455090184e+03
 command: var/1, fun=  5.79648713489939291e+03
 command: var/2, fun=  1.25014888240613209e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.45000E-01  1.00000E-04         8917         4456       1            1:50 
   4.50000E-01  1.00000E-04         9017         4506       1            1:51 

  End Simulation
 command: var/1, fun=  5.79648625993577116e+03
 command: var/2, fun=  1.25014849307409122e+03
 command: var/1, fun=  5.79648800986291644e+03
 command: var/2, fun=  1.25014927173817341e+03
 command: var/1, fun= -2.49369599401747519e+03
 command: var/2, fun= -1.36425612093429777e+03
 command: var/1, fun=  9.65485829513274984e+03
 command: var/2, fun=  3.86122310031392544e+03
 command: var/1, fun=  5.79648660085270967e+03
 command: var/2, fun=  1.25014873043858552e+03
 command: var/1, fun=  5.79648766894607252e+03
 command: var/2, fun=  1.25014903437368116e+03
 command: var/1, fun=  2.21236565206814339e+03
 command: var/2, fun=  3.01212316139719064e+02
 command: var/1, fun=  9.38021858266622439e+03
 command: var/2, fun=  2.34088602441392322e+03
 command: var/1, fun=  6.63281311432234543e+03
 command: var/2, fun=  1.72407209722569110e+03
 command: var/1, fun=  6.63281311432234543e+03
 command: var/2, fun=  1.72407209722569110e+03
 command: var/1, fun=  5.81423882442894865e+03
 command: var/2, fun=  1.26265934577873077e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.50000E-01  1.00000E-04         9017         4506       1            1:51 
   4.55000E-01  1.00000E-04         9118         4556       1            1:53 

  End Simulation
 command: var/1, fun=  5.81423796530294931e+03
 command: var/2, fun=  1.26265896523434458e+03
 command: var/1, fun=  5.81423968355484521e+03
 command: var/2, fun=  1.26265972632311195e+03
 command: var/1, fun= -2.21818608198537140e+03
 command: var/2, fun= -1.29271440369854486e+03
 command: var/1, fun=  9.69433807800351133e+03
 command: var/2, fun=  3.81482269340620405e+03
 command: var/1, fun=  5.81423828331711320e+03
 command: var/2, fun=  1.26265919151762660e+03
 command: var/1, fun=  5.81423936554078500e+03
 command: var/2, fun=  1.26265950003983789e+03
 command: var/1, fun=  2.18269938363475194e+03
 command: var/2, fun=  2.98410301664361782e+02
 command: var/1, fun=  9.44537920855923767e+03
 command: var/2, fun=  2.36886762417181171e+03
 command: var/1, fun=  6.70582865006064549e+03
 command: var/2, fun=  1.73944757521560496e+03
 command: var/1, fun=  6.70582865006064549e+03
 command: var/2, fun=  1.73944757521560496e+03
 command: var/1, fun=  5.83194489760941633e+03
 command: var/2, fun=  1.27479151349479253e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.55000E-01  1.00000E-04         9118         4556       1            1:53 
   4.60000E-01  1.00000E-04         9218         4606       1            1:54 

  End Simulation
 command: var/1, fun=  5.83194405385463233e+03
 command: var/2, fun=  1.27479114134934389e+03
 command: var/1, fun=  5.83194574136412484e+03
 command: var/2, fun=  1.27479188564024616e+03
 command: var/1, fun= -1.95814028764788486e+03
 command: var/2, fun= -1.22416268433594701e+03
 command: var/1, fun=  9.72631591334086261e+03
 command: var/2, fun=  3.77064927747781121e+03
 command: var/1, fun=  5.83194435102685475e+03
 command: var/2, fun=  1.27479135740751826e+03
 command: var/1, fun=  5.83194544419197791e+03
 command: var/2, fun=  1.27479166958206974e+03
 command: var/1, fun=  2.16368863872869906e+03
 command: var/2, fun=  2.97977676166876961e+02
 command: var/1, fun=  9.49979526241601889e+03
 command: var/2, fun=  2.39294542605784090e+03
 command: var/1, fun=  6.91852937773698523e+03
 command: var/2, fun=  1.80116541378229977e+03
 command: var/1, fun=  6.91852937773698523e+03
 command: var/2, fun=  1.80116541378229977e+03
 command: var/1, fun=  5.85124201215218636e+03
 command: var/2, fun=  1.28726749838664068e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.60000E-01  1.00000E-04         9218         4606       1            1:54 
   4.65000E-01  1.00000E-04         9342         4663       1            1:55 

  End Simulation
 command: var/1, fun=  5.85124118357560019e+03
 command: var/2, fun=  1.28726713441769516e+03
 command: var/1, fun=  5.85124284072870159e+03
 command: var/2, fun=  1.28726786235559166e+03
 command: var/1, fun= -1.70669809676389627e+03
 command: var/2, fun= -1.15676229585977171e+03
 command: var/1, fun=  9.75349510031301907e+03
 command: var/2, fun=  3.72830967227348083e+03
 command: var/1, fun=  5.85124146353386914e+03
 command: var/2, fun=  1.28726734146369995e+03
 command: var/1, fun=  5.85124256077050268e+03
 command: var/2, fun=  1.28726765530958528e+03
 command: var/1, fun=  2.16932307151956047e+03
 command: var/2, fun=  3.03666593151120821e+02
 command: var/1, fun=  9.53275318347491157e+03
 command: var/2, fun=  2.40985048991048006e+03
 command: var/1, fun=  7.16852357537081934e+03
 command: var/2, fun=  1.91855873632556859e+03
 command: var/1, fun=  7.16852357537081934e+03
 command: var/2, fun=  1.91855873632556859e+03
 command: var/1, fun=  5.87420605717301260e+03
 command: var/2, fun=  1.30185497131943248e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.65000E-01  1.00000E-04         9342         4663       1            1:55 
   4.70000E-01  1.00000E-04         9442         4713       1            1:56 

  End Simulation
 command: var/1, fun=  5.87420524654956989e+03
 command: var/2, fun=  1.30185461687917723e+03
 command: var/1, fun=  5.87420686779637981e+03
 command: var/2, fun=  1.30185532575968818e+03
 command: var/1, fun= -1.41779176179584624e+03
 command: var/2, fun= -1.07816760111253529e+03
 command: var/1, fun=  9.77829618408409988e+03
 command: var/2, fun=  3.67901581224559959e+03
 command: var/1, fun=  5.87420550713983175e+03
 command: var/2, fun=  1.30185481370255729e+03
 command: var/1, fun=  5.87420660720619435e+03
 command: var/2, fun=  1.30185512893631108e+03
 command: var/1, fun=  2.18279171008009052e+03
 command: var/2, fun=  3.11970381121537685e+02
 command: var/1, fun=  9.56521182376089564e+03
 command: var/2, fun=  2.42746811032568348e+03
 command: var/1, fun=  7.43033561459935936e+03
 command: var/2, fun=  2.05441045013968414e+03
 command: var/1, fun=  7.43033561459935936e+03
 command: var/2, fun=  2.05441045013968414e+03
 command: var/1, fun=  5.90137466061693249e+03
 command: var/2, fun=  1.31898420953919799e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.70000E-01  1.00000E-04         9442         4713       1            1:56 
   4.75000E-01  1.00000E-04         9542         4763       1            1:58 

  End Simulation
 command: var/1, fun=  5.90137387174939522e+03
 command: var/2, fun=  1.31898386645176129e+03
 command: var/1, fun=  5.90137544948440063e+03
 command: var/2, fun=  1.31898455262663424e+03
 command: var/1, fun= -1.08012475089065242e+03
 command: var/2, fun= -9.84778200882590454e+02
 command: var/1, fun=  9.79752603933148566e+03
 command: var/2, fun=  3.62003404037535438e+03
 command: var/1, fun=  5.90137410895387438e+03
 command: var/2, fun=  1.31898405112081582e+03
 command: var/1, fun=  5.90137521227998332e+03
 command: var/2, fun=  1.31898436795758130e+03
 command: var/1, fun=  2.19902198001182978e+03
 command: var/2, fun=  3.21761290816898054e+02
 command: var/1, fun=  9.60331783184176311e+03
 command: var/2, fun=  2.44801663763192755e+03
 command: var/1, fun=  7.67078686939515228e+03
 command: var/2, fun=  2.17900141161758211e+03
 command: var/1, fun=  7.67078686939515228e+03
 command: var/2, fun=  2.17900141161758211e+03
 command: var/1, fun=  5.93213631842049472e+03
 command: var/2, fun=  1.33821133225885615e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.75000E-01  1.00000E-04         9542         4763       1            1:58 
   4.80000E-01  1.00000E-04         9642         4813       1            1:59 

  End Simulation
 command: var/1, fun=  5.93213555488132533e+03
 command: var/2, fun=  1.33821100214063335e+03
 command: var/1, fun=  5.93213708195960862e+03
 command: var/2, fun=  1.33821166237708189e+03
 command: var/1, fun= -7.02982180722869998e+02
 command: var/2, fun= -8.78433696203411046e+02
 command: var/1, fun=  9.80605222256061279e+03
 command: var/2, fun=  3.55231267085545551e+03
 command: var/1, fun=  5.93213576495761208e+03
 command: var/2, fun=  1.33821117295512431e+03
 command: var/1, fun=  5.93213687188338190e+03
 command: var/2, fun=  1.33821149156259276e+03
 command: var/1, fun=  2.21770462643754627e+03
 command: var/2, fun=  3.32783913276637918e+02
 command: var/1, fun=  9.64615747142090913e+03
 command: var/2, fun=  2.47092227411940257e+03
 command: var/1, fun=  7.88406648948074508e+03
 command: var/2, fun=  2.28737018777738786e+03
 command: var/1, fun=  7.88406648948074508e+03
 command: var/2, fun=  2.28737018777738786e+03
 command: var/1, fun=  5.96571489957814993e+03
 command: var/2, fun=  1.35899516596176682e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.80000E-01  1.00000E-04         9642         4813       1            1:59 
   4.85000E-01  1.00000E-04         9742         4863       1            2:00 

  End Simulation
 command: var/1, fun=  5.96571416455230610e+03
 command: var/2, fun=  1.35899485015156574e+03
 command: var/1, fun=  5.96571563460394009e+03
 command: var/2, fun=  1.35899548177196698e+03
 command: var/1, fun= -2.97366327050788470e+02
 command: var/2, fun= -7.61540325452925345e+02
 command: var/1, fun=  9.79925996240494533e+03
 command: var/2, fun=  3.47717089599129804e+03
 command: var/1, fun=  5.96571434420512014e+03
 command: var/2, fun=  1.35899500571853514e+03
 command: var/1, fun=  5.96571545495118153e+03
 command: var/2, fun=  1.35899532620500054e+03
 command: var/1, fun=  2.23846390088142061e+03
 command: var/2, fun=  3.44737408598077252e+02
 command: var/1, fun=  9.69255425966292387e+03
 command: var/2, fun=  2.49548549841598970e+03
 command: var/1, fun=  8.07988024117971872e+03
 command: var/2, fun=  2.38384854521187708e+03
 command: var/1, fun=  8.07988024117971872e+03
 command: var/2, fun=  2.38384854521187708e+03
 command: var/1, fun=  6.00151165498422051e+03
 command: var/2, fun=  1.38091570417058756e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.85000E-01  1.00000E-04         9742         4863       1            2:00 
   4.90000E-01  1.00000E-04         9843         4913       1            2:01 

  End Simulation
 command: var/1, fun=  6.00151095138145956e+03
 command: var/2, fun=  1.38091540380316633e+03
 command: var/1, fun=  6.00151235858693508e+03
 command: var/2, fun=  1.38091600453800856e+03
 command: var/1, fun=  1.28370351533366289e+02
 command: var/2, fun= -6.35889372877918504e+02
 command: var/1, fun=  9.77344412434348487e+03
 command: var/2, fun=  3.39555602477992034e+03
 command: var/1, fun=  6.00151109763804834e+03
 command: var/2, fun=  1.38091554295732044e+03
 command: var/1, fun=  6.00151221233039814e+03
 command: var/2, fun=  1.38091586538385855e+03
 command: var/1, fun=  2.26101853321496446e+03
 command: var/2, fun=  3.57389852083461051e+02
 command: var/1, fun=  9.74159199243771945e+03
 command: var/2, fun=  2.52115755616430852e+03
 command: var/1, fun=  8.17769547022241204e+03
 command: var/2, fun=  2.34367440210282030e+03
 command: var/1, fun=  8.17769547022241204e+03
 command: var/2, fun=  2.34367440210282030e+03
 command: var/1, fun=  6.03452761444961834e+03
 command: var/2, fun=  1.40001050038486756e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.90000E-01  1.00000E-04         9843         4913       1            2:01 
   4.95000E-01  1.00000E-04         9943         4963       1            2:02 

  End Simulation
 command: var/1, fun=  6.03452693742560859e+03
 command: var/2, fun=  1.40001021283997579e+03
 command: var/1, fun=  6.03452829147359353e+03
 command: var/2, fun=  1.40001078792976159e+03
 command: var/1, fun=  4.76175823948181687e+02
 command: var/2, fun= -5.30666967389378556e+02
 command: var/1, fun=  9.74156644891280666e+03
 command: var/2, fun=  3.32868008095338655e+03
 command: var/1, fun=  6.03452706125636814e+03
 command: var/2, fun=  1.40001034005874681e+03
 command: var/1, fun=  6.03452816764286308e+03
 command: var/2, fun=  1.40001066071098921e+03
 command: var/1, fun=  2.32190801892266154e+03
 command: var/2, fun=  3.78983808540353607e+02
 command: var/1, fun=  9.74674184097353100e+03
 command: var/2, fun=  2.53084442470167642e+03
 command: var/1, fun=  7.90499400758777574e+03
 command: var/2, fun=  2.05043472035525838e+03
 command: var/1, fun=  7.90499400758777574e+03
 command: var/2, fun=  2.05043472035525838e+03
 command: var/1, fun=  6.05608091147360847e+03
 command: var/2, fun=  1.41006313629435931e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.95000E-01  1.00000E-04         9943         4963       1            2:02 
   5.00000E-01  1.00000E-04        10043         5013       1            2:04 

  End Simulation
 command: var/1, fun=  6.05608024338146151e+03
 command: var/2, fun=  1.41006285301993012e+03
 command: var/1, fun=  6.05608157956572177e+03
 command: var/2, fun=  1.41006341956879078e+03
 command: var/1, fun=  6.00587825569534516e+02
 command: var/2, fun= -4.91932859654873653e+02
 command: var/1, fun=  9.73883157454113098e+03
 command: var/2, fun=  3.31009789757715862e+03
 command: var/1, fun=  6.05608037637840516e+03
 command: var/2, fun=  1.41006298111415458e+03
 command: var/1, fun=  6.05608144656880904e+03
 command: var/2, fun=  1.41006329147456631e+03
 command: var/1, fun=  2.46492832544750217e+03
 command: var/2, fun=  4.19239400525240910e+02
 command: var/1, fun=  9.64685435956018046e+03
 command: var/2, fun=  2.50203274196260918e+03
 command: var/1, fun=  7.76361062871256490e+03
 command: var/2, fun=  2.01437906069900851e+03
 command: var/1, fun=  7.76361062871256490e+03
 command: var/2, fun=  2.01437906069900851e+03
 command: var/1, fun=  6.07608302063585143e+03
 command: var/2, fun=  1.41961569190357341e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.00000E-01  1.00000E-04        10043         5013       1            2:04 
   5.05000E-01  1.00000E-04        10143         5063       1            2:05 

  End Simulation
 command: var/1, fun=  6.07608236188032879e+03
 command: var/2, fun=  1.41961541306746631e+03
 command: var/1, fun=  6.07608367939133768e+03
 command: var/2, fun=  1.41961597073968028e+03
 command: var/1, fun=  7.26636277052721766e+02
 command: var/2, fun= -4.52570901659140475e+02
 command: var/1, fun=  9.73219845498923132e+03
 command: var/2, fun=  3.28989054006788183e+03
 command: var/1, fun=  6.07608250077202956e+03
 command: var/2, fun=  1.41961554104225365e+03
 command: var/1, fun=  6.07608354049966874e+03
 command: var/2, fun=  1.41961584276489339e+03
 command: var/1, fun=  2.58715725270238272e+03
 command: var/2, fun=  4.54156204982788665e+02
 command: var/1, fun=  9.56465111564912877e+03
 command: var/2, fun=  2.47898243928693228e+03
 command: var/1, fun=  7.64759085209379555e+03
 command: var/2, fun=  1.99144626546926725e+03
 command: var/1, fun=  7.64759085209379555e+03
 command: var/2, fun=  1.99144626546926725e+03
 command: var/1, fun=  6.09500597269488208e+03
 command: var/2, fun=  1.42895727867852611e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.05000E-01  1.00000E-04        10143         5063       1            2:05 
   5.10000E-01  1.00000E-04        10243         5113       1            2:06 

  End Simulation
 command: var/1, fun=  6.09500532417648992e+03
 command: var/2, fun=  1.42895700467946722e+03
 command: var/1, fun=  6.09500662121323876e+03
 command: var/2, fun=  1.42895755267758500e+03
 command: var/1, fun=  8.60150123442462473e+02
 command: var/2, fun= -4.10741381333397442e+02
 command: var/1, fun=  9.72049504910302858e+03
 command: var/2, fun=  3.26679917688036130e+03
 command: var/1, fun=  6.09500546507027957e+03
 command: var/2, fun=  1.42895713126654596e+03
 command: var/1, fun=  6.09500648031948913e+03
 command: var/2, fun=  1.42895742609051013e+03
 command: var/1, fun=  2.68822460922432765e+03
 command: var/2, fun=  4.83650025602444146e+02
 command: var/1, fun=  9.50144655563480410e+03
 command: var/2, fun=  2.46218004735608065e+03
 command: var/1, fun=  7.55585990131731614e+03
 command: var/2, fun=  1.97800811096485540e+03
 command: var/1, fun=  7.55585990131731614e+03
 command: var/2, fun=  1.97800811096485540e+03
 command: var/1, fun=  6.11316616099304065e+03
 command: var/2, fun=  1.43823801300833952e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.10000E-01  1.00000E-04        10243         5113       1            2:06 
   5.15000E-01  1.00000E-04        10343         5163       1            2:07 

  End Simulation
 command: var/1, fun=  6.11316552381128622e+03
 command: var/2, fun=  1.43823774433173912e+03
 command: var/1, fun=  6.11316679817476052e+03
 command: var/2, fun=  1.43823828168493992e+03
 command: var/1, fun=  1.00321153254546539e+03
 command: var/2, fun= -3.65712080601966818e+02
 command: var/1, fun=  9.70305440230526619e+03
 command: var/2, fun=  3.24039257413605628e+03
 command: var/1, fun=  6.11316566279311701e+03
 command: var/2, fun=  1.43823786822514649e+03
 command: var/1, fun=  6.11316665919296793e+03
 command: var/2, fun=  1.43823815779153597e+03
 command: var/1, fun=  2.76963919246311207e+03
 command: var/2, fun=  5.08096734003883796e+02
 command: var/1, fun=  9.45636519361743194e+03
 command: var/2, fun=  2.45134376260858653e+03
 command: var/1, fun=  7.49119836260233296e+03
 command: var/2, fun=  1.97563245145112887e+03
 command: var/1, fun=  7.49119836260233296e+03
 command: var/2, fun=  1.97563245145112887e+03
 command: var/1, fun=  6.13092014764373562e+03
 command: var/2, fun=  1.44763638163477799e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.15000E-01  1.00000E-04        10343         5163       1            2:07 
   5.20000E-01  1.00000E-04        10443         5213       1            2:08 

  End Simulation
 command: var/1, fun=  6.13091952317396226e+03
 command: var/2, fun=  1.44763611888578293e+03
 command: var/1, fun=  6.13092077211348260e+03
 command: var/2, fun=  1.44763664438377486e+03
 command: var/1, fun=  1.15860152283315711e+03
 command: var/2, fun= -3.16500429721893170e+02
 command: var/1, fun=  9.67885103523765065e+03
 command: var/2, fun=  3.21004621414988742e+03
 command: var/1, fun=  6.13091965619276471e+03
 command: var/2, fun=  1.44763623869709477e+03
 command: var/1, fun=  6.13092063909471108e+03
 command: var/2, fun=  1.44763652457246417e+03
 command: var/1, fun=  2.83268918790517273e+03
 command: var/2, fun=  5.27835256555209753e+02
 command: var/1, fun=  9.42883236528508132e+03
 command: var/2, fun=  2.44631229750231614e+03
 command: var/1, fun=  7.45593967680420337e+03
 command: var/2, fun=  1.98622929001437751e+03
 command: var/1, fun=  7.45593967680420337e+03
 command: var/2, fun=  1.98622929001437751e+03
 command: var/1, fun=  6.14867292445763724e+03
 command: var/2, fun=  1.45736976660608161e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.20000E-01  1.00000E-04        10443         5213       1            2:08 
   5.25000E-01  1.00000E-04        10543         5263       1            2:10 

  End Simulation
 command: var/1, fun=  6.14867231447309769e+03
 command: var/2, fun=  1.45736951056189218e+03
 command: var/1, fun=  6.14867353444213950e+03
 command: var/2, fun=  1.45737002265026786e+03
 command: var/1, fun=  1.33018430258797571e+03
 command: var/2, fun= -2.61733598309137903e+02
 command: var/1, fun=  9.64626474721436352e+03
 command: var/2, fun=  3.17482361886587205e+03
 command: var/1, fun=  6.14867243712834897e+03
 command: var/2, fun=  1.45736962474087636e+03
 command: var/1, fun=  6.14867341178692368e+03
 command: var/2, fun=  1.45736990847128800e+03
 command: var/1, fun=  2.87810499745769039e+03
 command: var/2, fun=  5.43076866083727396e+02
 command: var/1, fun=  9.41892787123525886e+03
 command: var/2, fun=  2.44715934908910958e+03
 command: var/1, fun=  7.45983687109350376e+03
 command: var/2, fun=  2.01779561084217062e+03
 command: var/1, fun=  7.45983687109350376e+03
 command: var/2, fun=  2.01779561084217062e+03
 command: var/1, fun=  6.16707428775013523e+03
 command: var/2, fun=  1.46784165461886050e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.25000E-01  1.00000E-04        10543         5263       1            2:10 
   5.30000E-01  1.00000E-04        10643         5313       1            2:11 

  End Simulation
 command: var/1, fun=  6.16707369490617566e+03
 command: var/2, fun=  1.46784140644374429e+03
 command: var/1, fun=  6.16707488059407478e+03
 command: var/2, fun=  1.46784190279397899e+03
 command: var/1, fun=  1.52664842115223814e+03
 command: var/2, fun= -1.98408676565530726e+02
 command: var/1, fun=  9.60176768266355248e+03
 command: var/2, fun=  3.13253275951506203e+03
 command: var/1, fun=  6.16707380161429137e+03
 command: var/2, fun=  1.46784151295797346e+03
 command: var/1, fun=  6.16707477388598090e+03
 command: var/2, fun=  1.46784179627974959e+03
 command: var/1, fun=  2.90451646801791003e+03
 command: var/2, fun=  5.53535424452324037e+02
 command: var/1, fun=  9.42932119175925436e+03
 command: var/2, fun=  2.45487559764331218e+03
 command: var/1, fun=  7.48464004694700907e+03
 command: var/2, fun=  2.05885174316755138e+03
 command: var/1, fun=  7.48464004694700907e+03
 command: var/2, fun=  2.05885174316755138e+03
 command: var/1, fun=  6.18634628954272466e+03
 command: var/2, fun=  1.47915594783751772e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.30000E-01  1.00000E-04        10643         5313       1            2:11 
   5.35000E-01  1.00000E-04        10743         5363       1            2:12 

  End Simulation
 command: var/1, fun=  6.18634571683016475e+03
 command: var/2, fun=  1.47915570882020256e+03
 command: var/1, fun=  6.18634686225525365e+03
 command: var/2, fun=  1.47915618685483037e+03
 command: var/1, fun=  1.74982424630969467e+03
 command: var/2, fun= -1.25586218158166616e+02
 command: var/1, fun=  9.54278213889635299e+03
 command: var/2, fun=  3.08244238094101956e+03
 command: var/1, fun=  6.18634580168193952e+03
 command: var/2, fun=  1.47915580551321500e+03
 command: var/1, fun=  6.18634677740350344e+03
 command: var/2, fun=  1.47915609016182088e+03
 command: var/1, fun=  2.91221184455170351e+03
 command: var/2, fun=  5.59254981164314927e+02
 command: var/1, fun=  9.46016824151351102e+03
 command: var/2, fun=  2.46949934330814767e+03
 command: var/1, fun=  7.55959487189689662e+03
 command: var/2, fun=  2.12209902201061232e+03
 command: var/1, fun=  7.55959487189689662e+03
 command: var/2, fun=  2.12209902201061232e+03
 command: var/1, fun=  6.20708936236709451e+03
 command: var/2, fun=  1.49161807720456409e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.35000E-01  1.00000E-04        10743         5363       1            2:12 
   5.40000E-01  1.00000E-04        10843         5413       1            2:13 

  End Simulation
 command: var/1, fun=  6.20708881350433694e+03
 command: var/2, fun=  1.49161784892641276e+03
 command: var/1, fun=  6.20708991122982934e+03
 command: var/2, fun=  1.49161830548271587e+03
 command: var/1, fun=  2.00523424134394099e+03
 command: var/2, fun= -4.09961270820202728e+01
 command: var/1, fun=  9.46504076181156051e+03
 command: var/2, fun=  3.02289503964676669e+03
 command: var/1, fun=  6.20708886993486794e+03
 command: var/2, fun=  1.49161793336499113e+03
 command: var/1, fun=  6.20708985479932107e+03
 command: var/2, fun=  1.49161822104413886e+03
 command: var/1, fun=  2.90227387245007230e+03
 command: var/2, fun=  5.60544646391900983e+02
 command: var/1, fun=  9.51158722210974884e+03
 command: var/2, fun=  2.49112665281327691e+03
 command: var/1, fun=  7.69826586627183679e+03
 command: var/2, fun=  2.21653438341065794e+03
 command: var/1, fun=  7.69826586627183679e+03
 command: var/2, fun=  2.21653438341065794e+03
 command: var/1, fun=  6.23012540003362665e+03
 command: var/2, fun=  1.50568050032200040e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.40000E-01  1.00000E-04        10843         5413       1            2:13 
   5.45000E-01  1.00000E-04        10943         5463       1            2:14 

  End Simulation
 command: var/1, fun=  6.23012487996570599e+03
 command: var/2, fun=  1.50568028486223420e+03
 command: var/1, fun=  6.23012592010153185e+03
 command: var/2, fun=  1.50568071578176659e+03
 command: var/1, fun=  2.30228875929572996e+03
 command: var/2, fun=  5.91567233261471870e+01
 command: var/1, fun=  9.36140659493952808e+03
 command: var/2, fun=  2.95100369622017297e+03
 command: var/1, fun=  6.23012489998987621e+03
 command: var/2, fun=  1.50568035405121555e+03
 command: var/1, fun=  6.23012590007738163e+03
 command: var/2, fun=  1.50568064659278821e+03
 command: var/1, fun=  2.87422535924414024e+03
 command: var/2, fun=  5.57316311734819692e+02
 command: var/1, fun=  9.58569880296938209e+03
 command: var/2, fun=  2.52052947552607657e+03
 command: var/1, fun=  7.84906664572592672e+03
 command: var/2, fun=  2.30856562668572360e+03
 command: var/1, fun=  7.84906664572592672e+03
 command: var/2, fun=  2.30856562668572360e+03
 command: var/1, fun=  6.25513460174938064e+03
 command: var/2, fun=  1.52102263159472182e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.45000E-01  1.00000E-04        10943         5463       1            2:14 
   5.50000E-01  1.00000E-04        11043         5513       1            2:16 

  End Simulation
 command: var/1, fun=  6.25513411502237250e+03
 command: var/2, fun=  1.52102243079270102e+03
 command: var/1, fun=  6.25513508847636876e+03
 command: var/2, fun=  1.52102283239674011e+03
 command: var/1, fun=  2.63286566024562580e+03
 command: var/2, fun=  1.72939304207526675e+02
 command: var/1, fun=  9.22999712857035956e+03
 command: var/2, fun=  2.86805449436230037e+03
 command: var/1, fun=  6.25513409170228715e+03
 command: var/2, fun=  1.52102248217184501e+03
 command: var/1, fun=  6.25513511179647412e+03
 command: var/2, fun=  1.52102278101759975e+03
 command: var/1, fun=  2.83209716792344079e+03
 command: var/2, fun=  5.50433856561851144e+02
 command: var/1, fun=  9.67783319165401008e+03
 command: var/2, fun=  2.55595367397075233e+03
 command: var/1, fun=  8.00431980601424129e+03
 command: var/2, fun=  2.39757873516343125e+03
 command: var/1, fun=  8.00431980601424129e+03
 command: var/2, fun=  2.39757873516343125e+03
 command: var/1, fun=  6.28177377394446376e+03
 command: var/2, fun=  1.53736511091176044e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.50000E-01  1.00000E-04        11043         5513       1            2:16 
   5.55000E-01  1.00000E-04        11143         5563       1            2:17 

  End Simulation
 command: var/1, fun=  6.28177332491931884e+03
 command: var/2, fun=  1.53736492646913621e+03
 command: var/1, fun=  6.28177422296959503e+03
 command: var/2, fun=  1.53736529535438444e+03
 command: var/1, fun=  2.99129245667983560e+03
 command: var/2, fun=  2.99145647488446400e+02
 command: var/1, fun=  9.06834691671418295e+03
 command: var/2, fun=  2.77468980042643398e+03
 command: var/1, fun=  6.28177325178199771e+03
 command: var/2, fun=  1.53736495770256670e+03
 command: var/1, fun=  6.28177429610693525e+03
 command: var/2, fun=  1.53736526412095691e+03
 command: var/1, fun=  2.77742383507277509e+03
 command: var/2, fun=  5.40105725404500049e+02
 command: var/1, fun=  9.78576965178400133e+03
 command: var/2, fun=  2.59644463397794425e+03
 command: var/1, fun=  8.17876865482594803e+03
 command: var/2, fun=  2.49867517317809188e+03
 command: var/1, fun=  8.17876865482594803e+03
 command: var/2, fun=  2.49867517317809188e+03
 command: var/1, fun=  6.31010810524700264e+03
 command: var/2, fun=  1.55476623362690793e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.55000E-01  1.00000E-04        11143         5563       1            2:17 
   5.60000E-01  1.00000E-04        11246         5613       1            2:18 

  End Simulation
 command: var/1, fun=  6.31010769919292397e+03
 command: var/2, fun=  1.55476606758138837e+03
 command: var/1, fun=  6.31010851130107039e+03
 command: var/2, fun=  1.55476639967242636e+03
 command: var/1, fun=  3.38188912803544190e+03
 command: var/2, fun=  4.40088767857392270e+02
 command: var/1, fun=  8.86892193460579983e+03
 command: var/2, fun=  2.66871206808107763e+03
 command: var/1, fun=  6.31010756827546629e+03
 command: var/2, fun=  1.55476607582577253e+03
 command: var/1, fun=  6.31010864221853262e+03
 command: var/2, fun=  1.55476639142804311e+03
 command: var/1, fun=  2.70636662254330304e+03
 command: var/2, fun=  5.25150372711393970e+02
 command: var/1, fun=  9.91347631253904910e+03
 command: var/2, fun=  2.64312125734777692e+03
 command: var/1, fun=  7.94906671664094756e+03
 command: var/2, fun=  2.22627275592358819e+03
 command: var/1, fun=  7.94906671664094756e+03
 command: var/2, fun=  2.22627275592358819e+03
 command: var/1, fun=  6.32981513540996821e+03
 command: var/2, fun=  1.56512759054369985e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.60000E-01  1.00000E-04        11246         5613       1            2:18 
   5.65000E-01  1.00000E-04        11346         5663       1            2:19 

  End Simulation
 command: var/1, fun=  6.32981475109830080e+03
 command: var/2, fun=  1.56512743371901661e+03
 command: var/1, fun=  6.32981551972162561e+03
 command: var/2, fun=  1.56512774736838173e+03
 command: var/1, fun=  3.57907741689422437e+03
 command: var/2, fun=  5.12367676112274239e+02
 command: var/1, fun=  8.76858717502894433e+03
 command: var/2, fun=  2.61723137985408903e+03
 command: var/1, fun=  6.32981460072015034e+03
 command: var/2, fun=  1.56512743329998148e+03
 command: var/1, fun=  6.32981567009978789e+03
 command: var/2, fun=  1.56512774778741959e+03
 command: var/1, fun=  2.74138772140497122e+03
 command: var/2, fun=  5.37363307782836387e+02
 command: var/1, fun=  9.91787285187521957e+03
 command: var/2, fun=  2.64785270462026347e+03
 command: var/1, fun=  7.73012250017414408e+03
 command: var/2, fun=  2.09297990350847158e+03
 command: var/1, fun=  7.73012250017414408e+03
 command: var/2, fun=  2.09297990350847158e+03
 command: var/1, fun=  6.34528778065810093e+03
 command: var/2, fun=  1.57257604024168927e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.65000E-01  1.00000E-04        11346         5663       1            2:19 
   5.70000E-01  1.00000E-04        11446         5713       1            2:20 

  End Simulation
 command: var/1, fun=  6.34528741005332449e+03
 command: var/2, fun=  1.57257588920265493e+03
 command: var/1, fun=  6.34528815126287191e+03
 command: var/2, fun=  1.57257619128072338e+03
 command: var/1, fun=  3.70459005480111546e+03
 command: var/2, fun=  5.58665423382116614e+02
 command: var/1, fun=  8.70686005427591226e+03
 command: var/2, fun=  2.58587568387026113e+03
 command: var/1, fun=  6.34528725279989158e+03
 command: var/2, fun=  1.57257588494018864e+03
 command: var/1, fun=  6.34528830851631119e+03
 command: var/2, fun=  1.57257619554319081e+03
 command: var/1, fun=  2.80271129602017754e+03
 command: var/2, fun=  5.56148142713734273e+02
 command: var/1, fun=  9.88750413387708431e+03
 command: var/2, fun=  2.64056953774652857e+03
 command: var/1, fun=  7.65524873110095541e+03
 command: var/2, fun=  2.08564915932633903e+03
 command: var/1, fun=  7.65524873110095541e+03
 command: var/2, fun=  2.08564915932633903e+03
 command: var/1, fun=  6.36009992003697153e+03
 command: var/2, fun=  1.58000152689304991e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.70000E-01  1.00000E-04        11446         5713       1            2:20 
   5.75000E-01  1.00000E-04        11546         5763       1            2:22 

  End Simulation
 command: var/1, fun=  6.36009956473080911e+03
 command: var/2, fun=  1.58000138228531978e+03
 command: var/1, fun=  6.36010027534313031e+03
 command: var/2, fun=  1.58000167150077959e+03
 command: var/1, fun=  3.84062881330016035e+03
 command: var/2, fun=  6.09274963328027980e+02
 command: var/1, fun=  8.63419726688841729e+03
 command: var/2, fun=  2.55016592467100600e+03
 command: var/1, fun=  6.36009939606337684e+03
 command: var/2, fun=  1.58000137266420029e+03
 command: var/1, fun=  6.36010044401056621e+03
 command: var/2, fun=  1.58000168112189999e+03
 command: var/1, fun=  2.84359540235172972e+03
 command: var/2, fun=  5.69299903776169458e+02
 command: var/1, fun=  9.87624981011053205e+03
 command: var/2, fun=  2.63932441613841456e+03
 command: var/1, fun=  7.59497037621418804e+03
 command: var/2, fun=  2.08736992253775270e+03
 command: var/1, fun=  7.59497037621418804e+03
 command: var/2, fun=  2.08736992253775270e+03
 command: var/1, fun=  6.37446201238149570e+03
 command: var/2, fun=  1.58754906289735845e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.75000E-01  1.00000E-04        11546         5763       1            2:22 
   5.80000E-01  1.00000E-04        11646         5813       1            2:23 

  End Simulation
 command: var/1, fun=  6.37446167453388716e+03
 command: var/2, fun=  1.58754892559718724e+03
 command: var/1, fun=  6.37446235022910423e+03
 command: var/2, fun=  1.58754920019753081e+03
 command: var/1, fun=  3.99138381244233597e+03
 command: var/2, fun=  6.65889346512842849e+02
 command: var/1, fun=  8.54713134253430144e+03
 command: var/2, fun=  2.50870010702848231e+03
 command: var/1, fun=  6.37446148900922253e+03
 command: var/2, fun=  1.58754890877020034e+03
 command: var/1, fun=  6.37446253575377159e+03
 command: var/2, fun=  1.58754921702451725e+03
 command: var/1, fun=  2.86199343416196325e+03
 command: var/2, fun=  5.76235308907183253e+02
 command: var/1, fun=  9.88657705040491237e+03
 command: var/2, fun=  2.64489493993852693e+03
 command: var/1, fun=  7.55091677576137863e+03
 command: var/2, fun=  2.09642822450398126e+03
 command: var/1, fun=  7.55091677576137863e+03
 command: var/2, fun=  2.09642822450398126e+03
 command: var/1, fun=  6.38851941631557656e+03
 command: var/2, fun=  1.59529159399597734e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.80000E-01  1.00000E-04        11646         5813       1            2:23 
   5.85000E-01  1.00000E-04        11746         5863       1            2:24 

  End Simulation
 command: var/1, fun=  6.38851909840193912e+03
 command: var/2, fun=  1.59529146500098977e+03
 command: var/1, fun=  6.38851973422920491e+03
 command: var/2, fun=  1.59529172299096354e+03
 command: var/1, fun=  4.15878025040208558e+03
 command: var/2, fun=  7.29395935328181508e+02
 command: var/1, fun=  8.44341367347657251e+03
 command: var/2, fun=  2.46073659909623393e+03
 command: var/1, fun=  6.38851889020743965e+03
 command: var/2, fun=  1.59529143898272969e+03
 command: var/1, fun=  6.38851994242370620e+03
 command: var/2, fun=  1.59529174900922408e+03
 command: var/1, fun=  2.85768912607411494e+03
 command: var/2, fun=  5.76852068572561052e+02
 command: var/1, fun=  9.91899278544987828e+03
 command: var/2, fun=  2.65740457647891617e+03
 command: var/1, fun=  7.54489621814106795e+03
 command: var/2, fun=  2.12187684679667700e+03
 command: var/1, fun=  7.54489621814106795e+03
 command: var/2, fun=  2.12187684679667700e+03
 command: var/1, fun=  6.40263954228467082e+03
 command: var/2, fun=  1.60341502350092219e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.85000E-01  1.00000E-04        11746         5863       1            2:24 
   5.90000E-01  1.00000E-04        11846         5913       1            2:25 

  End Simulation
 command: var/1, fun=  6.40263924741862593e+03
 command: var/2, fun=  1.60341490406115213e+03
 command: var/1, fun=  6.40263983715071390e+03
 command: var/2, fun=  1.60341514294069225e+03
 command: var/1, fun=  4.34722992769151369e+03
 command: var/2, fun=  8.01674680770221471e+02
 command: var/1, fun=  8.31893308225082183e+03
 command: var/2, fun=  2.40476756081187523e+03
 command: var/1, fun=  6.40263901005817934e+03
 command: var/2, fun=  1.60341486659873135e+03
 command: var/1, fun=  6.40264007451116868e+03
 command: var/2, fun=  1.60341518040311507e+03
 command: var/1, fun=  2.83074561845076914e+03
 command: var/2, fun=  5.71140078169791309e+02
 command: var/1, fun=  9.97416857401502784e+03
 command: var/2, fun=  2.67704558497277276e+03
 command: var/1, fun=  7.57504035277277853e+03
 command: var/2, fun=  2.17777391204033438e+03
 command: var/1, fun=  7.57504035277277853e+03
 command: var/2, fun=  2.17777391204033438e+03
 command: var/1, fun=  6.41738599723005791e+03
 command: var/2, fun=  1.61241571230048771e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.90000E-01  1.00000E-04        11846         5913       1            2:25 
   5.95000E-01  1.00000E-04        11946         5963       1            2:26 

  End Simulation
 command: var/1, fun=  6.41738573096411346e+03
 command: var/2, fun=  1.61241560465366661e+03
 command: var/1, fun=  6.41738626349600054e+03
 command: var/2, fun=  1.61241581994730814e+03
 command: var/1, fun=  4.57426679034541667e+03
 command: var/2, fun=  8.89852195816038147e+02
 command: var/1, fun=  8.15837806846813510e+03
 command: var/2, fun=  2.33466298316188750e+03
 command: var/1, fun=  6.41738545363567391e+03
 command: var/2, fun=  1.61241555194936564e+03
 command: var/1, fun=  6.41738654082444918e+03
 command: var/2, fun=  1.61241587265161206e+03
 command: var/1, fun=  2.76919581508982901e+03
 command: var/2, fun=  5.55742441254272080e+02
 command: var/1, fun=  1.00651960074465260e+04
 command: var/2, fun=  2.70793871366209623e+03
 command: var/1, fun=  7.52817922621652360e+03
 command: var/2, fun=  2.22102787584692669e+03
 command: var/1, fun=  7.52817922621652360e+03
 command: var/2, fun=  2.22102787584692669e+03
 command: var/1, fun=  6.43194720452571710e+03
 command: var/2, fun=  1.62214348704990084e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.95000E-01  1.00000E-04        11946         5963       1            2:26 
   6.00000E-01  1.00000E-04        12049         6013       1            2:27 

  End Simulation
 command: var/1, fun=  6.43194697380807065e+03
 command: var/2, fun=  1.62214339397275694e+03
 command: var/1, fun=  6.43194743524336627e+03
 command: var/2, fun=  1.62214358012704542e+03
 command: var/1, fun=  4.84714394407764848e+03
 command: var/2, fun=  9.97394777937507342e+02
 command: var/1, fun=  7.95050674736459860e+03
 command: var/2, fun=  2.24665482911703702e+03
 command: var/1, fun=  6.43194664177760478e+03
 command: var/2, fun=  1.62214332094126416e+03
 command: var/1, fun=  6.43194776727382941e+03
 command: var/2, fun=  1.62214365315853775e+03
 command: var/1, fun=  2.65520523078552651e+03
 command: var/2, fun=  5.25390151912572719e+02
 command: var/1, fun=  1.02082823385099873e+04
 command: var/2, fun=  2.75486245926195397e+03
 command: var/1, fun=  7.60410151843783660e+03
 command: var/2, fun=  2.16177134795398024e+03
 command: var/1, fun=  7.60410151843783660e+03
 command: var/2, fun=  2.16177134795398024e+03
 command: var/1, fun=  6.44514272686683762e+03
 command: var/2, fun=  1.62977058862323770e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.00000E-01  1.00000E-04        12049         6013       1            2:27 
   6.05000E-01  1.00000E-04        12150         6063       1            2:29 

  End Simulation
 command: var/1, fun=  6.44514252140988083e+03
 command: var/2, fun=  1.62977050584853737e+03
 command: var/1, fun=  6.44514293232379350e+03
 command: var/2, fun=  1.62977067139793735e+03
 command: var/1, fun=  5.04061794434613421e+03
 command: var/2, fun=  1.07418489935727416e+03
 command: var/1, fun=  7.80295803636035998e+03
 command: var/2, fun=  2.18516795752227563e+03
 command: var/1, fun=  6.44514215618480739e+03
 command: var/2, fun=  1.62977042010668106e+03
 command: var/1, fun=  6.44514329754886876e+03
 command: var/2, fun=  1.62977075713979457e+03
 command: var/1, fun=  2.61515148895876337e+03
 command: var/2, fun=  5.15311529153247193e+02
 command: var/1, fun=  1.02747158817105865e+04
 command: var/2, fun=  2.77710239683464079e+03
 command: var/1, fun=  7.43670330657531395e+03
 command: var/2, fun=  2.06678366152509307e+03
 command: var/1, fun=  7.43670330657531395e+03
 command: var/2, fun=  2.06678366152509307e+03
 command: var/1, fun=  6.45575021943569482e+03
 command: var/2, fun=  1.63564182077965438e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.05000E-01  1.00000E-04        12150         6063       1            2:29 
   6.10000E-01  1.00000E-04        12253         6113       1            2:30 

  End Simulation
 command: var/1, fun=  6.45575003317995652e+03
 command: var/2, fun=  1.63564174581069460e+03
 command: var/1, fun=  6.45575040569142948e+03
 command: var/2, fun=  1.63564189574861371e+03
 command: var/1, fun=  5.18665727229026561e+03
 command: var/2, fun=  1.13245627983655686e+03
 command: var/1, fun=  7.69007156338872028e+03
 command: var/2, fun=  2.13867251344625402e+03
 command: var/1, fun=  6.45574964419179196e+03
 command: var/2, fun=  1.63564165087187075e+03
 command: var/1, fun=  6.45575079467959586e+03
 command: var/2, fun=  1.63564199068743892e+03
 command: var/1, fun=  2.59514153654989786e+03
 command: var/2, fun=  5.10528491648011482e+02
 command: var/1, fun=  1.03159342971161041e+04
 command: var/2, fun=  2.79099209403377290e+03
 command: var/1, fun=  7.61218393918272523e+03
 command: var/2, fun=  2.02994225850505700e+03
 command: var/1, fun=  7.61218393918272523e+03
 command: var/2, fun=  2.02994225850505700e+03
 command: var/1, fun=  6.46654316044884490e+03
 command: var/2, fun=  1.63989275421006710e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.10000E-01  1.00000E-04        12253         6113       1            2:30 
   6.15000E-01  1.00000E-04        12353         6163       1            2:31 

  End Simulation
 command: var/1, fun=  6.46654298123889839e+03
 command: var/2, fun=  1.63989268210204614e+03
 command: var/1, fun=  6.46654333965878868e+03
 command: var/2, fun=  1.63989282631808828e+03
 command: var/1, fun=  5.24682861479267194e+03
 command: var/2, fun=  1.15591228853827306e+03
 command: var/1, fun=  7.65528962502909690e+03
 command: var/2, fun=  2.12372966869129777e+03
 command: var/1, fun=  6.46654259534857465e+03
 command: var/2, fun=  1.63989258728290474e+03
 command: var/1, fun=  6.46654372554911879e+03
 command: var/2, fun=  1.63989292113723195e+03
 command: var/1, fun=  2.67401462424959163e+03
 command: var/2, fun=  5.33695550217998402e+02
 command: var/1, fun=  1.02586618693833607e+04
 command: var/2, fun=  2.77415393481886167e+03
 command: var/1, fun=  8.05882975236157017e+03
 command: var/2, fun=  2.12080397120116868e+03
 command: var/1, fun=  8.05882975236157017e+03
 command: var/2, fun=  2.12080397120116868e+03
 command: var/1, fun=  6.48058808883131132e+03
 command: var/2, fun=  1.64435667817176386e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.15000E-01  1.00000E-04        12353         6163       1            2:31 
   6.20000E-01  1.00000E-04        12453         6213       1            2:32 

  End Simulation
 command: var/1, fun=  6.48058791074498367e+03
 command: var/2, fun=  1.64435660652286151e+03
 command: var/1, fun=  6.48058826691764079e+03
 command: var/2, fun=  1.64435674982066712e+03
 command: var/1, fun=  5.26873158379904999e+03
 command: var/2, fun=  1.16345803584019677e+03
 command: var/1, fun=  7.66205305954244614e+03
 command: var/2, fun=  2.12511324029374464e+03
 command: var/1, fun=  6.48058754635657897e+03
 command: var/2, fun=  1.64435651792414933e+03
 command: var/1, fun=  6.48058863130604277e+03
 command: var/2, fun=  1.64435683841937907e+03
 command: var/1, fun=  2.83991293423523030e+03
 command: var/2, fun=  5.81803418514159944e+02
 command: var/1, fun=  1.01208853675663886e+04
 command: var/2, fun=  2.73261043359301038e+03
 command: var/1, fun=  7.76378561374281526e+03
 command: var/2, fun=  2.02773021635523764e+03
 command: var/1, fun=  7.76378561374281526e+03
 command: var/2, fun=  2.02773021635523764e+03
 command: var/1, fun=  6.49180884371808133e+03
 command: var/2, fun=  1.64785845506810165e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.20000E-01  1.00000E-04        12453         6213       1            2:32 
   6.25000E-01  1.00000E-04        12553         6263       1            2:33 

  End Simulation
 command: var/1, fun=  6.49180866601203616e+03
 command: var/2, fun=  1.64785838357621469e+03
 command: var/1, fun=  6.49180902142412651e+03
 command: var/2, fun=  1.64785852655998974e+03
 command: var/1, fun=  5.28261012864154327e+03
 command: var/2, fun=  1.16801369632737010e+03
 command: var/1, fun=  7.67080798014176526e+03
 command: var/2, fun=  2.12756147804859575e+03
 command: var/1, fun=  6.49180832000462124e+03
 command: var/2, fun=  1.64785830036050379e+03
 command: var/1, fun=  6.49180936743153779e+03
 command: var/2, fun=  1.64785860977569860e+03
 command: var/1, fun=  2.97705120834774243e+03
 command: var/2, fun=  6.21585380572365466e+02
 command: var/1, fun=  1.00062141286143178e+04
 command: var/2, fun=  2.69803555451561033e+03
 command: var/1, fun=  7.46389306453288100e+03
 command: var/2, fun=  1.93161931043183131e+03
 command: var/1, fun=  7.46389306453288100e+03
 command: var/2, fun=  1.93161931043183131e+03
 command: var/1, fun=  6.50020212053770319e+03
 command: var/2, fun=  1.65036842232909157e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.25000E-01  1.00000E-04        12553         6263       1            2:33 
   6.30000E-01  1.00000E-04        12653         6313       1            2:35 

  End Simulation
 command: var/1, fun=  6.50020194223590261e+03
 command: var/2, fun=  1.65036835059785562e+03
 command: var/1, fun=  6.50020229883950287e+03
 command: var/2, fun=  1.65036849406032707e+03
 command: var/1, fun=  5.28683612424873263e+03
 command: var/2, fun=  1.16891684576793705e+03
 command: var/1, fun=  7.68306124469577298e+03
 command: var/2, fun=  2.13167710607120216e+03
 command: var/1, fun=  6.50020161192934484e+03
 command: var/2, fun=  1.65036827208362001e+03
 command: var/1, fun=  6.50020262914606337e+03
 command: var/2, fun=  1.65036857257456359e+03
 command: var/1, fun=  3.08682305356187680e+03
 command: var/2, fun=  6.53399764621052668e+02
 command: var/1, fun=  9.91324874567308689e+03
 command: var/2, fun=  2.66996029991009300e+03
 command: var/1, fun=  7.15699851712275540e+03
 command: var/2, fun=  1.83111251006145540e+03
 command: var/1, fun=  7.15699851712275540e+03
 command: var/2, fun=  1.83111251006145540e+03
 command: var/1, fun=  6.50572933640386873e+03
 command: var/2, fun=  1.65183320696099986e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.30000E-01  1.00000E-04        12653         6313       1            2:35 
   6.35000E-01  1.00000E-04        12754         6363       1            2:36 

  End Simulation
 command: var/1, fun=  6.50572915620039748e+03
 command: var/2, fun=  1.65183313446022453e+03
 command: var/1, fun=  6.50572951660733634e+03
 command: var/2, fun=  1.65183327946177405e+03
 command: var/1, fun=  5.27905633988819682e+03
 command: var/2, fun=  1.16521573581985331e+03
 command: var/1, fun=  7.70090572226188124e+03
 command: var/2, fun=  2.13830456840284887e+03
 command: var/1, fun=  6.50572883952103166e+03
 command: var/2, fun=  1.65183306018188250e+03
 command: var/1, fun=  6.50572983328670580e+03
 command: var/2, fun=  1.65183335374011699e+03
 command: var/1, fun=  3.17104642792150389e+03
 command: var/2, fun=  6.77728509305090711e+02
 command: var/1, fun=  9.84009485732051689e+03
 command: var/2, fun=  2.64776442520238061e+03
 command: var/1, fun=  6.96699433486836460e+03
 command: var/2, fun=  1.76683420413792601e+03
 command: var/1, fun=  6.96699433486836460e+03
 command: var/2, fun=  1.76683420413792601e+03
 command: var/1, fun=  6.50945944568921004e+03
 command: var/2, fun=  1.65260966034335911e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.35000E-01  1.00000E-04        12754         6363       1            2:36 
   6.40000E-01  1.00000E-04        12856         6413       1            2:37 

  End Simulation
 command: var/1, fun=  6.50945926250065713e+03
 command: var/2, fun=  1.65260958663300994e+03
 command: var/1, fun=  6.50945962887776022e+03
 command: var/2, fun=  1.65260973405370783e+03
 command: var/1, fun=  5.26187514807282787e+03
 command: var/2, fun=  1.15787236993533338e+03
 command: var/1, fun=  7.72395164836417098e+03
 command: var/2, fun=  2.14719583636425614e+03
 command: var/1, fun=  6.50945895871730681e+03
 command: var/2, fun=  1.65260951649656681e+03
 command: var/1, fun=  6.50945993266111236e+03
 command: var/2, fun=  1.65260980419015186e+03
 command: var/1, fun=  3.24129391904668319e+03
 command: var/2, fun=  6.97928788754283801e+02
 command: var/1, fun=  9.77732003438147149e+03
 command: var/2, fun=  2.62860771163717800e+03
 command: var/1, fun=  7.43202932747311570e+03
 command: var/2, fun=  1.92547958898195839e+03
 command: var/1, fun=  7.43202932747311570e+03
 command: var/2, fun=  1.92547958898195839e+03
 command: var/1, fun=  6.51741163358964877e+03
 command: var/2, fun=  1.65506127596943020e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.40000E-01  1.00000E-04        12856         6413       1            2:37 
   6.45000E-01  1.00000E-04        12974         6470       1            2:38 

  End Simulation
 command: var/1, fun=  6.51741145033483735e+03
 command: var/2, fun=  1.65506120223431708e+03
 command: var/1, fun=  6.51741181684445837e+03
 command: var/2, fun=  1.65506134970454309e+03
 command: var/1, fun=  5.26936173796388175e+03
 command: var/2, fun=  1.16015764430982745e+03
 command: var/1, fun=  7.73233136670911426e+03
 command: var/2, fun=  2.14981348278939686e+03
 command: var/1, fun=  6.51741116044795490e+03
 command: var/2, fun=  1.65506113620714746e+03
 command: var/1, fun=  6.51741210673133901e+03
 command: var/2, fun=  1.65506141573171158e+03
 command: var/1, fun=  3.34206757409703141e+03
 command: var/2, fun=  7.27198653055815271e+02
 command: var/1, fun=  9.69246773801851668e+03
 command: var/2, fun=  2.60305620152950087e+03
 command: var/1, fun=  7.21595315094552916e+03
 command: var/2, fun=  1.86123936767621444e+03
 command: var/1, fun=  7.21595315094552916e+03
 command: var/2, fun=  1.86123936767621444e+03
 command: var/1, fun=  6.52341332041602254e+03
 command: var/2, fun=  1.65690832545713783e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.45000E-01  1.00000E-04        12974         6470       1            2:38 
   6.50000E-01  1.00000E-04        13074         6520       1            2:39 

  End Simulation
 command: var/1, fun=  6.52341313707292557e+03
 command: var/2, fun=  1.65690825168781453e+03
 command: var/1, fun=  6.52341350375911770e+03
 command: var/2, fun=  1.65690839922646001e+03
 command: var/1, fun=  5.27474365632968784e+03
 command: var/2, fun=  1.16177496607331636e+03
 command: var/1, fun=  7.73890324580536071e+03
 command: var/2, fun=  2.15188996172381576e+03
 command: var/1, fun=  6.52341285778454221e+03
 command: var/2, fun=  1.65690818879895960e+03
 command: var/1, fun=  6.52341378304749651e+03
 command: var/2, fun=  1.65690846211531448e+03
 command: var/1, fun=  3.41860839379548815e+03
 command: var/2, fun=  7.49439944526778959e+02
 command: var/1, fun=  9.62794287707512376e+03
 command: var/2, fun=  2.58363492152600884e+03
 command: var/1, fun=  7.03848760970447529e+03
 command: var/2, fun=  1.80914623474616042e+03
 command: var/1, fun=  7.03848760970447529e+03
 command: var/2, fun=  1.80914623474616042e+03
 command: var/1, fun=  6.52783364281006834e+03
 command: var/2, fun=  1.65827478434153613e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.50000E-01  1.00000E-04        13074         6520       1            2:39 
   6.55000E-01  1.00000E-04        13174         6570       1            2:41 

  End Simulation
 command: var/1, fun=  6.52783345944414577e+03
 command: var/2, fun=  1.65827471056413629e+03
 command: var/1, fun=  6.52783382617598909e+03
 command: var/2, fun=  1.65827485811893598e+03
 command: var/1, fun=  5.27900332645359413e+03
 command: var/2, fun=  1.16308714317266413e+03
 command: var/1, fun=  7.74347064087777107e+03
 command: var/2, fun=  2.15331055281935505e+03
 command: var/1, fun=  6.52783318788548604e+03
 command: var/2, fun=  1.65827464995947071e+03
 command: var/1, fun=  6.52783409773465610e+03
 command: var/2, fun=  1.65827491872360406e+03
 command: var/1, fun=  3.47475329132169736e+03
 command: var/2, fun=  7.65764505182015910e+02
 command: var/1, fun=  9.58064767663137172e+03
 command: var/2, fun=  2.56941005177907709e+03
 command: var/1, fun=  6.87886263743701875e+03
 command: var/2, fun=  1.76197613365837447e+03
 command: var/1, fun=  6.87886263743701875e+03
 command: var/2, fun=  1.76197613365837447e+03
 command: var/1, fun=  6.53084192411212098e+03
 command: var/2, fun=  1.65920524991666366e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.55000E-01  1.00000E-04        13174         6570       1            2:41 
   6.60000E-01  1.00000E-04        13793         6746       1            2:46 

  End Simulation
 command: var/1, fun=  6.53084174073159465e+03
 command: var/2, fun=  1.65920517613414563e+03
 command: var/1, fun=  6.53084210749264457e+03
 command: var/2, fun=  1.65920532369918169e+03
 command: var/1, fun=  5.28190880096527781e+03
 command: var/2, fun=  1.16398321222888944e+03
 command: var/1, fun=  7.74657299066094947e+03
 command: var/2, fun=  2.15427531463821788e+03
 command: var/1, fun=  6.53084147443884922e+03
 command: var/2, fun=  1.65920511708549861e+03
 command: var/1, fun=  6.53084237378538728e+03
 command: var/2, fun=  1.65920538274782757e+03
 command: var/1, fun=  3.51300560876455165e+03
 command: var/2, fun=  7.76890121915014106e+02
 command: var/1, fun=  9.54841800433877142e+03
 command: var/2, fun=  2.55971980761415443e+03
 command: var/1, fun=  6.74827982079017147e+03
 command: var/2, fun=  1.72347456540861822e+03
 command: var/1, fun=  6.74827982079017147e+03
 command: var/2, fun=  1.72347456540861822e+03
 command: var/1, fun=  6.53270436585676907e+03
 command: var/2, fun=  1.65978253092715863e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.60000E-01  1.00000E-04        13793         6746       1            2:46 
   6.65000E-01  1.00000E-04        14280         6899       1            2:50 

  End Simulation
 command: var/1, fun=  6.53270418247586622e+03
 command: var/2, fun=  1.65978245714498667e+03
 command: var/1, fun=  6.53270454923766920e+03
 command: var/2, fun=  1.65978260470933037e+03
 command: var/1, fun=  5.28376833690585045e+03
 command: var/2, fun=  1.16456279246907798e+03
 command: var/1, fun=  7.74843764320704759e+03
 command: var/2, fun=  2.15485024878233116e+03
 command: var/1, fun=  6.53270391942750848e+03
 command: var/2, fun=  1.65978239905405599e+03
 command: var/1, fun=  6.53270481228603512e+03
 command: var/2, fun=  1.65978266280026332e+03
 command: var/1, fun=  3.53664008410665929e+03
 command: var/2, fun=  7.83766189022007552e+02
 command: var/1, fun=  9.52851213537554941e+03
 command: var/2, fun=  2.55373699188355977e+03
 command: var/1, fun=  6.64624756078973041e+03
 command: var/2, fun=  1.69340782596095073e+03
 command: var/1, fun=  6.64624756078973041e+03
 command: var/2, fun=  1.69340782596095073e+03
 command: var/1, fun=  6.53367731533415281e+03
 command: var/2, fun=  1.66008545252081080e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.65000E-01  1.00000E-04        14280         6899       1            2:50 
   6.70000E-01  1.00000E-04        14712         7033       1            2:54 

  End Simulation
 command: var/1, fun=  6.53367713196365185e+03
 command: var/2, fun=  1.66008537874311833e+03
 command: var/1, fun=  6.53367749870465286e+03
 command: var/2, fun=  1.66008552629850305e+03
 command: var/1, fun=  5.28481406399089883e+03
 command: var/2, fun=  1.16489576981753839e+03
 command: var/1, fun=  7.74934321980744244e+03
 command: var/2, fun=  2.15512310742065529e+03
 command: var/1, fun=  6.53367687058810134e+03
 command: var/2, fun=  1.66008532114479863e+03
 command: var/1, fun=  6.53367776008020792e+03
 command: var/2, fun=  1.66008558389682526e+03
 command: var/1, fun=  3.54890982807381124e+03
 command: var/2, fun=  7.87337087131582393e+02
 command: var/1, fun=  9.51819021166567472e+03
 command: var/2, fun=  2.55063605241728010e+03
 command: var/1, fun=  6.57001478377086914e+03
 command: var/2, fun=  1.67079622230375003e+03
 command: var/1, fun=  6.57001478377086914e+03
 command: var/2, fun=  1.67079622230375003e+03
 command: var/1, fun=  6.53398802981805966e+03
 command: var/2, fun=  1.66018139035962258e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.70000E-01  1.00000E-04        14712         7033       1            2:54 
   6.75000E-01  1.00000E-04        15035         7142       1            2:57 

  End Simulation
 command: var/1, fun=  6.53398784644429179e+03
 command: var/2, fun=  1.66018131658068796e+03
 command: var/1, fun=  6.53398821319182753e+03
 command: var/2, fun=  1.66018146413855698e+03
 command: var/1, fun=  5.28510183760481868e+03
 command: var/2, fun=  1.16498337069249737e+03
 command: var/1, fun=  7.74967501584262118e+03
 command: var/2, fun=  2.15522736893143065e+03
 command: var/1, fun=  6.53398758561739214e+03
 command: var/2, fun=  1.66018125914468533e+03
 command: var/1, fun=  6.53398847401873445e+03
 command: var/2, fun=  1.66018152157456188e+03
 command: var/1, fun=  3.55288082189222177e+03
 command: var/2, fun=  7.88492339652654323e+02
 command: var/1, fun=  9.51484126777783604e+03
 command: var/2, fun=  2.54962941053428403e+03
 command: var/1, fun=  6.52071693923926796e+03
 command: var/2, fun=  1.65625153090439562e+03
 command: var/1, fun=  6.52071693923926796e+03
 command: var/2, fun=  1.65625153090439562e+03
 command: var/1, fun=  6.53387432634764718e+03
 command: var/2, fun=  1.66014596342754476e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.75000E-01  1.00000E-04        15035         7142       1            2:57 
   6.80000E-01  2.13822E-05        15911         7391       1            3:05 

  End Simulation
 command: var/1, fun=  6.53387414297247597e+03
 command: var/2, fun=  1.66014588964801010e+03
 command: var/1, fun=  6.53387450972281931e+03
 command: var/2, fun=  1.66014603720707942e+03
 command: var/1, fun=  5.28497829497754446e+03
 command: var/2, fun=  1.16494391316084875e+03
 command: var/1, fun=  7.74957041635444784e+03
 command: var/2, fun=  2.15519597312255064e+03
 command: var/1, fun=  6.53387388195043513e+03
 command: var/2, fun=  1.66014583215456355e+03
 command: var/1, fun=  6.53387477074486105e+03
 command: var/2, fun=  1.66014609470052665e+03
 command: var/1, fun=  3.55144803952467691e+03
 command: var/2, fun=  7.88075312713205449e+02
 command: var/1, fun=  9.51604641949860707e+03
 command: var/2, fun=  2.54999142285640846e+03
 command: var/1, fun=  6.49690869110581025e+03
 command: var/2, fun=  1.64923152528355899e+03
 command: var/1, fun=  6.49690869110581025e+03
 command: var/2, fun=  1.64923152528355899e+03
 command: var/1, fun=  6.53355796632530019e+03
 command: var/2, fun=  1.66004792268171900e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.80000E-01  2.13822E-05        15911         7391       1            3:05 
   6.85000E-01  6.36369E-05        16688         7629       1            3:12 

  End Simulation
 command: var/1, fun=  6.53355778295050641e+03
 command: var/2, fun=  1.66004784890225392e+03
 command: var/1, fun=  6.53355814970009123e+03
 command: var/2, fun=  1.66004799646118431e+03
 command: var/1, fun=  5.28466465264627277e+03
 command: var/2, fun=  1.16484634511643890e+03
 command: var/1, fun=  7.74925162941898725e+03
 command: var/2, fun=  2.15509746829584901e+03
 command: var/1, fun=  6.53355752137626405e+03
 command: var/2, fun=  1.66004779124576567e+03
 command: var/1, fun=  6.53355841127433450e+03
 command: var/2, fun=  1.66004805411767279e+03
 command: var/1, fun=  3.54742817461982077e+03
 command: var/2, fun=  7.86905633703126568e+02
 command: var/1, fun=  9.51943293577214536e+03
 command: var/2, fun=  2.55100910378807839e+03
 command: var/1, fun=  6.49248143524537227e+03
 command: var/2, fun=  1.64791327656411022e+03
 command: var/1, fun=  6.49248143524537227e+03
 command: var/2, fun=  1.64791327656411022e+03
 command: var/1, fun=  6.53320629839620142e+03
 command: var/2, fun=  1.65993883179422664e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.85000E-01  6.36369E-05        16688         7629       1            3:12 
   6.90000E-01  1.00000E-04        17286         7803       1            3:17 

  End Simulation
 command: var/1, fun=  6.53320611502091742e+03
 command: var/2, fun=  1.65993875801446802e+03
 command: var/1, fun=  6.53320648177148269e+03
 command: var/2, fun=  1.65993890557398481e+03
 command: var/1, fun=  5.28430959248197451e+03
 command: var/2, fun=  1.16473528913633345e+03
 command: var/1, fun=  7.74890317905558641e+03
 command: var/2, fun=  2.15499035055710328e+03
 command: var/1, fun=  6.53320585283490982e+03
 command: var/2, fun=  1.65993870017745462e+03
 command: var/1, fun=  6.53320674395749302e+03
 command: var/2, fun=  1.65993896341099935e+03
 command: var/1, fun=  3.54296737434530314e+03
 command: var/2, fun=  7.85607620860873794e+02
 command: var/1, fun=  9.52318970185492799e+03
 command: var/2, fun=  2.55213800033693678e+03
 command: var/1, fun=  6.50102565349956967e+03
 command: var/2, fun=  1.65045033639084295e+03
 command: var/1, fun=  6.50102565349956967e+03
 command: var/2, fun=  1.65045033639084295e+03
 command: var/1, fun=  6.53293098235667003e+03
 command: var/2, fun=  1.65985374264904362e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.90000E-01  1.00000E-04        17286         7803       1            3:17 
   6.95000E-01  6.54297E-05        17701         7925       1            3:21 

  End Simulation
 command: var/1, fun=  6.53293079898355791e+03
 command: var/2, fun=  1.65985366887009218e+03
 command: var/1, fun=  6.53293116572978124e+03
 command: var/2, fun=  1.65985381642799507e+03
 command: var/1, fun=  5.28404954190688750e+03
 command: var/2, fun=  1.16465562152125517e+03
 command: var/1, fun=  7.74861385208297179e+03
 command: var/2, fun=  2.15489985045425283e+03
 command: var/1, fun=  6.53293053631312250e+03
 command: var/2, fun=  1.65985361088984132e+03
 command: var/1, fun=  6.53293142840022301e+03
 command: var/2, fun=  1.65985387440824752e+03
 command: var/1, fun=  3.53945539243244139e+03
 command: var/2, fun=  7.84585915684401925e+02
 command: var/1, fun=  9.52615050097572021e+03
 command: var/2, fun=  2.55302796941940414e+03
 command: var/1, fun=  6.51669625793533305e+03
 command: var/2, fun=  1.65506911705477660e+03
 command: var/1, fun=  6.51669625793533305e+03
 command: var/2, fun=  1.65506911705477660e+03
 command: var/1, fun=  6.53279210782784139e+03
 command: var/2, fun=  1.65981086496704620e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.95000E-01  6.54297E-05        17701         7925       1            3:21 
   7.00000E-01  1.00000E-04        18035         8030       1            3:24 

  End Simulation
 command: var/1, fun=  6.53279192445616445e+03
 command: var/2, fun=  1.65981079118864045e+03
 command: var/1, fun=  6.53279229119951469e+03
 command: var/2, fun=  1.65981093874545218e+03
 command: var/1, fun=  5.28392075600765565e+03
 command: var/2, fun=  1.16461640617192938e+03
 command: var/1, fun=  7.74846570713691381e+03
 command: var/2, fun=  2.15485331634081376e+03
 command: var/1, fun=  6.53279166154065479e+03
 command: var/2, fun=  1.65981073313588786e+03
 command: var/1, fun=  6.53279255411503163e+03
 command: var/2, fun=  1.65981099679820682e+03
 command: var/1, fun=  3.53768133815754936e+03
 command: var/2, fun=  7.84069842306309056e+02
 command: var/1, fun=  9.52764652774909155e+03
 command: var/2, fun=  2.55347769056084735e+03
 command: var/1, fun=  6.53471386422751220e+03
 command: var/2, fun=  1.66038076976919774e+03
 command: var/1, fun=  6.53471386422751220e+03
 command: var/2, fun=  1.66038076976919774e+03
 command: var/1, fun=  6.53280858995538892e+03
 command: var/2, fun=  1.65981601334699735e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.00000E-01  1.00000E-04        18035         8030       1            3:24 
   7.05000E-01  2.58209E-05        18565         8183       1            3:29 

  End Simulation
 command: var/1, fun=  6.53280840658402758e+03
 command: var/2, fun=  1.65981593956872371e+03
 command: var/1, fun=  6.53280877332674754e+03
 command: var/2, fun=  1.65981608712527122e+03
 command: var/1, fun=  5.28393944191599985e+03
 command: var/2, fun=  1.16462244076400884e+03
 command: var/1, fun=  7.74848015241042958e+03
 command: var/2, fun=  2.15485757861771935e+03
 command: var/1, fun=  6.53280814369654581e+03
 command: var/2, fun=  1.65981588152420886e+03
 command: var/1, fun=  6.53280903621423295e+03
 command: var/2, fun=  1.65981614516978652e+03
 command: var/1, fun=  3.53788807616688246e+03
 command: var/2, fun=  7.84130018343713687e+02
 command: var/1, fun=  9.52747278640213153e+03
 command: var/2, fun=  2.55342550548115241e+03
 command: var/1, fun=  6.55021104811012083e+03
 command: var/2, fun=  1.66497122519414734e+03
 command: var/1, fun=  6.55021104811012083e+03
 command: var/2, fun=  1.66497122519414734e+03
 command: var/1, fun=  6.53295776798007773e+03
 command: var/2, fun=  1.65986251222967053e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.05000E-01  2.58209E-05        18565         8183       1            3:29 
   7.10000E-01  5.11189E-05        19080         8336       1            3:33 

  End Simulation
 command: var/1, fun=  6.53295758461075729e+03
 command: var/2, fun=  1.65986243845226477e+03
 command: var/1, fun=  6.53295795134939544e+03
 command: var/2, fun=  1.65986258600707652e+03
 command: var/1, fun=  5.28410291394132128e+03
 command: var/2, fun=  1.16467476557309396e+03
 command: var/1, fun=  7.74861610847142219e+03
 command: var/2, fun=  2.15489825121616695e+03
 command: var/1, fun=  6.53295732197876259e+03
 command: var/2, fun=  1.65986238048293558e+03
 command: var/1, fun=  6.53295821398139105e+03
 command: var/2, fun=  1.65986264397640639e+03
 command: var/1, fun=  3.53976562471313810e+03
 command: var/2, fun=  7.84676466362033466e+02
 command: var/1, fun=  9.52589388821139619e+03
 command: var/2, fun=  2.55295119598421888e+03
 command: var/1, fun=  6.55950059483190307e+03
 command: var/2, fun=  1.66770521509329683e+03
 command: var/1, fun=  6.55950059483190307e+03
 command: var/2, fun=  1.66770521509329683e+03
 command: var/1, fun=  6.53318503301584224e+03
 command: var/2, fun=  1.65993300510098629e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.10000E-01  5.11189E-05        19080         8336       1            3:33 
   7.15000E-01  1.00000E-04        19425         8447       1            3:36 

  End Simulation
 command: var/1, fun=  6.53318484964680465e+03
 command: var/2, fun=  1.65993293132375538e+03
 command: var/1, fun=  6.53318521638487891e+03
 command: var/2, fun=  1.65993307887821743e+03
 command: var/1, fun=  5.28433211967152965e+03
 command: var/2, fun=  1.16474643062702921e+03
 command: var/1, fun=  7.74884152616768733e+03
 command: var/2, fun=  2.15496756663905990e+03
 command: var/1, fun=  6.53318458741019185e+03
 command: var/2, fun=  1.65993287347110345e+03
 command: var/1, fun=  6.53318547862149080e+03
 command: var/2, fun=  1.65993313673086936e+03
 command: var/1, fun=  3.54264837636807579e+03
 command: var/2, fun=  7.85515271196022468e+02
 command: var/1, fun=  9.52346611846483756e+03
 command: var/2, fun=  2.55222163442146302e+03
 command: var/1, fun=  6.56288838080034111e+03
 command: var/2, fun=  1.66869301383064681e+03
 command: var/1, fun=  6.56288838080034111e+03
 command: var/2, fun=  1.66869301383064681e+03
 command: var/1, fun=  6.53343913183826498e+03
 command: var/2, fun=  1.66001154062443038e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.15000E-01  1.00000E-04        19425         8447       1            3:36 
   7.20000E-01  1.00000E-04        20106         8643       1            3:42 

  End Simulation
 command: var/1, fun=  6.53343894846723560e+03
 command: var/2, fun=  1.66001146684646051e+03
 command: var/1, fun=  6.53343931520929073e+03
 command: var/2, fun=  1.66001161440240048e+03
 command: var/1, fun=  5.28457222748895583e+03
 command: var/2, fun=  1.16482000053854813e+03
 command: var/1, fun=  7.74910846579760437e+03
 command: var/2, fun=  2.15505105804033565e+03
 command: var/1, fun=  6.53343868667773768e+03
 command: var/2, fun=  1.66001140912601022e+03
 command: var/1, fun=  6.53343957699879684e+03
 command: var/2, fun=  1.66001167212285236e+03
 command: var/1, fun=  3.54588987428470955e+03
 command: var/2, fun=  7.86458307269084912e+02
 command: var/1, fun=  9.52073332602423216e+03
 command: var/2, fun=  2.55140022026974839e+03
 command: var/1, fun=  6.56172418430324251e+03
 command: var/2, fun=  1.66838032874081819e+03
 command: var/1, fun=  6.56172418430324251e+03
 command: var/2, fun=  1.66838032874081819e+03
 command: var/1, fun=  6.53368140603180655e+03
 command: var/2, fun=  1.66008688425163882e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.20000E-01  1.00000E-04        20106         8643       1            3:42 
   7.25000E-01  1.00000E-04        20744         8825       1            3:47 

  End Simulation
 command: var/1, fun=  6.53368122266263890e+03
 command: var/2, fun=  1.66008681047448817e+03
 command: var/1, fun=  6.53368158940097601e+03
 command: var/2, fun=  1.66008695802878992e+03
 command: var/1, fun=  5.28482749802418766e+03
 command: var/2, fun=  1.16490083767066244e+03
 command: var/1, fun=  7.74933869146335383e+03
 command: var/2, fun=  2.15512090515007958e+03
 command: var/1, fun=  6.53368096129132846e+03
 command: var/2, fun=  1.66008675287727010e+03
 command: var/1, fun=  6.53368185077228554e+03
 command: var/2, fun=  1.66008701562600822e+03
 command: var/1, fun=  3.54895130314789139e+03
 command: var/2, fun=  7.87349255847522272e+02
 command: var/1, fun=  9.51815692433913864e+03
 command: var/2, fun=  2.55062617071276463e+03
 command: var/1, fun=  6.55589336789852314e+03
 command: var/2, fun=  1.66664996864694990e+03
 command: var/1, fun=  6.55589336789852314e+03
 command: var/2, fun=  1.66664996864694990e+03
 command: var/1, fun=  6.53387153908550135e+03
 command: var/2, fun=  1.66014586636827721e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.25000E-01  1.00000E-04        20744         8825       1            3:47 
   7.30000E-01  2.03125E-05        21042         8914       1            3:50 

  End Simulation
 command: var/1, fun=  6.53387135571658473e+03
 command: var/2, fun=  1.66014579259127959e+03
 command: var/1, fun=  6.53387172245441616e+03
 command: var/2, fun=  1.66014594014527484e+03
 command: var/1, fun=  5.28501938153883111e+03
 command: var/2, fun=  1.16496084982520892e+03
 command: var/1, fun=  7.74952716199193674e+03
 command: var/2, fun=  2.15517885285363855e+03
 command: var/1, fun=  6.53387109467610298e+03
 command: var/2, fun=  1.66014573509168713e+03
 command: var/1, fun=  6.53387198349489427e+03
 command: var/2, fun=  1.66014599764486661e+03
 command: var/1, fun=  3.55136351125656165e+03
 command: var/2, fun=  7.88051187313610967e+02
 command: var/1, fun=  9.51612535940547059e+03
 command: var/2, fun=  2.55001571307279937e+03
 command: var/1, fun=  6.54646492149830192e+03
 command: var/2, fun=  1.66385868624117870e+03
 command: var/1, fun=  6.54646492149830192e+03
 command: var/2, fun=  1.66385868624117870e+03
 command: var/1, fun=  6.53397923250140320e+03
 command: var/2, fun=  1.66017913762827038e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.30000E-01  2.03125E-05        21042         8914       1            3:50 
   7.35000E-01  1.00000E-04        21491         9059       1            3:54 

  End Simulation
 command: var/1, fun=  6.53397904913151160e+03
 command: var/2, fun=  1.66017906385090578e+03
 command: var/1, fun=  6.53397941587129662e+03
 command: var/2, fun=  1.66017921140563567e+03
 command: var/1, fun=  5.28512020780813054e+03
 command: var/2, fun=  1.16499165254142963e+03
 command: var/1, fun=  7.74964116229533829e+03
 command: var/2, fun=  2.15521458830859683e+03
 command: var/1, fun=  6.53397878828086414e+03
 command: var/2, fun=  1.66017900640745825e+03
 command: var/1, fun=  6.53397967672194409e+03
 command: var/2, fun=  1.66017926884908320e+03
 command: var/1, fun=  3.55273868521713439e+03
 command: var/2, fun=  7.88451271378843671e+02
 command: var/1, fun=  9.51496578722895720e+03
 command: var/2, fun=  2.54966718015962351e+03
 command: var/1, fun=  6.53438816059536475e+03
 command: var/2, fun=  1.66030533760694220e+03
 command: var/1, fun=  6.53438816059536475e+03
 command: var/2, fun=  1.66030533760694220e+03
 command: var/1, fun=  6.53398279840128544e+03
 command: var/2, fun=  1.66018033521491316e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.35000E-01  1.00000E-04        21491         9059       1            3:54 
   7.40000E-01  1.00000E-04        22096         9233       1            3:59 

  End Simulation
 command: var/1, fun=  6.53398261503214235e+03
 command: var/2, fun=  1.66018026143785369e+03
 command: var/1, fun=  6.53398298177042670e+03
 command: var/2, fun=  1.66018040899197263e+03
 command: var/1, fun=  5.28512903242790071e+03
 command: var/2, fun=  1.16499489897691342e+03
 command: var/1, fun=  7.74963987681118488e+03
 command: var/2, fun=  2.15521373820832196e+03
 command: var/1, fun=  6.53398235418608510e+03
 command: var/2, fun=  1.66018020399567649e+03
 command: var/1, fun=  6.53398324261649122e+03
 command: var/2, fun=  1.66018046643415209e+03
 command: var/1, fun=  3.55277807606661327e+03
 command: var/2, fun=  7.88462790151050626e+02
 command: var/1, fun=  9.51493353425703754e+03
 command: var/2, fun=  2.54965755664440303e+03
 command: var/1, fun=  6.52031429393205781e+03
 command: var/2, fun=  1.65613197369697491e+03
 command: var/1, fun=  6.52031429393205781e+03
 command: var/2, fun=  1.65613197369697491e+03
 command: var/1, fun=  6.53386567956069575e+03
 command: var/2, fun=  1.66014383026023256e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.40000E-01  1.00000E-04        22096         9233       1            3:59 
   7.45000E-01  1.00000E-04        22404         9331       1            4:02 

  End Simulation
 command: var/1, fun=  6.53386549618999106e+03
 command: var/2, fun=  1.66014375648250734e+03
 command: var/1, fun=  6.53386586293140135e+03
 command: var/2, fun=  1.66014390403795733e+03
 command: var/1, fun=  5.28500097905101211e+03
 command: var/2, fun=  1.16495393172871627e+03
 command: var/1, fun=  7.74953287319353785e+03
 command: var/2, fun=  2.15518169589602394e+03
 command: var/1, fun=  6.53386523514318560e+03
 command: var/2, fun=  1.66014369898124937e+03
 command: var/1, fun=  6.53386612397821045e+03
 command: var/2, fun=  1.66014396153921734e+03
 command: var/1, fun=  3.55130315639265609e+03
 command: var/2, fun=  7.88033490228111418e+02
 command: var/1, fun=  9.51617398596754720e+03
 command: var/2, fun=  2.55003016239526596e+03
 command: var/1, fun=  6.50663601450235910e+03
 command: var/2, fun=  1.65210946718526679e+03
 command: var/1, fun=  6.50663601450235910e+03
 command: var/2, fun=  1.65210946718526679e+03
 command: var/1, fun=  6.53363271468847597e+03
 command: var/2, fun=  1.66007173073512922e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.45000E-01  1.00000E-04        22404         9331       1            4:02 
   7.50000E-01  1.00000E-04        22504         9381       1            4:03 

  End Simulation
 command: var/1, fun=  6.53363253131884358e+03
 command: var/2, fun=  1.66007165695777644e+03
 command: var/1, fun=  6.53363289805810837e+03
 command: var/2, fun=  1.66007180451248087e+03
 command: var/1, fun=  5.28477556070302762e+03
 command: var/2, fun=  1.16488433385726762e+03
 command: var/1, fun=  7.74929300639244411e+03
 command: var/2, fun=  2.15510710238497313e+03
 command: var/1, fun=  6.53363226986367499e+03
 command: var/2, fun=  1.66007159933585717e+03
 command: var/1, fun=  6.53363315951327240e+03
 command: var/2, fun=  1.66007186213439923e+03
 command: var/1, fun=  3.54833671785202068e+03
 command: var/2, fun=  7.87170388633662014e+02
 command: var/1, fun=  9.51867403087496859e+03
 command: var/2, fun=  2.55078151961269577e+03
 command: var/1, fun=  6.49298814722816223e+03
 command: var/2, fun=  1.64806531731982818e+03
 command: var/1, fun=  6.49298814722816223e+03
 command: var/2, fun=  1.64806531731982818e+03
 command: var/1, fun=  6.53328476291566221e+03
 command: var/2, fun=  1.65996380289306353e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.50000E-01  1.00000E-04        22504         9381       1            4:03 
   7.55000E-01  1.00000E-04        22604         9431       1            4:05 

  End Simulation
 command: var/1, fun=  6.53328457954563237e+03
 command: var/2, fun=  1.65996372911545677e+03
 command: var/1, fun=  6.53328494628569024e+03
 command: var/2, fun=  1.65996387667066938e+03
 command: var/1, fun=  5.28442487703329334e+03
 command: var/2, fun=  1.16477470421095882e+03
 command: var/1, fun=  7.74894766218246968e+03
 command: var/2, fun=  2.15500088446627478e+03
 command: var/1, fun=  6.53328431748495768e+03
 command: var/2, fun=  1.65996367131484931e+03
 command: var/1, fun=  6.53328520834636583e+03
 command: var/2, fun=  1.65996393447127798e+03
 command: var/1, fun=  3.54392223892776883e+03
 command: var/2, fun=  7.85885852816829811e+02
 command: var/1, fun=  9.52239191535535247e+03
 command: var/2, fun=  2.55189873245915032e+03
 command: var/1, fun=  6.47963140809743072e+03
 command: var/2, fun=  1.64411588216080577e+03
 command: var/1, fun=  6.47963140809743072e+03
 command: var/2, fun=  1.64411588216080577e+03
 command: var/1, fun=  6.53282538045004731e+03
 command: var/2, fun=  1.65982132773341209e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.55000E-01  1.00000E-04        22604         9431       1            4:05 
   7.60000E-01  1.00000E-04        22704         9481       1            4:06 

  End Simulation
 command: var/1, fun=  6.53282519707957636e+03
 command: var/2, fun=  1.65982125395550338e+03
 command: var/1, fun=  6.53282556382052007e+03
 command: var/2, fun=  1.65982140151132126e+03
 command: var/1, fun=  5.28396245763584648e+03
 command: var/2, fun=  1.16463020370739036e+03
 command: var/1, fun=  7.74849119671530570e+03
 command: var/2, fun=  2.15486044550556517e+03
 command: var/1, fun=  6.53282493421942854e+03
 command: var/2, fun=  1.65982119591895753e+03
 command: var/1, fun=  6.53282582668067334e+03
 command: var/2, fun=  1.65982145954786893e+03
 command: var/1, fun=  3.53809422627662207e+03
 command: var/2, fun=  7.84190066413937416e+02
 command: var/1, fun=  9.52730024953697466e+03
 command: var/2, fun=  2.55337373448040216e+03
 command: var/1, fun=  6.46632392788751895e+03
 command: var/2, fun=  1.64017968952625301e+03
 command: var/1, fun=  6.46632392788751895e+03
 command: var/2, fun=  1.64017968952625301e+03
 command: var/1, fun=  6.53225588416657229e+03
 command: var/2, fun=  1.65964471882314751e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.60000E-01  1.00000E-04        22704         9481       1            4:06 
   7.65000E-01  1.00000E-04        22804         9531       1            4:07 

  End Simulation
 command: var/1, fun=  6.53225570079561203e+03
 command: var/2, fun=  1.65964464504488819e+03
 command: var/1, fun=  6.53225606753753164e+03
 command: var/2, fun=  1.65964479260140729e+03
 command: var/1, fun=  5.28338962378072483e+03
 command: var/2, fun=  1.16445125017102851e+03
 command: var/1, fun=  7.74792492246448819e+03
 command: var/2, fun=  2.15468619478026403e+03
 command: var/1, fun=  6.53225543694441239e+03
 command: var/2, fun=  1.65964458671585930e+03
 command: var/1, fun=  6.53225633138873218e+03
 command: var/2, fun=  1.65964485093043641e+03
 command: var/1, fun=  3.53087007374352288e+03
 command: var/2, fun=  7.82088137145823794e+02
 command: var/1, fun=  9.53338427489767491e+03
 command: var/2, fun=  2.55520213599321551e+03
 command: var/1, fun=  6.45298138104002737e+03
 command: var/2, fun=  1.63623185697906069e+03
 command: var/1, fun=  6.45298138104002737e+03
 command: var/2, fun=  1.63623185697906069e+03
 command: var/1, fun=  6.53157684435010469e+03
 command: var/2, fun=  1.65943415942009369e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.65000E-01  1.00000E-04        22804         9531       1            4:07 
   7.70000E-01  1.00000E-04        22904         9581       1            4:08 

  End Simulation
 command: var/1, fun=  6.53157666097861329e+03
 command: var/2, fun=  1.65943408564143647e+03
 command: var/1, fun=  6.53157702772159791e+03
 command: var/2, fun=  1.65943423319875160e+03
 command: var/1, fun=  5.28270694837873452e+03
 command: var/2, fun=  1.16423802908405264e+03
 command: var/1, fun=  7.74724940713001524e+03
 command: var/2, fun=  2.15447831331018915e+03
 command: var/1, fun=  6.53157639594590910e+03
 command: var/2, fun=  1.65943402696371277e+03
 command: var/1, fun=  6.53157729275430665e+03
 command: var/2, fun=  1.65943429187647689e+03
 command: var/1, fun=  3.52225785462628482e+03
 command: var/2, fun=  7.79582471328339125e+02
 command: var/1, fun=  9.54063705855981971e+03
 command: var/2, fun=  2.55738190934288559e+03
 command: var/1, fun=  6.43955234084834046e+03
 command: var/2, fun=  1.63225721280611947e+03
 command: var/1, fun=  6.43955234084834046e+03
 command: var/2, fun=  1.63225721280611947e+03
 command: var/1, fun=  6.53078837247141837e+03
 command: var/2, fun=  1.65918969172480502e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.70000E-01  1.00000E-04        22904         9581       1            4:08 
   7.75000E-01  1.00000E-04        23004         9631       1            4:10 

  End Simulation
 command: var/1, fun=  6.53078818909934944e+03
 command: var/2, fun=  1.65918961794570259e+03
 command: var/1, fun=  6.53078855584348639e+03
 command: var/2, fun=  1.65918976550390789e+03
 command: var/1, fun=  5.28191454420993978e+03
 command: var/2, fun=  1.16399058354450835e+03
 command: var/1, fun=  7.74646476092427929e+03
 command: var/2, fun=  2.15423684239601744e+03
 command: var/1, fun=  6.53078792269502537e+03
 command: var/2, fun=  1.65918955886317099e+03
 command: var/1, fun=  6.53078882224780500e+03
 command: var/2, fun=  1.65918982458643745e+03
 command: var/1, fun=  3.51225997744406277e+03
 command: var/2, fun=  7.76673837804486652e+02
 command: var/1, fun=  9.54905641364138501e+03
 command: var/2, fun=  2.55991246363700066e+03
 command: var/1, fun=  6.42600938201132976e+03
 command: var/2, fun=  1.62824766990725561e+03
 command: var/1, fun=  6.42600938201132976e+03
 command: var/2, fun=  1.62824766990725561e+03
 command: var/1, fun=  6.52989033036424098e+03
 command: var/2, fun=  1.65891128176367761e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.75000E-01  1.00000E-04        23004         9631       1            4:10 
   7.80000E-01  1.00000E-04        23104         9681       1            4:11 

  End Simulation
 command: var/1, fun=  6.52989014699154995e+03
 command: var/2, fun=  1.65891120798408269e+03
 command: var/1, fun=  6.52989051373693019e+03
 command: var/2, fun=  1.65891135554327252e+03
 command: var/1, fun=  5.28101227369041590e+03
 command: var/2, fun=  1.16370887976415543e+03
 command: var/1, fun=  7.74557084515240786e+03
 command: var/2, fun=  2.15396174788252802e+03
 command: var/1, fun=  6.52988987902543249e+03
 command: var/2, fun=  1.65891114844061349e+03
 command: var/1, fun=  6.52989078170304856e+03
 command: var/2, fun=  1.65891141508674195e+03
 command: var/1, fun=  3.50087584338551596e+03
 command: var/2, fun=  7.73362141371470670e+02
 command: var/1, fun=  9.55864266057393434e+03
 command: var/2, fun=  2.56279397217793894e+03
 command: var/1, fun=  6.41234139182228864e+03
 command: var/2, fun=  1.62419995628097968e+03
 command: var/1, fun=  6.41234139182228864e+03
 command: var/2, fun=  1.62419995628097968e+03
 command: var/1, fun=  6.52888247187976867e+03
 command: var/2, fun=  1.65859886332483120e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.80000E-01  1.00000E-04        23104         9681       1            4:11 
   7.85000E-01  1.00000E-04        23204         9731       1            4:12 

  End Simulation
 command: var/1, fun=  6.52888228850640917e+03
 command: var/2, fun=  1.65859878954469605e+03
 command: var/1, fun=  6.52888265525312272e+03
 command: var/2, fun=  1.65859893710496544e+03
 command: var/1, fun=  5.27999989085270954e+03
 command: var/2, fun=  1.16339285139211779e+03
 command: var/1, fun=  7.74456741353036068e+03
 command: var/2, fun=  2.15365296370322312e+03
 command: var/1, fun=  6.52888201878809014e+03
 command: var/2, fun=  1.65859872948409134e+03
 command: var/1, fun=  6.52888292497144084e+03
 command: var/2, fun=  1.65859899716556993e+03
 command: var/1, fun=  3.48810364578308281e+03
 command: var/2, fun=  7.69646946486208435e+02
 command: var/1, fun=  9.56939711121669461e+03
 command: var/2, fun=  2.56602691702952643e+03
 command: var/1, fun=  6.39854810272251325e+03
 command: var/2, fun=  1.62011400150354052e+03
 command: var/1, fun=  6.39854810272251325e+03
 command: var/2, fun=  1.62011400150354052e+03
 command: var/1, fun=  6.52776453663920438e+03
 command: var/2, fun=  1.65825236703194855e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.85000E-01  1.00000E-04        23204         9731       1            4:12 
   7.90000E-01  1.00000E-04        23304         9781       1            4:13 

  End Simulation
 command: var/1, fun=  6.52776435326513729e+03
 command: var/2, fun=  1.65825229325122700e+03
 command: var/1, fun=  6.52776472001327147e+03
 command: var/2, fun=  1.65825244081267078e+03
 command: var/1, fun=  5.27887713539798915e+03
 command: var/2, fun=  1.16304242887779537e+03
 command: var/1, fun=  7.74345420563748303e+03
 command: var/2, fun=  2.15331042066280361e+03
 command: var/1, fun=  6.52776408160396386e+03
 command: var/2, fun=  1.65825223261721567e+03
 command: var/1, fun=  6.52776499167444672e+03
 command: var/2, fun=  1.65825250144668166e+03
 command: var/1, fun=  3.47394156016069110e+03
 command: var/2, fun=  7.65527823553483245e+02
 command: var/1, fun=  9.58132106650021160e+03
 command: var/2, fun=  2.56961178781587387e+03
 command: var/1, fun=  6.38463630263959021e+03
 command: var/2, fun=  1.61599181833634816e+03
 command: var/1, fun=  6.38463630263959021e+03
 command: var/2, fun=  1.61599181833634816e+03
 command: var/1, fun=  6.52653631066116668e+03
 command: var/2, fun=  1.65787173913540641e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.90000E-01  1.00000E-04        23304         9781       1            4:13 
   7.95000E-01  1.00000E-04        23404         9831       1            4:15 

  End Simulation
 command: var/1, fun=  6.52653612728634380e+03
 command: var/2, fun=  1.65787166535405026e+03
 command: var/1, fun=  6.52653649403598683e+03
 command: var/2, fun=  1.65787181291676234e+03
 command: var/1, fun=  5.27764379350723812e+03
 command: var/2, fun=  1.16265755844484124e+03
 command: var/1, fun=  7.74223100735910339e+03
 command: var/2, fun=  2.15293406504396626e+03
 command: var/1, fun=  6.52653585349154946e+03
 command: var/2, fun=  1.65787160409032936e+03
 command: var/1, fun=  6.52653676783078572e+03
 command: var/2, fun=  1.65787187418048507e+03
 command: var/1, fun=  3.45838851248876063e+03
 command: var/2, fun=  7.61004572387916483e+02
 command: var/1, fun=  9.59441516954868894e+03
 command: var/2, fun=  2.57354888725125238e+03
 command: var/1, fun=  6.37061725381417182e+03
 command: var/2, fun=  1.61183674108043897e+03
 command: var/1, fun=  6.37061725381417182e+03
 command: var/2, fun=  1.61183674108043897e+03
 command: var/1, fun=  6.52519766449026065e+03
 command: var/2, fun=  1.65745695331703178e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.95000E-01  1.00000E-04        23404         9831       1            4:15 
   8.00000E-01  1.00000E-04        23504         9881       1            4:16 

  End Simulation
 command: var/1, fun=  6.52519748111464196e+03
 command: var/2, fun=  1.65745687953499441e+03
 command: var/1, fun=  6.52519784786587934e+03
 command: var/2, fun=  1.65745702709906936e+03
 command: var/1, fun=  5.27629973612109461e+03
 command: var/2, fun=  1.16223821402443446e+03
 command: var/1, fun=  7.74089768886606544e+03
 command: var/2, fun=  2.15252387028272597e+03
 command: var/1, fun=  6.52519720499549294e+03
 command: var/2, fun=  1.65745681758527030e+03
 command: var/1, fun=  6.52519812398503018e+03
 command: var/2, fun=  1.65745708904879416e+03
 command: var/1, fun=  3.44144466049734865e+03
 command: var/2, fun=  7.56077362091268810e+02
 command: var/1, fun=  9.60867900070395444e+03
 command: var/2, fun=  2.57783820927368288e+03
 command: var/1, fun=  6.35650494149086808e+03
 command: var/2, fun=  1.60765290871093293e+03
 command: var/1, fun=  6.35650494149086808e+03
 command: var/2, fun=  1.60765290871093293e+03
 command: var/1, fun=  6.52374857611448169e+03
 command: var/2, fun=  1.65700801776658932e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.00000E-01  1.00000E-04        23504         9881       1            4:16 
   8.05000E-01  1.00000E-04        23604         9931       1            4:17 

  End Simulation
 command: var/1, fun=  6.52374839273801717e+03
 command: var/2, fun=  1.65700794398382254e+03
 command: var/1, fun=  6.52374875949094439e+03
 command: var/2, fun=  1.65700809154935678e+03
 command: var/1, fun=  5.27484494186242500e+03
 command: var/2, fun=  1.16178440437531981e+03
 command: var/1, fun=  7.73945422752161630e+03
 command: var/2, fun=  2.15207984400076612e+03
 command: var/1, fun=  6.52374811410403709e+03
 command: var/2, fun=  1.65700788129187754e+03
 command: var/1, fun=  6.52374903812492630e+03
 command: var/2, fun=  1.65700815424130224e+03
 command: var/1, fun=  3.42311168078027276e+03
 command: var/2, fun=  7.50746814332592976e+02
 command: var/1, fun=  9.62411083630777102e+03
 command: var/2, fun=  2.58247936630379127e+03
 command: var/1, fun=  6.34231489703823536e+03
 command: var/2, fun=  1.60344491778416295e+03
 command: var/1, fun=  6.34231489703823536e+03
 command: var/2, fun=  1.60344491778416295e+03
 command: var/1, fun=  6.52218914371310257e+03
 command: var/2, fun=  1.65652497909860767e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.05000E-01  1.00000E-04        23604         9931       1            4:17 
   8.10000E-01  1.00000E-04        23704         9981       1            4:19 

  End Simulation
 command: var/1, fun=  6.52218896033575311e+03
 command: var/2, fun=  1.65652490531506533e+03
 command: var/1, fun=  6.52218932709045293e+03
 command: var/2, fun=  1.65652505288215048e+03
 command: var/1, fun=  5.27327950990859972e+03
 command: var/2, fun=  1.16129617707153011e+03
 command: var/1, fun=  7.73790072051149582e+03
 command: var/2, fun=  2.15160203185108139e+03
 command: var/1, fun=  6.52218867899694760e+03
 command: var/2, fun=  1.65652484182482453e+03
 command: var/1, fun=  6.52218960842926026e+03
 command: var/2, fun=  1.65652511637239149e+03
 command: var/1, fun=  3.40339292550524260e+03
 command: var/2, fun=  7.45014048609675797e+02
 command: var/1, fun=  9.64070751752079923e+03
 command: var/2, fun=  2.58747154949543119e+03
 command: var/1, fun=  6.32806340117897525e+03
 command: var/2, fun=  1.59921758722166601e+03
 command: var/1, fun=  6.32806340117897525e+03
 command: var/2, fun=  1.59921758722166601e+03
 command: var/1, fun=  6.52051959156279554e+03
 command: var/2, fun=  1.65600792413734371e+03


  Begin Simulation

  ****** Performing Dynamic Simulation using Gstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is GSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.10000E-01  1.00000E-04        23704         9981       1            4:19 
   8.15000E-01  1.00000E-04        23804        10031       1            4:20 

  End Simulation
 command: var/1, fun=  6.52051940818451021e+03
 command: var/2, fun=  1.65600785035297758e+03
 command: var/1, fun=  6.52051977494107814e+03
 command: var/2, fun=  1.65600799792170983e+03
 command: var/1, fun=  5.27160366586987038e+03
 command: var/2, fun=  1.16077362028638572e+03
 command: var/1, fun=  7.73623739077425671e+03
 command: var/2, fun=  2.15109051930374653e+03
 command: var/1, fun=  6.52051912395161435e+03
 command: var/2, fun=  1.65600778600858234e+03
 command: var/1, fun=  6.52052005917397582e+03
 command: var/2, fun=  1.65600806226610553e+03
 command: var/1, fun=  3.38229349139415308e+03
 command: var/2, fun=  7.38880701910857397e+02
 command: var/1, fun=  9.65846439317571276e+03
 command: var/2, fun=  2.59281351116315091e+03
 command: var/1, fun=  6.31376695157205450e+03
 command: var/2, fun=  1.59497580131381483e+03
 command: var/1, fun=  6.31376695157205450e+03
 command: var/2, fun=  1.59497580131381483e+03


Finished -----
Elapsed time = 286.80s,  CPU time = 260.67s,  90.89%

