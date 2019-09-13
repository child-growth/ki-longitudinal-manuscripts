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

**Intervention Variable:** trth2o

**Adjustment Set:**

* arm
* sex
* W_mage
* W_nrooms
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nhh
* W_nchldlt5
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nhh
* delta_W_nchldlt5
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

agecat        studyid                    country                        trth2o    wast_rec90d   n_cell     n
------------  -------------------------  -----------------------------  -------  ------------  -------  ----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       25    61
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       36    61
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0        0    61
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        0    61
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        0     9
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     9
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        1     9
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        8     9
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        0     8
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        1     8
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0        4     8
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1        3     8
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        5    45
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       35    45
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0        2    45
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        3    45
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0        2     9
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        4     9
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0        0     9
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1        3     9
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     8
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     8
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0        2     8
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6     8
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     6
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     6
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0        1     6
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        5     6
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       37   100
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       63   100
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0   100
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0   100
0-24 months   ki1000108-IRC              INDIA                          1                   0       59   135
0-24 months   ki1000108-IRC              INDIA                          1                   1       76   135
0-24 months   ki1000108-IRC              INDIA                          0                   0        0   135
0-24 months   ki1000108-IRC              INDIA                          0                   1        0   135
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0        0   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1        2   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      128   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1      177   307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       65   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       95   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       52   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       99   311
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0        0     4
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1        0     4
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0        2     4
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1        2     4
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        5    25
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       20    25
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0        0    25
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        0    25
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        0     7
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     7
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0        0     7
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        7     7
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0        0     2
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        1     2
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0        0     2
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1        1     2
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        2    19
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1       15    19
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0        1    19
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        1    19
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0        0     3
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        3     3
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0        0     3
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        0     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0        1     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        2     3
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     2
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     2
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0        0     2
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        2     2
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       23    62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       39    62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0    62
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0    62
0-6 months    ki1000108-IRC              INDIA                          1                   0       30    80
0-6 months    ki1000108-IRC              INDIA                          1                   1       50    80
0-6 months    ki1000108-IRC              INDIA                          0                   0        0    80
0-6 months    ki1000108-IRC              INDIA                          0                   1        0    80
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0        0   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        2   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0       39   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1      143   184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       12   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       82   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   0        9   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       95   198
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       20    36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       16    36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0        0    36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        0    36
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        0     2
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     2
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        1     2
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     2
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        0     6
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     6
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0        4     6
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1        2     6
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        3    26
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       20    26
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0        1    26
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        2    26
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0        2     6
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     6
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0        0     6
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1        3     6
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     5
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     5
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0        1     5
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        4     5
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     4
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     4
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0        1     4
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        3     4
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       14    38
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       24    38
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0    38
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0    38
6-24 months   ki1000108-IRC              INDIA                          1                   0       29    55
6-24 months   ki1000108-IRC              INDIA                          1                   1       26    55
6-24 months   ki1000108-IRC              INDIA                          0                   0        0    55
6-24 months   ki1000108-IRC              INDIA                          0                   1        0    55
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0        0   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1        0   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       89   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       34   123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       53   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       13   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       43   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1        4   113
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0        0     4
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1        0     4
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0        2     4
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1        2     4


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
![](/tmp/147b1ea9-2323-4fd7-a6f6-5ad63ad00889/16715937-762a-486a-9550-f22346a481d6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/147b1ea9-2323-4fd7-a6f6-5ad63ad00889/16715937-762a-486a-9550-f22346a481d6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/147b1ea9-2323-4fd7-a6f6-5ad63ad00889/16715937-762a-486a-9550-f22346a481d6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/147b1ea9-2323-4fd7-a6f6-5ad63ad00889/16715937-762a-486a-9550-f22346a481d6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.6198992   0.5430550   0.6967434
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.6681118   0.5943183   0.7419054
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.8723404   0.8040698   0.9406110
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.9134615   0.8587597   0.9681634


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.8939394   0.8505280   0.9373508


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.077775   0.9109569   1.275141
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.047139   0.9488705   1.155584


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level    estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ---------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.003895   -0.0510714   0.0588615
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.021599   -0.0244315   0.0676294


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0062441   -0.0858958   0.0905658
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0241616   -0.0289300   0.0745137
