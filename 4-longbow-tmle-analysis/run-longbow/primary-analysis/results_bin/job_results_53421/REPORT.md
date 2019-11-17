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

**Intervention Variable:** safeh20

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
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      176     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1       37     213
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        0      41
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0      41
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0       32      41
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        9      41
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0      41
Birth       ki0047075b-MAL-ED          INDIA                          1                1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          0                0       33      41
Birth       ki0047075b-MAL-ED          INDIA                          0                1        8      41
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       23      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        2      26
Birth       ki0047075b-MAL-ED          PERU                           1                0        8     207
Birth       ki0047075b-MAL-ED          PERU                           1                1        1     207
Birth       ki0047075b-MAL-ED          PERU                           0                0      176     207
Birth       ki0047075b-MAL-ED          PERU                           0                1       22     207
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       12      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0       76      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        7      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       68     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       11     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       30     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       10     119
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0      511     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1       95     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0        0     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        2     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0       43      45
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        2      45
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0        0      45
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1        0      45
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0      631     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1      101     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    15028   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     7364   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0       22   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1       18   22432
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     1964    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      856    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        0    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      196     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1       44     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      140     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        2     142
6 months    ki0047075b-MAL-ED          INDIA                          1                0        0     235
6 months    ki0047075b-MAL-ED          INDIA                          1                1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          0                0      191     235
6 months    ki0047075b-MAL-ED          INDIA                          0                1       44     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                0        1     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      221     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                1       11     233
6 months    ki0047075b-MAL-ED          PERU                           1                0        8     259
6 months    ki0047075b-MAL-ED          PERU                           1                1        3     259
6 months    ki0047075b-MAL-ED          PERU                           0                0      195     259
6 months    ki0047075b-MAL-ED          PERU                           0                1       53     259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       27     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       10     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      172     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       39     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      130     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       38     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       58     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       20     246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      217     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1      163     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        0     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      391     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1      144     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        0     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       10      11
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        1      11
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0        0      11
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        0      11
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      565     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1      150     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     715
6 months    ki1114097-CONTENT          PERU                           1                0       52      57
6 months    ki1114097-CONTENT          PERU                           1                1        2      57
6 months    ki1114097-CONTENT          PERU                           0                0        3      57
6 months    ki1114097-CONTENT          PERU                           0                1        0      57
6 months    ki1148112-LCNI-5           MALAWI                         1                0      428     816
6 months    ki1148112-LCNI-5           MALAWI                         1                1      244     816
6 months    ki1148112-LCNI-5           MALAWI                         0                0       92     816
6 months    ki1148112-LCNI-5           MALAWI                         0                1       52     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    12567   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     4216   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0       12   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        8   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     3606    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1     1218    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      111     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1      101     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      110     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        3     113
24 months   ki0047075b-MAL-ED          INDIA                          1                0        0     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          0                0      130     227
24 months   ki0047075b-MAL-ED          INDIA                          0                1       97     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                0        1     226
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     226
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      175     226
24 months   ki0047075b-MAL-ED          NEPAL                          0                1       50     226
24 months   ki0047075b-MAL-ED          PERU                           1                0        3     193
24 months   ki0047075b-MAL-ED          PERU                           1                1        4     193
24 months   ki0047075b-MAL-ED          PERU                           0                0      117     193
24 months   ki0047075b-MAL-ED          PERU                           0                1       69     193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       22     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       12     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      131     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       72     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       40     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1      105     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       18     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       50     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0      184     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1      243     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0        1     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        1     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0        5       9
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        4       9
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0        0       9
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        0       9
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      382     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1      132     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     514
24 months   ki1114097-CONTENT          PERU                           1                0       42      48
24 months   ki1114097-CONTENT          PERU                           1                1        3      48
24 months   ki1114097-CONTENT          PERU                           0                0        3      48
24 months   ki1114097-CONTENT          PERU                           0                1        0      48
24 months   ki1148112-LCNI-5           MALAWI                         1                0      263     574
24 months   ki1148112-LCNI-5           MALAWI                         1                1      212     574
24 months   ki1148112-LCNI-5           MALAWI                         0                0       57     574
24 months   ki1148112-LCNI-5           MALAWI                         0                1       42     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4385    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     4227    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0        3    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1        8    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2843    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1     1903    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    4747


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/eff93be9-6566-4f90-93a8-6b911028a651/5aca95ee-e0af-45e9-81ca-ec2b48f3582c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eff93be9-6566-4f90-93a8-6b911028a651/5aca95ee-e0af-45e9-81ca-ec2b48f3582c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eff93be9-6566-4f90-93a8-6b911028a651/5aca95ee-e0af-45e9-81ca-ec2b48f3582c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eff93be9-6566-4f90-93a8-6b911028a651/5aca95ee-e0af-45e9-81ca-ec2b48f3582c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1423857   0.0647022   0.2200693
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2478489   0.1105183   0.3851796
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.3288723   0.3213301   0.3364144
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4501564   0.4382113   0.4621016
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2773152   0.1329924   0.4216379
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1839600   0.1315755   0.2363446
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2279077   0.1645328   0.2912826
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2812609   0.1858048   0.3767169
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                0.3644810   0.3283128   0.4006493
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                0.3651979   0.2870925   0.4433034
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.2512066   0.2428938   0.2595194
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.4000000   0.3887912   0.4112088
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.3377639   0.1700691   0.5054587
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3537516   0.2875106   0.4199927
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7115421   0.6389081   0.7841761
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7236820   0.6177806   0.8295835
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                0.4491667   0.4045708   0.4937627
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                0.4407085   0.3427900   0.5386270


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1764706   0.1076873   0.2452539
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.3290835   0.3217078   0.3364591
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1975806   0.1479246   0.2472367
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2357724   0.1826200   0.2889248
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                0.3627451   0.3297365   0.3957537
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.2513837   0.2432545   0.2595129
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.3544304   0.2934024   0.4154584
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7276995   0.6677783   0.7876207
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.4425087   0.4018409   0.4831765


### Parameter: RR


agecat      studyid             country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 1.7406865   0.8030201   3.773243
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 1.3687880   1.3228025   1.416372
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 0.6633609   0.3677205   1.196691
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2340998   0.7990330   1.906057
6 months    ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5    MALAWI                         0                    1                 1.0019668   0.7930393   1.265937
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 1.5923150   1.5266883   1.660763
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 1.0473339   0.6156041   1.781840
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0170614   0.8520260   1.214064
24 months   ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 0.9811690   0.7697780   1.250611


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0340848   -0.0188693   0.0870390
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0002112   -0.0001288   0.0005512
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0797345   -0.2103040   0.0508349
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0078646   -0.0289767   0.0447060
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0017359   -0.0167458   0.0132739
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0001771   -0.0001696   0.0005239
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0166664   -0.1402367   0.1735695
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0161574   -0.0240479   0.0563628
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0066580   -0.0251764   0.0118603


### Parameter: PAF


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1931474   -0.1614848   0.4395010
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0006418   -0.0003987   0.0016812
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.4035543   -1.2435423   0.1219400
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0333569   -0.1360776   0.1775219
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0047856   -0.0470335   0.0357576
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                 0.0007045   -0.0006877   0.0020948
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0470232   -0.5164159   0.4011110
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0222034   -0.0346968   0.0759746
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0150461   -0.0578008   0.0259805
