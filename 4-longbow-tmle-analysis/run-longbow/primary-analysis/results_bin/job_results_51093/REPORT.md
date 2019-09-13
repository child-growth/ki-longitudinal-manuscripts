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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
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
* month
* brthmon
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
* delta_month
* delta_brthmon
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

agecat      studyid                    country                        exclfeed3    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      144     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       29     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       55     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       12     240
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       63     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        4     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      103     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       15     185
Birth       ki0047075b-MAL-ED          INDIA                          1                  0      103     196
Birth       ki0047075b-MAL-ED          INDIA                          1                  1       20     196
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       62     196
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       11     196
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       58     171
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        3     171
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       95     171
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       15     171
Birth       ki0047075b-MAL-ED          PERU                           1                  0       54     272
Birth       ki0047075b-MAL-ED          PERU                           1                  1       13     272
Birth       ki0047075b-MAL-ED          PERU                           0                  0      186     272
Birth       ki0047075b-MAL-ED          PERU                           0                  1       19     272
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       29     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        3     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      180     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21     233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       35     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        4     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       66     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       14     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       4
Birth       ki1000108-IRC              INDIA                          1                  0        0      10
Birth       ki1000108-IRC              INDIA                          1                  1        0      10
Birth       ki1000108-IRC              INDIA                          0                  0       10      10
Birth       ki1000108-IRC              INDIA                          0                  1        0      10
Birth       ki1000109-EE               PAKISTAN                       1                  0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                  1        1       2
Birth       ki1000109-EE               PAKISTAN                       0                  0        0       2
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0       42      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        6      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0        2      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0      50
Birth       ki1101329-Keneba           GAMBIA                         1                  0     1129    1354
Birth       ki1101329-Keneba           GAMBIA                         1                  1       67    1354
Birth       ki1101329-Keneba           GAMBIA                         0                  0      149    1354
Birth       ki1101329-Keneba           GAMBIA                         0                  1        9    1354
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    11663   18710
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     5161   18710
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1142   18710
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      744   18710
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0       24      40
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       13      40
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0        2      40
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        1      40
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      141     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       31     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       52     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       13     237
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       79     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      124     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        4     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0      115     233
6 months    ki0047075b-MAL-ED          INDIA                          1                  1       26     233
6 months    ki0047075b-MAL-ED          INDIA                          0                  0       74     233
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       18     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       80     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        5     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      142     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        6     233
6 months    ki0047075b-MAL-ED          PERU                           1                  0       54     270
6 months    ki0047075b-MAL-ED          PERU                           1                  1       13     270
6 months    ki0047075b-MAL-ED          PERU                           0                  0      157     270
6 months    ki0047075b-MAL-ED          PERU                           0                  1       46     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       28     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        3     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      171     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       46     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       53     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1       15     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      130     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       42     240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
6 months    ki1000108-IRC              INDIA                          1                  0        0      10
6 months    ki1000108-IRC              INDIA                          1                  1        0      10
6 months    ki1000108-IRC              INDIA                          0                  0        8      10
6 months    ki1000108-IRC              INDIA                          0                  1        2      10
6 months    ki1000109-EE               PAKISTAN                       1                  0      166     371
6 months    ki1000109-EE               PAKISTAN                       1                  1      180     371
6 months    ki1000109-EE               PAKISTAN                       0                  0       12     371
6 months    ki1000109-EE               PAKISTAN                       0                  1       13     371
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      260     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1      119     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       13     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      350     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       62     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      139     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       32     583
6 months    ki1101329-Keneba           GAMBIA                         1                  0     1317    1742
6 months    ki1101329-Keneba           GAMBIA                         1                  1      224    1742
6 months    ki1101329-Keneba           GAMBIA                         0                  0      166    1742
6 months    ki1101329-Keneba           GAMBIA                         0                  1       35    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      305     458
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       74     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       59     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       20     458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    11225   16281
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3567   16281
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1003   16281
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      486   16281
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0       65      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       12      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0        7      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1        5      89
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       79     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       71     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       33     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       25     208
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       69     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0       94     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        4     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       66     225
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       67     225
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       65     225
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       27     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       66     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1       16     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      111     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       32     225
24 months   ki0047075b-MAL-ED          PERU                           1                  0       27     199
24 months   ki0047075b-MAL-ED          PERU                           1                  1       19     199
24 months   ki0047075b-MAL-ED          PERU                           0                  0       99     199
24 months   ki0047075b-MAL-ED          PERU                           0                  1       54     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       21     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        6     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      130     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       75     232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       17     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1       40     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       43     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      110     210
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        3      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        7      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
24 months   ki1000108-IRC              INDIA                          1                  0        0      10
24 months   ki1000108-IRC              INDIA                          1                  1        0      10
24 months   ki1000108-IRC              INDIA                          0                  0        4      10
24 months   ki1000108-IRC              INDIA                          0                  1        6      10
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      265     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1      142     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      122     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       48     577
24 months   ki1101329-Keneba           GAMBIA                         1                  0      859    1420
24 months   ki1101329-Keneba           GAMBIA                         1                  1      415    1420
24 months   ki1101329-Keneba           GAMBIA                         0                  0       81    1420
24 months   ki1101329-Keneba           GAMBIA                         0                  1       65    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      188     404
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      148     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       36     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       32     404
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3832    8341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3685    8341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      418    8341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      406    8341
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0       85     152
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       52     152
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0        6     152
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        9     152


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/7a58511b-a4a5-458d-8537-9cf316b98db1/7496de79-447c-4dbb-bf0c-8ef769d398a6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7a58511b-a4a5-458d-8537-9cf316b98db1/7496de79-447c-4dbb-bf0c-8ef769d398a6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7a58511b-a4a5-458d-8537-9cf316b98db1/7496de79-447c-4dbb-bf0c-8ef769d398a6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7a58511b-a4a5-458d-8537-9cf316b98db1/7496de79-447c-4dbb-bf0c-8ef769d398a6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1662911   0.1107298   0.2218523
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1850244   0.0922456   0.2778032
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                0.1617845   0.0964030   0.2271660
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                0.1681207   0.0864405   0.2498009
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                0.1925401   0.0965241   0.2885561
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                0.0920410   0.0521693   0.1319127
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                0.0560201   0.0429825   0.0690576
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                0.0569620   0.0208096   0.0931144
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.3155260   0.3079566   0.3230954
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3161058   0.3085172   0.3236944
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1798382   0.1225323   0.2371441
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2051361   0.1066399   0.3036323
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1832753   0.1185049   0.2480457
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1965199   0.1134872   0.2795526
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0588235   0.0086951   0.1089519
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.0405405   0.0086979   0.0723832
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                0.1898193   0.0953949   0.2842437
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                0.2273673   0.1694067   0.2853279
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2102303   0.1089334   0.3115272
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2457248   0.1819133   0.3095363
6 months    ki1000109-EE              PAKISTAN                       1                    NA                0.5216303   0.4688300   0.5744305
6 months    ki1000109-EE              PAKISTAN                       0                    NA                0.5320681   0.3195043   0.7446320
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1471732   0.1136935   0.1806530
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1962124   0.1406149   0.2518098
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                0.1446314   0.1270732   0.1621895
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                0.1798656   0.1284475   0.2312838
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1950609   0.1550527   0.2350690
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2474514   0.1496169   0.3452860
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2460653   0.2375848   0.2545458
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2841376   0.2613949   0.3068802
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.1558442   0.0767551   0.2349333
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.4166667   0.1460475   0.6872858
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4682340   0.3889176   0.5475504
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4469164   0.3236853   0.5701475
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                0.4929344   0.4095086   0.5763601
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                0.2988459   0.2075728   0.3901189
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1956734   0.1085834   0.2827633
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2146437   0.1462181   0.2830693
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                0.4125535   0.2756443   0.5494627
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                0.3513841   0.2753253   0.4274428
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2222222   0.0650681   0.3793763
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3658537   0.2997755   0.4319318
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6949461   0.5762620   0.8136302
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7197504   0.6485901   0.7909108
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3420449   0.2967382   0.3873515
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2966452   0.2322753   0.3610151
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                0.3269094   0.3012532   0.3525656
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                0.4223292   0.3442550   0.5004034
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.4405922   0.3874225   0.4937619
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4835938   0.3628275   0.6043601
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.4925025   0.4784751   0.5065299
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.4738033   0.4361995   0.5114071
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3795620   0.2934360   0.4656880
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.6000000   0.3502268   0.8497732


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1708333   0.1231182   0.2185485
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1581633   0.1069482   0.2093783
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                0.1176471   0.0792874   0.1560068
Birth       ki1101329-Keneba          GAMBIA                         NA                   NA                0.0561300   0.0438654   0.0683946
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.3156066   0.3080361   0.3231771
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1856540   0.1360463   0.2352617
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1888412   0.1384789   0.2392035
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.0472103   0.0199192   0.0745014
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                0.2185185   0.1691358   0.2679013
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2375000   0.1835488   0.2914512
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                0.5202156   0.4693105   0.5711208
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3140704   0.2712850   0.3568557
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1101329-Keneba          GAMBIA                         NA                   NA                0.1486797   0.1319680   0.1653914
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.2052402   0.1682114   0.2422689
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2489405   0.2407278   0.2571531
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.1910112   0.1139351   0.2680874
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4615385   0.3936268   0.5294501
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4177778   0.3531914   0.4823642
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2133333   0.1596859   0.2669808
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                0.3668342   0.2997053   0.4339630
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3491379   0.2876648   0.4106110
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7142857   0.6530398   0.7755316
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.3380282   0.3134158   0.3626405
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4455446   0.3970186   0.4940706
24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.4904688   0.4770397   0.5038978
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.4013158   0.3195309   0.4831007


### Parameter: RR


agecat      studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.1126540   0.6091558   2.0323190
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                 1.0391645   0.5528168   1.9533828
Birth       ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 0.4780355   0.2466780   0.9263816
Birth       ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA                         0                    1                 1.0168147   0.5172001   1.9990563
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0018376   1.0005758   1.0031011
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.1406702   0.6445283   2.0187300
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 1.0722661   0.6166313   1.8645737
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                 0.6891892   0.2162797   2.1961461
6 months    ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                 1.1978094   0.6857877   2.0921159
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.1688365   0.6778294   2.0155203
6 months    ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 1.0200101   0.6751752   1.5409638
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.0057497   0.4866253   2.0786680
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.3332071   0.9427480   1.8853832
6 months    ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA                         0                    1                 1.2436142   0.9133969   1.6932138
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.2685858   0.8119898   1.9819337
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.1547241   1.0632007   1.2541261
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 2.6736111   1.1673323   6.1235320
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9544723   0.6946589   1.3114601
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 0.6062590   0.4310035   0.8527772
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 1.0969491   0.6330632   1.9007538
24 months   ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                 0.8517297   0.5772448   1.2567345
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.6463415   0.7934716   3.4159258
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0356925   0.8518955   1.2591440
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 0.8672699   0.6782913   1.1088998
24 months   ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA                         0                    1                 1.2918847   1.0589932   1.5759932
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.0975996   0.8317657   1.4483945
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.9620322   0.8860447   1.0445365
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.5807692   0.9874364   2.5306252


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0045423   -0.0253758    0.0344603
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0036212   -0.0426684    0.0354260
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0748930   -0.1538010    0.0040149
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0001099   -0.0043747    0.0045946
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0000806    0.0000350    0.0001263
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0058158   -0.0245694    0.0362010
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0055659   -0.0361223    0.0472541
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0116132   -0.0493524    0.0261259
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0286992   -0.0544873    0.1118858
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0272697   -0.0585316    0.1130710
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0014146   -0.0153458    0.0125165
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0000862   -0.0108674    0.0110398
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0140618   -0.0041260    0.0322495
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0040483   -0.0021318    0.0102284
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0101793   -0.0080259    0.0283845
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0028752    0.0007311    0.0050192
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0351671   -0.0027750    0.0731092
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0066955   -0.0464110    0.0330199
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0751566   -0.1256440   -0.0246692
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0176600   -0.0533212    0.0886411
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0457193   -0.1648149    0.0733762
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.1269157   -0.0238418    0.2776732
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0193397   -0.0809388    0.1196181
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0127554   -0.0349344    0.0094236
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0111188    0.0026927    0.0195449
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0049524   -0.0170298    0.0269345
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0020337   -0.0058289    0.0017614
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0217537   -0.0039060    0.0474135


### Parameter: PAF


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0265889   -0.1652085    0.1868158
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0228954   -0.3019575    0.1963523
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.6365907   -1.4351521   -0.0999022
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0019583   -0.0812232    0.0787404
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0002555    0.0001109    0.0004000
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0313260   -0.1469030    0.1818582
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0294740   -0.2183979    0.2269186
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.2459893   -1.3455873    0.3381234
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.1313355   -0.3457252    0.4392777
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1148199   -0.3326796    0.4120539
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0027193   -0.0298606    0.0237067
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0002744   -0.0352245    0.0345560
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0872130   -0.0324401    0.1929991
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0272283   -0.0152148    0.0678969
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0495971   -0.0431287    0.1340804
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0115496    0.0028923    0.0201318
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.1841100   -0.0402855    0.3601021
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0145070   -0.1042969    0.0679821
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.1798961   -0.3095439   -0.0630837
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0827811   -0.3179341    0.3616597
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.1246321   -0.5019706    0.1579080
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.3635117   -0.2513861    0.6762650
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0270755   -0.1240316    0.1578688
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0387362   -0.1082349    0.0264041
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0328930    0.0076334    0.0575097
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0111153   -0.0394831    0.0592507
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0041465   -0.0119129    0.0035602
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0542061   -0.0131535    0.1170872
