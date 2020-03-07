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

**Outcome Variable:** ever_co

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
* W_mwtkg
* W_mbmi
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        vagbrth    ever_co   n_cell       n
------------  ---------------  -----------------------------  --------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          0                0       21     373
0-24 months   CMC-V-BCS-2002   INDIA                          0                1        4     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                0      266     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                1       82     373
0-24 months   IRC              INDIA                          0                0       60     410
0-24 months   IRC              INDIA                          0                1       10     410
0-24 months   IRC              INDIA                          1                0      274     410
0-24 months   IRC              INDIA                          1                1       66     410
0-24 months   JiVitA-3         BANGLADESH                     0                0     1402   26797
0-24 months   JiVitA-3         BANGLADESH                     0                1      111   26797
0-24 months   JiVitA-3         BANGLADESH                     1                0    23011   26797
0-24 months   JiVitA-3         BANGLADESH                     1                1     2273   26797
0-24 months   JiVitA-4         BANGLADESH                     0                0      330    4520
0-24 months   JiVitA-4         BANGLADESH                     0                1       41    4520
0-24 months   JiVitA-4         BANGLADESH                     1                0     3447    4520
0-24 months   JiVitA-4         BANGLADESH                     1                1      702    4520
0-24 months   NIH-Crypto       BANGLADESH                     0                0      189     500
0-24 months   NIH-Crypto       BANGLADESH                     0                1       15     500
0-24 months   NIH-Crypto       BANGLADESH                     1                0      259     500
0-24 months   NIH-Crypto       BANGLADESH                     1                1       37     500
0-24 months   PROBIT           BELARUS                        0                0     1949   16897
0-24 months   PROBIT           BELARUS                        0                1        2   16897
0-24 months   PROBIT           BELARUS                        1                0    14930   16897
0-24 months   PROBIT           BELARUS                        1                1       16   16897
0-24 months   PROVIDE          BANGLADESH                     0                0      144     700
0-24 months   PROVIDE          BANGLADESH                     0                1       16     700
0-24 months   PROVIDE          BANGLADESH                     1                0      466     700
0-24 months   PROVIDE          BANGLADESH                     1                1       74     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      203    2367
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        9    2367
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     2046    2367
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      109    2367
0-24 months   ZVITAMBO         ZIMBABWE                       0                0     1130   13827
0-24 months   ZVITAMBO         ZIMBABWE                       0                1       40   13827
0-24 months   ZVITAMBO         ZIMBABWE                       1                0    12114   13827
0-24 months   ZVITAMBO         ZIMBABWE                       1                1      543   13827
0-6 months    CMC-V-BCS-2002   INDIA                          0                0       23     368
0-6 months    CMC-V-BCS-2002   INDIA                          0                1        2     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                0      314     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                1       29     368
0-6 months    IRC              INDIA                          0                0       63     409
0-6 months    IRC              INDIA                          0                1        7     409
0-6 months    IRC              INDIA                          1                0      321     409
0-6 months    IRC              INDIA                          1                1       18     409
0-6 months    JiVitA-3         BANGLADESH                     0                0     1439   26735
0-6 months    JiVitA-3         BANGLADESH                     0                1       71   26735
0-6 months    JiVitA-3         BANGLADESH                     1                0    24235   26735
0-6 months    JiVitA-3         BANGLADESH                     1                1      990   26735
0-6 months    JiVitA-4         BANGLADESH                     0                0      351    4474
0-6 months    JiVitA-4         BANGLADESH                     0                1       16    4474
0-6 months    JiVitA-4         BANGLADESH                     1                0     3999    4474
0-6 months    JiVitA-4         BANGLADESH                     1                1      108    4474
0-6 months    NIH-Crypto       BANGLADESH                     0                0      198     500
0-6 months    NIH-Crypto       BANGLADESH                     0                1        6     500
0-6 months    NIH-Crypto       BANGLADESH                     1                0      292     500
0-6 months    NIH-Crypto       BANGLADESH                     1                1        4     500
0-6 months    PROBIT           BELARUS                        0                0     1950   16892
0-6 months    PROBIT           BELARUS                        0                1        1   16892
0-6 months    PROBIT           BELARUS                        1                0    14929   16892
0-6 months    PROBIT           BELARUS                        1                1       12   16892
0-6 months    PROVIDE          BANGLADESH                     0                0      155     700
0-6 months    PROVIDE          BANGLADESH                     0                1        5     700
0-6 months    PROVIDE          BANGLADESH                     1                0      515     700
0-6 months    PROVIDE          BANGLADESH                     1                1       25     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      208    2367
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        4    2367
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     2140    2367
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       15    2367
0-6 months    ZVITAMBO         ZIMBABWE                       0                0     1155   13732
0-6 months    ZVITAMBO         ZIMBABWE                       0                1       10   13732
0-6 months    ZVITAMBO         ZIMBABWE                       1                0    12411   13732
0-6 months    ZVITAMBO         ZIMBABWE                       1                1      156   13732
6-24 months   CMC-V-BCS-2002   INDIA                          0                0       23     373
6-24 months   CMC-V-BCS-2002   INDIA                          0                1        2     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                0      280     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                1       68     373
6-24 months   IRC              INDIA                          0                0       64     410
6-24 months   IRC              INDIA                          0                1        6     410
6-24 months   IRC              INDIA                          1                0      282     410
6-24 months   IRC              INDIA                          1                1       58     410
6-24 months   JiVitA-3         BANGLADESH                     0                0     1064   17194
6-24 months   JiVitA-3         BANGLADESH                     0                1       49   17194
6-24 months   JiVitA-3         BANGLADESH                     1                0    14634   17194
6-24 months   JiVitA-3         BANGLADESH                     1                1     1447   17194
6-24 months   JiVitA-4         BANGLADESH                     0                0      339    4510
6-24 months   JiVitA-4         BANGLADESH                     0                1       30    4510
6-24 months   JiVitA-4         BANGLADESH                     1                0     3501    4510
6-24 months   JiVitA-4         BANGLADESH                     1                1      640    4510
6-24 months   NIH-Crypto       BANGLADESH                     0                0      183     472
6-24 months   NIH-Crypto       BANGLADESH                     0                1       11     472
6-24 months   NIH-Crypto       BANGLADESH                     1                0      244     472
6-24 months   NIH-Crypto       BANGLADESH                     1                1       34     472
6-24 months   PROBIT           BELARUS                        0                0     1918   16598
6-24 months   PROBIT           BELARUS                        0                1        1   16598
6-24 months   PROBIT           BELARUS                        1                0    14674   16598
6-24 months   PROBIT           BELARUS                        1                1        5   16598
6-24 months   PROVIDE          BANGLADESH                     0                0      130     614
6-24 months   PROVIDE          BANGLADESH                     0                1       13     614
6-24 months   PROVIDE          BANGLADESH                     1                0      409     614
6-24 months   PROVIDE          BANGLADESH                     1                1       62     614
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      178    1995
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        8    1995
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1705    1995
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      104    1995
6-24 months   ZVITAMBO         ZIMBABWE                       0                0      880   10721
6-24 months   ZVITAMBO         ZIMBABWE                       0                1       30   10721
6-24 months   ZVITAMBO         ZIMBABWE                       1                0     9404   10721
6-24 months   ZVITAMBO         ZIMBABWE                       1                1      407   10721


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/4536b0c8-2143-465f-b08a-4e5855edb142/149eaaba-3861-4677-a2a2-fcfcfee07a9d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4536b0c8-2143-465f-b08a-4e5855edb142/149eaaba-3861-4677-a2a2-fcfcfee07a9d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4536b0c8-2143-465f-b08a-4e5855edb142/149eaaba-3861-4677-a2a2-fcfcfee07a9d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4536b0c8-2143-465f-b08a-4e5855edb142/149eaaba-3861-4677-a2a2-fcfcfee07a9d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC              INDIA                          0                    NA                0.1421830   0.0566032   0.2277629
0-24 months   IRC              INDIA                          1                    NA                0.1922218   0.1500954   0.2343482
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.1082578   0.0870360   0.1294796
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0892807   0.0852519   0.0933095
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.1335173   0.0880932   0.1789414
0-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.1669581   0.1537715   0.1801447
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0759695   0.0382950   0.1136439
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1231904   0.0856077   0.1607731
0-24 months   PROVIDE          BANGLADESH                     0                    NA                0.0956172   0.0484660   0.1427685
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1366370   0.1076062   0.1656678
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0424528   0.0153069   0.0695988
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0505800   0.0413259   0.0598342
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0338741   0.0233021   0.0444461
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0431131   0.0395662   0.0466600
0-6 months    IRC              INDIA                          0                    NA                0.1000000   0.0296358   0.1703642
0-6 months    IRC              INDIA                          1                    NA                0.0530973   0.0291989   0.0769957
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                0.0621754   0.0447276   0.0796232
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0389425   0.0364255   0.0414595
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                0.0449069   0.0196276   0.0701862
0-6 months    JiVitA-4         BANGLADESH                     1                    NA                0.0262365   0.0203003   0.0321726
0-6 months    PROVIDE          BANGLADESH                     0                    NA                0.0312500   0.0042708   0.0582292
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.0462963   0.0285609   0.0640317
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0085612   0.0032765   0.0138458
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0124157   0.0104791   0.0143523
6-24 months   IRC              INDIA                          0                    NA                0.0857143   0.0200549   0.1513737
6-24 months   IRC              INDIA                          1                    NA                0.1705882   0.1305570   0.2106194
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0543374   0.0362064   0.0724684
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0891613   0.0842387   0.0940840
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.1011403   0.0615896   0.1406910
6-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.1531232   0.1406300   0.1656165
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0580672   0.0236812   0.0924532
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1225655   0.0835734   0.1615576
6-24 months   PROVIDE          BANGLADESH                     0                    NA                0.0945464   0.0466707   0.1424221
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1314442   0.1009022   0.1619863
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0430108   0.0138471   0.0721744
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0574903   0.0467609   0.0682198
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0311876   0.0196776   0.0426975
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0416451   0.0376891   0.0456011


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0889652   0.0850582   0.0928722
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1643805   0.1517702   0.1769909
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1040000   0.0772164   0.1307836
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498521   0.0410826   0.0586217
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0421639   0.0388141   0.0455137
0-6 months    IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0396858   0.0371902   0.0421814
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0277157   0.0217808   0.0336506
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120886   0.0102607   0.0139164
6-24 months   IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0870071   0.0823429   0.0916713
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1485588   0.1367632   0.1603543
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0953390   0.0688164   0.1218616
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0561404   0.0460367   0.0662440
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0407611   0.0370180   0.0445043


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          1                    0                 1.3519321   0.7121468   2.5664938
0-24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     1                    0                 0.8247040   0.6753638   1.0070672
0-24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     1                    0                 1.2504603   0.8851647   1.7665085
0-24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     1                    0                 1.6215775   0.9066147   2.9003653
0-24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     1                    0                 1.4289999   0.8347022   2.4464303
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1914411   0.6126664   2.3169736
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.2727437   0.9216783   1.7575290
0-6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          1                    0                 0.5309735   0.2303117   1.2241361
0-6 months    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     1                    0                 0.6263328   0.4704082   0.8339413
0-6 months    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     1                    0                 0.5842413   0.3234110   1.0554307
0-6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     1                    0                 1.4814815   0.5761031   3.8097132
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.4502302   0.7672388   2.7412165
6-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          1                    0                 1.9901961   0.8932121   4.4344230
6-24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     1                    0                 1.6408835   1.1679137   2.3053919
6-24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     1                    0                 1.5139681   1.0154391   2.2572496
6-24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     1                    0                 2.1107528   1.0765451   4.1384955
6-24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     1                    0                 1.3902617   0.7962112   2.4275315
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3366501   0.6615928   2.7005031
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.3353093   0.9121912   1.9546900


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   IRC              INDIA                          0                    NA                 0.0431828   -0.0369366    0.1233022
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0192926   -0.0400240    0.0014388
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0308632   -0.0130862    0.0748126
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0280305   -0.0042631    0.0603241
0-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0329542   -0.0099709    0.0758793
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0073993   -0.0187121    0.0335107
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0082898   -0.0019477    0.0185272
0-6 months    IRC              INDIA                          0                    NA                -0.0388753   -0.1004926    0.0227420
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0224896   -0.0394410   -0.0055382
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0171912   -0.0407362    0.0063538
0-6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0116071   -0.0133041    0.0365183
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0035274   -0.0016223    0.0086771
6-24 months   IRC              INDIA                          0                    NA                 0.0703833    0.0065372    0.1342293
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.0326697    0.0145031    0.0508363
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0474184    0.0085775    0.0862594
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0372718    0.0060215    0.0685221
6-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0276035   -0.0161251    0.0713320
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0131296   -0.0150486    0.0413078
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0095735   -0.0015754    0.0207224


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   IRC              INDIA                          0                    NA                 0.2329599   -0.3450125    0.5625688
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.2168560   -0.4735495   -0.0048787
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.1877548   -0.1289134    0.4155952
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.2695243   -0.1083192    0.5185549
0-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.2563105   -0.1622722    0.5241440
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1484250   -0.5741345    0.5393151
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.1966083   -0.0862429    0.4058067
0-6 months    IRC              INDIA                          0                    NA                -0.6360000   -1.9871157    0.1039865
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.5666914   -1.0536717   -0.1951872
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.6202691   -1.7148580    0.0329984
0-6 months    PROVIDE          BANGLADESH                     0                    NA                 0.2708333   -0.6021007    0.6681332
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.2917948   -0.2882946    0.6106833
6-24 months   IRC              INDIA                          0                    NA                 0.4508929   -0.1352628    0.7344063
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.3754832    0.1300239    0.5516874
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.3191897    0.0020304    0.5355544
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.3909396   -0.0179552    0.6355885
6-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.2259803   -0.2244636    0.5107192
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2338710   -0.4720286    0.6012620
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.2348693   -0.0929840    0.4643791
