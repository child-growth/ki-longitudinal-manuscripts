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

agecat      studyid                    country                        predfeed36    wasted   n_cell      n
----------  -------------------------  -----------------------------  -----------  -------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       59    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       10    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      115    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       24    208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        7     62
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       53     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        2     62
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        4     40
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0     40
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       31     40
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        5     40
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        0     25
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        1     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       23     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1     25
Birth       ki0047075b-MAL-ED          PERU                           1                  0       57    218
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0    218
Birth       ki0047075b-MAL-ED          PERU                           0                  0      156    218
Birth       ki0047075b-MAL-ED          PERU                           0                  1        5    218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       93    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        9    104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      110    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1    111
Birth       ki1000109-EE               PAKISTAN                       1                  0        2      6
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      6
Birth       ki1000109-EE               PAKISTAN                       0                  0        3      6
Birth       ki1000109-EE               PAKISTAN                       0                  1        1      6
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      320    491
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       76    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0       77    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1       18    491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     5983   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      763   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1680   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      193   8619
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1540   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      174   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      367   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       47   2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       78    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        3    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      154    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        5    240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       25    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      183    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        1    209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       16    233
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        1    233
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      198    233
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       18    233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        8    235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      223    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        4    235
6 months    ki0047075b-MAL-ED          PERU                           1                  0       72    272
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0    272
6 months    ki0047075b-MAL-ED          PERU                           0                  0      200    272
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      240    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        7    250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        5    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      237    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1    243
6 months    ki1000109-EE               PAKISTAN                       1                  0        4      9
6 months    ki1000109-EE               PAKISTAN                       1                  1        0      9
6 months    ki1000109-EE               PAKISTAN                       0                  0        5      9
6 months    ki1000109-EE               PAKISTAN                       0                  1        0      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      127    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       41    168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      383    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       39    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       95    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       10    527
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47    272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0    272
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      221    272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        4    272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     6001   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      575   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1789   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      170   8535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3093   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      159   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      858   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       78   4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       62    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        7    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      129    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       14    212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       20    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      146    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        3    169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       16    224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        1    224
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      181    224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       26    224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        8    227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      214    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        5    227
24 months   ki0047075b-MAL-ED          PERU                           1                  0       52    201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        1    201
24 months   ki0047075b-MAL-ED          PERU                           0                  0      145    201
24 months   ki0047075b-MAL-ED          PERU                           0                  1        3    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      231    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1    235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        4    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      205    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4    213
24 months   ki1000109-EE               PAKISTAN                       1                  0        0      3
24 months   ki1000109-EE               PAKISTAN                       1                  1        0      3
24 months   ki1000109-EE               PAKISTAN                       0                  0        3      3
24 months   ki1000109-EE               PAKISTAN                       0                  1        0      3
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      304    445
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       58    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       60    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       23    445
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       33    184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        1    184
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      147    184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        3    184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2563   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      757   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      775   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      222   4317
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2551   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      593   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      692   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      199   4035


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/83a79824-f942-4e87-85fc-ce38a4ff6e6f/f4de7242-823a-45b6-9d38-f4597134ad6d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/83a79824-f942-4e87-85fc-ce38a4ff6e6f/f4de7242-823a-45b6-9d38-f4597134ad6d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/83a79824-f942-4e87-85fc-ce38a4ff6e6f/f4de7242-823a-45b6-9d38-f4597134ad6d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/83a79824-f942-4e87-85fc-ce38a4ff6e6f/f4de7242-823a-45b6-9d38-f4597134ad6d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1517251   0.0625141   0.2409361
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1703094   0.1071533   0.2334656
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1920281   0.1531701   0.2308862
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1906680   0.1109642   0.2703719
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1109596   0.1033113   0.1186079
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1106369   0.1024957   0.1187780
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1015762   0.0836169   0.1195355
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1168004   0.0793102   0.1542906
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0920584   0.0644983   0.1196184
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1003474   0.0434397   0.1572552
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0874245   0.0796860   0.0951630
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0862726   0.0727529   0.0997923
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0503898   0.0397848   0.0609947
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0794417   0.0610412   0.0978422
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1014493   0.0300414   0.1728571
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0979021   0.0490785   0.1467257
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1606651   0.1227787   0.1985516
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2932221   0.1953570   0.3910871
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2268464   0.2096136   0.2440792
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2247399   0.1927745   0.2567053
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1918266   0.1758102   0.2078430
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2135551   0.1789284   0.2481818


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1634615   0.1130867   0.2138364
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1914460   0.1566101   0.2262820
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1109177   0.1033745   0.1184610
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1038534   0.0874500   0.1202568
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0929791   0.0681617   0.1177965
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0872876   0.0805483   0.0940269
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0565903   0.0475372   0.0656433
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0990566   0.0587480   0.1393652
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1820225   0.1461311   0.2179138
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2267779   0.2114523   0.2421034
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1962825   0.1816413   0.2109237


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.1224867   0.5590528   2.253770
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9929172   0.6239028   1.580189
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9970916   0.9580375   1.037738
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1498792   0.8019602   1.648738
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0900418   0.5732301   2.072799
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9868244   0.8245566   1.181026
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5765445   1.1546389   2.152615
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9650350   0.4072906   2.286555
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.8250514   1.2127075   2.746592
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9907141   0.8444396   1.162326
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1132715   0.9302925   1.332241


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0117364   -0.0634167   0.0868896
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0005821   -0.0176392   0.0164750
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000419   -0.0010000   0.0009162
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0022772   -0.0057145   0.0102689
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0009208   -0.0115471   0.0133886
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0001368   -0.0037052   0.0034315
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0062005    0.0013299   0.0110711
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0023927   -0.0607420   0.0559567
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0213574    0.0014643   0.0412505
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000685   -0.0084138   0.0082767
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0044559   -0.0036405   0.0125524


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0717993   -0.5229906   0.4342995
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0030405   -0.0962125   0.0822124
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003774   -0.0090515   0.0082220
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0219268   -0.0580687   0.0958743
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0099030   -0.1336669   0.1352910
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0015677   -0.0432895   0.0384856
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1095685    0.0158079   0.1943968
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0241546   -0.8202311   0.4237586
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1173336    0.0027878   0.2187221
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003021   -0.0377872   0.0358290
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0227016   -0.0192921   0.0629652
