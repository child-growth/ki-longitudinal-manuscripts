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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        hdlvry    ever_co   n_cell      n
------------  ---------------  -----------------------------  -------  --------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          0               0      279    370
0-24 months   CMC-V-BCS-2002   INDIA                          0               1       83    370
0-24 months   CMC-V-BCS-2002   INDIA                          1               0        7    370
0-24 months   CMC-V-BCS-2002   INDIA                          1               1        1    370
0-24 months   COHORTS          INDIA                          0               0     2904   5089
0-24 months   COHORTS          INDIA                          0               1      232   5089
0-24 months   COHORTS          INDIA                          1               0     1679   5089
0-24 months   COHORTS          INDIA                          1               1      274   5089
0-24 months   EE               PAKISTAN                       0               0      143    377
0-24 months   EE               PAKISTAN                       0               1      110    377
0-24 months   EE               PAKISTAN                       1               0       65    377
0-24 months   EE               PAKISTAN                       1               1       59    377
0-24 months   GMS-Nepal        NEPAL                          0               0      118    637
0-24 months   GMS-Nepal        NEPAL                          0               1       38    637
0-24 months   GMS-Nepal        NEPAL                          1               0      335    637
0-24 months   GMS-Nepal        NEPAL                          1               1      146    637
0-24 months   IRC              INDIA                          0               0      328    410
0-24 months   IRC              INDIA                          0               1       74    410
0-24 months   IRC              INDIA                          1               0        6    410
0-24 months   IRC              INDIA                          1               1        2    410
0-24 months   JiVitA-3         BANGLADESH                     0               0       40    350
0-24 months   JiVitA-3         BANGLADESH                     0               1        2    350
0-24 months   JiVitA-3         BANGLADESH                     1               0      276    350
0-24 months   JiVitA-3         BANGLADESH                     1               1       32    350
0-24 months   JiVitA-4         BANGLADESH                     0               0     1007   4501
0-24 months   JiVitA-4         BANGLADESH                     0               1      164   4501
0-24 months   JiVitA-4         BANGLADESH                     1               0     2757   4501
0-24 months   JiVitA-4         BANGLADESH                     1               1      573   4501
0-24 months   NIH-Crypto       BANGLADESH                     0               0      545    758
0-24 months   NIH-Crypto       BANGLADESH                     0               1       45    758
0-24 months   NIH-Crypto       BANGLADESH                     1               0      142    758
0-24 months   NIH-Crypto       BANGLADESH                     1               1       26    758
0-24 months   PROVIDE          BANGLADESH                     0               0      456    700
0-24 months   PROVIDE          BANGLADESH                     0               1       63    700
0-24 months   PROVIDE          BANGLADESH                     1               0      154    700
0-24 months   PROVIDE          BANGLADESH                     1               1       27    700
0-24 months   SAS-CompFeed     INDIA                          0               0      140   1232
0-24 months   SAS-CompFeed     INDIA                          0               1       24   1232
0-24 months   SAS-CompFeed     INDIA                          1               0      795   1232
0-24 months   SAS-CompFeed     INDIA                          1               1      273   1232
0-24 months   SAS-FoodSuppl    INDIA                          0               0       55    418
0-24 months   SAS-FoodSuppl    INDIA                          0               1       26    418
0-24 months   SAS-FoodSuppl    INDIA                          1               0      208    418
0-24 months   SAS-FoodSuppl    INDIA                          1               1      129    418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2121   2274
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      113   2274
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       38   2274
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        2   2274
0-6 months    CMC-V-BCS-2002   INDIA                          0               0      327    365
0-6 months    CMC-V-BCS-2002   INDIA                          0               1       31    365
0-6 months    CMC-V-BCS-2002   INDIA                          1               0        7    365
0-6 months    CMC-V-BCS-2002   INDIA                          1               1        0    365
0-6 months    COHORTS          INDIA                          0               0     2958   4929
0-6 months    COHORTS          INDIA                          0               1       77   4929
0-6 months    COHORTS          INDIA                          1               0     1837   4929
0-6 months    COHORTS          INDIA                          1               1       57   4929
0-6 months    EE               PAKISTAN                       0               0      215    377
0-6 months    EE               PAKISTAN                       0               1       38    377
0-6 months    EE               PAKISTAN                       1               0      106    377
0-6 months    EE               PAKISTAN                       1               1       18    377
0-6 months    GMS-Nepal        NEPAL                          0               0      150    637
0-6 months    GMS-Nepal        NEPAL                          0               1        6    637
0-6 months    GMS-Nepal        NEPAL                          1               0      456    637
0-6 months    GMS-Nepal        NEPAL                          1               1       25    637
0-6 months    IRC              INDIA                          0               0      377    409
0-6 months    IRC              INDIA                          0               1       24    409
0-6 months    IRC              INDIA                          1               0        7    409
0-6 months    IRC              INDIA                          1               1        1    409
0-6 months    JiVitA-3         BANGLADESH                     0               0       39    348
0-6 months    JiVitA-3         BANGLADESH                     0               1        2    348
0-6 months    JiVitA-3         BANGLADESH                     1               0      291    348
0-6 months    JiVitA-3         BANGLADESH                     1               1       16    348
0-6 months    JiVitA-4         BANGLADESH                     0               0     1124   4456
0-6 months    JiVitA-4         BANGLADESH                     0               1       36   4456
0-6 months    JiVitA-4         BANGLADESH                     1               0     3211   4456
0-6 months    JiVitA-4         BANGLADESH                     1               1       85   4456
0-6 months    NIH-Crypto       BANGLADESH                     0               0      581    758
0-6 months    NIH-Crypto       BANGLADESH                     0               1        9    758
0-6 months    NIH-Crypto       BANGLADESH                     1               0      160    758
0-6 months    NIH-Crypto       BANGLADESH                     1               1        8    758
0-6 months    PROVIDE          BANGLADESH                     0               0      497    700
0-6 months    PROVIDE          BANGLADESH                     0               1       22    700
0-6 months    PROVIDE          BANGLADESH                     1               0      173    700
0-6 months    PROVIDE          BANGLADESH                     1               1        8    700
0-6 months    SAS-CompFeed     INDIA                          0               0      159   1226
0-6 months    SAS-CompFeed     INDIA                          0               1        4   1226
0-6 months    SAS-CompFeed     INDIA                          1               0      985   1226
0-6 months    SAS-CompFeed     INDIA                          1               1       78   1226
0-6 months    SAS-FoodSuppl    INDIA                          0               0       77    416
0-6 months    SAS-FoodSuppl    INDIA                          0               1        4    416
0-6 months    SAS-FoodSuppl    INDIA                          1               0      307    416
0-6 months    SAS-FoodSuppl    INDIA                          1               1       28    416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2216   2274
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       18   2274
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       39   2274
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1   2274
6-24 months   CMC-V-BCS-2002   INDIA                          0               0      295    370
6-24 months   CMC-V-BCS-2002   INDIA                          0               1       67    370
6-24 months   CMC-V-BCS-2002   INDIA                          1               0        7    370
6-24 months   CMC-V-BCS-2002   INDIA                          1               1        1    370
6-24 months   COHORTS          INDIA                          0               0     2728   4740
6-24 months   COHORTS          INDIA                          0               1      195   4740
6-24 months   COHORTS          INDIA                          1               0     1563   4740
6-24 months   COHORTS          INDIA                          1               1      254   4740
6-24 months   EE               PAKISTAN                       0               0      147    370
6-24 months   EE               PAKISTAN                       0               1      101    370
6-24 months   EE               PAKISTAN                       1               0       68    370
6-24 months   EE               PAKISTAN                       1               1       54    370
6-24 months   GMS-Nepal        NEPAL                          0               0      100    549
6-24 months   GMS-Nepal        NEPAL                          0               1       36    549
6-24 months   GMS-Nepal        NEPAL                          1               0      273    549
6-24 months   GMS-Nepal        NEPAL                          1               1      140    549
6-24 months   IRC              INDIA                          0               0      340    410
6-24 months   IRC              INDIA                          0               1       62    410
6-24 months   IRC              INDIA                          1               0        6    410
6-24 months   IRC              INDIA                          1               1        2    410
6-24 months   JiVitA-3         BANGLADESH                     0               0       38    337
6-24 months   JiVitA-3         BANGLADESH                     0               1        1    337
6-24 months   JiVitA-3         BANGLADESH                     1               0      277    337
6-24 months   JiVitA-3         BANGLADESH                     1               1       21    337
6-24 months   JiVitA-4         BANGLADESH                     0               0     1028   4492
6-24 months   JiVitA-4         BANGLADESH                     0               1      140   4492
6-24 months   JiVitA-4         BANGLADESH                     1               0     2798   4492
6-24 months   JiVitA-4         BANGLADESH                     1               1      526   4492
6-24 months   NIH-Crypto       BANGLADESH                     0               0      528    730
6-24 months   NIH-Crypto       BANGLADESH                     0               1       39    730
6-24 months   NIH-Crypto       BANGLADESH                     1               0      139    730
6-24 months   NIH-Crypto       BANGLADESH                     1               1       24    730
6-24 months   PROVIDE          BANGLADESH                     0               0      407    614
6-24 months   PROVIDE          BANGLADESH                     0               1       52    614
6-24 months   PROVIDE          BANGLADESH                     1               0      132    614
6-24 months   PROVIDE          BANGLADESH                     1               1       23    614
6-24 months   SAS-CompFeed     INDIA                          0               0      129   1128
6-24 months   SAS-CompFeed     INDIA                          0               1       24   1128
6-24 months   SAS-CompFeed     INDIA                          1               0      727   1128
6-24 months   SAS-CompFeed     INDIA                          1               1      248   1128
6-24 months   SAS-FoodSuppl    INDIA                          0               0       55    401
6-24 months   SAS-FoodSuppl    INDIA                          0               1       24    401
6-24 months   SAS-FoodSuppl    INDIA                          1               0      201    401
6-24 months   SAS-FoodSuppl    INDIA                          1               1      121    401
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1772   1911
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      108   1911
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       30   1911
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1   1911


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/60c8a06f-9615-4566-8ad6-2d12970951a7/52801024-16f4-4937-9d50-fca235d59b86/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/60c8a06f-9615-4566-8ad6-2d12970951a7/52801024-16f4-4937-9d50-fca235d59b86/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/60c8a06f-9615-4566-8ad6-2d12970951a7/52801024-16f4-4937-9d50-fca235d59b86/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/60c8a06f-9615-4566-8ad6-2d12970951a7/52801024-16f4-4937-9d50-fca235d59b86/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         INDIA        0                    NA                0.0930408   0.0809859   0.1050956
0-24 months   COHORTS         INDIA        1                    NA                0.1120883   0.0968256   0.1273510
0-24 months   EE              PAKISTAN     0                    NA                0.4317715   0.3704553   0.4930877
0-24 months   EE              PAKISTAN     1                    NA                0.4766207   0.3881206   0.5651208
0-24 months   GMS-Nepal       NEPAL        0                    NA                0.2591632   0.1878359   0.3304905
0-24 months   GMS-Nepal       NEPAL        1                    NA                0.2925352   0.2518154   0.3332549
0-24 months   JiVitA-4        BANGLADESH   0                    NA                0.1487415   0.1230214   0.1744617
0-24 months   JiVitA-4        BANGLADESH   1                    NA                0.1670873   0.1530904   0.1810843
0-24 months   NIH-Crypto      BANGLADESH   0                    NA                0.0768180   0.0553508   0.0982853
0-24 months   NIH-Crypto      BANGLADESH   1                    NA                0.1491634   0.0955537   0.2027731
0-24 months   PROVIDE         BANGLADESH   0                    NA                0.1217491   0.0935669   0.1499314
0-24 months   PROVIDE         BANGLADESH   1                    NA                0.1470358   0.0960344   0.1980372
0-24 months   SAS-CompFeed    INDIA        0                    NA                0.1506913   0.0787609   0.2226218
0-24 months   SAS-CompFeed    INDIA        1                    NA                0.2542957   0.2210574   0.2875340
0-24 months   SAS-FoodSuppl   INDIA        0                    NA                0.3337812   0.2260351   0.4415273
0-24 months   SAS-FoodSuppl   INDIA        1                    NA                0.3800842   0.3278901   0.4322782
0-6 months    COHORTS         INDIA        0                    NA                0.0305312   0.0227932   0.0382692
0-6 months    COHORTS         INDIA        1                    NA                0.0354897   0.0241418   0.0468376
0-6 months    EE              PAKISTAN     0                    NA                0.1497997   0.1058563   0.1937431
0-6 months    EE              PAKISTAN     1                    NA                0.1525861   0.0907195   0.2144527
0-6 months    GMS-Nepal       NEPAL        0                    NA                0.0384615   0.0082604   0.0686627
0-6 months    GMS-Nepal       NEPAL        1                    NA                0.0519751   0.0321221   0.0718280
0-6 months    JiVitA-4        BANGLADESH   0                    NA                0.0345513   0.0208552   0.0482474
0-6 months    JiVitA-4        BANGLADESH   1                    NA                0.0253495   0.0188178   0.0318812
0-6 months    NIH-Crypto      BANGLADESH   0                    NA                0.0152542   0.0053581   0.0251504
0-6 months    NIH-Crypto      BANGLADESH   1                    NA                0.0476190   0.0153953   0.0798428
0-6 months    PROVIDE         BANGLADESH   0                    NA                0.0423892   0.0250433   0.0597351
0-6 months    PROVIDE         BANGLADESH   1                    NA                0.0441989   0.0142343   0.0741635
6-24 months   COHORTS         INDIA        0                    NA                0.0867029   0.0745425   0.0988633
6-24 months   COHORTS         INDIA        1                    NA                0.1040746   0.0902766   0.1178725
6-24 months   EE              PAKISTAN     0                    NA                0.4057667   0.3445391   0.4669942
6-24 months   EE              PAKISTAN     1                    NA                0.4464613   0.3570832   0.5358393
6-24 months   GMS-Nepal       NEPAL        0                    NA                0.2794258   0.1999089   0.3589428
6-24 months   GMS-Nepal       NEPAL        1                    NA                0.3275065   0.2820259   0.3729871
6-24 months   JiVitA-4        BANGLADESH   0                    NA                0.1272948   0.1036440   0.1509455
6-24 months   JiVitA-4        BANGLADESH   1                    NA                0.1531781   0.1394527   0.1669036
6-24 months   NIH-Crypto      BANGLADESH   0                    NA                0.0705367   0.0493589   0.0917145
6-24 months   NIH-Crypto      BANGLADESH   1                    NA                0.1342402   0.0822745   0.1862059
6-24 months   PROVIDE         BANGLADESH   0                    NA                0.1143021   0.0852751   0.1433290
6-24 months   PROVIDE         BANGLADESH   1                    NA                0.1346075   0.0791219   0.1900930
6-24 months   SAS-CompFeed    INDIA        0                    NA                0.1778289   0.0959710   0.2596868
6-24 months   SAS-CompFeed    INDIA        1                    NA                0.2523390   0.2170626   0.2876153
6-24 months   SAS-FoodSuppl   INDIA        0                    NA                0.3143656   0.2087514   0.4199797
6-24 months   SAS-FoodSuppl   INDIA        1                    NA                0.3735286   0.3204593   0.4265979


### Parameter: E(Y)


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         INDIA        NA                   NA                0.0994301   0.0912079   0.1076524
0-24 months   EE              PAKISTAN     NA                   NA                0.4482759   0.3980083   0.4985434
0-24 months   GMS-Nepal       NEPAL        NA                   NA                0.2888540   0.2536300   0.3240780
0-24 months   JiVitA-4        BANGLADESH   NA                   NA                0.1637414   0.1510998   0.1763830
0-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   PROVIDE         BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   SAS-CompFeed    INDIA        NA                   NA                0.2410714   0.1975050   0.2846379
0-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.3708134   0.3244530   0.4171738
0-6 months    COHORTS         INDIA        NA                   NA                0.0271860   0.0226456   0.0317265
0-6 months    EE              PAKISTAN     NA                   NA                0.1485411   0.1125944   0.1844878
0-6 months    GMS-Nepal       NEPAL        NA                   NA                0.0486656   0.0319433   0.0653880
0-6 months    JiVitA-4        BANGLADESH   NA                   NA                0.0271544   0.0212424   0.0330664
0-6 months    NIH-Crypto      BANGLADESH   NA                   NA                0.0224274   0.0118796   0.0329753
0-6 months    PROVIDE         BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
6-24 months   COHORTS         INDIA        NA                   NA                0.0947257   0.0863884   0.1030631
6-24 months   EE              PAKISTAN     NA                   NA                0.4189189   0.3685783   0.4692595
6-24 months   GMS-Nepal       NEPAL        NA                   NA                0.3205829   0.2815081   0.3596576
6-24 months   JiVitA-4        BANGLADESH   NA                   NA                0.1482636   0.1364361   0.1600910
6-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE         BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   SAS-CompFeed    INDIA        NA                   NA                0.2411348   0.1953341   0.2869354
6-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.3615960   0.3145115   0.4086805


### Parameter: RR


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS         INDIA        1                    0                 1.2047225   0.9996368   1.451884
0-24 months   EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   EE              PAKISTAN     1                    0                 1.1038726   0.8738933   1.394375
0-24 months   GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal       NEPAL        1                    0                 1.1287681   0.8291419   1.536670
0-24 months   JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4        BANGLADESH   1                    0                 1.1233402   0.9328577   1.352718
0-24 months   NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto      BANGLADESH   1                    0                 1.9417756   1.2320327   3.060383
0-24 months   PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE         BANGLADESH   1                    0                 1.2076945   0.7965691   1.831010
0-24 months   SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed    INDIA        1                    0                 1.6875271   1.1050383   2.577058
0-24 months   SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA        1                    0                 1.1387226   0.8019499   1.616920
0-6 months    COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    COHORTS         INDIA        1                    0                 1.1624084   0.7727570   1.748536
0-6 months    EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    EE              PAKISTAN     1                    0                 1.0186006   0.6181068   1.678589
0-6 months    GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal       NEPAL        1                    0                 1.3513514   0.5643390   3.235910
0-6 months    JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4        BANGLADESH   1                    0                 0.7336772   0.4646529   1.158461
0-6 months    NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto      BANGLADESH   1                    0                 3.1216931   1.2225460   7.971044
0-6 months    PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE         BANGLADESH   1                    0                 1.0426921   0.4723343   2.301774
6-24 months   COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS         INDIA        1                    0                 1.2003586   0.9914850   1.453235
6-24 months   EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   EE              PAKISTAN     1                    0                 1.1002907   0.8564606   1.413538
6-24 months   GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal       NEPAL        1                    0                 1.1720696   0.8532754   1.609969
6-24 months   JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4        BANGLADESH   1                    0                 1.2033340   0.9802954   1.477119
6-24 months   NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto      BANGLADESH   1                    0                 1.9031256   1.1665649   3.104745
6-24 months   PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE         BANGLADESH   1                    0                 1.1776469   0.7279429   1.905166
6-24 months   SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed    INDIA        1                    0                 1.4189990   0.9699221   2.076000
6-24 months   SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA        1                    0                 1.1881982   0.8253747   1.710514


### Parameter: PAR


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS         INDIA        0                    NA                 0.0063894   -0.0028352   0.0156139
0-24 months   EE              PAKISTAN     0                    NA                 0.0165044   -0.0193406   0.0523493
0-24 months   GMS-Nepal       NEPAL        0                    NA                 0.0296908   -0.0340686   0.0934502
0-24 months   JiVitA-4        BANGLADESH   0                    NA                 0.0149999   -0.0064458   0.0364456
0-24 months   NIH-Crypto      BANGLADESH   0                    NA                 0.0168495    0.0036665   0.0300325
0-24 months   PROVIDE         BANGLADESH   0                    NA                 0.0068223   -0.0084742   0.0221187
0-24 months   SAS-CompFeed    INDIA        0                    NA                 0.0903801    0.0405071   0.1402531
0-24 months   SAS-FoodSuppl   INDIA        0                    NA                 0.0370322   -0.0608921   0.1349565
0-6 months    COHORTS         INDIA        0                    NA                -0.0033451   -0.0090864   0.0023961
0-6 months    EE              PAKISTAN     0                    NA                -0.0012586   -0.0261464   0.0236292
0-6 months    GMS-Nepal       NEPAL        0                    NA                 0.0102041   -0.0170906   0.0374988
0-6 months    JiVitA-4        BANGLADESH   0                    NA                -0.0073969   -0.0187261   0.0039323
0-6 months    NIH-Crypto      BANGLADESH   0                    NA                 0.0071732   -0.0003591   0.0147055
0-6 months    PROVIDE         BANGLADESH   0                    NA                 0.0004679   -0.0084848   0.0094207
6-24 months   COHORTS         INDIA        0                    NA                 0.0080229   -0.0014306   0.0174764
6-24 months   EE              PAKISTAN     0                    NA                 0.0131522   -0.0225703   0.0488748
6-24 months   GMS-Nepal       NEPAL        0                    NA                 0.0411570   -0.0301838   0.1124979
6-24 months   JiVitA-4        BANGLADESH   0                    NA                 0.0209688    0.0002053   0.0417324
6-24 months   NIH-Crypto      BANGLADESH   0                    NA                 0.0157647    0.0024379   0.0290915
6-24 months   PROVIDE         BANGLADESH   0                    NA                 0.0078478   -0.0078590   0.0235546
6-24 months   SAS-CompFeed    INDIA        0                    NA                 0.0633059    0.0112424   0.1153694
6-24 months   SAS-FoodSuppl   INDIA        0                    NA                 0.0472305   -0.0487206   0.1431815


### Parameter: PAF


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS         INDIA        0                    NA                 0.0642597   -0.0331518   0.1524867
0-24 months   EE              PAKISTAN     0                    NA                 0.0368174   -0.0466083   0.1135932
0-24 months   GMS-Nepal       NEPAL        0                    NA                 0.1027882   -0.1471425   0.2982659
0-24 months   JiVitA-4        BANGLADESH   0                    NA                 0.0916071   -0.0501266   0.2142113
0-24 months   NIH-Crypto      BANGLADESH   0                    NA                 0.1798864    0.0321594   0.3050651
0-24 months   PROVIDE         BANGLADESH   0                    NA                 0.0530622   -0.0733578   0.1645924
0-24 months   SAS-CompFeed    INDIA        0                    NA                 0.3749101    0.0982196   0.5667045
0-24 months   SAS-FoodSuppl   INDIA        0                    NA                 0.0998675   -0.2071905   0.3288230
0-6 months    COHORTS         INDIA        0                    NA                -0.1230460   -0.3535969   0.0682364
0-6 months    EE              PAKISTAN     0                    NA                -0.0084731   -0.1907322   0.1458886
0-6 months    GMS-Nepal       NEPAL        0                    NA                 0.2096774   -0.5983068   0.6092053
0-6 months    JiVitA-4        BANGLADESH   0                    NA                -0.2724023   -0.7570280   0.0785533
0-6 months    NIH-Crypto      BANGLADESH   0                    NA                 0.3198405   -0.0594838   0.5633562
0-6 months    PROVIDE         BANGLADESH   0                    NA                 0.0109184   -0.2216378   0.1992043
6-24 months   COHORTS         INDIA        0                    NA                 0.0846956   -0.0204767   0.1790287
6-24 months   EE              PAKISTAN     0                    NA                 0.0313957   -0.0577645   0.1130405
6-24 months   GMS-Nepal       NEPAL        0                    NA                 0.1283819   -0.1247881   0.3245678
6-24 months   JiVitA-4        BANGLADESH   0                    NA                 0.1414293   -0.0109041   0.2708074
6-24 months   NIH-Crypto      BANGLADESH   0                    NA                 0.1826700    0.0193870   0.3187645
6-24 months   PROVIDE         BANGLADESH   0                    NA                 0.0642471   -0.0729592   0.1839080
6-24 months   SAS-CompFeed    INDIA        0                    NA                 0.2625332   -0.0212633   0.4674662
6-24 months   SAS-FoodSuppl   INDIA        0                    NA                 0.1306166   -0.1797402   0.3593273
