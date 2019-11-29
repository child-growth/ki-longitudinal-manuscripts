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

**Outcome Variable:** y_rate_len

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
0-3 months     ki1000108-IRC              INDIA        3 or less        53   377  y_rate_len       
0-3 months     ki1000108-IRC              INDIA        4-5             146   377  y_rate_len       
0-3 months     ki1000108-IRC              INDIA        6-7              99   377  y_rate_len       
0-3 months     ki1000108-IRC              INDIA        8+               79   377  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less       101   566  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5             239   566  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7             132   566  y_rate_len       
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+               94   566  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less       123   640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5             296   640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7             136   640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+               85   640  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less       108   721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5             324   721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7             169   721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+              120   721  y_rate_len       
3-6 months     ki1000108-IRC              INDIA        3 or less        57   397  y_rate_len       
3-6 months     ki1000108-IRC              INDIA        4-5             154   397  y_rate_len       
3-6 months     ki1000108-IRC              INDIA        6-7             103   397  y_rate_len       
3-6 months     ki1000108-IRC              INDIA        8+               83   397  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less        89   523  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5             223   523  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7             126   523  y_rate_len       
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+               85   523  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less       104   598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5             285   598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7             129   598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+               80   598  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less       101   695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5             316   695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7             163   695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+              115   695  y_rate_len       
6-9 months     ki1000108-IRC              INDIA        3 or less        58   407  y_rate_len       
6-9 months     ki1000108-IRC              INDIA        4-5             158   407  y_rate_len       
6-9 months     ki1000108-IRC              INDIA        6-7             106   407  y_rate_len       
6-9 months     ki1000108-IRC              INDIA        8+               85   407  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        3 or less        23   314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        4-5             143   314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        6-7              95   314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        8+               53   314  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH   3 or less        88   498  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH   4-5             213   498  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH   6-7             116   498  y_rate_len       
6-9 months     ki1017093-NIH-Birth        BANGLADESH   8+               81   498  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH   3 or less       100   565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH   4-5             269   565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH   6-7             120   565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH   8+               76   565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less        98   688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5             316   688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7             164   688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   8+              110   688  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI       3 or less       143   559  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI       4-5             247   559  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI       6-7             123   559  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI       8+               46   559  y_rate_len       
9-12 months    ki1000108-IRC              INDIA        3 or less        57   400  y_rate_len       
9-12 months    ki1000108-IRC              INDIA        4-5             154   400  y_rate_len       
9-12 months    ki1000108-IRC              INDIA        6-7             104   400  y_rate_len       
9-12 months    ki1000108-IRC              INDIA        8+               85   400  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        20   311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             142   311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7              99   311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               50   311  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        87   482  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5             203   482  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7             113   482  y_rate_len       
9-12 months    ki1017093-NIH-Birth        BANGLADESH   8+               79   482  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       105   566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5             267   566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7             115   566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH   8+               79   566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less        93   674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5             308   674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7             164   674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+              109   674  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI       3 or less       108   383  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI       4-5             165   383  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI       6-7              82   383  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI       8+               28   383  y_rate_len       
12-15 months   ki1000108-IRC              INDIA        3 or less        56   390  y_rate_len       
12-15 months   ki1000108-IRC              INDIA        4-5             149   390  y_rate_len       
12-15 months   ki1000108-IRC              INDIA        6-7             101   390  y_rate_len       
12-15 months   ki1000108-IRC              INDIA        8+               84   390  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less        22   303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5             129   303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7             104   303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        8+               48   303  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        82   461  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH   4-5             194   461  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH   6-7             107   461  y_rate_len       
12-15 months   ki1017093-NIH-Birth        BANGLADESH   8+               78   461  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH   3 or less        96   532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH   4-5             249   532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH   6-7             109   532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH   8+               78   532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        91   660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             301   660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             162   660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   8+              106   660  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI       3 or less        37   126  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI       4-5              53   126  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI       6-7              27   126  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI       8+                9   126  y_rate_len       
15-18 months   ki1000108-IRC              INDIA        3 or less        55   382  y_rate_len       
15-18 months   ki1000108-IRC              INDIA        4-5             146   382  y_rate_len       
15-18 months   ki1000108-IRC              INDIA        6-7             101   382  y_rate_len       
15-18 months   ki1000108-IRC              INDIA        8+               80   382  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less        23   291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5             122   291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7              98   291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        8+               48   291  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        76   449  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH   4-5             188   449  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH   6-7             108   449  y_rate_len       
15-18 months   ki1017093-NIH-Birth        BANGLADESH   8+               77   449  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less        93   528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH   4-5             245   528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH   6-7             111   528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH   8+               79   528  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        83   604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             278   604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             145   604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               98   604  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI       3 or less        35   119  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI       4-5              49   119  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI       6-7              27   119  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI       8+                8   119  y_rate_len       
18-21 months   ki1000108-IRC              INDIA        3 or less        54   379  y_rate_len       
18-21 months   ki1000108-IRC              INDIA        4-5             144   379  y_rate_len       
18-21 months   ki1000108-IRC              INDIA        6-7             101   379  y_rate_len       
18-21 months   ki1000108-IRC              INDIA        8+               80   379  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        68   422  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   422  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH   6-7              98   422  y_rate_len       
18-21 months   ki1017093-NIH-Birth        BANGLADESH   8+               72   422  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       100   541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH   4-5             247   541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH   6-7             114   541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH   8+               80   541  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        77   546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             251   546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             132   546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               86   546  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI       3 or less       127   474  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI       4-5             201   474  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI       6-7             104   474  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI       8+               42   474  y_rate_len       
21-24 months   ki1000108-IRC              INDIA        3 or less        56   389  y_rate_len       
21-24 months   ki1000108-IRC              INDIA        4-5             147   389  y_rate_len       
21-24 months   ki1000108-IRC              INDIA        6-7             102   389  y_rate_len       
21-24 months   ki1000108-IRC              INDIA        8+               84   389  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        71   411  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             178   411  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7              95   411  y_rate_len       
21-24 months   ki1017093-NIH-Birth        BANGLADESH   8+               67   411  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less        91   471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             214   471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             101   471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH   8+               65   471  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        67   490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             223   490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             123   490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               77   490  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI       3 or less       119   405  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI       4-5             168   405  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI       6-7              86   405  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI       8+               32   405  y_rate_len       


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
![](/tmp/07f764be-a8b0-448e-bee6-9645364e3d31/e5796232-44d9-4b6a-a6af-68008ada70cc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/07f764be-a8b0-448e-bee6-9645364e3d31/e5796232-44d9-4b6a-a6af-68008ada70cc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/07f764be-a8b0-448e-bee6-9645364e3d31/e5796232-44d9-4b6a-a6af-68008ada70cc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA        3 or less            NA                3.2061413   2.9348692   3.4774134
0-3 months     ki1000108-IRC              INDIA        4-5                  NA                3.1228589   2.9431306   3.3025873
0-3 months     ki1000108-IRC              INDIA        6-7                  NA                3.2922738   3.0514851   3.5330625
0-3 months     ki1000108-IRC              INDIA        8+                   NA                2.9962957   2.7795238   3.2130676
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                3.0990292   2.9653424   3.2327160
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                3.0612945   2.9816262   3.1409629
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                3.1065206   2.9618482   3.2511929
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                3.1751226   3.0339385   3.3163068
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                3.3453489   3.2214600   3.4692378
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                3.2705732   3.2088210   3.3323255
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                3.1993420   3.0847144   3.3139696
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                3.1043804   2.9767652   3.2319956
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                3.1178509   2.9950244   3.2406774
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                3.0840968   3.0244850   3.1437086
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                3.1758538   3.0801607   3.2715468
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                3.3064299   3.2231899   3.3896700
3-6 months     ki1000108-IRC              INDIA        3 or less            NA                1.8623588   1.6788576   2.0458600
3-6 months     ki1000108-IRC              INDIA        4-5                  NA                1.8559730   1.7496569   1.9622891
3-6 months     ki1000108-IRC              INDIA        6-7                  NA                1.8551400   1.7413100   1.9689701
3-6 months     ki1000108-IRC              INDIA        8+                   NA                1.9594751   1.8127315   2.1062186
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                1.8467759   1.7470329   1.9465190
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                1.7658544   1.6906047   1.8411041
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                1.9054455   1.7974035   2.0134875
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                1.8661699   1.7394016   1.9929382
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                1.9209837   1.8134407   2.0285267
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                1.9476414   1.8947457   2.0005371
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                2.0426436   1.9242254   2.1610619
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                1.8400229   1.7472793   1.9327666
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                1.9468256   1.8382874   2.0553639
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                2.0132007   1.9543551   2.0720462
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                2.0302470   1.9327359   2.1277581
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                1.8464009   1.7502095   1.9425923
6-9 months     ki1000108-IRC              INDIA        3 or less            NA                1.3084080   1.2037056   1.4131105
6-9 months     ki1000108-IRC              INDIA        4-5                  NA                1.3600328   1.2793815   1.4406840
6-9 months     ki1000108-IRC              INDIA        6-7                  NA                1.4243798   1.3184460   1.5303135
6-9 months     ki1000108-IRC              INDIA        8+                   NA                1.3497445   1.2300992   1.4693897
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                1.1448815   0.9647113   1.3250517
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                1.1500048   1.0891336   1.2108759
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                1.1517695   1.0771601   1.2263788
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                1.0960984   0.9935755   1.1986213
6-9 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                1.3319507   1.2459568   1.4179446
6-9 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                1.2468721   1.1810688   1.3126755
6-9 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                1.2053344   1.1109735   1.2996953
6-9 months     ki1017093-NIH-Birth        BANGLADESH   8+                   NA                1.2298086   1.1265198   1.3330975
6-9 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                1.2943137   1.2183285   1.3702988
6-9 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                1.2910557   1.2531668   1.3289445
6-9 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                1.2344467   1.1468587   1.3220348
6-9 months     ki1017093b-PROVIDE         BANGLADESH   8+                   NA                1.1679254   1.1110761   1.2247747
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                1.4216148   1.3271091   1.5161204
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                1.3103582   1.2642106   1.3565059
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                1.3193391   1.2336481   1.4050301
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                1.3079952   1.2471540   1.3688363
6-9 months     ki1148112-LCNI-5           MALAWI       3 or less            NA                1.4304015   1.3584940   1.5023090
6-9 months     ki1148112-LCNI-5           MALAWI       4-5                  NA                1.4601204   1.4039660   1.5162748
6-9 months     ki1148112-LCNI-5           MALAWI       6-7                  NA                1.4934349   1.4106190   1.5762508
6-9 months     ki1148112-LCNI-5           MALAWI       8+                   NA                1.4209474   1.2718589   1.5700359
9-12 months    ki1000108-IRC              INDIA        3 or less            NA                1.1745997   1.0793246   1.2698749
9-12 months    ki1000108-IRC              INDIA        4-5                  NA                1.1892266   1.1167072   1.2617459
9-12 months    ki1000108-IRC              INDIA        6-7                  NA                1.0936746   1.0215628   1.1657863
9-12 months    ki1000108-IRC              INDIA        8+                   NA                1.0099867   0.9325118   1.0874615
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                1.5043547   0.4226704   2.5860390
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.8317435   0.6189573   1.0445297
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.6898185   0.5080770   0.8715599
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.8187961   0.4066401   1.2309522
9-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                1.0651822   0.9798821   1.1504822
9-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                1.0636175   1.0155372   1.1116978
9-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                1.1400544   1.0380498   1.2420590
9-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                1.1012583   0.9998867   1.2026299
9-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                1.0839891   1.0224286   1.1455496
9-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                1.0516124   1.0097432   1.0934816
9-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                1.0288657   0.9702328   1.0874985
9-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                1.0614713   0.9866909   1.1362516
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                1.1433092   1.0857738   1.2008445
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                1.1353260   1.0922664   1.1783857
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                1.0688760   0.9972569   1.1404951
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                1.1320737   1.0770004   1.1871469
9-12 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                1.1358839   1.0322789   1.2394889
9-12 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                1.0814246   1.0109272   1.1519220
9-12 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                1.0827664   0.9827698   1.1827630
9-12 months    ki1148112-LCNI-5           MALAWI       8+                   NA                1.1439612   1.0154928   1.2724295
12-15 months   ki1000108-IRC              INDIA        3 or less            NA                0.9966273   0.8866937   1.1065608
12-15 months   ki1000108-IRC              INDIA        4-5                  NA                0.9442984   0.8871080   1.0014887
12-15 months   ki1000108-IRC              INDIA        6-7                  NA                0.9958143   0.8766308   1.1149978
12-15 months   ki1000108-IRC              INDIA        8+                   NA                0.9386689   0.8471528   1.0301850
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.6812990   0.0330379   1.3295601
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                1.1076441   1.0387239   1.1765644
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.9930350   0.8038000   1.1822699
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                1.0339962   0.8084125   1.2595798
12-15 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.7131232   0.6350469   0.7911995
12-15 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.6910802   0.6367111   0.7454493
12-15 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.7352019   0.6509826   0.8194212
12-15 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.7985666   0.6136690   0.9834642
12-15 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.9341087   0.8711069   0.9971104
12-15 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.9516887   0.9083906   0.9949869
12-15 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.9427411   0.8743763   1.0111060
12-15 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.9421735   0.8690161   1.0153308
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                1.0867960   1.0200190   1.1535729
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.9805193   0.9382412   1.0227975
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.9697988   0.9054024   1.0341953
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.9065267   0.8558937   0.9571597
12-15 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                1.0808943   0.9183545   1.2434342
12-15 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.8838018   0.7015990   1.0660046
12-15 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.9406851   0.8189357   1.0624344
12-15 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.9394217   0.7018932   1.1769502
15-18 months   ki1000108-IRC              INDIA        3 or less            NA                0.8650451   0.7804624   0.9496279
15-18 months   ki1000108-IRC              INDIA        4-5                  NA                0.8396849   0.7689975   0.9103723
15-18 months   ki1000108-IRC              INDIA        6-7                  NA                0.8829364   0.8159614   0.9499114
15-18 months   ki1000108-IRC              INDIA        8+                   NA                0.8645607   0.7673572   0.9617642
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.8439576   0.7490367   0.9388785
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.7874165   0.7326515   0.8421815
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.7901935   0.7223050   0.8580820
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.8429385   0.7446204   0.9412565
15-18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.7950840   0.6879472   0.9022208
15-18 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.8045050   0.7450525   0.8639575
15-18 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.7900246   0.6883083   0.8917409
15-18 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.7586091   0.6419928   0.8752254
15-18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.8627568   0.8012781   0.9242355
15-18 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.8556077   0.8203920   0.8908234
15-18 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.8657523   0.8099375   0.9215672
15-18 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.8515280   0.7808143   0.9222418
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.8404998   0.7855022   0.8954975
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.9330614   0.8928686   0.9732541
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.9215336   0.8604168   0.9826504
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.9280310   0.8751749   0.9808871
15-18 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.7577327   0.6222929   0.8931725
15-18 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.8562644   0.7552419   0.9572869
15-18 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.8555175   0.6775025   1.0335325
15-18 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.7918815   0.6536764   0.9300866
18-21 months   ki1000108-IRC              INDIA        3 or less            NA                0.8050352   0.7048247   0.9052457
18-21 months   ki1000108-IRC              INDIA        4-5                  NA                0.7481772   0.6869101   0.8094442
18-21 months   ki1000108-IRC              INDIA        6-7                  NA                0.8058407   0.7149895   0.8966919
18-21 months   ki1000108-IRC              INDIA        8+                   NA                0.7244221   0.6499987   0.7988454
18-21 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.7519467   0.6730246   0.8308689
18-21 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.7395636   0.6853740   0.7937532
18-21 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.6770257   0.5889445   0.7651070
18-21 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.7269786   0.6362936   0.8176636
18-21 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.8632792   0.7880795   0.9384790
18-21 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.8445851   0.8012617   0.8879085
18-21 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.8212669   0.7516057   0.8909280
18-21 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.7832252   0.7218597   0.8445908
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.9290693   0.8317060   1.0264327
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.7933045   0.7592294   0.8273797
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.7618272   0.7093169   0.8143376
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.8344825   0.7803485   0.8886165
18-21 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.8402934   0.7540911   0.9264956
18-21 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.7662401   0.7021940   0.8302862
18-21 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.8964435   0.8100350   0.9828520
18-21 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.7158281   0.3584296   1.0732267
21-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.8224443   0.6732880   0.9716005
21-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.6776421   0.6035952   0.7516890
21-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.6543723   0.5821421   0.7266024
21-24 months   ki1000108-IRC              INDIA        8+                   NA                0.7360445   0.6594781   0.8126108
21-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.7196092   0.6119554   0.8272629
21-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.7002606   0.6487400   0.7517813
21-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.7202367   0.6397337   0.8007398
21-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.7437060   0.6688119   0.8186001
21-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.8330550   0.7731061   0.8930039
21-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.7561391   0.7204594   0.7918189
21-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.7339911   0.6760586   0.7919235
21-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.7384969   0.6653068   0.8116869
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.7875175   0.7154553   0.8595796
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.8239567   0.7854075   0.8625058
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.8167958   0.7543438   0.8792478
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.7393108   0.6742509   0.8043707
21-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.7493902   0.6568543   0.8419261
21-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.7239998   0.6505201   0.7974795
21-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.7765276   0.6901644   0.8628907
21-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.7900404   0.6627397   0.9173412


### Parameter: E(Y)


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC              INDIA        NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                3.1292449   3.0928504   3.1656393
3-6 months     ki1000108-IRC              INDIA        NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                2.0057973   1.9693775   2.0422170
6-9 months     ki1000108-IRC              INDIA        NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                1.1426155   1.1021386   1.1830923
6-9 months     ki1017093-NIH-Birth        BANGLADESH   NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1148112-LCNI-5           MALAWI       NA                   NA                1.4589363   1.4224162   1.4954563
9-12 months    ki1000108-IRC              INDIA        NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1148112-LCNI-5           MALAWI       NA                   NA                1.1007887   1.0539615   1.1476158
12-15 months   ki1000108-IRC              INDIA        NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.9578403   0.8612449   1.0544357
15-18 months   ki1000108-IRC              INDIA        NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.7947861   0.7590601   0.8305122
15-18 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.8227868   0.7513696   0.8942040
18-21 months   ki1000108-IRC              INDIA        NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.8198090   0.7732927   0.8663254
21-24 months   ki1000108-IRC              INDIA        NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.7505036   0.7048983   0.7961088


### Parameter: ATE


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0832824   -0.4081053    0.2415405
0-3 months     ki1000108-IRC              INDIA        6-7                  3 or less          0.0861325   -0.2759915    0.4482565
0-3 months     ki1000108-IRC              INDIA        8+                   3 or less         -0.2098456   -0.5578295    0.1381383
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0377347   -0.1936753    0.1182060
0-3 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0074914   -0.1894848    0.2044675
0-3 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0760934   -0.1184205    0.2706074
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0747756   -0.2131438    0.0635926
0-3 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.1460069   -0.3148530    0.0228392
0-3 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.2409685   -0.4187299   -0.0632071
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0337541   -0.1703784    0.1028702
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0580028   -0.0978130    0.2138186
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.1885790    0.0396891    0.3374689
3-6 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        4-5                  3 or less         -0.0063858   -0.2189205    0.2061489
3-6 months     ki1000108-IRC              INDIA        6-7                  3 or less         -0.0072188   -0.2239011    0.2094635
3-6 months     ki1000108-IRC              INDIA        8+                   3 or less          0.0971163   -0.1381315    0.3323641
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0809215   -0.2059379    0.0440949
3-6 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0586696   -0.0883727    0.2057119
3-6 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0193939   -0.1419181    0.1807060
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0266577   -0.0933754    0.1466907
3-6 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.1216599   -0.0385238    0.2818437
3-6 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0809608   -0.2230919    0.0611704
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0663750   -0.0572890    0.1900391
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0834214   -0.0625787    0.2294215
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1004247   -0.2459355    0.0450860
6-9 months     ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA        4-5                  3 or less          0.0516248   -0.0810737    0.1843232
6-9 months     ki1000108-IRC              INDIA        6-7                  3 or less          0.1159717   -0.0330887    0.2650321
6-9 months     ki1000108-IRC              INDIA        8+                   3 or less          0.0413364   -0.1179648    0.2006376
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less          0.0051233   -0.1850843    0.1953308
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less          0.0068880   -0.1883771    0.2021531
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0487831   -0.2559145    0.1583484
6-9 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0850786   -0.1933695    0.0232123
6-9 months     ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.1266163   -0.2541530    0.0009204
6-9 months     ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.1021421   -0.2365595    0.0322753
6-9 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0032580   -0.0880965    0.0815804
6-9 months     ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0598669   -0.1759074    0.0561736
6-9 months     ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.1263883   -0.2210623   -0.0317142
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1112565   -0.2164467   -0.0060664
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1022757   -0.2299535    0.0254022
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1136196   -0.2259246   -0.0013145
6-9 months     ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0297189   -0.0619040    0.1213418
6-9 months     ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0630334   -0.0469910    0.1730578
6-9 months     ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0094541   -0.1755960    0.1566878
9-12 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA        4-5                  3 or less          0.0146268   -0.1052581    0.1345118
9-12 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.0809252   -0.2005122    0.0386619
9-12 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.1646131   -0.2876948   -0.0415313
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.6726112   -1.7758489    0.4306265
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.8145362   -1.9123477    0.2832753
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.6855585   -1.8441585    0.4730414
9-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0015646   -0.0994509    0.0963216
9-12 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0748722   -0.0577736    0.2075180
9-12 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0360762   -0.0964299    0.1685822
9-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0323767   -0.1067790    0.0420256
9-12 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0551234   -0.1401471    0.0299003
9-12 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0225178   -0.1195066    0.0744709
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0079832   -0.0798192    0.0638529
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0744332   -0.1663403    0.0174739
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0112355   -0.0909066    0.0684356
9-12 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0544592   -0.1800500    0.0711315
9-12 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0531175   -0.1980578    0.0918228
9-12 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0080773   -0.1572475    0.1734021
12-15 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0523289   -0.1765856    0.0719278
12-15 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0008130   -0.1630353    0.1614093
12-15 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0579584   -0.2005752    0.0846584
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less          0.4263452   -0.2258152    1.0785055
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less          0.3117360   -0.3636857    0.9871577
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less          0.3526972   -0.3339833    1.0393777
12-15 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0220430   -0.1176950    0.0736090
12-15 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0220787   -0.0942511    0.1384085
12-15 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0854434   -0.1156492    0.2865361
12-15 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0175801   -0.0591160    0.0942762
12-15 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0086325   -0.0845052    0.1017702
12-15 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less          0.0080648   -0.0885075    0.1046371
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1062766   -0.1851672   -0.0273860
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1169971   -0.2094890   -0.0245053
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1802693   -0.2637364   -0.0968022
12-15 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.1970925   -0.4412586    0.0470735
12-15 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.1402093   -0.3432908    0.0628723
12-15 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.1414726   -0.4292903    0.1463450
15-18 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0253603   -0.1356359    0.0849154
15-18 months   ki1000108-IRC              INDIA        6-7                  3 or less          0.0178913   -0.0900297    0.1258123
15-18 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0004844   -0.1292274    0.1282585
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0565411   -0.1655949    0.0525126
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0537641   -0.1704826    0.0629544
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0010191   -0.1377335    0.1356952
15-18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0094210   -0.1134444    0.1322864
15-18 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0050594   -0.1539640    0.1438453
15-18 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0364749   -0.1953150    0.1223652
15-18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0071491   -0.0780333    0.0637351
15-18 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0029955   -0.0802343    0.0862253
15-18 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0112288   -0.1048224    0.0823648
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0925616    0.0244775    0.1606457
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0810338   -0.0012391    0.1633066
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0875312    0.0111816    0.1638808
15-18 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0985317   -0.0704342    0.2674976
15-18 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0977848   -0.1258964    0.3214660
15-18 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0341488   -0.1593573    0.2276548
18-21 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.0568580   -0.1746009    0.0608848
18-21 months   ki1000108-IRC              INDIA        6-7                  3 or less          0.0008056   -0.1356233    0.1372344
18-21 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0806131   -0.2051887    0.0439624
18-21 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0123831   -0.1085796    0.0838134
18-21 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0749210   -0.1938995    0.0440575
18-21 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0249681   -0.1459467    0.0960104
18-21 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0186942   -0.1054275    0.0680392
18-21 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0420124   -0.1444568    0.0604320
18-21 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0800540   -0.1771314    0.0170234
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1357648   -0.2386732   -0.0328565
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1672421   -0.2777019   -0.0567822
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0945868   -0.2057688    0.0165952
18-21 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0740532   -0.1818877    0.0337812
18-21 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0561501   -0.0662899    0.1785900
18-21 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.1244652   -0.4924193    0.2434889
21-24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.1448022   -0.3113693    0.0217649
21-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.1680720   -0.3334349   -0.0027091
21-24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0863998   -0.2541478    0.0813482
21-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0193485   -0.1387388    0.1000418
21-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0006276   -0.1337968    0.1350520
21-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0240969   -0.1070734    0.1552671
21-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0769159   -0.1467625   -0.0070693
21-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0990640   -0.1826275   -0.0155004
21-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0945582   -0.1892732    0.0001569
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0364392   -0.0457525    0.1186308
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0292783   -0.0664621    0.1250188
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0482067   -0.1454368    0.0490234
21-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0253904   -0.1435836    0.0928028
21-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0271374   -0.0993408    0.1536156
21-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0406503   -0.1170612    0.1983617


### Parameter: PAR


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA        3 or less            NA                -0.0678920   -0.3222454    0.1864613
0-3 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0109824   -0.1123869    0.1343517
0-3 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0876679   -0.2035938    0.0282580
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0113939   -0.1045537    0.1273416
3-6 months     ki1000108-IRC              INDIA        3 or less            NA                 0.0183150   -0.1511860    0.1878160
3-6 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0140845   -0.1092960    0.0811271
3-6 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0447620   -0.0550906    0.1446146
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0589716   -0.0465320    0.1644753
6-9 months     ki1000108-IRC              INDIA        3 or less            NA                 0.0639929   -0.0383923    0.1663781
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0022660   -0.1746942    0.1701622
6-9 months     ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0763556   -0.1573525    0.0046412
6-9 months     ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0118952   -0.0830181    0.0592277
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0933453   -0.1842483   -0.0024422
6-9 months     ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0285347   -0.0353770    0.0924465
9-12 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0511263   -0.1405639    0.0383112
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.6936898   -1.7214345    0.3340549
9-12 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0233987   -0.0548534    0.1016509
9-12 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0340141   -0.0904706    0.0224424
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0198347   -0.0758349    0.0361655
9-12 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0350952   -0.1194023    0.0492119
12-15 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0412734   -0.1445188    0.0619721
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.3454836   -0.2594851    0.9504523
12-15 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0110391   -0.0674310    0.0895091
12-15 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0256414   -0.0341601    0.0854429
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1156565   -0.1794240   -0.0518890
12-15 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.1230540   -0.2652997    0.0191916
15-18 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0059235   -0.0880991    0.0762520
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0491715   -0.1432636    0.0449207
15-18 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0223121   -0.1216301    0.0770059
15-18 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0066570   -0.0625345    0.0492205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0772170    0.0237828    0.1306511
15-18 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0650540   -0.0474351    0.1775432
18-21 months   ki1000108-IRC              INDIA        3 or less            NA                -0.0452330   -0.1396153    0.0491492
18-21 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0227999   -0.0963818    0.0507819
18-21 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0239416   -0.0928939    0.0450108
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1312938   -0.2231640   -0.0394236
18-21 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0204843   -0.0969780    0.0560094
21-24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.1140314   -0.2482986    0.0202357
21-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0023914   -0.0982567    0.0934739
21-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0699160   -0.1235911   -0.0162408
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0118179   -0.0571250    0.0807607
21-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0011134   -0.0741599    0.0763866
