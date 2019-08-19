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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       77      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        2      90
Birth       ki1000108-IRC              INDIA                          0                 0       67     388
Birth       ki1000108-IRC              INDIA                          0                 1        1     388
Birth       ki1000108-IRC              INDIA                          1                 0      305     388
Birth       ki1000108-IRC              INDIA                          1                 1       15     388
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       18      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        0      19
Birth       ki1119695-PROBIT           BELARUS                        0                 0     1596   13884
Birth       ki1119695-PROBIT           BELARUS                        0                 1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        1                 0    12283   13884
Birth       ki1119695-PROBIT           BELARUS                        1                 1        4   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     1133   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       29   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 0    12150   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      404   13716
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0        2   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1        1   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    17544   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2039   19586
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0        1     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      757     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       64     822
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       23     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        2     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      304     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       40     369
6 months    ki1000108-IRC              INDIA                          0                 0       64     407
6 months    ki1000108-IRC              INDIA                          0                 1        5     407
6 months    ki1000108-IRC              INDIA                          1                 0      314     407
6 months    ki1000108-IRC              INDIA                          1                 1       24     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      132     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        2     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      437     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      183     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        4     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      258     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       12     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0      189    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1797    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       19    2005
6 months    ki1119695-PROBIT           BELARUS                        0                 0     1771   15761
6 months    ki1119695-PROBIT           BELARUS                        0                 1       28   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 0    13747   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 1      215   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 0      682    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       25    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     7200    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      321    8228
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     1029   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1       48   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    14687   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      968   16732
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0      326    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       10    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     3505    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      211    4052
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      233     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1      114     372
24 months   ki1000108-IRC              INDIA                          0                 0       66     409
24 months   ki1000108-IRC              INDIA                          0                 1        3     409
24 months   ki1000108-IRC              INDIA                          1                 0      302     409
24 months   ki1000108-IRC              INDIA                          1                 1       38     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      130     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1        7     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      398     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       42     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0       92     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        7     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      147     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       14     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       6
24 months   ki1119695-PROBIT           BELARUS                        0                 0      465    4035
24 months   ki1119695-PROBIT           BELARUS                        0                 1        7    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 0     3505    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 1       58    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0       22     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1        7     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      299     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      122     450
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0      444    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1       36    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     6806    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1298    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      309    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1       14    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     3349    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      348    4020


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/d65338ea-349a-4b49-84b0-af1ec5ae02e7/298318de-e374-45b7-90d5-34920d196001/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d65338ea-349a-4b49-84b0-af1ec5ae02e7/298318de-e374-45b7-90d5-34920d196001/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d65338ea-349a-4b49-84b0-af1ec5ae02e7/298318de-e374-45b7-90d5-34920d196001/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d65338ea-349a-4b49-84b0-af1ec5ae02e7/298318de-e374-45b7-90d5-34920d196001/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0258435    0.0163776   0.0353094
Birth       ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0323322    0.0292338   0.0354306
6 months    ki1000108-IRC              INDIA        0                    NA                0.0724638    0.0112169   0.1337106
6 months    ki1000108-IRC              INDIA        1                    NA                0.0710059    0.0435916   0.0984202
6 months    ki1119695-PROBIT           BELARUS      0                    NA                0.0151339    0.0081349   0.0221329
6 months    ki1119695-PROBIT           BELARUS      1                    NA                0.0154621    0.0100619   0.0208622
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0319427    0.0187797   0.0451056
6 months    ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0431767    0.0385640   0.0477893
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0542965    0.0373282   0.0712649
6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.0618399    0.0577599   0.0659200
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0312846    0.0143508   0.0482184
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0567570    0.0477393   0.0657747
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3600000    0.1715900   0.5484100
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3285303    0.2790458   0.3780147
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0510949    0.0141916   0.0879981
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0954545    0.0679748   0.1229342
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0707071    0.0201159   0.1212983
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0869565    0.0433483   0.1305648
24 months   ki1119695-PROBIT           BELARUS      0                    NA                0.0148305   -0.0010089   0.0306699
24 months   ki1119695-PROBIT           BELARUS      1                    NA                0.0162784    0.0034501   0.0291067
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.2413793    0.0854619   0.3972967
24 months   ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.2897862    0.2464028   0.3331696
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0858763    0.0544937   0.1172589
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1593753    0.1503605   0.1683901
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0432478    0.0183641   0.0681315
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0942099    0.0833727   0.1050470


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0315690   0.0286427   0.0344952
6 months    ki1000108-IRC              INDIA        NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1119695-PROBIT           BELARUS      NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0420515   0.0377145   0.0463885
6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.0607220   0.0568736   0.0645704
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0545410   0.0461267   0.0629552
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0807692   0.0475849   0.1139536
24 months   ki1119695-PROBIT           BELARUS      NA                   NA                0.0161090   0.0034156   0.0288025
24 months   ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.2866667   0.2448394   0.3284940
24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1554054   0.1466535   0.1641573
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0900498   0.0798834   0.1002161


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 1.2510764   0.8567551   1.826884
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.9798817   0.3869206   2.481564
6 months    ki1119695-PROBIT           BELARUS      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS      1                    0                 1.0216839   0.7227541   1.444251
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 1.3516931   0.8831850   2.068734
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.1389297   0.8273260   1.567896
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.8142170   1.0336756   3.184155
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.9125841   0.5293636   1.573228
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.8681818   0.8585216   4.065248
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.2298137   0.5133025   2.946492
24 months   ki1119695-PROBIT           BELARUS      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS      1                    0                 1.0976304   0.5128046   2.349418
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 1.2005429   0.6186031   2.329932
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.8558708   1.2841629   2.682102
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 2.1783745   1.2090343   3.924881


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0057255   -0.0034493   0.0149002
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0012107   -0.0569370   0.0545156
6 months    ki1119695-PROBIT           BELARUS      0                    NA                 0.0002839   -0.0043960   0.0049638
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0101089   -0.0026403   0.0228581
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0064254   -0.0102532   0.0231041
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0232564    0.0057258   0.0407870
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0293548   -0.2110652   0.1523555
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0338271   -0.0012929   0.0689471
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0100622   -0.0313086   0.0514329
24 months   ki1119695-PROBIT           BELARUS      0                    NA                 0.0012785   -0.0087765   0.0113336
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0452874   -0.1061274   0.1967021
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0695291    0.0382767   0.1007815
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0468020    0.0216257   0.0719782


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.1813636   -0.1668310   0.4256533
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0169915   -1.1942765   0.5286502
6 months    ki1119695-PROBIT           BELARUS      0                    NA                 0.0184131   -0.3370512   0.2793747
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.2403927   -0.1310209   0.4898385
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.1058172   -0.2154668   0.3421763
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.4264025    0.0195843   0.6644137
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0887805   -0.8036630   0.3427581
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.3983316   -0.1719098   0.6910983
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1245791   -0.5676421   0.5111373
24 months   ki1119695-PROBIT           BELARUS      0                    NA                 0.0793677   -0.8142793   0.5328372
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.1579791   -0.5764038   0.5502427
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.4474047    0.2071057   0.6148773
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.5197346    0.1536536   0.7274699
