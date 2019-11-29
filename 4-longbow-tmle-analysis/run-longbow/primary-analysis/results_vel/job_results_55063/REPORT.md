---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* trth2o
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_trth2o
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country      nhh          n_cell     n  outcome_variable 
-------------  -------------------------  -----------  ----------  -------  ----  -----------------
0-3 months     ki1000108-IRC              INDIA        3 or less        57   394  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA        4-5             151   394  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA        6-7             101   394  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA        8+               85   394  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less       101   565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5             238   565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7             132   565  y_rate_wtkg      
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+               94   565  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less       123   640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5             296   640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7             136   640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+               85   640  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less       110   725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5             324   725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7             171   725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+              120   725  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA        3 or less        57   399  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA        4-5             153   399  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA        6-7             104   399  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA        8+               85   399  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less        89   522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5             223   522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7             125   522  y_rate_wtkg      
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+               85   522  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less       105   601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5             287   601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7             130   601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+               79   601  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less       103   702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5             317   702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7             167   702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+              115   702  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA        3 or less        58   410  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA        4-5             158   410  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA        6-7             107   410  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA        8+               87   410  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        3 or less        23   309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        4-5             140   309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        6-7              93   309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        8+               53   309  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH   3 or less        88   498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH   4-5             213   498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH   6-7             116   498  y_rate_wtkg      
6-9 months     ki1017093-NIH-Birth        BANGLADESH   8+               81   498  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH   3 or less       102   576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH   4-5             277   576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH   6-7             121   576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH   8+               76   576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less        98   693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5             317   693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7             168   693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   8+              110   693  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI       3 or less       143   556  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI       4-5             246   556  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI       6-7             121   556  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI       8+               46   556  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA        3 or less        57   403  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA        4-5             154   403  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA        6-7             105   403  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA        8+               87   403  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        17   298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             138   298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7              95   298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               48   298  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        87   481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5             202   481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7             113   481  y_rate_wtkg      
9-12 months    ki1017093-NIH-Birth        BANGLADESH   8+               79   481  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       106   569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5             269   569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7             115   569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH   8+               79   569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less        93   683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5             312   683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7             168   683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+              110   683  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI       3 or less       107   380  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI       4-5             164   380  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI       6-7              81   380  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI       8+               28   380  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA        3 or less        56   392  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA        4-5             149   392  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA        6-7             102   392  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA        8+               85   392  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less        21   300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5             129   300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7             102   300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        8+               48   300  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        82   461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH   4-5             194   461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH   6-7             107   461  y_rate_wtkg      
12-15 months   ki1017093-NIH-Birth        BANGLADESH   8+               78   461  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH   3 or less        97   537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH   4-5             252   537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH   6-7             109   537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH   8+               79   537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        91   666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             304   666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             164   666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   8+              107   666  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI       3 or less        37   125  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI       4-5              52   125  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI       6-7              27   125  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI       8+                9   125  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA        3 or less        55   383  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA        4-5             146   383  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA        6-7             101   383  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA        8+               81   383  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less        23   290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5             121   290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7              98   290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        8+               48   290  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        76   449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH   4-5             188   449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH   6-7             108   449  y_rate_wtkg      
15-18 months   ki1017093-NIH-Birth        BANGLADESH   8+               77   449  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less        94   533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH   4-5             248   533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH   6-7             111   533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH   8+               80   533  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        84   605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             278   605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             145   605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               98   605  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI       3 or less        34   118  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI       4-5              49   118  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI       6-7              27   118  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI       8+                8   118  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA        3 or less        54   380  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA        4-5             144   380  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA        6-7             101   380  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA        8+               81   380  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        68   422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH   6-7              98   422  y_rate_wtkg      
18-21 months   ki1017093-NIH-Birth        BANGLADESH   8+               72   422  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       100   542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH   4-5             247   542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH   6-7             114   542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH   8+               81   542  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        77   547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             251   547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             132   547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               87   547  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI       3 or less       119   452  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI       4-5             196   452  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI       6-7             100   452  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI       8+               37   452  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA        3 or less        56   389  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA        4-5             147   389  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA        6-7             102   389  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA        8+               84   389  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        71   411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             178   411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7              95   411  y_rate_wtkg      
21-24 months   ki1017093-NIH-Birth        BANGLADESH   8+               67   411  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less        92   485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             222   485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             104   485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH   8+               67   485  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        67   493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             224   493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             125   493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               77   493  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI       3 or less       114   382  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI       4-5             161   382  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI       6-7              79   382  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI       8+               28   382  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/5ed601ea-05a8-4e92-95f9-e56413dc8d07/546e3789-0ff1-402a-9ad9-d912b9af4fab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5ed601ea-05a8-4e92-95f9-e56413dc8d07/546e3789-0ff1-402a-9ad9-d912b9af4fab/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5ed601ea-05a8-4e92-95f9-e56413dc8d07/546e3789-0ff1-402a-9ad9-d912b9af4fab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA        3 or less            NA                0.7672860   0.7149858   0.8195862
0-3 months     ki1000108-IRC              INDIA        4-5                  NA                0.7653314   0.7315382   0.7991247
0-3 months     ki1000108-IRC              INDIA        6-7                  NA                0.7882524   0.7495033   0.8270015
0-3 months     ki1000108-IRC              INDIA        8+                   NA                0.7699875   0.7253798   0.8145953
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.8259420   0.7908996   0.8609844
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.8085188   0.7844913   0.8325463
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.8214972   0.7850402   0.8579542
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.8034891   0.7473362   0.8596421
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.9179017   0.8735144   0.9622891
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.9034626   0.8776520   0.9292733
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.8949693   0.8566283   0.9333104
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.7924074   0.7290609   0.8557539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.8905977   0.8479231   0.9332724
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.8861731   0.8611403   0.9112058
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.8993486   0.8641605   0.9345367
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.8935241   0.8527888   0.9342593
3-6 months     ki1000108-IRC              INDIA        3 or less            NA                0.4731149   0.4360224   0.5102074
3-6 months     ki1000108-IRC              INDIA        4-5                  NA                0.4686796   0.4421549   0.4952043
3-6 months     ki1000108-IRC              INDIA        6-7                  NA                0.4760902   0.4339464   0.5182340
3-6 months     ki1000108-IRC              INDIA        8+                   NA                0.4340083   0.3956280   0.4723886
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4535722   0.4113065   0.4958378
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.4345374   0.4108417   0.4582331
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.4990669   0.4640989   0.5340349
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.4601111   0.4076299   0.5125922
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.5004471   0.4676284   0.5332658
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.4874861   0.4696259   0.5053464
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.4714118   0.4437134   0.4991102
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.5057436   0.4492251   0.5622621
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.4953076   0.4596567   0.5309585
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.4851499   0.4669226   0.5033772
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.4960664   0.4708188   0.5213140
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.5246901   0.4994338   0.5499464
6-9 months     ki1000108-IRC              INDIA        3 or less            NA                0.2907772   0.2582725   0.3232818
6-9 months     ki1000108-IRC              INDIA        4-5                  NA                0.2623948   0.2410916   0.2836981
6-9 months     ki1000108-IRC              INDIA        6-7                  NA                0.2459859   0.2144765   0.2774953
6-9 months     ki1000108-IRC              INDIA        8+                   NA                0.2547517   0.2273036   0.2821998
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.1560194   0.0611597   0.2508792
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.1865468   0.1626681   0.2104255
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.2216203   0.1899015   0.2533391
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.2154456   0.1765708   0.2543205
6-9 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.2408338   0.2071093   0.2745583
6-9 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.2471864   0.2242546   0.2701182
6-9 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.2296914   0.1988377   0.2605450
6-9 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2094825   0.1759212   0.2430438
6-9 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2751872   0.2422602   0.3081142
6-9 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2578843   0.2410028   0.2747657
6-9 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2299322   0.1980701   0.2617942
6-9 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1362504   0.0193454   0.2531555
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2753552   0.2509035   0.2998070
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2757532   0.2581824   0.2933241
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2671361   0.2354614   0.2988107
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2410812   0.2160088   0.2661536
6-9 months     ki1148112-LCNI-5           MALAWI       3 or less            NA                0.2774152   0.2540937   0.3007368
6-9 months     ki1148112-LCNI-5           MALAWI       4-5                  NA                0.2759108   0.2567154   0.2951062
6-9 months     ki1148112-LCNI-5           MALAWI       6-7                  NA                0.3089086   0.2772915   0.3405258
6-9 months     ki1148112-LCNI-5           MALAWI       8+                   NA                0.2794032   0.2450906   0.3137158
9-12 months    ki1000108-IRC              INDIA        3 or less            NA                0.2133038   0.1739966   0.2526111
9-12 months    ki1000108-IRC              INDIA        4-5                  NA                0.2164654   0.1922489   0.2406819
9-12 months    ki1000108-IRC              INDIA        6-7                  NA                0.2073025   0.1802259   0.2343792
9-12 months    ki1000108-IRC              INDIA        8+                   NA                0.2181886   0.1876987   0.2486785
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.1166866   0.0299897   0.2033836
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.1514997   0.1217837   0.1812157
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.1340623   0.1043341   0.1637904
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.1485043   0.0893228   0.2076858
9-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.1717322   0.1428851   0.2005794
9-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.1509652   0.1296073   0.1723230
9-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1788266   0.1480614   0.2095918
9-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.1795120   0.1461891   0.2128348
9-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1808957   0.1597066   0.2020849
9-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1770401   0.1636902   0.1903900
9-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1866753   0.1639714   0.2093793
9-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1661822   0.1393903   0.1929741
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2311063   0.2026948   0.2595179
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1973183   0.1774659   0.2171706
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2001603   0.1748898   0.2254308
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1733557   0.1515228   0.1951887
9-12 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                0.1765973   0.1483267   0.2048679
9-12 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                0.2102583   0.1863761   0.2341404
9-12 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                0.2185631   0.1795280   0.2575983
9-12 months    ki1148112-LCNI-5           MALAWI       8+                   NA                0.1883145   0.1341626   0.2424665
12-15 months   ki1000108-IRC              INDIA        3 or less            NA                0.1840026   0.1530054   0.2149997
12-15 months   ki1000108-IRC              INDIA        4-5                  NA                0.1866291   0.1634202   0.2098379
12-15 months   ki1000108-IRC              INDIA        6-7                  NA                0.1915479   0.1640352   0.2190606
12-15 months   ki1000108-IRC              INDIA        8+                   NA                0.1718833   0.1457690   0.1979976
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.2334908   0.1520198   0.3149618
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.1663227   0.1414108   0.1912346
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.1782829   0.1540174   0.2025483
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.1716089   0.1252007   0.2180170
12-15 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.1343854   0.1086011   0.1601697
12-15 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.1241770   0.1073680   0.1409860
12-15 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1307051   0.1078337   0.1535766
12-15 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.1324753   0.0886073   0.1763433
12-15 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2254609   0.1908076   0.2601141
12-15 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1672489   0.1481206   0.1863772
12-15 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1668209   0.1378074   0.1958345
12-15 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1945421   0.1629831   0.2261011
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1492997   0.1177011   0.1808983
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1714836   0.1533073   0.1896599
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1660335   0.1341812   0.1978859
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1342574   0.1136149   0.1548999
12-15 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.1970407   0.1387982   0.2552831
12-15 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.1220150   0.0601505   0.1838794
12-15 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.1551437   0.1113814   0.1989060
12-15 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1290124   0.0249064   0.2331185
15-18 months   ki1000108-IRC              INDIA        3 or less            NA                0.1441297   0.1085630   0.1796965
15-18 months   ki1000108-IRC              INDIA        4-5                  NA                0.1446521   0.1226816   0.1666225
15-18 months   ki1000108-IRC              INDIA        6-7                  NA                0.1884923   0.1567333   0.2202513
15-18 months   ki1000108-IRC              INDIA        8+                   NA                0.1565757   0.1287815   0.1843698
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.1867189   0.1341851   0.2392528
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.1585889   0.1336281   0.1835497
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.1695538   0.1422748   0.1968328
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.1607011   0.1164552   0.2049470
15-18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.1334223   0.0946414   0.1722033
15-18 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.1565911   0.1340787   0.1791036
15-18 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1457530   0.1125516   0.1789545
15-18 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.1745379   0.1442791   0.2047967
15-18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1706171   0.1264130   0.2148212
15-18 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1644772   0.1428919   0.1860625
15-18 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1488995   0.1116348   0.1861642
15-18 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1616497   0.1352157   0.1880838
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1880583   0.1484365   0.2276801
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1693598   0.1533636   0.1853561
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1598914   0.1259952   0.1937876
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1927334   0.1701252   0.2153415
15-18 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.1568596   0.0948595   0.2188597
15-18 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.1733421   0.1229749   0.2237093
15-18 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.1848512   0.1210722   0.2486301
15-18 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.2123447   0.1496320   0.2750574
18-21 months   ki1000108-IRC              INDIA        3 or less            NA                0.1766966   0.1441562   0.2092371
18-21 months   ki1000108-IRC              INDIA        4-5                  NA                0.1452099   0.1217688   0.1686510
18-21 months   ki1000108-IRC              INDIA        6-7                  NA                0.1606099   0.1331689   0.1880510
18-21 months   ki1000108-IRC              INDIA        8+                   NA                0.1593164   0.1321189   0.1865139
18-21 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.1689724   0.1380325   0.1999122
18-21 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.1830653   0.1588058   0.2073247
18-21 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1556685   0.1060358   0.2053012
18-21 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.1743596   0.1311448   0.2175744
18-21 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1342002   0.0965234   0.1718769
18-21 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1360814   0.1171785   0.1549843
18-21 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1417843   0.1078869   0.1756817
18-21 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1144972   0.0864074   0.1425871
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1423145   0.1131836   0.1714454
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1549631   0.1359941   0.1739320
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1320074   0.1015351   0.1624796
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1393605   0.1126931   0.1660279
18-21 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.1904714   0.1527444   0.2281984
18-21 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.1651205   0.1327050   0.1975360
18-21 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.1781252   0.1359309   0.2203196
18-21 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.2316829   0.1667744   0.2965915
21-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.2085576   0.1702066   0.2469086
21-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.1655822   0.1406016   0.1905629
21-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.1757693   0.1510843   0.2004543
21-24 months   ki1000108-IRC              INDIA        8+                   NA                0.1887701   0.1567909   0.2207492
21-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.1550783   0.1203663   0.1897902
21-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.1461598   0.1236052   0.1687144
21-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1424506   0.1009385   0.1839626
21-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.1205439   0.0747412   0.1663466
21-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1514393   0.1220955   0.1807831
21-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1399203   0.1225225   0.1573181
21-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1414808   0.1156984   0.1672633
21-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1533036   0.1220045   0.1846027
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1387585   0.1100688   0.1674482
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1743085   0.1514183   0.1971987
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1785998   0.1466022   0.2105975
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1768477   0.1425595   0.2111360
21-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.1626211   0.1068479   0.2183943
21-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.1838609   0.1456540   0.2220677
21-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.2095089   0.1453401   0.2736776
21-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1410906   0.0727642   0.2094170


### Parameter: E(Y)


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA        NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.8845220   0.8699746   0.8990694
3-6 months     ki1000108-IRC              INDIA        NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.4980544   0.4869892   0.5091196
6-9 months     ki1000108-IRC              INDIA        NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1982186   0.1818458   0.2145914
6-9 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1148112-LCNI-5           MALAWI       NA                   NA                0.2849079   0.2723110   0.2975048
9-12 months    ki1000108-IRC              INDIA        NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1410472   0.1219662   0.1601282
9-12 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1148112-LCNI-5           MALAWI       NA                   NA                0.2022567   0.1863082   0.2182053
12-15 months   ki1000108-IRC              INDIA        NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1752090   0.1590517   0.1913663
12-15 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.1518822   0.1181702   0.1855942
15-18 months   ki1000108-IRC              INDIA        NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1648845   0.1491151   0.1806540
15-18 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.1738706   0.1423337   0.2054074
18-21 months   ki1000108-IRC              INDIA        NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.1818489   0.1616805   0.2020172
21-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.1789517   0.1520986   0.2058049


### Parameter: ATE


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0019546   -0.0644746    0.0605654
0-3 months     ki1000108-IRC              INDIA        6-7                  3 or less          0.0209664   -0.0444426    0.0863754
0-3 months     ki1000108-IRC              INDIA        8+                   3 or less          0.0027015   -0.0662489    0.0716519
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0174232   -0.0598374    0.0249909
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0044448   -0.0547510    0.0458614
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0224529   -0.0885733    0.0436675
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0144391   -0.0657702    0.0368920
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0229324   -0.0816385    0.0357736
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.1254943   -0.2027046   -0.0482841
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0044247   -0.0540157    0.0451664
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0087509   -0.0466315    0.0641332
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0029263   -0.0563261    0.0621788
3-6 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0044353   -0.0502008    0.0413302
3-6 months     ki1000108-IRC              INDIA        6-7                  3 or less          0.0029753   -0.0533280    0.0592785
3-6 months     ki1000108-IRC              INDIA        8+                   3 or less         -0.0391066   -0.0925988    0.0143857
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0190348   -0.0675143    0.0294447
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0454947   -0.0095259    0.1005153
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0065389   -0.0611856    0.0742634
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0129609   -0.0504292    0.0245073
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0290353   -0.0719311    0.0138605
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less          0.0052966   -0.0603696    0.0709627
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0101577   -0.0503460    0.0300307
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0007588   -0.0431207    0.0446382
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0293825   -0.0145429    0.0733080
6-9 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0283823   -0.0673319    0.0105672
6-9 months     ki1000108-IRC              INDIA        6-7                  3 or less         -0.0447913   -0.0901234    0.0005408
6-9 months     ki1000108-IRC              INDIA        8+                   3 or less         -0.0360255   -0.0786728    0.0066219
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less          0.0305274   -0.0672652    0.1283199
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less          0.0656009   -0.0343501    0.1655518
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less          0.0594262   -0.0430467    0.1618992
6-9 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0063526   -0.0345051    0.0472103
6-9 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0111424   -0.0569924    0.0347075
6-9 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0313513   -0.0789309    0.0162283
6-9 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0173030   -0.0542309    0.0196250
6-9 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0452550   -0.0908921    0.0003820
6-9 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.1389368   -0.2602593   -0.0176142
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0003980   -0.0296747    0.0304706
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0082192   -0.0482686    0.0318303
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0342740   -0.0692984    0.0007503
6-9 months     ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0015045   -0.0315091    0.0285002
6-9 months     ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0314934   -0.0076864    0.0706733
6-9 months     ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0019880   -0.0393209    0.0432969
9-12 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA        4-5                  3 or less          0.0031616   -0.0430676    0.0493907
9-12 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.0060013   -0.0537389    0.0417363
9-12 months    ki1000108-IRC              INDIA        8+                   3 or less          0.0048848   -0.0449145    0.0546841
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less          0.0348131   -0.0566520    0.1262781
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less          0.0173757   -0.0743824    0.1091337
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less          0.0318176   -0.0734833    0.1371186
9-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0207671   -0.0567115    0.0151773
9-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0070943   -0.0351225    0.0493112
9-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0077797   -0.0365324    0.0520919
9-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0038556   -0.0290061    0.0212948
9-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0057796   -0.0253998    0.0369590
9-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0147135   -0.0489778    0.0195507
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0337880   -0.0683271    0.0007510
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0309460   -0.0688010    0.0069089
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0577506   -0.0934362   -0.0220650
9-12 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0336609   -0.0034478    0.0707696
9-12 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0419658   -0.0063004    0.0902320
9-12 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0117172   -0.0494956    0.0729300
12-15 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA        4-5                  3 or less          0.0026265   -0.0358077    0.0410606
12-15 months   ki1000108-IRC              INDIA        6-7                  3 or less          0.0075453   -0.0339946    0.0490853
12-15 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0121193   -0.0526704    0.0284318
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0671681   -0.1523648    0.0180286
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0552079   -0.1402649    0.0298490
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0618819   -0.1557817    0.0320178
12-15 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0102084   -0.0410573    0.0206405
12-15 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0036802   -0.0381218    0.0307613
12-15 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0019100   -0.0527443    0.0489242
12-15 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0582120   -0.0979055   -0.0185186
12-15 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0586399   -0.1037201   -0.0135598
12-15 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0309188   -0.0778516    0.0160140
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0221839   -0.0142478    0.0586156
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0167338   -0.0281434    0.0616110
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0150424   -0.0527457    0.0226609
12-15 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0750257   -0.1599927    0.0099413
12-15 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0418970   -0.1147484    0.0309544
12-15 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0680282   -0.1873188    0.0512624
15-18 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA        4-5                  3 or less          0.0005223   -0.0413096    0.0423543
15-18 months   ki1000108-IRC              INDIA        6-7                  3 or less          0.0443625   -0.0033108    0.0920358
15-18 months   ki1000108-IRC              INDIA        8+                   3 or less          0.0124459   -0.0328566    0.0577485
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0281300   -0.0862654    0.0300053
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0171651   -0.0764112    0.0420809
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0260179   -0.0946852    0.0426495
15-18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0231688   -0.0216851    0.0680227
15-18 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0123307   -0.0387090    0.0633705
15-18 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0411156   -0.0080390    0.0902702
15-18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0061399   -0.0552560    0.0429761
15-18 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0217177   -0.0796634    0.0362281
15-18 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0089674   -0.0604654    0.0425306
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0186984   -0.0614536    0.0240568
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0281668   -0.0802545    0.0239208
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0046751   -0.0409466    0.0502968
15-18 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0164825   -0.0633978    0.0963628
15-18 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0279916   -0.0609565    0.1169397
15-18 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0554851   -0.0327016    0.1436718
18-21 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0314868   -0.0717285    0.0087550
18-21 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0160867   -0.0585791    0.0264057
18-21 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0173803   -0.0597468    0.0249862
18-21 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0140929   -0.0252231    0.0534089
18-21 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0133038   -0.0719168    0.0453092
18-21 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0053873   -0.0480416    0.0588161
18-21 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0018812   -0.0404625    0.0442249
18-21 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0075841   -0.0433102    0.0584785
18-21 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0197029   -0.0668236    0.0274177
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0126486   -0.0220957    0.0473929
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0103071   -0.0525313    0.0319171
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0029540   -0.0423357    0.0364278
18-21 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0253509   -0.0750719    0.0243702
18-21 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0123461   -0.0689507    0.0442584
18-21 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0412116   -0.0338742    0.1162973
21-24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0429753   -0.0889262    0.0029755
21-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0327883   -0.0787044    0.0131279
21-24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0197875   -0.0699925    0.0304175
21-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0089184   -0.0504741    0.0326372
21-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0126277   -0.0668562    0.0416009
21-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0345343   -0.0921162    0.0230475
21-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0115189   -0.0456990    0.0226612
21-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0099584   -0.0491329    0.0292160
21-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less          0.0018643   -0.0410804    0.0448091
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0355500   -0.0011528    0.0722528
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0398414   -0.0032124    0.0828951
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0380893   -0.0066225    0.0828010
21-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0212398   -0.0462307    0.0887103
21-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0468878   -0.0378850    0.1316606
21-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0215305   -0.1098276    0.0667666


### Parameter: PAR


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        3 or less            NA                 0.0007045   -0.0479712    0.0493803
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0095920   -0.0425500    0.0233660
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0162546   -0.0578119    0.0253027
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0060758   -0.0472136    0.0350620
3-6 months     ki1000108-IRC              INDIA        3 or less            NA                -0.0070432   -0.0429036    0.0288172
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0058253   -0.0337928    0.0454434
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0113860   -0.0418111    0.0190392
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0027468   -0.0314507    0.0369443
6-9 months     ki1000108-IRC              INDIA        3 or less            NA                -0.0281462   -0.0591150    0.0028227
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0421992   -0.0483514    0.1327497
6-9 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0045742   -0.0355927    0.0264443
6-9 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0260219   -0.0571122    0.0050684
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0078456   -0.0319605    0.0162694
6-9 months     ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0074927   -0.0130461    0.0280314
9-12 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0000794   -0.0360913    0.0359325
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0243606   -0.0594043    0.1081255
9-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0081109   -0.0354455    0.0192237
9-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0033641   -0.0226652    0.0159369
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0332614   -0.0605780   -0.0059449
9-12 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0256594    0.0008817    0.0504370
12-15 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0018600   -0.0310530    0.0273330
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0582818   -0.1360873    0.0195237
12-15 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0038791   -0.0280243    0.0202660
12-15 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0454285   -0.0771441   -0.0137129
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0147605   -0.0155780    0.0450990
12-15 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0451585   -0.0953632    0.0050462
15-18 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0163289   -0.0170409    0.0496987
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0218344   -0.0731248    0.0294560
15-18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0195620   -0.0155012    0.0546251
15-18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0142657   -0.0553245    0.0267931
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0268610   -0.0645335    0.0108116
15-18 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0170110   -0.0342081    0.0682300
18-21 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0177175   -0.0488745    0.0134395
18-21 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0034669   -0.0262621    0.0331959
18-21 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0017120   -0.0364095    0.0329856
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0003465   -0.0276225    0.0283154
18-21 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0086225   -0.0416024    0.0243574
21-24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0308235   -0.0668126    0.0051656
21-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0131052   -0.0454686    0.0192582
21-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0094688   -0.0358359    0.0168983
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0362916    0.0081915    0.0643917
21-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0163307   -0.0284565    0.0611178
