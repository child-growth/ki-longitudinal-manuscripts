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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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

agecat      studyid                    country                        predfeed36    swasted   n_cell      n
----------  -------------------------  -----------------------------  -----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       69    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        0    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      131    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        8    208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        7     62
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        0     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       55     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        0     62
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        4     40
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0     40
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       36     40
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        0     40
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        1     25
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       23     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        1     25
Birth       ki0047075b-MAL-ED          PERU                           1                   0       57    218
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0    218
Birth       ki0047075b-MAL-ED          PERU                           0                   0      161    218
Birth       ki0047075b-MAL-ED          PERU                           0                   1        0    218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        2    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      102    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0    104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      111    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    111
Birth       ki1000109-EE               PAKISTAN                       1                   0        2      6
Birth       ki1000109-EE               PAKISTAN                       1                   1        0      6
Birth       ki1000109-EE               PAKISTAN                       0                   0        3      6
Birth       ki1000109-EE               PAKISTAN                       0                   1        1      6
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0      378    491
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1       18    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0       92    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1        3    491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     6603   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1      143   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1844   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1       29   8619
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1695   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1       19   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      404   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       10   2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       80    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        1    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      158    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        1    240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       25    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      184    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       17    233
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0    233
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      210    233
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        6    233
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        8    235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      227    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0    235
6 months    ki0047075b-MAL-ED          PERU                           1                   0       72    272
6 months    ki0047075b-MAL-ED          PERU                           1                   1        0    272
6 months    ki0047075b-MAL-ED          PERU                           0                   0      200    272
6 months    ki0047075b-MAL-ED          PERU                           0                   1        0    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      244    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        3    250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        5    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      238    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    243
6 months    ki1000109-EE               PAKISTAN                       1                   0        4      9
6 months    ki1000109-EE               PAKISTAN                       1                   1        0      9
6 months    ki1000109-EE               PAKISTAN                       0                   0        5      9
6 months    ki1000109-EE               PAKISTAN                       0                   1        0      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      156    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       12    168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      416    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1        6    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      105    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        0    527
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47    272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0    272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225    272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0    272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     6477   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1       99   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1936   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1       23   8535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3233   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       19   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      925   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       11   4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       69    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      143    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        0    212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       20    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      148    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       17    224
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0    224
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      205    224
24 months   ki0047075b-MAL-ED          INDIA                          0                   1        2    224
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        8    227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      219    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        0    227
24 months   ki0047075b-MAL-ED          PERU                           1                   0       53    201
24 months   ki0047075b-MAL-ED          PERU                           1                   1        0    201
24 months   ki0047075b-MAL-ED          PERU                           0                   0      146    201
24 months   ki0047075b-MAL-ED          PERU                           0                   1        2    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      232    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0    235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        4    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      209    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    213
24 months   ki1000109-EE               PAKISTAN                       1                   0        0      3
24 months   ki1000109-EE               PAKISTAN                       1                   1        0      3
24 months   ki1000109-EE               PAKISTAN                       0                   0        3      3
24 months   ki1000109-EE               PAKISTAN                       0                   1        0      3
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      355    445
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1        7    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       76    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1        7    445
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       34    184
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        0    184
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      150    184
24 months   ki1148112-LCNI-5           MALAWI                         0                   1        0    184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     3173   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      147   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      966   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1       31   4317
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3068   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       76   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      866   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       25   4035


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/e3e3cdce-648e-45c1-94e3-461274f03c27/5ad66e53-238e-45cc-820b-2fc78a99cbdc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e3e3cdce-648e-45c1-94e3-461274f03c27/5ad66e53-238e-45cc-820b-2fc78a99cbdc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e3e3cdce-648e-45c1-94e3-461274f03c27/5ad66e53-238e-45cc-820b-2fc78a99cbdc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e3e3cdce-648e-45c1-94e3-461274f03c27/5ad66e53-238e-45cc-820b-2fc78a99cbdc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0212033   0.0171839   0.0252226
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0153770   0.0077008   0.0230533
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0110782   0.0059548   0.0162015
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0238019   0.0036741   0.0439297
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0150477   0.0119792   0.0181161
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0119598   0.0056804   0.0182393
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0059392   0.0019828   0.0098957
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0119821   0.0058517   0.0181124
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0193370   0.0051354   0.0335386
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0843373   0.0244858   0.1441889
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0443291   0.0352167   0.0534415
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0314344   0.0208731   0.0419957
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0242951   0.0181359   0.0304543
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0277874   0.0169334   0.0386414


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0199559   0.0164404   0.0234714
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0136278   0.0077812   0.0194744
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0142941   0.0115468   0.0170414
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0071633   0.0038384   0.0104883
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0314607   0.0152239   0.0476974
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0412323   0.0338115   0.0486531
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0250310   0.0196459   0.0304161


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7252202   0.4233489    1.242342
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.1485400   0.8182904    5.641303
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7947956   0.4503135    1.402801
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.0174452   0.8666850    4.696153
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 4.3614457   1.5707064   12.110608
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7091135   0.4780470    1.051867
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1437440   0.7144474    1.830996


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0012474   -0.0031353   0.0006405
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0025497   -0.0017425   0.0068419
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0007536   -0.0023921   0.0008850
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0012241   -0.0004001   0.0028483
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0121237    0.0004112   0.0238361
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0030968   -0.0063464   0.0001528
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0007358   -0.0021403   0.0036120


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0625057   -0.1619372    0.0284171
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1870924   -0.1489126    0.4248311
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0527192   -0.1753417    0.0571103
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1708848   -0.1255458    0.3892456
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.3853591   -0.0298156    0.6331543
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0751057   -0.1527840   -0.0026616
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0293971   -0.0929323    0.1380344
