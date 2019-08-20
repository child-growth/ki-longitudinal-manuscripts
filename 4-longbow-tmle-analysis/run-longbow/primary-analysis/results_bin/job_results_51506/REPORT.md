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

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        predfeed36    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      108     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       23     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      104     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       16     251
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       38     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      185     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     225
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       17     243
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        3     243
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      172     243
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       51     243
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       28     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        4     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      189     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       17     238
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0      126     287
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     287
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      150     287
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       10     287
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      257     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       21     281
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      231     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       23     256
0-24 months   ki1000109-EE               PAKISTAN                       1                   0      140     373
0-24 months   ki1000109-EE               PAKISTAN                       1                   1       86     373
0-24 months   ki1000109-EE               PAKISTAN                       0                   0       89     373
0-24 months   ki1000109-EE               PAKISTAN                       0                   1       58     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       73     184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      292     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      133     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       64     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       39     528
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    14164   19385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1203   19385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3422   19385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      596   19385
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3024    4558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      533    4558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      791    4558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      210    4558
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      128     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        3     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      114     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        6     251
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       38     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      187     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     225
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0       19     243
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        1     243
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0      206     243
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       17     243
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       31     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      200     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        6     238
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0      127     287
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     287
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      158     287
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        2     287
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      274     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        4     281
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      250     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        4     256
0-6 months    ki1000109-EE               PAKISTAN                       1                   0      199     373
0-6 months    ki1000109-EE               PAKISTAN                       1                   1       27     373
0-6 months    ki1000109-EE               PAKISTAN                       0                   0      121     373
0-6 months    ki1000109-EE               PAKISTAN                       0                   1       26     373
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       26     183
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      413     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       12     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       94     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        9     528
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    14936   19370
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      425   19370
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3703   19370
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      306   19370
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3475    4545
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       78    4545
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      949    4545
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       43    4545
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      108     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       22     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       95     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       13     238
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       37     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      168     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       17     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        2     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      171     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       45     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       29     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        3     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      190     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       13     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0      124     269
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      135     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1        9     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      237     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       19     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      222     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     245
6-24 months   ki1000109-EE               PAKISTAN                       1                   0      142     368
6-24 months   ki1000109-EE               PAKISTAN                       1                   1       80     368
6-24 months   ki1000109-EE               PAKISTAN                       0                   0       94     368
6-24 months   ki1000109-EE               PAKISTAN                       0                   1       52     368
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       65     176
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      292     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      132     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       65     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       37     526
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    10128   13727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      854   13727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2389   13727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      356   13727
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3066    4547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      484    4547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      805    4547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      192    4547


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/a51e399f-2d23-4ea6-a91b-acd90f0e7133/afc57520-207d-40ae-8733-14020a9a8105/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a51e399f-2d23-4ea6-a91b-acd90f0e7133/afc57520-207d-40ae-8733-14020a9a8105/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a51e399f-2d23-4ea6-a91b-acd90f0e7133/afc57520-207d-40ae-8733-14020a9a8105/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a51e399f-2d23-4ea6-a91b-acd90f0e7133/afc57520-207d-40ae-8733-14020a9a8105/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1801176   0.1150590   0.2451761
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1415965   0.0798530   0.2033400
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3929614   0.3298644   0.4560584
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3863989   0.3067020   0.4660959
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3143480   0.2702812   0.3584148
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3713789   0.2778666   0.4648913
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0828382   0.0780779   0.0875985
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1271774   0.1165348   0.1378199
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1551772   0.1418919   0.1684625
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1861046   0.1616585   0.2105508
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1201656   0.0774255   0.1629056
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1781026   0.1159617   0.2402434
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0282353   0.0124722   0.0439984
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0873786   0.0327917   0.1419656
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0307102   0.0279241   0.0334964
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0595529   0.0525348   0.0665710
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0219429   0.0159614   0.0279245
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0412221   0.0284830   0.0539612
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1711492   0.1064682   0.2358301
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1238953   0.0618793   0.1859114
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3681538   0.3041205   0.4321872
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3506601   0.2722642   0.4290559
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3122150   0.2681008   0.3563292
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3701180   0.2759177   0.4643183
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0812549   0.0757648   0.0867450
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1143950   0.1018044   0.1269857
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1417674   0.1291563   0.1543785
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1693570   0.1455866   0.1931274


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1553785   0.1104725   0.2002845
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3860590   0.3365861   0.4355318
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3257576   0.2857449   0.3657703
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0928037   0.0883057   0.0973017
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1630101   0.1508647   0.1751555
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1420912   0.1066114   0.1775709
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0397727   0.0230879   0.0564576
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0377388   0.0349183   0.0405593
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0266227   0.0211044   0.0321409
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1470588   0.1019690   0.1921487
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3586957   0.3096263   0.4077650
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3212928   0.2813480   0.3612376
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0881474   0.0829797   0.0933152
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1486695   0.1373410   0.1599979


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7861339   0.4457010   1.386594
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.9832999   0.7592838   1.273409
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1814261   0.8864933   1.574482
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5352505   1.3918245   1.693456
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1993042   1.0319192   1.393840
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 1.4821429   0.9018105   2.435930
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 3.0946602   1.3389106   7.152771
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.9391869   1.6863445   2.229939
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.8786036   1.2551283   2.811786
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7239025   0.3866185   1.355431
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.9524825   0.7183824   1.262869
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1854586   0.8860939   1.585963
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4078539   1.2409102   1.597257
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1946119   1.0153757   1.405487


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0247391   -0.0673926   0.0179145
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0069025   -0.0464978   0.0326929
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0114096   -0.0087359   0.0315550
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0099655    0.0074194   0.0125116
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0078329    0.0016194   0.0140465
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0219256   -0.0078391   0.0516903
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0115374    0.0002746   0.0228003
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0070285    0.0053728   0.0086842
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0046797    0.0015483   0.0078111
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0240903   -0.0647034   0.0165227
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0094582   -0.0498317   0.0309154
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0090778   -0.0109126   0.0290681
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0068925    0.0040385   0.0097466
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0069021    0.0008568   0.0129474


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1592182   -0.4678078   0.0844941
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0178793   -0.1258378   0.0797269
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0350247   -0.0288165   0.0949044
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1073829    0.0799657   0.1339830
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0480517    0.0092233   0.0853585
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1543064   -0.0804894   0.3380799
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2900840   -0.0201657   0.5059815
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1862415    0.1435051   0.2268455
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1757793    0.0482903   0.2861902
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1638143   -0.4725716   0.0802052
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0263682   -0.1453295   0.0802370
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0282539   -0.0359901   0.0885139
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0781933    0.0456646   0.1096131
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0464256    0.0048802   0.0862365
