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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        hdlvry    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  -------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          0                   0      115    320
0-24 months   CMC-V-BCS-2002   INDIA                          0                   1      199    320
0-24 months   CMC-V-BCS-2002   INDIA                          1                   0        4    320
0-24 months   CMC-V-BCS-2002   INDIA                          1                   1        2    320
0-24 months   COHORTS          INDIA                          0                   0      784   1881
0-24 months   COHORTS          INDIA                          0                   1      294   1881
0-24 months   COHORTS          INDIA                          1                   0      643   1881
0-24 months   COHORTS          INDIA                          1                   1      160   1881
0-24 months   EE               PAKISTAN                       0                   0      106    322
0-24 months   EE               PAKISTAN                       0                   1      107    322
0-24 months   EE               PAKISTAN                       1                   0       53    322
0-24 months   EE               PAKISTAN                       1                   1       56    322
0-24 months   GMS-Nepal        NEPAL                          0                   0       65    590
0-24 months   GMS-Nepal        NEPAL                          0                   1       68    590
0-24 months   GMS-Nepal        NEPAL                          1                   0      205    590
0-24 months   GMS-Nepal        NEPAL                          1                   1      252    590
0-24 months   IRC              INDIA                          0                   0      159    395
0-24 months   IRC              INDIA                          0                   1      227    395
0-24 months   IRC              INDIA                          1                   0        3    395
0-24 months   IRC              INDIA                          1                   1        6    395
0-24 months   JiVitA-3         BANGLADESH                     0                   0        5    129
0-24 months   JiVitA-3         BANGLADESH                     0                   1        7    129
0-24 months   JiVitA-3         BANGLADESH                     1                   0       67    129
0-24 months   JiVitA-3         BANGLADESH                     1                   1       50    129
0-24 months   JiVitA-4         BANGLADESH                     0                   0      302   1779
0-24 months   JiVitA-4         BANGLADESH                     0                   1      136   1779
0-24 months   JiVitA-4         BANGLADESH                     1                   0      984   1779
0-24 months   JiVitA-4         BANGLADESH                     1                   1      357   1779
0-24 months   NIH-Crypto       BANGLADESH                     0                   0       79    310
0-24 months   NIH-Crypto       BANGLADESH                     0                   1      139    310
0-24 months   NIH-Crypto       BANGLADESH                     1                   0       38    310
0-24 months   NIH-Crypto       BANGLADESH                     1                   1       54    310
0-24 months   PROVIDE          BANGLADESH                     0                   0       94    308
0-24 months   PROVIDE          BANGLADESH                     0                   1      132    308
0-24 months   PROVIDE          BANGLADESH                     1                   0       35    308
0-24 months   PROVIDE          BANGLADESH                     1                   1       47    308
0-24 months   SAS-CompFeed     INDIA                          0                   0       34    675
0-24 months   SAS-CompFeed     INDIA                          0                   1       30    675
0-24 months   SAS-CompFeed     INDIA                          1                   0      386    675
0-24 months   SAS-CompFeed     INDIA                          1                   1      225    675
0-24 months   SAS-FoodSuppl    INDIA                          0                   0       40    234
0-24 months   SAS-FoodSuppl    INDIA                          0                   1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          1                   0      181    234
0-24 months   SAS-FoodSuppl    INDIA                          1                   1       13    234
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      250    682
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      423    682
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        5    682
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4    682
0-6 months    CMC-V-BCS-2002   INDIA                          0                   0       65    199
0-6 months    CMC-V-BCS-2002   INDIA                          0                   1      131    199
0-6 months    CMC-V-BCS-2002   INDIA                          1                   0        1    199
0-6 months    CMC-V-BCS-2002   INDIA                          1                   1        2    199
0-6 months    COHORTS          INDIA                          0                   0      462   1241
0-6 months    COHORTS          INDIA                          0                   1      294   1241
0-6 months    COHORTS          INDIA                          1                   0      325   1241
0-6 months    COHORTS          INDIA                          1                   1      160   1241
0-6 months    EE               PAKISTAN                       0                   0       36    126
0-6 months    EE               PAKISTAN                       0                   1       47    126
0-6 months    EE               PAKISTAN                       1                   0       18    126
0-6 months    EE               PAKISTAN                       1                   1       25    126
0-6 months    GMS-Nepal        NEPAL                          0                   0       26    245
0-6 months    GMS-Nepal        NEPAL                          0                   1       30    245
0-6 months    GMS-Nepal        NEPAL                          1                   0       70    245
0-6 months    GMS-Nepal        NEPAL                          1                   1      119    245
0-6 months    IRC              INDIA                          0                   0       86    240
0-6 months    IRC              INDIA                          0                   1      147    240
0-6 months    IRC              INDIA                          1                   0        1    240
0-6 months    IRC              INDIA                          1                   1        6    240
0-6 months    JiVitA-3         BANGLADESH                     0                   0        2     78
0-6 months    JiVitA-3         BANGLADESH                     0                   1        7     78
0-6 months    JiVitA-3         BANGLADESH                     1                   0       19     78
0-6 months    JiVitA-3         BANGLADESH                     1                   1       50     78
0-6 months    JiVitA-4         BANGLADESH                     0                   0       53    505
0-6 months    JiVitA-4         BANGLADESH                     0                   1       94    505
0-6 months    JiVitA-4         BANGLADESH                     1                   0      146    505
0-6 months    JiVitA-4         BANGLADESH                     1                   1      212    505
0-6 months    NIH-Crypto       BANGLADESH                     0                   0       14    197
0-6 months    NIH-Crypto       BANGLADESH                     0                   1      126    197
0-6 months    NIH-Crypto       BANGLADESH                     1                   0        7    197
0-6 months    NIH-Crypto       BANGLADESH                     1                   1       50    197
0-6 months    PROVIDE          BANGLADESH                     0                   0       27    185
0-6 months    PROVIDE          BANGLADESH                     0                   1      112    185
0-6 months    PROVIDE          BANGLADESH                     1                   0       13    185
0-6 months    PROVIDE          BANGLADESH                     1                   1       33    185
0-6 months    SAS-CompFeed     INDIA                          0                   0       11    278
0-6 months    SAS-CompFeed     INDIA                          0                   1       13    278
0-6 months    SAS-CompFeed     INDIA                          1                   0      125    278
0-6 months    SAS-CompFeed     INDIA                          1                   1      129    278
0-6 months    SAS-FoodSuppl    INDIA                          0                   0       14     78
0-6 months    SAS-FoodSuppl    INDIA                          0                   1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          1                   0       64     78
0-6 months    SAS-FoodSuppl    INDIA                          1                   1        0     78
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0       97    326
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      224    326
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        2    326
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        3    326
6-24 months   CMC-V-BCS-2002   INDIA                          0                   0       50    121
6-24 months   CMC-V-BCS-2002   INDIA                          0                   1       68    121
6-24 months   CMC-V-BCS-2002   INDIA                          1                   0        3    121
6-24 months   CMC-V-BCS-2002   INDIA                          1                   1        0    121
6-24 months   COHORTS          INDIA                          0                   0      322    640
6-24 months   COHORTS          INDIA                          0                   1        0    640
6-24 months   COHORTS          INDIA                          1                   0      318    640
6-24 months   COHORTS          INDIA                          1                   1        0    640
6-24 months   EE               PAKISTAN                       0                   0       70    196
6-24 months   EE               PAKISTAN                       0                   1       60    196
6-24 months   EE               PAKISTAN                       1                   0       35    196
6-24 months   EE               PAKISTAN                       1                   1       31    196
6-24 months   GMS-Nepal        NEPAL                          0                   0       39    345
6-24 months   GMS-Nepal        NEPAL                          0                   1       38    345
6-24 months   GMS-Nepal        NEPAL                          1                   0      135    345
6-24 months   GMS-Nepal        NEPAL                          1                   1      133    345
6-24 months   IRC              INDIA                          0                   0       73    155
6-24 months   IRC              INDIA                          0                   1       80    155
6-24 months   IRC              INDIA                          1                   0        2    155
6-24 months   IRC              INDIA                          1                   1        0    155
6-24 months   JiVitA-3         BANGLADESH                     0                   0        3     51
6-24 months   JiVitA-3         BANGLADESH                     0                   1        0     51
6-24 months   JiVitA-3         BANGLADESH                     1                   0       48     51
6-24 months   JiVitA-3         BANGLADESH                     1                   1        0     51
6-24 months   JiVitA-4         BANGLADESH                     0                   0      249   1274
6-24 months   JiVitA-4         BANGLADESH                     0                   1       42   1274
6-24 months   JiVitA-4         BANGLADESH                     1                   0      838   1274
6-24 months   JiVitA-4         BANGLADESH                     1                   1      145   1274
6-24 months   NIH-Crypto       BANGLADESH                     0                   0       65    113
6-24 months   NIH-Crypto       BANGLADESH                     0                   1       13    113
6-24 months   NIH-Crypto       BANGLADESH                     1                   0       31    113
6-24 months   NIH-Crypto       BANGLADESH                     1                   1        4    113
6-24 months   PROVIDE          BANGLADESH                     0                   0       67    123
6-24 months   PROVIDE          BANGLADESH                     0                   1       20    123
6-24 months   PROVIDE          BANGLADESH                     1                   0       22    123
6-24 months   PROVIDE          BANGLADESH                     1                   1       14    123
6-24 months   SAS-CompFeed     INDIA                          0                   0       23    397
6-24 months   SAS-CompFeed     INDIA                          0                   1       17    397
6-24 months   SAS-CompFeed     INDIA                          1                   0      261    397
6-24 months   SAS-CompFeed     INDIA                          1                   1       96    397
6-24 months   SAS-FoodSuppl    INDIA                          0                   0       26    156
6-24 months   SAS-FoodSuppl    INDIA                          0                   1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          1                   0      117    156
6-24 months   SAS-FoodSuppl    INDIA                          1                   1       13    156
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      153    356
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      199    356
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        3    356
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        1    356


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
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/66a32c4e-b890-4ab3-9644-af5a1266d714/f9f1f9e5-2a97-4ee0-822c-3ac81f8c7af1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/66a32c4e-b890-4ab3-9644-af5a1266d714/f9f1f9e5-2a97-4ee0-822c-3ac81f8c7af1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/66a32c4e-b890-4ab3-9644-af5a1266d714/f9f1f9e5-2a97-4ee0-822c-3ac81f8c7af1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/66a32c4e-b890-4ab3-9644-af5a1266d714/f9f1f9e5-2a97-4ee0-822c-3ac81f8c7af1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        INDIA        0                    NA                0.2556245   0.2281186   0.2831304
0-24 months   COHORTS        INDIA        1                    NA                0.2197064   0.1879823   0.2514305
0-24 months   EE             PAKISTAN     0                    NA                0.5002488   0.4264560   0.5740417
0-24 months   EE             PAKISTAN     1                    NA                0.5237436   0.4240125   0.6234746
0-24 months   GMS-Nepal      NEPAL        0                    NA                0.5115263   0.4136329   0.6094198
0-24 months   GMS-Nepal      NEPAL        1                    NA                0.5554717   0.5059730   0.6049705
0-24 months   JiVitA-3       BANGLADESH   0                    NA                0.5833333   0.3560459   0.8106207
0-24 months   JiVitA-3       BANGLADESH   1                    NA                0.4273504   0.3351375   0.5195633
0-24 months   JiVitA-4       BANGLADESH   0                    NA                0.3143699   0.2658330   0.3629069
0-24 months   JiVitA-4       BANGLADESH   1                    NA                0.2705663   0.2457665   0.2953661
0-24 months   NIH-Crypto     BANGLADESH   0                    NA                0.6357144   0.5696321   0.7017966
0-24 months   NIH-Crypto     BANGLADESH   1                    NA                0.5895709   0.4931232   0.6860186
0-24 months   PROVIDE        BANGLADESH   0                    NA                0.5857829   0.5195573   0.6520085
0-24 months   PROVIDE        BANGLADESH   1                    NA                0.5697457   0.4532038   0.6862877
0-24 months   SAS-CompFeed   INDIA        0                    NA                0.5182449   0.3893909   0.6470988
0-24 months   SAS-CompFeed   INDIA        1                    NA                0.3685432   0.3284062   0.4086802
0-6 months    COHORTS        INDIA        0                    NA                0.3760006   0.3401208   0.4118803
0-6 months    COHORTS        INDIA        1                    NA                0.3479471   0.3016896   0.3942047
0-6 months    EE             PAKISTAN     0                    NA                0.5678051   0.4584581   0.6771522
0-6 months    EE             PAKISTAN     1                    NA                0.5906141   0.4449616   0.7362667
0-6 months    GMS-Nepal      NEPAL        0                    NA                0.5544535   0.4188170   0.6900899
0-6 months    GMS-Nepal      NEPAL        1                    NA                0.6334735   0.5638276   0.7031193
0-6 months    JiVitA-4       BANGLADESH   0                    NA                0.6551775   0.5772132   0.7331417
0-6 months    JiVitA-4       BANGLADESH   1                    NA                0.5860642   0.5342703   0.6378582
0-6 months    NIH-Crypto     BANGLADESH   0                    NA                0.9000000   0.8497073   0.9502927
0-6 months    NIH-Crypto     BANGLADESH   1                    NA                0.8771930   0.7908916   0.9634944
0-6 months    PROVIDE        BANGLADESH   0                    NA                0.8066436   0.7419086   0.8713786
0-6 months    PROVIDE        BANGLADESH   1                    NA                0.7205584   0.5888036   0.8523131
0-6 months    SAS-CompFeed   INDIA        0                    NA                0.5374159   0.3385389   0.7362929
0-6 months    SAS-CompFeed   INDIA        1                    NA                0.5082427   0.4458239   0.5706615
6-24 months   EE             PAKISTAN     0                    NA                0.4582801   0.3670332   0.5495269
6-24 months   EE             PAKISTAN     1                    NA                0.4755897   0.3524328   0.5987466
6-24 months   GMS-Nepal      NEPAL        0                    NA                0.4950392   0.3595054   0.6305729
6-24 months   GMS-Nepal      NEPAL        1                    NA                0.4981892   0.4337463   0.5626322
6-24 months   JiVitA-4       BANGLADESH   0                    NA                0.1466995   0.1014989   0.1919000
6-24 months   JiVitA-4       BANGLADESH   1                    NA                0.1471220   0.1252637   0.1689802
6-24 months   PROVIDE        BANGLADESH   0                    NA                0.2318310   0.1394291   0.3242328
6-24 months   PROVIDE        BANGLADESH   1                    NA                0.3836391   0.2123270   0.5549513
6-24 months   SAS-CompFeed   INDIA        0                    NA                0.4506748   0.3009433   0.6004063
6-24 months   SAS-CompFeed   INDIA        1                    NA                0.2682342   0.2204945   0.3159739


### Parameter: E(Y)


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        INDIA        NA                   NA                0.2413610   0.2219406   0.2607813
0-24 months   EE             PAKISTAN     NA                   NA                0.5062112   0.4470670   0.5653554
0-24 months   GMS-Nepal      NEPAL        NA                   NA                0.5423729   0.4984575   0.5862883
0-24 months   JiVitA-3       BANGLADESH   NA                   NA                0.4418605   0.3551361   0.5285849
0-24 months   JiVitA-4       BANGLADESH   NA                   NA                0.2771220   0.2556194   0.2986246
0-24 months   NIH-Crypto     BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROVIDE        BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   SAS-CompFeed   INDIA        NA                   NA                0.3777778   0.3394240   0.4161316
0-6 months    COHORTS        INDIA        NA                   NA                0.3658340   0.3390250   0.3926430
0-6 months    EE             PAKISTAN     NA                   NA                0.5714286   0.4842880   0.6585691
0-6 months    GMS-Nepal      NEPAL        NA                   NA                0.6081633   0.5464350   0.6698915
0-6 months    JiVitA-4       BANGLADESH   NA                   NA                0.6059406   0.5632798   0.6486014
0-6 months    NIH-Crypto     BANGLADESH   NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    PROVIDE        BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    SAS-CompFeed   INDIA        NA                   NA                0.5107914   0.4514901   0.5700927
6-24 months   EE             PAKISTAN     NA                   NA                0.4642857   0.3910729   0.5374985
6-24 months   GMS-Nepal      NEPAL        NA                   NA                0.4956522   0.4389718   0.5523326
6-24 months   JiVitA-4       BANGLADESH   NA                   NA                0.1467818   0.1275683   0.1659953
6-24 months   PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   SAS-CompFeed   INDIA        NA                   NA                0.2846348   0.2390527   0.3302168


### Parameter: RR


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS        INDIA        1                    0                 0.8594890   0.7179066   1.0289938
0-24 months   EE             PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   EE             PAKISTAN     1                    0                 1.0469660   0.8224171   1.3328247
0-24 months   GMS-Nepal      NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal      NEPAL        1                    0                 1.0859104   0.8785075   1.3422781
0-24 months   JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3       BANGLADESH   1                    0                 0.7326007   0.4692527   1.1437415
0-24 months   JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4       BANGLADESH   1                    0                 0.8606622   0.7189757   1.0302704
0-24 months   NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto     BANGLADESH   1                    0                 0.9274148   0.7631141   1.1270898
0-24 months   PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE        BANGLADESH   1                    0                 0.9726227   0.7696515   1.2291211
0-24 months   SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed   INDIA        1                    0                 0.7111372   0.5421918   0.9327254
0-6 months    COHORTS        INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS        INDIA        1                    0                 0.9253899   0.7855699   1.0900959
0-6 months    EE             PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    EE             PAKISTAN     1                    0                 1.0401705   0.7599569   1.4237053
0-6 months    GMS-Nepal      NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal      NEPAL        1                    0                 1.1425187   0.8732549   1.4948087
0-6 months    JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4       BANGLADESH   1                    0                 0.8945122   0.7713336   1.0373618
0-6 months    NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto     BANGLADESH   1                    0                 0.9746589   0.8703902   1.0914184
0-6 months    PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE        BANGLADESH   1                    0                 0.8932798   0.7313924   1.0909995
0-6 months    SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed   INDIA        1                    0                 0.9457158   0.6408237   1.3956698
6-24 months   EE             PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   EE             PAKISTAN     1                    0                 1.0377708   0.7487654   1.4383253
6-24 months   GMS-Nepal      NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal      NEPAL        1                    0                 1.0063632   0.7427933   1.3634574
6-24 months   JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4       BANGLADESH   1                    0                 1.0028798   0.7121355   1.4123267
6-24 months   PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE        BANGLADESH   1                    0                 1.6548225   0.9067675   3.0199997
6-24 months   SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed   INDIA        1                    0                 0.5951835   0.4083884   0.8674179


### Parameter: PAR


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS        INDIA        0                    NA                -0.0142635   -0.0322399    0.0037129
0-24 months   EE             PAKISTAN     0                    NA                 0.0059623   -0.0359384    0.0478631
0-24 months   GMS-Nepal      NEPAL        0                    NA                 0.0308466   -0.0554931    0.1171862
0-24 months   JiVitA-3       BANGLADESH   0                    NA                -0.1414729   -0.3635901    0.0806444
0-24 months   JiVitA-4       BANGLADESH   0                    NA                -0.0372480   -0.0792541    0.0047582
0-24 months   NIH-Crypto     BANGLADESH   0                    NA                -0.0131337   -0.0479151    0.0216477
0-24 months   PROVIDE        BANGLADESH   0                    NA                -0.0046141   -0.0393823    0.0301542
0-24 months   SAS-CompFeed   INDIA        0                    NA                -0.1404671   -0.2632360   -0.0176982
0-6 months    COHORTS        INDIA        0                    NA                -0.0101666   -0.0334901    0.0131570
0-6 months    EE             PAKISTAN     0                    NA                 0.0036235   -0.0586135    0.0658604
0-6 months    GMS-Nepal      NEPAL        0                    NA                 0.0537098   -0.0648064    0.1722260
0-6 months    JiVitA-4       BANGLADESH   0                    NA                -0.0492369   -0.1160968    0.0176231
0-6 months    NIH-Crypto     BANGLADESH   0                    NA                -0.0065990   -0.0355389    0.0223409
0-6 months    PROVIDE        BANGLADESH   0                    NA                -0.0228598   -0.0594508    0.0137313
0-6 months    SAS-CompFeed   INDIA        0                    NA                -0.0266245   -0.2180261    0.1647770
6-24 months   EE             PAKISTAN     0                    NA                 0.0060056   -0.0454188    0.0574301
6-24 months   GMS-Nepal      NEPAL        0                    NA                 0.0006130   -0.1196089    0.1208349
6-24 months   JiVitA-4       BANGLADESH   0                    NA                 0.0000823   -0.0396290    0.0397936
6-24 months   PROVIDE        BANGLADESH   0                    NA                 0.0445918   -0.0149110    0.1040945
6-24 months   SAS-CompFeed   INDIA        0                    NA                -0.1660400   -0.3079320   -0.0241480


### Parameter: PAF


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS        INDIA        0                    NA                -0.0590961   -0.1360081    0.0126086
0-24 months   EE             PAKISTAN     0                    NA                 0.0117784   -0.0746306    0.0912394
0-24 months   GMS-Nepal      NEPAL        0                    NA                 0.0568733   -0.1167613    0.2035112
0-24 months   JiVitA-3       BANGLADESH   0                    NA                -0.3201754   -0.9499839    0.1062166
0-24 months   JiVitA-4       BANGLADESH   0                    NA                -0.1344100   -0.2961422    0.0071414
0-24 months   NIH-Crypto     BANGLADESH   0                    NA                -0.0210956   -0.0784333    0.0331936
0-24 months   PROVIDE        BANGLADESH   0                    NA                -0.0079393   -0.0695864    0.0501547
0-24 months   SAS-CompFeed   INDIA        0                    NA                -0.3718246   -0.7409896   -0.0809386
0-6 months    COHORTS        INDIA        0                    NA                -0.0277901   -0.0935554    0.0340202
0-6 months    EE             PAKISTAN     0                    NA                 0.0063410   -0.1088204    0.1095419
0-6 months    GMS-Nepal      NEPAL        0                    NA                 0.0883148   -0.1296201    0.2642040
0-6 months    JiVitA-4       BANGLADESH   0                    NA                -0.0812569   -0.1978231    0.0239656
0-6 months    NIH-Crypto     BANGLADESH   0                    NA                -0.0073864   -0.0403389    0.0245224
0-6 months    PROVIDE        BANGLADESH   0                    NA                -0.0291659   -0.0772814    0.0168005
0-6 months    SAS-CompFeed   INDIA        0                    NA                -0.0521241   -0.5025458    0.2632737
6-24 months   EE             PAKISTAN     0                    NA                 0.0129352   -0.1043969    0.1178018
6-24 months   GMS-Nepal      NEPAL        0                    NA                 0.0012368   -0.2733142    0.2165893
6-24 months   JiVitA-4       BANGLADESH   0                    NA                 0.0005607   -0.3101503    0.2375845
6-24 months   PROVIDE        BANGLADESH   0                    NA                 0.1613173   -0.0805744    0.3490604
6-24 months   SAS-CompFeed   INDIA        0                    NA                -0.5833441   -1.1791332   -0.1504476
