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

**Outcome Variable:** wasted

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

agecat      studyid          country                        gagebrth             wasted   n_cell       n
----------  ---------------  -----------------------------  ------------------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term         0       47      86
Birth       CMC-V-BCS-2002   INDIA                          Full or late term         1        6      86
Birth       CMC-V-BCS-2002   INDIA                          Preterm                   0        8      86
Birth       CMC-V-BCS-2002   INDIA                          Preterm                   1        3      86
Birth       CMC-V-BCS-2002   INDIA                          Early term                0       20      86
Birth       CMC-V-BCS-2002   INDIA                          Early term                1        2      86
Birth       COHORTS          GUATEMALA                      Full or late term         0      240     572
Birth       COHORTS          GUATEMALA                      Full or late term         1       83     572
Birth       COHORTS          GUATEMALA                      Preterm                   0       55     572
Birth       COHORTS          GUATEMALA                      Preterm                   1       23     572
Birth       COHORTS          GUATEMALA                      Early term                0      131     572
Birth       COHORTS          GUATEMALA                      Early term                1       40     572
Birth       COHORTS          INDIA                          Full or late term         0      462    1229
Birth       COHORTS          INDIA                          Full or late term         1       91    1229
Birth       COHORTS          INDIA                          Preterm                   0      205    1229
Birth       COHORTS          INDIA                          Preterm                   1       54    1229
Birth       COHORTS          INDIA                          Early term                0      345    1229
Birth       COHORTS          INDIA                          Early term                1       72    1229
Birth       COHORTS          PHILIPPINES                    Full or late term         0      996    2874
Birth       COHORTS          PHILIPPINES                    Full or late term         1      139    2874
Birth       COHORTS          PHILIPPINES                    Preterm                   0      467    2874
Birth       COHORTS          PHILIPPINES                    Preterm                   1      112    2874
Birth       COHORTS          PHILIPPINES                    Early term                0      964    2874
Birth       COHORTS          PHILIPPINES                    Early term                1      196    2874
Birth       IRC              INDIA                          Full or late term         0      164     328
Birth       IRC              INDIA                          Full or late term         1       49     328
Birth       IRC              INDIA                          Preterm                   0       19     328
Birth       IRC              INDIA                          Preterm                   1       13     328
Birth       IRC              INDIA                          Early term                0       58     328
Birth       IRC              INDIA                          Early term                1       25     328
Birth       JiVitA-3         BANGLADESH                     Full or late term         0     8657   17161
Birth       JiVitA-3         BANGLADESH                     Full or late term         1     1011   17161
Birth       JiVitA-3         BANGLADESH                     Preterm                   0     2395   17161
Birth       JiVitA-3         BANGLADESH                     Preterm                   1      360   17161
Birth       JiVitA-3         BANGLADESH                     Early term                0     4218   17161
Birth       JiVitA-3         BANGLADESH                     Early term                1      520   17161
Birth       Keneba           GAMBIA                         Full or late term         0      528    1439
Birth       Keneba           GAMBIA                         Full or late term         1      181    1439
Birth       Keneba           GAMBIA                         Preterm                   0      162    1439
Birth       Keneba           GAMBIA                         Preterm                   1       44    1439
Birth       Keneba           GAMBIA                         Early term                0      396    1439
Birth       Keneba           GAMBIA                         Early term                1      128    1439
Birth       NIH-Crypto       BANGLADESH                     Full or late term         0      141     707
Birth       NIH-Crypto       BANGLADESH                     Full or late term         1       19     707
Birth       NIH-Crypto       BANGLADESH                     Preterm                   0      152     707
Birth       NIH-Crypto       BANGLADESH                     Preterm                   1       88     707
Birth       NIH-Crypto       BANGLADESH                     Early term                0      242     707
Birth       NIH-Crypto       BANGLADESH                     Early term                1       65     707
Birth       PROBIT           BELARUS                        Full or late term         0     5653   13817
Birth       PROBIT           BELARUS                        Full or late term         1     1412   13817
Birth       PROBIT           BELARUS                        Preterm                   0      365   13817
Birth       PROBIT           BELARUS                        Preterm                   1      102   13817
Birth       PROBIT           BELARUS                        Early term                0     4893   13817
Birth       PROBIT           BELARUS                        Early term                1     1392   13817
6 months    CMC-V-BCS-2002   INDIA                          Full or late term         0      183     346
6 months    CMC-V-BCS-2002   INDIA                          Full or late term         1       29     346
6 months    CMC-V-BCS-2002   INDIA                          Preterm                   0       45     346
6 months    CMC-V-BCS-2002   INDIA                          Preterm                   1        6     346
6 months    CMC-V-BCS-2002   INDIA                          Early term                0       76     346
6 months    CMC-V-BCS-2002   INDIA                          Early term                1        7     346
6 months    COHORTS          GUATEMALA                      Full or late term         0      377     714
6 months    COHORTS          GUATEMALA                      Full or late term         1       12     714
6 months    COHORTS          GUATEMALA                      Preterm                   0      110     714
6 months    COHORTS          GUATEMALA                      Preterm                   1        4     714
6 months    COHORTS          GUATEMALA                      Early term                0      202     714
6 months    COHORTS          GUATEMALA                      Early term                1        9     714
6 months    COHORTS          INDIA                          Full or late term         0      502    1312
6 months    COHORTS          INDIA                          Full or late term         1       66    1312
6 months    COHORTS          INDIA                          Preterm                   0      267    1312
6 months    COHORTS          INDIA                          Preterm                   1       32    1312
6 months    COHORTS          INDIA                          Early term                0      384    1312
6 months    COHORTS          INDIA                          Early term                1       61    1312
6 months    COHORTS          PHILIPPINES                    Full or late term         0      977    2685
6 months    COHORTS          PHILIPPINES                    Full or late term         1       51    2685
6 months    COHORTS          PHILIPPINES                    Preterm                   0      538    2685
6 months    COHORTS          PHILIPPINES                    Preterm                   1       34    2685
6 months    COHORTS          PHILIPPINES                    Early term                0     1011    2685
6 months    COHORTS          PHILIPPINES                    Early term                1       74    2685
6 months    IRC              INDIA                          Full or late term         0      223     388
6 months    IRC              INDIA                          Full or late term         1       26     388
6 months    IRC              INDIA                          Preterm                   0       32     388
6 months    IRC              INDIA                          Preterm                   1       10     388
6 months    IRC              INDIA                          Early term                0       80     388
6 months    IRC              INDIA                          Early term                1       17     388
6 months    JiVitA-3         BANGLADESH                     Full or late term         0     7812   15989
6 months    JiVitA-3         BANGLADESH                     Full or late term         1      699   15989
6 months    JiVitA-3         BANGLADESH                     Preterm                   0     2785   15989
6 months    JiVitA-3         BANGLADESH                     Preterm                   1      262   15989
6 months    JiVitA-3         BANGLADESH                     Early term                0     4043   15989
6 months    JiVitA-3         BANGLADESH                     Early term                1      388   15989
6 months    Keneba           GAMBIA                         Full or late term         0      615    1374
6 months    Keneba           GAMBIA                         Full or late term         1       43    1374
6 months    Keneba           GAMBIA                         Preterm                   0      196    1374
6 months    Keneba           GAMBIA                         Preterm                   1       11    1374
6 months    Keneba           GAMBIA                         Early term                0      487    1374
6 months    Keneba           GAMBIA                         Early term                1       22    1374
6 months    NIH-Crypto       BANGLADESH                     Full or late term         0      151     715
6 months    NIH-Crypto       BANGLADESH                     Full or late term         1        4     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                   0      240     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                   1       11     715
6 months    NIH-Crypto       BANGLADESH                     Early term                0      303     715
6 months    NIH-Crypto       BANGLADESH                     Early term                1        6     715
6 months    PROBIT           BELARUS                        Full or late term         0     7961   15757
6 months    PROBIT           BELARUS                        Full or late term         1       45   15757
6 months    PROBIT           BELARUS                        Preterm                   0      545   15757
6 months    PROBIT           BELARUS                        Preterm                   1        6   15757
6 months    PROBIT           BELARUS                        Early term                0     7143   15757
6 months    PROBIT           BELARUS                        Early term                1       57   15757
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         0     1116    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         1       51    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0      273    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   1       17    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                0      428    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       17    1902
24 months   CMC-V-BCS-2002   INDIA                          Full or late term         0      201     350
24 months   CMC-V-BCS-2002   INDIA                          Full or late term         1       13     350
24 months   CMC-V-BCS-2002   INDIA                          Preterm                   0       48     350
24 months   CMC-V-BCS-2002   INDIA                          Preterm                   1        4     350
24 months   CMC-V-BCS-2002   INDIA                          Early term                0       81     350
24 months   CMC-V-BCS-2002   INDIA                          Early term                1        3     350
24 months   COHORTS          GUATEMALA                      Full or late term         0      365     667
24 months   COHORTS          GUATEMALA                      Full or late term         1       12     667
24 months   COHORTS          GUATEMALA                      Preterm                   0      101     667
24 months   COHORTS          GUATEMALA                      Preterm                   1        8     667
24 months   COHORTS          GUATEMALA                      Early term                0      176     667
24 months   COHORTS          GUATEMALA                      Early term                1        5     667
24 months   COHORTS          INDIA                          Full or late term         0      513    1298
24 months   COHORTS          INDIA                          Full or late term         1       46    1298
24 months   COHORTS          INDIA                          Preterm                   0      279    1298
24 months   COHORTS          INDIA                          Preterm                   1       24    1298
24 months   COHORTS          INDIA                          Early term                0      393    1298
24 months   COHORTS          INDIA                          Early term                1       43    1298
24 months   COHORTS          PHILIPPINES                    Full or late term         0      882    2428
24 months   COHORTS          PHILIPPINES                    Full or late term         1       57    2428
24 months   COHORTS          PHILIPPINES                    Preterm                   0      483    2428
24 months   COHORTS          PHILIPPINES                    Preterm                   1       34    2428
24 months   COHORTS          PHILIPPINES                    Early term                0      897    2428
24 months   COHORTS          PHILIPPINES                    Early term                1       75    2428
24 months   IRC              INDIA                          Full or late term         0      233     390
24 months   IRC              INDIA                          Full or late term         1       17     390
24 months   IRC              INDIA                          Preterm                   0       35     390
24 months   IRC              INDIA                          Preterm                   1        7     390
24 months   IRC              INDIA                          Early term                0       92     390
24 months   IRC              INDIA                          Early term                1        6     390
24 months   JiVitA-3         BANGLADESH                     Full or late term         0     3419    8173
24 months   JiVitA-3         BANGLADESH                     Full or late term         1      890    8173
24 months   JiVitA-3         BANGLADESH                     Preterm                   0     1220    8173
24 months   JiVitA-3         BANGLADESH                     Preterm                   1      378    8173
24 months   JiVitA-3         BANGLADESH                     Early term                0     1769    8173
24 months   JiVitA-3         BANGLADESH                     Early term                1      497    8173
24 months   Keneba           GAMBIA                         Full or late term         0      496    1157
24 months   Keneba           GAMBIA                         Full or late term         1       62    1157
24 months   Keneba           GAMBIA                         Preterm                   0      145    1157
24 months   Keneba           GAMBIA                         Preterm                   1       23    1157
24 months   Keneba           GAMBIA                         Early term                0      393    1157
24 months   Keneba           GAMBIA                         Early term                1       38    1157
24 months   NIH-Crypto       BANGLADESH                     Full or late term         0       76     514
24 months   NIH-Crypto       BANGLADESH                     Full or late term         1        3     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                   0      187     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                   1       21     514
24 months   NIH-Crypto       BANGLADESH                     Early term                0      206     514
24 months   NIH-Crypto       BANGLADESH                     Early term                1       21     514
24 months   PROBIT           BELARUS                        Full or late term         0     1976    3970
24 months   PROBIT           BELARUS                        Full or late term         1       15    3970
24 months   PROBIT           BELARUS                        Preterm                   0      133    3970
24 months   PROBIT           BELARUS                        Preterm                   1        3    3970
24 months   PROBIT           BELARUS                        Early term                0     1829    3970
24 months   PROBIT           BELARUS                        Early term                1       14    3970
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1        0       6


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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/68079573-715c-4820-b37d-6b8a5960b721/7003e4e3-4d0c-47da-a121-2ee64f97e12c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/68079573-715c-4820-b37d-6b8a5960b721/7003e4e3-4d0c-47da-a121-2ee64f97e12c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/68079573-715c-4820-b37d-6b8a5960b721/7003e4e3-4d0c-47da-a121-2ee64f97e12c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/68079573-715c-4820-b37d-6b8a5960b721/7003e4e3-4d0c-47da-a121-2ee64f97e12c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      Full or late term    NA                0.2555465   0.2076404   0.3034527
Birth       COHORTS          GUATEMALA                      Preterm              NA                0.3025661   0.1996573   0.4054748
Birth       COHORTS          GUATEMALA                      Early term           NA                0.2293008   0.1651175   0.2934841
Birth       COHORTS          INDIA                          Full or late term    NA                0.1643546   0.1333220   0.1953871
Birth       COHORTS          INDIA                          Preterm              NA                0.2076540   0.1573276   0.2579804
Birth       COHORTS          INDIA                          Early term           NA                0.1763761   0.1395372   0.2132149
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                0.1239041   0.1048921   0.1429161
Birth       COHORTS          PHILIPPINES                    Preterm              NA                0.1966277   0.1644561   0.2287993
Birth       COHORTS          PHILIPPINES                    Early term           NA                0.1678544   0.1462719   0.1894370
Birth       IRC              INDIA                          Full or late term    NA                0.2276156   0.1707894   0.2844418
Birth       IRC              INDIA                          Preterm              NA                0.3521700   0.1761237   0.5282164
Birth       IRC              INDIA                          Early term           NA                0.2842303   0.1840453   0.3844153
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                0.1041120   0.0972383   0.1109856
Birth       JiVitA-3         BANGLADESH                     Preterm              NA                0.1288058   0.1159621   0.1416495
Birth       JiVitA-3         BANGLADESH                     Early term           NA                0.1105631   0.1012452   0.1198810
Birth       Keneba           GAMBIA                         Full or late term    NA                0.2572922   0.2250623   0.2895222
Birth       Keneba           GAMBIA                         Preterm              NA                0.2081073   0.1520820   0.2641326
Birth       Keneba           GAMBIA                         Early term           NA                0.2436539   0.2066186   0.2806891
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1182137   0.0667685   0.1696589
Birth       NIH-Crypto       BANGLADESH                     Preterm              NA                0.3687226   0.3074547   0.4299906
Birth       NIH-Crypto       BANGLADESH                     Early term           NA                0.2127338   0.1666366   0.2588311
Birth       PROBIT           BELARUS                        Full or late term    NA                0.1982684   0.1321318   0.2644051
Birth       PROBIT           BELARUS                        Preterm              NA                0.2091315   0.1085601   0.3097029
Birth       PROBIT           BELARUS                        Early term           NA                0.2194175   0.1468046   0.2920303
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1367925   0.0904694   0.1831155
6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290941   0.2062000
6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                0.0843373   0.0244665   0.1442082
6 months    COHORTS          INDIA                          Full or late term    NA                0.1147481   0.0883539   0.1411423
6 months    COHORTS          INDIA                          Preterm              NA                0.1091248   0.0740486   0.1442010
6 months    COHORTS          INDIA                          Early term           NA                0.1367184   0.1048450   0.1685919
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.0490658   0.0358183   0.0623133
6 months    COHORTS          PHILIPPINES                    Preterm              NA                0.0596282   0.0402007   0.0790557
6 months    COHORTS          PHILIPPINES                    Early term           NA                0.0689156   0.0539133   0.0839180
6 months    IRC              INDIA                          Full or late term    NA                0.1047715   0.0665961   0.1429470
6 months    IRC              INDIA                          Preterm              NA                0.2406062   0.1022222   0.3789902
6 months    IRC              INDIA                          Early term           NA                0.1745830   0.0981017   0.2510642
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                0.0830792   0.0765377   0.0896206
6 months    JiVitA-3         BANGLADESH                     Preterm              NA                0.0821173   0.0714688   0.0927657
6 months    JiVitA-3         BANGLADESH                     Early term           NA                0.0877064   0.0786219   0.0967910
6 months    Keneba           GAMBIA                         Full or late term    NA                0.0653797   0.0464444   0.0843150
6 months    Keneba           GAMBIA                         Preterm              NA                0.0531922   0.0223269   0.0840576
6 months    Keneba           GAMBIA                         Early term           NA                0.0428811   0.0252497   0.0605124
6 months    PROBIT           BELARUS                        Full or late term    NA                0.0056208   0.0032178   0.0080238
6 months    PROBIT           BELARUS                        Preterm              NA                0.0108893   0.0042617   0.0175169
6 months    PROBIT           BELARUS                        Early term           NA                0.0079167   0.0057834   0.0100499
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0435998   0.0318805   0.0553191
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0589475   0.0318118   0.0860832
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0384225   0.0205124   0.0563325
24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0318302   0.0140966   0.0495639
24 months   COHORTS          GUATEMALA                      Preterm              NA                0.0733945   0.0244008   0.1223881
24 months   COHORTS          GUATEMALA                      Early term           NA                0.0276243   0.0037298   0.0515188
24 months   COHORTS          INDIA                          Full or late term    NA                0.0802681   0.0577258   0.1028104
24 months   COHORTS          INDIA                          Preterm              NA                0.0780839   0.0474314   0.1087363
24 months   COHORTS          INDIA                          Early term           NA                0.1031795   0.0746176   0.1317414
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.0610092   0.0457064   0.0763119
24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.0659301   0.0447732   0.0870870
24 months   COHORTS          PHILIPPINES                    Early term           NA                0.0781353   0.0613825   0.0948881
24 months   IRC              INDIA                          Full or late term    NA                0.0680000   0.0367537   0.0992463
24 months   IRC              INDIA                          Preterm              NA                0.1666667   0.0538133   0.2795201
24 months   IRC              INDIA                          Early term           NA                0.0612245   0.0136980   0.1087510
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.2068257   0.1926444   0.2210070
24 months   JiVitA-3         BANGLADESH                     Preterm              NA                0.2338770   0.2122279   0.2555261
24 months   JiVitA-3         BANGLADESH                     Early term           NA                0.2207873   0.2023056   0.2392691
24 months   Keneba           GAMBIA                         Full or late term    NA                0.1191418   0.0925099   0.1457738
24 months   Keneba           GAMBIA                         Preterm              NA                0.1300997   0.0784377   0.1817618
24 months   Keneba           GAMBIA                         Early term           NA                0.0837426   0.0574744   0.1100108


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.2552448   0.2194833   0.2910062
Birth       COHORTS          INDIA                          NA                   NA                0.1765663   0.1552399   0.1978927
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.1555324   0.1422803   0.1687844
Birth       IRC              INDIA                          NA                   NA                0.2652439   0.2173954   0.3130924
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1101917   0.1049992   0.1153842
Birth       Keneba           GAMBIA                         NA                   NA                0.2453092   0.2230705   0.2675480
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROBIT           BELARUS                        NA                   NA                0.2103206   0.1450833   0.2755580
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1213873   0.0869266   0.1558480
6 months    COHORTS          INDIA                          NA                   NA                0.1211890   0.1035235   0.1388545
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0592179   0.0502884   0.0681474
6 months    IRC              INDIA                          NA                   NA                0.1365979   0.1023826   0.1708133
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0843705   0.0794524   0.0892887
6 months    Keneba           GAMBIA                         NA                   NA                0.0553130   0.0432217   0.0674042
6 months    PROBIT           BELARUS                        NA                   NA                0.0068541   0.0051915   0.0085167
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0446898   0.0354016   0.0539780
24 months   COHORTS          GUATEMALA                      NA                   NA                0.0374813   0.0230560   0.0519065
24 months   COHORTS          INDIA                          NA                   NA                0.0870570   0.0717143   0.1023997
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0683690   0.0583283   0.0784097
24 months   IRC              INDIA                          NA                   NA                0.0769231   0.0504429   0.1034032
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2159550   0.2060514   0.2258585
24 months   Keneba           GAMBIA                         NA                   NA                0.1063094   0.0885410   0.1240778


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
Birth       COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       COHORTS          GUATEMALA                      Preterm              Full or late term    1.1839960   0.8028945   1.745991
Birth       COHORTS          GUATEMALA                      Early term           Full or late term    0.8972958   0.6409487   1.256169
Birth       COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       COHORTS          INDIA                          Preterm              Full or late term    1.2634513   0.9295352   1.717320
Birth       COHORTS          INDIA                          Early term           Full or late term    1.0731437   0.8096498   1.422390
Birth       COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       COHORTS          PHILIPPINES                    Preterm              Full or late term    1.5869344   1.2684612   1.985367
Birth       COHORTS          PHILIPPINES                    Early term           Full or late term    1.3547124   1.1092445   1.654500
Birth       IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       IRC              INDIA                          Preterm              Full or late term    1.5472140   0.8843300   2.706989
Birth       IRC              INDIA                          Early term           Full or late term    1.2487295   0.8098276   1.925503
Birth       JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.2371850   1.0955462   1.397136
Birth       JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0619635   0.9563944   1.179186
Birth       Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       Keneba           GAMBIA                         Preterm              Full or late term    0.8088365   0.6011743   1.088231
Birth       Keneba           GAMBIA                         Early term           Full or late term    0.9469928   0.7776931   1.153148
Birth       NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH                     Preterm              Full or late term    3.1191194   1.9574424   4.970213
Birth       NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.7995703   1.1065344   2.926663
Birth       PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       PROBIT           BELARUS                        Preterm              Full or late term    1.0547896   0.6933913   1.604550
Birth       PROBIT           BELARUS                        Early term           Full or late term    1.1066686   0.8852899   1.383406
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.8600406   0.3767610   1.963234
6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6165351   0.2807839   1.353765
6 months    COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    COHORTS          INDIA                          Preterm              Full or late term    0.9509947   0.6407227   1.411517
6 months    COHORTS          INDIA                          Early term           Full or late term    1.1914660   0.8594266   1.651789
6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    1.2152704   0.7962072   1.854897
6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    1.4045564   0.9933609   1.985964
6 months    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    IRC              INDIA                          Preterm              Full or late term    2.2964843   1.1614950   4.540562
6 months    IRC              INDIA                          Early term           Full or late term    1.6663205   0.9418284   2.948121
6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term    0.9884217   0.8518749   1.146855
6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0556970   0.9297294   1.198732
6 months    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    Keneba           GAMBIA                         Preterm              Full or late term    0.8135901   0.4253198   1.556309
6 months    Keneba           GAMBIA                         Early term           Full or late term    0.6558779   0.3967298   1.084304
6 months    PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        Preterm              Full or late term    1.9373261   1.0788654   3.478870
6 months    PROBIT           BELARUS                        Early term           Full or late term    1.4084630   0.8413101   2.357951
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3520130   0.7933011   2.304219
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8812539   0.5147225   1.508791
24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    2.3058104   0.9665200   5.500933
24 months   COHORTS          GUATEMALA                      Early term           Full or late term    0.8678637   0.3101816   2.428214
24 months   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   COHORTS          INDIA                          Preterm              Full or late term    0.9727878   0.6008496   1.574963
24 months   COHORTS          INDIA                          Early term           Full or late term    1.2854357   0.8686292   1.902244
24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0806589   0.7194861   1.623136
24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2807136   0.9210548   1.780814
24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   IRC              INDIA                          Preterm              Full or late term    2.4509804   1.0813122   5.555569
24 months   IRC              INDIA                          Early term           Full or late term    0.9003601   0.3653015   2.219121
24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.1307928   1.0082185   1.268269
24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0675044   0.9565603   1.191316
24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   Keneba           GAMBIA                         Preterm              Full or late term    1.0919737   0.6935148   1.719367
24 months   Keneba           GAMBIA                         Early term           Full or late term    0.7028815   0.4786808   1.032091


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -0.0003018   -0.0319256   0.0313221
Birth       COHORTS          INDIA                          Full or late term    NA                 0.0122118   -0.0113739   0.0357974
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                 0.0316283    0.0158089   0.0474476
Birth       IRC              INDIA                          Full or late term    NA                 0.0376283    0.0008470   0.0744097
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0060798    0.0015945   0.0105650
Birth       Keneba           GAMBIA                         Full or late term    NA                -0.0119830   -0.0347113   0.0107453
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.1250678    0.0752250   0.1749105
Birth       PROBIT           BELARUS                        Full or late term    NA                 0.0120522   -0.0121082   0.0362126
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0154052   -0.0419343   0.0111240
6 months    COHORTS          INDIA                          Full or late term    NA                 0.0064410   -0.0136360   0.0265179
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                 0.0101521   -0.0008176   0.0211219
6 months    IRC              INDIA                          Full or late term    NA                 0.0318264    0.0040905   0.0595623
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0012913   -0.0031047   0.0056873
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.0100667   -0.0227930   0.0026596
6 months    PROBIT           BELARUS                        Full or late term    NA                 0.0012333   -0.0002880   0.0027547
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0010900   -0.0063293   0.0085093
24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0056510   -0.0072744   0.0185765
24 months   COHORTS          INDIA                          Full or late term    NA                 0.0067889   -0.0104782   0.0240559
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0073599   -0.0050364   0.0197562
24 months   IRC              INDIA                          Full or late term    NA                 0.0089231   -0.0117124   0.0295586
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0091293   -0.0003737   0.0186322
24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0128324   -0.0316118   0.0059470


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -0.0011823   -0.1330697   0.1153537
Birth       COHORTS          INDIA                          Full or late term    NA                 0.0691625   -0.0743177   0.1934802
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                 0.2033548    0.0962200   0.2977897
Birth       IRC              INDIA                          Full or late term    NA                 0.1418631   -0.0078833   0.2693609
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0551743    0.0134846   0.0951022
Birth       Keneba           GAMBIA                         Full or late term    NA                -0.0488484   -0.1456988   0.0398148
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.5140867    0.2698398   0.6766303
Birth       PROBIT           BELARUS                        Full or late term    NA                 0.0573038   -0.0634437   0.1643412
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1269093   -0.3655987   0.0700603
6 months    COHORTS          INDIA                          Full or late term    NA                 0.0531480   -0.1278696   0.2051132
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                 0.1714365   -0.0343436   0.3362771
6 months    IRC              INDIA                          Full or late term    NA                 0.2329933    0.0090415   0.4063330
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0153055   -0.0381934   0.0660475
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.1819956   -0.4322367   0.0245233
6 months    PROBIT           BELARUS                        Full or late term    NA                 0.1799380   -0.0882413   0.3820289
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0243905   -0.1565077   0.1769931
24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.1507692   -0.2677534   0.4311253
24 months   COHORTS          INDIA                          Full or late term    NA                 0.0779820   -0.1430828   0.2562942
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1076491   -0.0926628   0.2712389
24 months   IRC              INDIA                          Full or late term    NA                 0.1160000   -0.1939710   0.3454983
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0422740   -0.0029386   0.0854483
24 months   Keneba           GAMBIA                         Full or late term    NA                -0.1207080   -0.3119415   0.0426506
