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

**Intervention Variable:** trth2o

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
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

agecat        studyid                    country                        trth2o    ever_co   n_cell     n
------------  -------------------------  -----------------------------  -------  --------  -------  ----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0      112   135
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       21   135
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0        2   135
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1        0   135
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       13   103
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0   103
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0               0       89   103
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        1   103
0-24 months   ki0047075b-MAL-ED          INDIA                          1               0        3     9
0-24 months   ki0047075b-MAL-ED          INDIA                          1               1        1     9
0-24 months   ki0047075b-MAL-ED          INDIA                          0               0        4     9
0-24 months   ki0047075b-MAL-ED          INDIA                          0               1        1     9
0-24 months   ki0047075b-MAL-ED          NEPAL                          1               0       58    83
0-24 months   ki0047075b-MAL-ED          NEPAL                          1               1       11    83
0-24 months   ki0047075b-MAL-ED          NEPAL                          0               0       13    83
0-24 months   ki0047075b-MAL-ED          NEPAL                          0               1        1    83
0-24 months   ki0047075b-MAL-ED          PERU                           1               0       37    49
0-24 months   ki0047075b-MAL-ED          PERU                           1               1        2    49
0-24 months   ki0047075b-MAL-ED          PERU                           0               0        8    49
0-24 months   ki0047075b-MAL-ED          PERU                           0               1        2    49
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        2    12
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0    12
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       10    12
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0    12
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6    43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0    43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       34    43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        3    43
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       98   120
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       22   120
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0        0   120
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0   120
0-24 months   ki1000108-IRC              INDIA                          1               0       94   122
0-24 months   ki1000108-IRC              INDIA                          1               1       28   122
0-24 months   ki1000108-IRC              INDIA                          0               0        0   122
0-24 months   ki1000108-IRC              INDIA                          0               1        0   122
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       16   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        0   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      594   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       90   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      382   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       45   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      305   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       26   758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0        1     4
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        0     4
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0               0        2     4
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0               1        1     4
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0      130   135
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        3   135
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0        2   135
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        0   135
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       13   103
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0   103
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0               0       89   103
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        1   103
0-6 months    ki0047075b-MAL-ED          INDIA                          1               0        3     9
0-6 months    ki0047075b-MAL-ED          INDIA                          1               1        1     9
0-6 months    ki0047075b-MAL-ED          INDIA                          0               0        5     9
0-6 months    ki0047075b-MAL-ED          INDIA                          0               1        0     9
0-6 months    ki0047075b-MAL-ED          NEPAL                          1               0       66    83
0-6 months    ki0047075b-MAL-ED          NEPAL                          1               1        3    83
0-6 months    ki0047075b-MAL-ED          NEPAL                          0               0       14    83
0-6 months    ki0047075b-MAL-ED          NEPAL                          0               1        0    83
0-6 months    ki0047075b-MAL-ED          PERU                           1               0       38    49
0-6 months    ki0047075b-MAL-ED          PERU                           1               1        1    49
0-6 months    ki0047075b-MAL-ED          PERU                           0               0       10    49
0-6 months    ki0047075b-MAL-ED          PERU                           0               1        0    49
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        2    12
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0    12
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       10    12
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0    12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6    43
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0    43
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       37    43
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0    43
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0      112   120
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        8   120
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0        0   120
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0   120
0-6 months    ki1000108-IRC              INDIA                          1               0      115   122
0-6 months    ki1000108-IRC              INDIA                          1               1        7   122
0-6 months    ki1000108-IRC              INDIA                          0               0        0   122
0-6 months    ki1000108-IRC              INDIA                          0               1        0   122
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0       16   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        0   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      654   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       30   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      417   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       10   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      324   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        7   758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               0        1     4
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        0     4
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0               0        3     4
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0               1        0     4
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0      113   135
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       20   135
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0        2   135
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1        0   135
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       13   103
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0   103
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0               0       90   103
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        0   103
6-24 months   ki0047075b-MAL-ED          INDIA                          1               0        4     9
6-24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     9
6-24 months   ki0047075b-MAL-ED          INDIA                          0               0        4     9
6-24 months   ki0047075b-MAL-ED          INDIA                          0               1        1     9
6-24 months   ki0047075b-MAL-ED          NEPAL                          1               0       60    83
6-24 months   ki0047075b-MAL-ED          NEPAL                          1               1        9    83
6-24 months   ki0047075b-MAL-ED          NEPAL                          0               0       13    83
6-24 months   ki0047075b-MAL-ED          NEPAL                          0               1        1    83
6-24 months   ki0047075b-MAL-ED          PERU                           1               0       37    49
6-24 months   ki0047075b-MAL-ED          PERU                           1               1        2    49
6-24 months   ki0047075b-MAL-ED          PERU                           0               0        8    49
6-24 months   ki0047075b-MAL-ED          PERU                           0               1        2    49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        2    12
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0    12
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       10    12
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0    12
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6    43
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0    43
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       34    43
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        3    43
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0      102   120
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       18   120
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0        0   120
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0   120
6-24 months   ki1000108-IRC              INDIA                          1               0       97   122
6-24 months   ki1000108-IRC              INDIA                          1               1       25   122
6-24 months   ki1000108-IRC              INDIA                          0               0        0   122
6-24 months   ki1000108-IRC              INDIA                          0               1        0   122
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       14   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        0   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      525   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       75   614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      369   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       39   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      298   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       24   730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0        1     4
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        0     4
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0               0        2     4
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0               1        1     4


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/b3350d36-bfc7-4133-983f-6a2cbeadd95f/ddacbafc-85b6-444a-9621-5ca90a53e41c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b3350d36-bfc7-4133-983f-6a2cbeadd95f/ddacbafc-85b6-444a-9621-5ca90a53e41c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b3350d36-bfc7-4133-983f-6a2cbeadd95f/ddacbafc-85b6-444a-9621-5ca90a53e41c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b3350d36-bfc7-4133-983f-6a2cbeadd95f/ddacbafc-85b6-444a-9621-5ca90a53e41c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1056490   0.0764410   0.1348570
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0774946   0.0483603   0.1066290
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0234192   0.0090656   0.0377728
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0211480   0.0056379   0.0366581
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0949119   0.0662670   0.1235568
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0719492   0.0432057   0.1006928


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0224274   0.0118796   0.0329753
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.7335102   0.4600138   1.169611
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.9030212   0.3472201   2.348502
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.7580636   0.4597448   1.249955


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0119815   -0.0300207   0.0060578
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0009918   -0.0102202   0.0082367
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0086105   -0.0265137   0.0092927


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.1279149   -0.3360394   0.0477885
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0442210   -0.5478189   0.2955265
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0997726   -0.3263958   0.0881306
