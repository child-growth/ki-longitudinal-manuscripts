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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        gagebrth             swasted   n_cell       n
----------  ---------------  -----------------------------  ------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term          0       52      86
Birth       CMC-V-BCS-2002   INDIA                          Full or late term          1        1      86
Birth       CMC-V-BCS-2002   INDIA                          Preterm                    0       11      86
Birth       CMC-V-BCS-2002   INDIA                          Preterm                    1        0      86
Birth       CMC-V-BCS-2002   INDIA                          Early term                 0       22      86
Birth       CMC-V-BCS-2002   INDIA                          Early term                 1        0      86
Birth       COHORTS          GUATEMALA                      Full or late term          0      294     572
Birth       COHORTS          GUATEMALA                      Full or late term          1       29     572
Birth       COHORTS          GUATEMALA                      Preterm                    0       69     572
Birth       COHORTS          GUATEMALA                      Preterm                    1        9     572
Birth       COHORTS          GUATEMALA                      Early term                 0      162     572
Birth       COHORTS          GUATEMALA                      Early term                 1        9     572
Birth       COHORTS          INDIA                          Full or late term          0      525    1229
Birth       COHORTS          INDIA                          Full or late term          1       28    1229
Birth       COHORTS          INDIA                          Preterm                    0      245    1229
Birth       COHORTS          INDIA                          Preterm                    1       14    1229
Birth       COHORTS          INDIA                          Early term                 0      403    1229
Birth       COHORTS          INDIA                          Early term                 1       14    1229
Birth       COHORTS          PHILIPPINES                    Full or late term          0     1100    2874
Birth       COHORTS          PHILIPPINES                    Full or late term          1       35    2874
Birth       COHORTS          PHILIPPINES                    Preterm                    0      546    2874
Birth       COHORTS          PHILIPPINES                    Preterm                    1       33    2874
Birth       COHORTS          PHILIPPINES                    Early term                 0     1110    2874
Birth       COHORTS          PHILIPPINES                    Early term                 1       50    2874
Birth       IRC              INDIA                          Full or late term          0      187     328
Birth       IRC              INDIA                          Full or late term          1       26     328
Birth       IRC              INDIA                          Preterm                    0       22     328
Birth       IRC              INDIA                          Preterm                    1       10     328
Birth       IRC              INDIA                          Early term                 0       67     328
Birth       IRC              INDIA                          Early term                 1       16     328
Birth       JiVitA-3         BANGLADESH                     Full or late term          0     9488   17161
Birth       JiVitA-3         BANGLADESH                     Full or late term          1      180   17161
Birth       JiVitA-3         BANGLADESH                     Preterm                    0     2683   17161
Birth       JiVitA-3         BANGLADESH                     Preterm                    1       72   17161
Birth       JiVitA-3         BANGLADESH                     Early term                 0     4656   17161
Birth       JiVitA-3         BANGLADESH                     Early term                 1       82   17161
Birth       Keneba           GAMBIA                         Full or late term          0      652    1439
Birth       Keneba           GAMBIA                         Full or late term          1       57    1439
Birth       Keneba           GAMBIA                         Preterm                    0      191    1439
Birth       Keneba           GAMBIA                         Preterm                    1       15    1439
Birth       Keneba           GAMBIA                         Early term                 0      496    1439
Birth       Keneba           GAMBIA                         Early term                 1       28    1439
Birth       NIH-Crypto       BANGLADESH                     Full or late term          0      158     707
Birth       NIH-Crypto       BANGLADESH                     Full or late term          1        2     707
Birth       NIH-Crypto       BANGLADESH                     Preterm                    0      218     707
Birth       NIH-Crypto       BANGLADESH                     Preterm                    1       22     707
Birth       NIH-Crypto       BANGLADESH                     Early term                 0      284     707
Birth       NIH-Crypto       BANGLADESH                     Early term                 1       23     707
Birth       PROBIT           BELARUS                        Full or late term          0     6613   13817
Birth       PROBIT           BELARUS                        Full or late term          1      452   13817
Birth       PROBIT           BELARUS                        Preterm                    0      441   13817
Birth       PROBIT           BELARUS                        Preterm                    1       26   13817
Birth       PROBIT           BELARUS                        Early term                 0     5844   13817
Birth       PROBIT           BELARUS                        Early term                 1      441   13817
6 months    CMC-V-BCS-2002   INDIA                          Full or late term          0      205     346
6 months    CMC-V-BCS-2002   INDIA                          Full or late term          1        7     346
6 months    CMC-V-BCS-2002   INDIA                          Preterm                    0       50     346
6 months    CMC-V-BCS-2002   INDIA                          Preterm                    1        1     346
6 months    CMC-V-BCS-2002   INDIA                          Early term                 0       82     346
6 months    CMC-V-BCS-2002   INDIA                          Early term                 1        1     346
6 months    COHORTS          GUATEMALA                      Full or late term          0      386     714
6 months    COHORTS          GUATEMALA                      Full or late term          1        3     714
6 months    COHORTS          GUATEMALA                      Preterm                    0      113     714
6 months    COHORTS          GUATEMALA                      Preterm                    1        1     714
6 months    COHORTS          GUATEMALA                      Early term                 0      210     714
6 months    COHORTS          GUATEMALA                      Early term                 1        1     714
6 months    COHORTS          INDIA                          Full or late term          0      552    1312
6 months    COHORTS          INDIA                          Full or late term          1       16    1312
6 months    COHORTS          INDIA                          Preterm                    0      292    1312
6 months    COHORTS          INDIA                          Preterm                    1        7    1312
6 months    COHORTS          INDIA                          Early term                 0      428    1312
6 months    COHORTS          INDIA                          Early term                 1       17    1312
6 months    COHORTS          PHILIPPINES                    Full or late term          0     1017    2685
6 months    COHORTS          PHILIPPINES                    Full or late term          1       11    2685
6 months    COHORTS          PHILIPPINES                    Preterm                    0      564    2685
6 months    COHORTS          PHILIPPINES                    Preterm                    1        8    2685
6 months    COHORTS          PHILIPPINES                    Early term                 0     1069    2685
6 months    COHORTS          PHILIPPINES                    Early term                 1       16    2685
6 months    IRC              INDIA                          Full or late term          0      238     388
6 months    IRC              INDIA                          Full or late term          1       11     388
6 months    IRC              INDIA                          Preterm                    0       37     388
6 months    IRC              INDIA                          Preterm                    1        5     388
6 months    IRC              INDIA                          Early term                 0       92     388
6 months    IRC              INDIA                          Early term                 1        5     388
6 months    JiVitA-3         BANGLADESH                     Full or late term          0     8401   15989
6 months    JiVitA-3         BANGLADESH                     Full or late term          1      110   15989
6 months    JiVitA-3         BANGLADESH                     Preterm                    0     3001   15989
6 months    JiVitA-3         BANGLADESH                     Preterm                    1       46   15989
6 months    JiVitA-3         BANGLADESH                     Early term                 0     4368   15989
6 months    JiVitA-3         BANGLADESH                     Early term                 1       63   15989
6 months    Keneba           GAMBIA                         Full or late term          0      648    1374
6 months    Keneba           GAMBIA                         Full or late term          1       10    1374
6 months    Keneba           GAMBIA                         Preterm                    0      204    1374
6 months    Keneba           GAMBIA                         Preterm                    1        3    1374
6 months    Keneba           GAMBIA                         Early term                 0      501    1374
6 months    Keneba           GAMBIA                         Early term                 1        8    1374
6 months    NIH-Crypto       BANGLADESH                     Full or late term          0      155     715
6 months    NIH-Crypto       BANGLADESH                     Full or late term          1        0     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                    0      251     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                    1        0     715
6 months    NIH-Crypto       BANGLADESH                     Early term                 0      309     715
6 months    NIH-Crypto       BANGLADESH                     Early term                 1        0     715
6 months    PROBIT           BELARUS                        Full or late term          0     8002   15757
6 months    PROBIT           BELARUS                        Full or late term          1        4   15757
6 months    PROBIT           BELARUS                        Preterm                    0      550   15757
6 months    PROBIT           BELARUS                        Preterm                    1        1   15757
6 months    PROBIT           BELARUS                        Early term                 0     7196   15757
6 months    PROBIT           BELARUS                        Early term                 1        4   15757
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1159    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        8    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      289    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        1    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      444    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        1    1902
24 months   CMC-V-BCS-2002   INDIA                          Full or late term          0      213     350
24 months   CMC-V-BCS-2002   INDIA                          Full or late term          1        1     350
24 months   CMC-V-BCS-2002   INDIA                          Preterm                    0       51     350
24 months   CMC-V-BCS-2002   INDIA                          Preterm                    1        1     350
24 months   CMC-V-BCS-2002   INDIA                          Early term                 0       84     350
24 months   CMC-V-BCS-2002   INDIA                          Early term                 1        0     350
24 months   COHORTS          GUATEMALA                      Full or late term          0      374     667
24 months   COHORTS          GUATEMALA                      Full or late term          1        3     667
24 months   COHORTS          GUATEMALA                      Preterm                    0      109     667
24 months   COHORTS          GUATEMALA                      Preterm                    1        0     667
24 months   COHORTS          GUATEMALA                      Early term                 0      181     667
24 months   COHORTS          GUATEMALA                      Early term                 1        0     667
24 months   COHORTS          INDIA                          Full or late term          0      555    1298
24 months   COHORTS          INDIA                          Full or late term          1        4    1298
24 months   COHORTS          INDIA                          Preterm                    0      301    1298
24 months   COHORTS          INDIA                          Preterm                    1        2    1298
24 months   COHORTS          INDIA                          Early term                 0      431    1298
24 months   COHORTS          INDIA                          Early term                 1        5    1298
24 months   COHORTS          PHILIPPINES                    Full or late term          0      931    2428
24 months   COHORTS          PHILIPPINES                    Full or late term          1        8    2428
24 months   COHORTS          PHILIPPINES                    Preterm                    0      511    2428
24 months   COHORTS          PHILIPPINES                    Preterm                    1        6    2428
24 months   COHORTS          PHILIPPINES                    Early term                 0      961    2428
24 months   COHORTS          PHILIPPINES                    Early term                 1       11    2428
24 months   IRC              INDIA                          Full or late term          0      247     390
24 months   IRC              INDIA                          Full or late term          1        3     390
24 months   IRC              INDIA                          Preterm                    0       42     390
24 months   IRC              INDIA                          Preterm                    1        0     390
24 months   IRC              INDIA                          Early term                 0       96     390
24 months   IRC              INDIA                          Early term                 1        2     390
24 months   JiVitA-3         BANGLADESH                     Full or late term          0     4155    8173
24 months   JiVitA-3         BANGLADESH                     Full or late term          1      154    8173
24 months   JiVitA-3         BANGLADESH                     Preterm                    0     1528    8173
24 months   JiVitA-3         BANGLADESH                     Preterm                    1       70    8173
24 months   JiVitA-3         BANGLADESH                     Early term                 0     2173    8173
24 months   JiVitA-3         BANGLADESH                     Early term                 1       93    8173
24 months   Keneba           GAMBIA                         Full or late term          0      548    1157
24 months   Keneba           GAMBIA                         Full or late term          1       10    1157
24 months   Keneba           GAMBIA                         Preterm                    0      166    1157
24 months   Keneba           GAMBIA                         Preterm                    1        2    1157
24 months   Keneba           GAMBIA                         Early term                 0      421    1157
24 months   Keneba           GAMBIA                         Early term                 1       10    1157
24 months   NIH-Crypto       BANGLADESH                     Full or late term          0       78     514
24 months   NIH-Crypto       BANGLADESH                     Full or late term          1        1     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                    0      205     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                    1        3     514
24 months   NIH-Crypto       BANGLADESH                     Early term                 0      227     514
24 months   NIH-Crypto       BANGLADESH                     Early term                 1        0     514
24 months   PROBIT           BELARUS                        Full or late term          0     1988    3970
24 months   PROBIT           BELARUS                        Full or late term          1        3    3970
24 months   PROBIT           BELARUS                        Preterm                    0      136    3970
24 months   PROBIT           BELARUS                        Preterm                    1        0    3970
24 months   PROBIT           BELARUS                        Early term                 0     1839    3970
24 months   PROBIT           BELARUS                        Early term                 1        4    3970
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        0       6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/b80d2dbb-762b-4082-8327-a5f9546d3e25/4ff237dd-43ea-4f5b-9f90-de7d0647cb04/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b80d2dbb-762b-4082-8327-a5f9546d3e25/4ff237dd-43ea-4f5b-9f90-de7d0647cb04/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b80d2dbb-762b-4082-8327-a5f9546d3e25/4ff237dd-43ea-4f5b-9f90-de7d0647cb04/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b80d2dbb-762b-4082-8327-a5f9546d3e25/4ff237dd-43ea-4f5b-9f90-de7d0647cb04/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS    GUATEMALA     Full or late term    NA                0.0897833   0.0585802   0.1209863
Birth       COHORTS    GUATEMALA     Preterm              NA                0.1153846   0.0444216   0.1863476
Birth       COHORTS    GUATEMALA     Early term           NA                0.0526316   0.0191341   0.0861291
Birth       COHORTS    INDIA         Full or late term    NA                0.0497579   0.0316597   0.0678561
Birth       COHORTS    INDIA         Preterm              NA                0.0584866   0.0308105   0.0861626
Birth       COHORTS    INDIA         Early term           NA                0.0334129   0.0162250   0.0506007
Birth       COHORTS    PHILIPPINES   Full or late term    NA                0.0312133   0.0211423   0.0412842
Birth       COHORTS    PHILIPPINES   Preterm              NA                0.0576312   0.0387177   0.0765446
Birth       COHORTS    PHILIPPINES   Early term           NA                0.0427335   0.0310568   0.0544102
Birth       IRC        INDIA         Full or late term    NA                0.1227438   0.0784931   0.1669945
Birth       IRC        INDIA         Preterm              NA                0.3154773   0.1483984   0.4825561
Birth       IRC        INDIA         Early term           NA                0.1957345   0.1090710   0.2823981
Birth       JiVitA-3   BANGLADESH    Full or late term    NA                0.0185752   0.0152875   0.0218629
Birth       JiVitA-3   BANGLADESH    Preterm              NA                0.0257663   0.0202371   0.0312956
Birth       JiVitA-3   BANGLADESH    Early term           NA                0.0175855   0.0132872   0.0218839
Birth       Keneba     GAMBIA        Full or late term    NA                0.0806374   0.0605483   0.1007266
Birth       Keneba     GAMBIA        Preterm              NA                0.0724215   0.0370629   0.1077802
Birth       Keneba     GAMBIA        Early term           NA                0.0533006   0.0340759   0.0725252
Birth       PROBIT     BELARUS       Full or late term    NA                0.0629947   0.0333001   0.0926893
Birth       PROBIT     BELARUS       Preterm              NA                0.0509206   0.0009001   0.1009412
Birth       PROBIT     BELARUS       Early term           NA                0.0692276   0.0290139   0.1094413
6 months    COHORTS    INDIA         Full or late term    NA                0.0281690   0.0145571   0.0417810
6 months    COHORTS    INDIA         Preterm              NA                0.0234114   0.0062660   0.0405568
6 months    COHORTS    INDIA         Early term           NA                0.0382022   0.0203858   0.0560186
6 months    COHORTS    PHILIPPINES   Full or late term    NA                0.0107004   0.0044097   0.0169910
6 months    COHORTS    PHILIPPINES   Preterm              NA                0.0139860   0.0043606   0.0236114
6 months    COHORTS    PHILIPPINES   Early term           NA                0.0147465   0.0075730   0.0219201
6 months    IRC        INDIA         Full or late term    NA                0.0441767   0.0186206   0.0697328
6 months    IRC        INDIA         Preterm              NA                0.1190476   0.0209812   0.2171141
6 months    IRC        INDIA         Early term           NA                0.0515464   0.0074879   0.0956049
6 months    JiVitA-3   BANGLADESH    Full or late term    NA                0.0130052   0.0102765   0.0157339
6 months    JiVitA-3   BANGLADESH    Preterm              NA                0.0148413   0.0099094   0.0197731
6 months    JiVitA-3   BANGLADESH    Early term           NA                0.0143208   0.0105728   0.0180687
24 months   COHORTS    PHILIPPINES   Full or late term    NA                0.0085197   0.0026400   0.0143995
24 months   COHORTS    PHILIPPINES   Preterm              NA                0.0116054   0.0023715   0.0208394
24 months   COHORTS    PHILIPPINES   Early term           NA                0.0113169   0.0046657   0.0179680
24 months   JiVitA-3   BANGLADESH    Full or late term    NA                0.0364502   0.0303285   0.0425719
24 months   JiVitA-3   BANGLADESH    Preterm              NA                0.0434913   0.0328773   0.0541053
24 months   JiVitA-3   BANGLADESH    Early term           NA                0.0410560   0.0325503   0.0495616


### Parameter: E(Y)


agecat      studyid    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS    GUATEMALA     NA                   NA                0.0821678   0.0596429   0.1046927
Birth       COHORTS    INDIA         NA                   NA                0.0455655   0.0339017   0.0572293
Birth       COHORTS    PHILIPPINES   NA                   NA                0.0410578   0.0338021   0.0483134
Birth       IRC        INDIA         NA                   NA                0.1585366   0.1189492   0.1981239
Birth       JiVitA-3   BANGLADESH    NA                   NA                0.0194627   0.0170189   0.0219065
Birth       Keneba     GAMBIA        NA                   NA                0.0694927   0.0563496   0.0826358
Birth       PROBIT     BELARUS       NA                   NA                0.0665123   0.0333611   0.0996634
6 months    COHORTS    INDIA         NA                   NA                0.0304878   0.0211813   0.0397943
6 months    COHORTS    PHILIPPINES   NA                   NA                0.0130354   0.0087443   0.0173265
6 months    IRC        INDIA         NA                   NA                0.0541237   0.0315811   0.0766663
6 months    JiVitA-3   BANGLADESH    NA                   NA                0.0136969   0.0115537   0.0158401
24 months   COHORTS    PHILIPPINES   NA                   NA                0.0102965   0.0062804   0.0143127
24 months   JiVitA-3   BANGLADESH    NA                   NA                0.0387862   0.0342718   0.0433007


### Parameter: RR


agecat      studyid    country       intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------  ---------  ------------  -------------------  ------------------  ----------  ----------  ---------
Birth       COHORTS    GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       COHORTS    GUATEMALA     Preterm              Full or late term    1.2851459   0.6341034   2.604622
Birth       COHORTS    GUATEMALA     Early term           Full or late term    0.5862069   0.2838695   1.210551
Birth       COHORTS    INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       COHORTS    INDIA         Preterm              Full or late term    1.1754216   0.6470025   2.135410
Birth       COHORTS    INDIA         Early term           Full or late term    0.6715083   0.3573859   1.261727
Birth       COHORTS    PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       COHORTS    PHILIPPINES   Preterm              Full or late term    1.8463674   1.1653429   2.925382
Birth       COHORTS    PHILIPPINES   Early term           Full or late term    1.3690803   0.8970984   2.089381
Birth       IRC        INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       IRC        INDIA         Preterm              Full or late term    2.5702086   1.3536248   4.880209
Birth       IRC        INDIA         Early term           Full or late term    1.5946589   0.8983373   2.830715
Birth       JiVitA-3   BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       JiVitA-3   BANGLADESH    Preterm              Full or late term    1.3871334   1.0457371   1.839984
Birth       JiVitA-3   BANGLADESH    Early term           Full or late term    0.9467184   0.7077985   1.266287
Birth       Keneba     GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       Keneba     GAMBIA        Preterm              Full or late term    0.8981130   0.5191166   1.553807
Birth       Keneba     GAMBIA        Early term           Full or late term    0.6609902   0.4263546   1.024753
Birth       PROBIT     BELARUS       Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       PROBIT     BELARUS       Preterm              Full or late term    0.8083318   0.3674856   1.778030
Birth       PROBIT     BELARUS       Early term           Full or late term    1.0989431   0.7837130   1.540967
6 months    COHORTS    INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    COHORTS    INDIA         Preterm              Full or late term    0.8311037   0.3456219   1.998523
6 months    COHORTS    INDIA         Early term           Full or late term    1.3561798   0.6928795   2.654464
6 months    COHORTS    PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    COHORTS    PHILIPPINES   Preterm              Full or late term    1.3070566   0.5286910   3.231371
6 months    COHORTS    PHILIPPINES   Early term           Full or late term    1.3781315   0.6425394   2.955845
6 months    IRC        INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    IRC        INDIA         Preterm              Full or late term    2.6948052   0.9848457   7.373718
6 months    IRC        INDIA         Early term           Full or late term    1.1668229   0.4156900   3.275219
6 months    JiVitA-3   BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    JiVitA-3   BANGLADESH    Preterm              Full or late term    1.1411807   0.7838834   1.661336
6 months    JiVitA-3   BANGLADESH    Early term           Full or late term    1.1011583   0.8003349   1.515053
24 months   COHORTS    PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   COHORTS    PHILIPPINES   Preterm              Full or late term    1.3621857   0.4751277   3.905371
24 months   COHORTS    PHILIPPINES   Early term           Full or late term    1.3283179   0.5365669   3.288366
24 months   JiVitA-3   BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   JiVitA-3   BANGLADESH    Preterm              Full or late term    1.1931695   0.8875353   1.604053
24 months   JiVitA-3   BANGLADESH    Early term           Full or late term    1.1263576   0.8628260   1.470379


### Parameter: PAR


agecat      studyid    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS    GUATEMALA     Full or late term    NA                -0.0076154   -0.0271452   0.0119143
Birth       COHORTS    INDIA         Full or late term    NA                -0.0041924   -0.0170810   0.0086961
Birth       COHORTS    PHILIPPINES   Full or late term    NA                 0.0098445    0.0012393   0.0184497
Birth       IRC        INDIA         Full or late term    NA                 0.0357928    0.0040631   0.0675224
Birth       JiVitA-3   BANGLADESH    Full or late term    NA                 0.0008875   -0.0012009   0.0029759
Birth       Keneba     GAMBIA        Full or late term    NA                -0.0111447   -0.0245765   0.0022870
Birth       PROBIT     BELARUS       Full or late term    NA                 0.0035176   -0.0083878   0.0154229
6 months    COHORTS    INDIA         Full or late term    NA                 0.0023188   -0.0082390   0.0128766
6 months    COHORTS    PHILIPPINES   Full or late term    NA                 0.0023350   -0.0029266   0.0075966
6 months    IRC        INDIA         Full or late term    NA                 0.0099470   -0.0080254   0.0279194
6 months    JiVitA-3   BANGLADESH    Full or late term    NA                 0.0006917   -0.0010942   0.0024777
24 months   COHORTS    PHILIPPINES   Full or late term    NA                 0.0017768   -0.0031181   0.0066718
24 months   JiVitA-3   BANGLADESH    Full or late term    NA                 0.0023360   -0.0020171   0.0066892


### Parameter: PAF


agecat      studyid    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS    GUATEMALA     Full or late term    NA                -0.0926816   -0.3568340   0.1200448
Birth       COHORTS    INDIA         Full or late term    NA                -0.0920090   -0.4135709   0.1564033
Birth       COHORTS    PHILIPPINES   Full or late term    NA                 0.2397716    0.0041420   0.4196490
Birth       IRC        INDIA         Full or late term    NA                 0.2257697    0.0050787   0.3975075
Birth       JiVitA-3   BANGLADESH    Full or late term    NA                 0.0455993   -0.0684369   0.1474642
Birth       Keneba     GAMBIA        Full or late term    NA                -0.1603729   -0.3683706   0.0160084
Birth       PROBIT     BELARUS       Full or late term    NA                 0.0528860   -0.1317112   0.2073728
6 months    COHORTS    INDIA         Full or late term    NA                 0.0760563   -0.3429950   0.3643521
6 months    COHORTS    PHILIPPINES   Full or late term    NA                 0.1791273   -0.3353175   0.4953769
6 months    IRC        INDIA         Full or late term    NA                 0.1837828   -0.2138954   0.4511795
6 months    JiVitA-3   BANGLADESH    Full or late term    NA                 0.0505035   -0.0891396   0.1722424
24 months   COHORTS    PHILIPPINES   Full or late term    NA                 0.1725666   -0.4614571   0.5315319
24 months   JiVitA-3   BANGLADESH    Full or late term    NA                 0.0602288   -0.0588557   0.1659204
