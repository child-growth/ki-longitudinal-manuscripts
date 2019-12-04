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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        predfeed36    stunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       62     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1       10     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      119     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1       30     221
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        6      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        2      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       50      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        7      65
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        2      42
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        2      42
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       31      42
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        7      42
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       24      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        1      26
Birth       ki0047075b-MAL-ED          PERU                           1                   0       52     223
Birth       ki0047075b-MAL-ED          PERU                           1                   1        6     223
Birth       ki0047075b-MAL-ED          PERU                           0                   0      145     223
Birth       ki0047075b-MAL-ED          PERU                           0                   1       20     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        2     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       94     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        9     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       98     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     119
Birth       ki1000109-EE               PAKISTAN                       1                   0        2       7
Birth       ki1000109-EE               PAKISTAN                       1                   1        1       7
Birth       ki1000109-EE               PAKISTAN                       0                   0        3       7
Birth       ki1000109-EE               PAKISTAN                       0                   1        1       7
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0      356     526
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1       66     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0       85     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1       19     526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5646   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2688   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1580   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      767   10681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1409    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1      590    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      347    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1      171    2517
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       68     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       13     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      128     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       31     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       24     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        5     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       13     233
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        4     233
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      176     233
6 months    ki0047075b-MAL-ED          INDIA                          0                   1       40     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        8     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      215     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1       12     235
6 months    ki0047075b-MAL-ED          PERU                           1                   0       59     272
6 months    ki0047075b-MAL-ED          PERU                           1                   1       13     272
6 months    ki0047075b-MAL-ED          PERU                           0                   0      153     272
6 months    ki0047075b-MAL-ED          PERU                           0                   1       47     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      199     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       48     250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        4     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      180     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       58     243
6 months    ki1000109-EE               PAKISTAN                       1                   0        3       9
6 months    ki1000109-EE               PAKISTAN                       1                   1        1       9
6 months    ki1000109-EE               PAKISTAN                       0                   0        4       9
6 months    ki1000109-EE               PAKISTAN                       0                   1        1       9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       81     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      339     527
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       83     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       76     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       29     527
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       80     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     4980    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1613    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1458    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      501    8552
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2479    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      774    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      649    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      283    4185
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       31     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       38     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       80     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       63     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       20     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      142     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        7     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        7     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   1       10     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      121     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       86     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        6     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        2     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      171     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       48     227
24 months   ki0047075b-MAL-ED          PERU                           1                   0       33     201
24 months   ki0047075b-MAL-ED          PERU                           1                   1       20     201
24 months   ki0047075b-MAL-ED          PERU                           0                   0       94     201
24 months   ki0047075b-MAL-ED          PERU                           0                   1       54     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      150     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       82     235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       57     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1      152     213
24 months   ki1000109-EE               PAKISTAN                       1                   0        0       3
24 months   ki1000109-EE               PAKISTAN                       1                   1        0       3
24 months   ki1000109-EE               PAKISTAN                       0                   0        2       3
24 months   ki1000109-EE               PAKISTAN                       0                   1        1       3
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      208     446
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      155     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       40     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       43     446
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1       17     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       75     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1707    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1627    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      505    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      495    4334
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1905    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1252    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      503    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      389    4049


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/55af9cd9-6db0-41e9-98c4-4589c3fdd8bb/e759c2c2-0e4e-499f-8201-12f988bbbd23/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/55af9cd9-6db0-41e9-98c4-4589c3fdd8bb/e759c2c2-0e4e-499f-8201-12f988bbbd23/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/55af9cd9-6db0-41e9-98c4-4589c3fdd8bb/e759c2c2-0e4e-499f-8201-12f988bbbd23/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/55af9cd9-6db0-41e9-98c4-4589c3fdd8bb/e759c2c2-0e4e-499f-8201-12f988bbbd23/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1342017   0.0553754   0.2130280
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2023378   0.1369504   0.2677252
Birth       ki0047075b-MAL-ED     PERU         1                    NA                0.1034483   0.0248959   0.1820007
Birth       ki0047075b-MAL-ED     PERU         0                    NA                0.1212121   0.0713010   0.1711232
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1559814   0.1212666   0.1906962
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1830130   0.1065793   0.2594468
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3233439   0.3129482   0.3337396
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3240196   0.3130375   0.3350017
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3026827   0.2806204   0.3247451
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2989795   0.2736561   0.3243029
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1496653   0.0747362   0.2245944
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1983200   0.1356543   0.2609857
6 months    ki0047075b-MAL-ED     PERU         1                    NA                0.1787708   0.0881755   0.2693661
6 months    ki0047075b-MAL-ED     PERU         0                    NA                0.2344740   0.1754132   0.2935348
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1961093   0.1580981   0.2341204
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2675737   0.1809296   0.3542178
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3728906   0.2326486   0.5131326
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3565110   0.2937096   0.4193125
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2449727   0.2334969   0.2564484
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2547297   0.2355493   0.2739101
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2435449   0.2275544   0.2595354
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2820798   0.2491915   0.3149682
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5315418   0.4139532   0.6491304
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4466178   0.3671168   0.5261188
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.5882353   0.3537610   0.8227096
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.4154589   0.3481758   0.4827420
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.4338074   0.3038626   0.5637521
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.3559070   0.2791246   0.4326895
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4296105   0.3787654   0.4804556
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4986669   0.3912755   0.6060583
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.4964182   0.3248514   0.6679850
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4847701   0.4056926   0.5638475
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4861478   0.4660558   0.5062399
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.5003509   0.4647718   0.5359299
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4017523   0.3816323   0.4218722
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4165948   0.3791848   0.4540048


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1809955   0.1301194   0.2318716
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                0.1165919   0.0743750   0.1588088
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1615970   0.1301114   0.1930825
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.3234716   0.3131402   0.3338029
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3023441   0.2806174   0.3240708
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1833333   0.1342773   0.2323893
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2125237   0.1775632   0.2474842
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2471936   0.2366536   0.2577336
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2525687   0.2374550   0.2676823
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.4285714   0.3636201   0.4935228
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4439462   0.3977834   0.4901089
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4896170   0.4715168   0.5077172
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4052853   0.3865623   0.4240082


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.5077142   0.7714958   2.946487
Birth       ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 1.1717172   0.4939463   2.779495
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1733006   0.7307070   1.883976
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0020896   0.9871116   1.017295
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9877654   0.9341198   1.044492
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.3250904   0.7318799   2.399116
6 months    ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 1.3115902   0.7443684   2.311045
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3644114   0.9352165   1.990575
6 months    ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                 0.9560741   0.6306890   1.449332
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0398289   0.9585534   1.127996
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1582254   1.0211264   1.313732
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8402308   0.6382064   1.106206
24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.7062802   0.4593272   1.086005
24 months   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 0.8204265   0.5710532   1.178699
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1607418   0.9095664   1.481279
24 months   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                 0.9765357   0.6656629   1.432590
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0292154   0.9509705   1.113898
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0369446   0.9420190   1.141436


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0467938   -0.0220555   0.1156431
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.0131437   -0.0557257   0.0820130
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0056156   -0.0106557   0.0218869
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001277   -0.0009484   0.0012037
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0003387   -0.0035598   0.0028825
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0336681   -0.0296520   0.0969881
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.0418174   -0.0386895   0.1223243
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0164145   -0.0025071   0.0353361
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0162729   -0.1438820   0.1113361
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0022210   -0.0024843   0.0069262
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0090238    0.0014542   0.0165935
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0551267   -0.1502579   0.0400046
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.1596639   -0.3851677   0.0658400
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0656481   -0.1766827   0.0453864
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0143357   -0.0075058   0.0361772
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0096457   -0.1663401   0.1470487
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0034691   -0.0055706   0.0125089
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0035330   -0.0051061   0.0121722


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.2585357   -0.2307512   0.5533059
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.1127321   -0.7244540   0.5434820
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0347506   -0.0712580   0.1302689
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003947   -0.0029375   0.0037159
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0011202   -0.0118288   0.0094750
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1836441   -0.2419393   0.4633900
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.1895723   -0.2693437   0.4825727
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0772359   -0.0157990   0.1617499
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0456314   -0.4723281   0.2574040
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0089847   -0.0102320   0.0278358
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0357282    0.0054984   0.0650392
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1157115   -0.3348191   0.0674301
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.3725490   -1.0185025   0.0666889
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.1783146   -0.5240104   0.0889660
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0322914   -0.0182597   0.0803330
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0198156   -0.3983781   0.2562642
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0070854   -0.0115475   0.0253751
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0087173   -0.0128077   0.0297849
