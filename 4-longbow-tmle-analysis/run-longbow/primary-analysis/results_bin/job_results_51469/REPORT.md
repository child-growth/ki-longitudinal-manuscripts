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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** earlybf

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
* W_birthwt
* W_birthlen
* W_nrooms
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
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

agecat        studyid                   country                        earlybf    pers_wast   n_cell       n
------------  ------------------------  -----------------------------  --------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  0      144     247
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  1        8     247
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  0       90     247
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  1        5     247
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  0       98     217
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  1        1     217
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  0      117     217
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  1        1     217
0-24 months   ki0047075b-MAL-ED         INDIA                          1                  0      127     241
0-24 months   ki0047075b-MAL-ED         INDIA                          1                  1       16     241
0-24 months   ki0047075b-MAL-ED         INDIA                          0                  0       93     241
0-24 months   ki0047075b-MAL-ED         INDIA                          0                  1        5     241
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                  0       94     238
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                  1        3     238
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                  0      140     238
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                  1        1     238
0-24 months   ki0047075b-MAL-ED         PERU                           1                  0      211     284
0-24 months   ki0047075b-MAL-ED         PERU                           1                  1        1     284
0-24 months   ki0047075b-MAL-ED         PERU                           0                  0       72     284
0-24 months   ki0047075b-MAL-ED         PERU                           0                  1        0     284
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      166     268
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1     268
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0      100     268
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1     268
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-24 months   ki1000109-EE              PAKISTAN                       1                  0       64     377
0-24 months   ki1000109-EE              PAKISTAN                       1                  1        5     377
0-24 months   ki1000109-EE              PAKISTAN                       0                  0      285     377
0-24 months   ki1000109-EE              PAKISTAN                       0                  1       23     377
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  0       92    1366
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  1        9    1366
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  0     1160    1366
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  1      105    1366
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      607     730
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  1       25     730
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       97     730
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        1     730
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  0      139     538
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  1       19     538
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  0      322     538
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  1       58     538
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  0     4403    8276
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  1       76    8276
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  0     3719    8276
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  1       78    8276
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  0       17   15679
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  1        4   15679
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  0    14764   15679
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  1      894   15679
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  0     3096    5281
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  1      266    5281
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  0     1759    5281
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  1      160    5281
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                  0      149     247
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                  1        3     247
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                  0       91     247
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                  1        4     247
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                  0       98     217
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                  1        1     217
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                  0      118     217
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                  1        0     217
0-6 months    ki0047075b-MAL-ED         INDIA                          1                  0      131     240
0-6 months    ki0047075b-MAL-ED         INDIA                          1                  1       12     240
0-6 months    ki0047075b-MAL-ED         INDIA                          0                  0       90     240
0-6 months    ki0047075b-MAL-ED         INDIA                          0                  1        7     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                  0       94     237
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                  1        3     237
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                  0      138     237
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                  1        2     237
0-6 months    ki0047075b-MAL-ED         PERU                           1                  0      212     284
0-6 months    ki0047075b-MAL-ED         PERU                           1                  1        0     284
0-6 months    ki0047075b-MAL-ED         PERU                           0                  0       72     284
0-6 months    ki0047075b-MAL-ED         PERU                           0                  1        0     284
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      165     266
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1     266
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0       99     266
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1     266
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-6 months    ki1000109-EE              PAKISTAN                       1                  0       64     366
0-6 months    ki1000109-EE              PAKISTAN                       1                  1        4     366
0-6 months    ki1000109-EE              PAKISTAN                       0                  0      275     366
0-6 months    ki1000109-EE              PAKISTAN                       0                  1       23     366
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      222     250
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                  1        3     250
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       23     250
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        2     250
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                  0      129     489
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                  1       17     489
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                  0      299     489
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                  1       44     489
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                  0      289     542
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                  1        6     542
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                  0      239     542
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                  1        8     542
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                  0        0      46
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                  1        0      46
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                  0       44      46
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                  1        2      46
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  0      144     247
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  1        8     247
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  0       90     247
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  1        5     247
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  0       98     217
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  1        1     217
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  0      117     217
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  1        1     217
6-24 months   ki0047075b-MAL-ED         INDIA                          1                  0      127     241
6-24 months   ki0047075b-MAL-ED         INDIA                          1                  1       16     241
6-24 months   ki0047075b-MAL-ED         INDIA                          0                  0       93     241
6-24 months   ki0047075b-MAL-ED         INDIA                          0                  1        5     241
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                  0       94     238
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                  1        3     238
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                  0      140     238
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                  1        1     238
6-24 months   ki0047075b-MAL-ED         PERU                           1                  0      211     284
6-24 months   ki0047075b-MAL-ED         PERU                           1                  1        1     284
6-24 months   ki0047075b-MAL-ED         PERU                           0                  0       72     284
6-24 months   ki0047075b-MAL-ED         PERU                           0                  1        0     284
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      166     268
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1     268
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0      100     268
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1     268
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
6-24 months   ki1000109-EE              PAKISTAN                       1                  0       64     377
6-24 months   ki1000109-EE              PAKISTAN                       1                  1        5     377
6-24 months   ki1000109-EE              PAKISTAN                       0                  0      285     377
6-24 months   ki1000109-EE              PAKISTAN                       0                  1       23     377
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  0       92    1366
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  1        9    1366
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  0     1160    1366
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  1      105    1366
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      607     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  1       25     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       97     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        1     730
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  0      139     538
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  1       19     538
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  0      322     538
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  1       58     538
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  0     4403    8276
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  1       76    8276
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  0     3719    8276
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  1       78    8276
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  0       17   15679
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  1        4   15679
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  0    14764   15679
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  1      894   15679
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  0     3096    5281
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  1      266    5281
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  0     1759    5281
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  1      160    5281


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/15aa0dd5-21ac-4c6f-8bed-7efce04e563a/298e1de7-fdbc-48f7-ad78-21fe684e4f1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/15aa0dd5-21ac-4c6f-8bed-7efce04e563a/298e1de7-fdbc-48f7-ad78-21fe684e4f1b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/15aa0dd5-21ac-4c6f-8bed-7efce04e563a/298e1de7-fdbc-48f7-ad78-21fe684e4f1b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/15aa0dd5-21ac-4c6f-8bed-7efce04e563a/298e1de7-fdbc-48f7-ad78-21fe684e4f1b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0526316   0.0170611   0.0882021
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0526316   0.0076381   0.0976251
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1118881   0.0601145   0.1636618
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.0510204   0.0073650   0.0946758
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.0724638   0.0112109   0.1337166
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.0746753   0.0452795   0.1040711
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0891089   0.0534033   0.1248146
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0830040   0.0588611   0.1071469
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1192291   0.0669574   0.1715008
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1552041   0.1186478   0.1917604
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0188952   0.0148510   0.0229395
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0194870   0.0149916   0.0239823
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0810416   0.0700703   0.0920128
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0809304   0.0682033   0.0936575
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.0839161   0.0383778   0.1294544
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.0721649   0.0205628   0.1237671
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1196574   0.0643042   0.1750105
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1287958   0.0933499   0.1642418
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0203390   0.0042162   0.0364618
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0323887   0.0102909   0.0544864
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0526316   0.0170611   0.0882021
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0526316   0.0076381   0.0976251
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1118881   0.0601145   0.1636618
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.0510204   0.0073650   0.0946758
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.0724638   0.0112109   0.1337166
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.0746753   0.0452795   0.1040711
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0891089   0.0534033   0.1248146
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0830040   0.0588611   0.1071469
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1196876   0.0674007   0.1719745
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1561111   0.1195328   0.1926894
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0187679   0.0147693   0.0227665
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0193250   0.0148390   0.0238110
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0804681   0.0695164   0.0914198
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0807282   0.0681377   0.0933186


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
0-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.0871369   0.0514552   0.1228187
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1431227   0.1135034   0.1727420
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0186080   0.0156964   0.0215196
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0806665   0.0720540   0.0892791
0-6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.0791667   0.0449364   0.1133970
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1247444   0.0954276   0.1540611
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0258303   0.0124633   0.0391972
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
6-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.0871369   0.0514552   0.1228187
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1431227   0.1135034   0.1727420
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0186080   0.0156964   0.0215196
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0806665   0.0720540   0.0892791


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0000000   0.3362978   2.973555
0-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 0.4559949   0.1723848   1.206205
0-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0305195   0.4055983   2.618281
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 0.9314888   0.6140480   1.413035
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.3017300   0.7909462   2.142372
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.0313157   0.7536742   1.411236
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.9986282   0.8190817   1.217532
0-6 months    ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED         INDIA        0                    1                 0.8599656   0.3504552   2.110230
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.0763720   0.6280797   1.844633
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.5924426   0.5595553   4.531945
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0000000   0.3362978   2.973555
6-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 0.4559949   0.1723848   1.206205
6-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.0305195   0.4055983   2.618281
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 0.9314888   0.6140480   1.413035
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.3043216   0.7936274   2.143644
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.0296840   0.7522166   1.409500
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0032326   0.8224554   1.223745


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.0220599   0.0220599
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0247512   -0.0525483   0.0030459
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0018068   -0.0536997   0.0573133
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0056536   -0.0393651   0.0280580
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0238936   -0.0216665   0.0694537
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                -0.0002872   -0.0031972   0.0026227
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0003750   -0.0062785   0.0055284
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0047494   -0.0325747   0.0230759
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0050870   -0.0420590   0.0522330
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0054913   -0.0069848   0.0179674
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.0220599   0.0220599
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.0247512   -0.0525483   0.0030459
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0018068   -0.0536997   0.0573133
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0056536   -0.0393651   0.0280580
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0234351   -0.0222394   0.0691096
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                -0.0001599   -0.0030345   0.0027148
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0001985   -0.0056906   0.0060875


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.5206498    0.3423864
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.2840493   -0.6252463   -0.0144817
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0243271   -1.0987002    0.5464156
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0677436   -0.5664076    0.2721713
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.1669447   -0.2193584    0.4308637
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                -0.0154349   -0.1846199    0.1295874
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0046490   -0.0805059    0.0658823
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0599926   -0.4756633    0.2385903
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0407795   -0.4225267    0.3531903
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.2125908   -0.4318399    0.5669814
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.5206498    0.3423864
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.2840493   -0.6252463   -0.0144817
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0243271   -1.0987002    0.5464156
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0677436   -0.5664076    0.2721713
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.1637413   -0.2232468    0.4283013
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                -0.0085919   -0.1756117    0.1346993
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0024605   -0.0733136    0.0728850
