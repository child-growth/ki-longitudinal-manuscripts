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

**Intervention Variable:** predfeed6

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

agecat      studyid                    country                        predfeed6    wasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       98     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       16     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       83     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1       22     219
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       26     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      136     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        6     168
Birth       ki0047075b-MAL-ED          INDIA                          1                 0       13     187
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        2     187
Birth       ki0047075b-MAL-ED          INDIA                          0                 0      144     187
Birth       ki0047075b-MAL-ED          INDIA                          0                 1       28     187
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       21     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        1     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0      124     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1       19     165
Birth       ki0047075b-MAL-ED          PERU                           1                 0      103     249
Birth       ki0047075b-MAL-ED          PERU                           1                 1        1     249
Birth       ki0047075b-MAL-ED          PERU                           0                 0      141     249
Birth       ki0047075b-MAL-ED          PERU                           0                 1        4     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      192     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       14     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      112     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        2     115
Birth       ki1000109-EE               PAKISTAN                       1                 0        0       1
Birth       ki1000109-EE               PAKISTAN                       1                 1        0       1
Birth       ki1000109-EE               PAKISTAN                       0                 0        1       1
Birth       ki1000109-EE               PAKISTAN                       0                 1        0       1
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    11242   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1153   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2705   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      320   15420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      490     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       31     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      108     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        4     633
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      119     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        4     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      108     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        4     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       34     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       18     232
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     232
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      197     232
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       17     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       29     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      202     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        4     235
6 months    ki0047075b-MAL-ED          PERU                           1                 0      113     269
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     269
6 months    ki0047075b-MAL-ED          PERU                           0                 0      156     269
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      232     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        7     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      241     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     244
6 months    ki1000109-EE               PAKISTAN                       1                 0      201     376
6 months    ki1000109-EE               PAKISTAN                       1                 1       19     376
6 months    ki1000109-EE               PAKISTAN                       0                 0      126     376
6 months    ki1000109-EE               PAKISTAN                       0                 1       30     376
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 0      127     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       41     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      368     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       36     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      128     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       14     546
6 months    ki1148112-LCNI-5           MALAWI                         1                 0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         0                 0      221     272
6 months    ki1148112-LCNI-5           MALAWI                         0                 1        4     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    12182   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1004   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     3058   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      411   16655
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     3172    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      159    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0      851    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       78    4260
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       97     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       15     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       91     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        6     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       28     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      138     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       16     224
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        1     224
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      183     224
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       24     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       28     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      194     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        5     227
24 months   ki0047075b-MAL-ED          PERU                           1                 0       83     198
24 months   ki0047075b-MAL-ED          PERU                           1                 1        1     198
24 months   ki0047075b-MAL-ED          PERU                           0                 0      113     198
24 months   ki0047075b-MAL-ED          PERU                           0                 1        1     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      223     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      206     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     212
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      298     479
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       61     479
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0       91     479
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       29     479
24 months   ki1148112-LCNI-5           MALAWI                         1                 0       33     184
24 months   ki1148112-LCNI-5           MALAWI                         1                 1        1     184
24 months   ki1148112-LCNI-5           MALAWI                         0                 0      147     184
24 months   ki1148112-LCNI-5           MALAWI                         0                 1        3     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5234    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1419    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     1414    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      446    8513
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2655    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      620    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      683    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      201    4159


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/0c333438-2659-4d14-bc36-1694a2ded013/099c9025-2cf6-44d7-baf7-a5801eaa808d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0c333438-2659-4d14-bc36-1694a2ded013/099c9025-2cf6-44d7-baf7-a5801eaa808d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0c333438-2659-4d14-bc36-1694a2ded013/099c9025-2cf6-44d7-baf7-a5801eaa808d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0c333438-2659-4d14-bc36-1694a2ded013/099c9025-2cf6-44d7-baf7-a5801eaa808d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1416924   0.0778194   0.2055654
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2160105   0.1368424   0.2951786
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0956222   0.0903619   0.1008826
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0958581   0.0901970   0.1015191
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0864646   0.0490522   0.1238770
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1916590   0.1287162   0.2546018
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0887546   0.0608858   0.1166235
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0990498   0.0487392   0.1493603
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0776381   0.0724884   0.0827878
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1115102   0.1000925   0.1229280
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0487188   0.0379980   0.0594396
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0778733   0.0591661   0.0965805
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1339286   0.0707028   0.1971543
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0618557   0.0138018   0.1099095
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1698179   0.1309232   0.2087125
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2397858   0.1632619   0.3163097
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2168960   0.2056947   0.2280972
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2295240   0.2082180   0.2508301
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1922558   0.1769052   0.2076063
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2151075   0.1805127   0.2497023


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1735160   0.1232462   0.2237857
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0955253   0.0903072   0.1007433
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0915751   0.0673602   0.1157900
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0849595   0.0801414   0.0897775
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0556338   0.0463917   0.0648759
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1004785   0.0596222   0.1413347
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1878914   0.1528732   0.2229097
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2190767   0.2091475   0.2290059
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1974032   0.1830515   0.2117549


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.5245027   0.8510739   2.730795
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0024661   0.9728267   1.033008
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 2.2166187   1.2882912   3.813888
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1159957   0.6133513   2.030559
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4362823   1.2759155   1.616805
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5984240   1.1517994   2.218233
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.4618557   0.1860826   1.146322
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4120176   0.9526613   2.092867
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0582218   0.9528668   1.175225
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1188610   0.9391008   1.333031


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0318235   -0.0168552   0.0805023
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000970   -0.0007237   0.0005298
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0438546    0.0132928   0.0744164
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0028205   -0.0119625   0.0176035
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0073214    0.0047057   0.0099371
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0069150    0.0020416   0.0117884
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0334501   -0.0706298   0.0037296
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0180736   -0.0037689   0.0399160
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0021807   -0.0030951   0.0074566
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0051475   -0.0026170   0.0129119


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1834041   -0.1459220    0.4180853
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0010150   -0.0075971    0.0055241
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.3365168    0.0738810    0.5246723
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0307995   -0.1447167    0.1794043
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0861750    0.0551726    0.1161601
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1242950    0.0280922    0.2109753
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3329082   -0.7360379   -0.0233902
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0961916   -0.0268951    0.2045248
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0099542   -0.0144235    0.0337462
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0260759   -0.0138378    0.0644182
