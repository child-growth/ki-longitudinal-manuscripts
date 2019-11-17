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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                   country                        earlybf    wast_rec90d   n_cell      n
------------  ------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0       25    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1       46    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0       18    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1       33    122
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0        3     24
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1        6     24
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0        3     24
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1       12     24
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    0       44    181
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    1       63    181
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    0       27    181
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    1       47    181
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0        9     98
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1       33     98
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0       11     98
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1       45     98
0-24 months   ki0047075b-MAL-ED         PERU                           1                    0        5     35
0-24 months   ki0047075b-MAL-ED         PERU                           1                    1       26     35
0-24 months   ki0047075b-MAL-ED         PERU                           0                    0        1     35
0-24 months   ki0047075b-MAL-ED         PERU                           0                    1        3     35
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        8     84
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       46     84
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        7     84
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       23     84
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        7     51
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       39     51
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2     51
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     51
0-24 months   ki1000109-EE              PAKISTAN                       1                    0       25    314
0-24 months   ki1000109-EE              PAKISTAN                       1                    1       30    314
0-24 months   ki1000109-EE              PAKISTAN                       0                    0      130    314
0-24 months   ki1000109-EE              PAKISTAN                       0                    1      129    314
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0       33    810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1       29    810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0      467    810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1      281    810
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      104    310
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1      170    310
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       13    310
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1       23    310
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0       67    582
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1       94    582
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0      199    582
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1      222    582
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      759   3274
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      832   3274
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      728   3274
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      955   3274
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0       43   7562
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1       13   7562
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0     4323   7562
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     3183   7562
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0      958   2069
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      357   2069
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0      576   2069
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      178   2069
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0        7     63
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1       30     63
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0        6     63
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1       20     63
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    0        1     15
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1        5     15
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    0        0     15
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1        9     15
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    0       15     86
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    1       33     86
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    0       12     86
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    1       26     86
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    0        5     48
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    1       15     48
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    0        4     48
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    1       24     48
0-6 months    ki0047075b-MAL-ED         PERU                           1                    0        0     11
0-6 months    ki0047075b-MAL-ED         PERU                           1                    1        9     11
0-6 months    ki0047075b-MAL-ED         PERU                           0                    0        0     11
0-6 months    ki0047075b-MAL-ED         PERU                           0                    1        2     11
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        3     33
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       16     33
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        3     33
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       11     33
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        1     14
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       12     14
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        0     14
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        1     14
0-6 months    ki1000109-EE              PAKISTAN                       1                    0        8    124
0-6 months    ki1000109-EE              PAKISTAN                       1                    1       12    124
0-6 months    ki1000109-EE              PAKISTAN                       0                    0       45    124
0-6 months    ki1000109-EE              PAKISTAN                       0                    1       59    124
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0       12    337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1       18    337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0      150    337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1      157    337
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0       13    197
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1      154    197
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0        8    197
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1       22    197
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0       31    242
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1       39    242
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0       67    242
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1      105    242
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      268   2290
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      778   2290
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      305   2290
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      939   2290
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0       38   4725
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1       13   4725
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0     1491   4725
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1     3183   4725
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0      152    553
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1      207    553
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0       92    553
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1      102    553
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0       18     59
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1       16     59
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0       12     59
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1       13     59
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0        2      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1        1      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0        3      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1        3      9
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    0       29     95
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    1       30     95
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    0       15     95
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    1       21     95
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0        4     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1       18     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0        7     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1       21     50
6-24 months   ki0047075b-MAL-ED         PERU                           1                    0        5     24
6-24 months   ki0047075b-MAL-ED         PERU                           1                    1       17     24
6-24 months   ki0047075b-MAL-ED         PERU                           0                    0        1     24
6-24 months   ki0047075b-MAL-ED         PERU                           0                    1        1     24
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        5     51
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       30     51
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        4     51
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       12     51
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        6     37
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       27     37
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2     37
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        2     37
6-24 months   ki1000109-EE              PAKISTAN                       1                    0       17    190
6-24 months   ki1000109-EE              PAKISTAN                       1                    1       18    190
6-24 months   ki1000109-EE              PAKISTAN                       0                    0       85    190
6-24 months   ki1000109-EE              PAKISTAN                       0                    1       70    190
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0       21    473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1       11    473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0      317    473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1      124    473
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0       91    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       16    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0        5    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        1    113
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0       36    340
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1       55    340
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0      132    340
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1      117    340
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      491    984
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1       54    984
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      423    984
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1       16    984
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0        5   2837
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1        0   2837
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0     2832   2837
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1        0   2837
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0      806   1516
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      150   1516
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0      484   1516
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1       76   1516


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/f7de941c-5262-406f-b27a-ced9447880a6/2ee39fce-b98f-454f-b347-a7311a5361a8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f7de941c-5262-406f-b27a-ced9447880a6/2ee39fce-b98f-454f-b347-a7311a5361a8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f7de941c-5262-406f-b27a-ced9447880a6/2ee39fce-b98f-454f-b347-a7311a5361a8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f7de941c-5262-406f-b27a-ced9447880a6/2ee39fce-b98f-454f-b347-a7311a5361a8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.6478873   0.5335441   0.7622306
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.6470588   0.5134843   0.7806334
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.5887850   0.4860308   0.6915393
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.6351351   0.5117449   0.7585253
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                0.7857143   0.6676859   0.9037426
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                0.8035714   0.7055573   0.9015856
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.8518519   0.7511196   0.9525841
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.7666667   0.6158718   0.9174615
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.5454545   0.3932783   0.6976308
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.4980695   0.4328978   0.5632412
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.4677419   0.3388388   0.5966451
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3756684   0.3390824   0.4122545
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.6204380   0.5638068   0.6770691
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.6388889   0.4604042   0.8173735
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.5838509   0.4941187   0.6735832
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5273159   0.4761926   0.5784393
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.5229415   0.4982940   0.5475891
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.5674391   0.5434538   0.5914244
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2321429   0.1975164   0.2667693
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.4240608   0.4126893   0.4354322
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2714829   0.2469755   0.2959902
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2360743   0.2047360   0.2674126
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.8108108   0.6848512   0.9367704
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.7692308   0.6087603   0.9297013
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.6875000   0.5534452   0.8215548
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.6842105   0.5302082   0.8382128
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                0.6000000   0.3790586   0.8209414
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                0.5673077   0.4716455   0.6629699
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.6000000   0.4210856   0.7789144
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.5114007   0.4550055   0.5677958
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.9221557   0.8810188   0.9632926
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.7333333   0.5730566   0.8936101
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.5571429   0.4387545   0.6755312
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.6104651   0.5371154   0.6838149
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.7437859   0.7173702   0.7702015
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.7548232   0.7309127   0.7787336
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2549020   0.2032348   0.3065691
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.6810013   0.6674445   0.6945581
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.5766017   0.5254445   0.6277588
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.5257732   0.4554445   0.5961019
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.4705882   0.3021984   0.6389781
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.5200000   0.3045135   0.7354865
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.5084746   0.3673023   0.6496469
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.5833333   0.3895024   0.7771642
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.5142857   0.3430249   0.6855465
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.4516129   0.3688897   0.5343361
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.3437500   0.1745725   0.5129275
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.2811791   0.2380893   0.3242689
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.6043956   0.4939324   0.7148588
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4698795   0.4022418   0.5375173
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0990826   0.0744694   0.1236957
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0364465   0.0183218   0.0545712
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1569038   0.1345932   0.1792143
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1357143   0.1071560   0.1642725


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.6475410   0.5607680   0.7343140
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.6077348   0.5286689   0.6868008
0-24 months   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.7959184   0.7207268   0.8711100
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.8214286   0.7371305   0.9057266
0-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.5063694   0.4463277   0.5664112
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.3827160   0.3474971   0.4179350
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5429553   0.4984173   0.5874934
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.5458155   0.5286072   0.5630238
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.4226395   0.4115112   0.4337678
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2585790   0.2392503   0.2779077
0-6 months    ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.7936508   0.6942781   0.8930235
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.6860465   0.5849088   0.7871842
0-6 months    ki1000109-EE              PAKISTAN       NA                   NA                0.5725806   0.4847582   0.6604031
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.5192878   0.4654446   0.5731311
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5950413   0.5325830   0.6574997
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.7497817   0.7320520   0.7675113
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.6764021   0.6630620   0.6897422
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.5587703   0.5173487   0.6001920
6-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.4915254   0.3576698   0.6253810
6-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.4631579   0.3886610   0.5376548
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5058824   0.4476568   0.5641079
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0711382   0.0551795   0.0870969
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1490765   0.1314900   0.1666630


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 0.9987212   0.7609668   1.3107589
0-24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA          0                    1                 1.0787216   0.8307834   1.4006542
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    1                 1.0227273   0.8422004   1.2419503
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 0.9000000   0.7153015   1.1323896
0-24 months   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN       0                    1                 0.9131274   0.6709672   1.2426861
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.8031532   0.5995790   1.0758468
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 1.0297386   0.7673138   1.3819137
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 0.9031687   0.7530344   1.0832358
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.0850909   1.0185106   1.1560234
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    1                 1.8267232   1.5698377   2.1256451
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.8695733   0.7406012   1.0210053
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    1                 0.9487179   0.7314256   1.2305636
0-6 months    ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA          0                    1                 0.9952153   0.7388894   1.3404625
0-6 months    ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN       0                    1                 0.9455128   0.6306298   1.4176218
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.8523344   0.6201988   1.1713567
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 0.7952381   0.6362402   0.9939699
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    1                 1.0957066   0.8583744   1.3986589
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.0148394   0.9676750   1.0643025
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    1                 2.6716204   2.1793262   3.2751203
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.9118482   0.7766284   1.0706113
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.1050000   0.6392222   1.9101730
6-24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA          0                    1                 1.1472222   0.7441290   1.7686702
6-24 months   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN       0                    1                 0.8781362   0.6004629   1.2842144
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.8179757   0.4885217   1.3696099
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 0.7774370   0.6159927   0.9811940
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.3678394   0.2109801   0.6413202
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.8649524   0.6709382   1.1150694


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0003463   -0.0739230    0.0732303
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                 0.0189498   -0.0467719    0.0846714
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0102041   -0.0780591    0.0984672
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0304233   -0.0951285    0.0342819
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                -0.0390851   -0.1756889    0.0975186
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0850259   -0.2089135    0.0388618
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                 0.0021427   -0.0197081    0.0239935
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.0408956   -0.1158427    0.0340515
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0228740    0.0051513    0.0405967
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.1904967    0.1549641    0.2260292
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0129039   -0.0274365    0.0016287
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0171600   -0.1014153    0.0670952
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0014535   -0.0916843    0.0887773
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                -0.0274194   -0.2293626    0.1745239
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0807122   -0.2517043    0.0902800
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0287547   -0.0557185   -0.0017909
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0378985   -0.0611019    0.1368989
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0059958   -0.0133611    0.0253528
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.4215002    0.3694043    0.4735960
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0178313   -0.0484074    0.0127448
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0209372   -0.0949560    0.1368303
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                 0.0283675   -0.0627600    0.1194950
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                -0.0511278   -0.2065599    0.1043043
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0583377   -0.2211581    0.1044826
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.0985133   -0.1940404   -0.0029861
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0279444   -0.0417381   -0.0141506
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0078272   -0.0212394    0.0055849


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0005349   -0.1208619    0.1068748
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                 0.0311810   -0.0833072    0.1335696
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0128205   -0.1045999    0.1177590
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0370370   -0.1194057    0.0392707
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                -0.0771870   -0.3833043    0.1611884
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.2221644   -0.5935461    0.0626654
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                 0.0034416   -0.0322560    0.0379048
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.0753204   -0.2222891    0.0539768
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0419079    0.0088595    0.0738543
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.4507308    0.3622073    0.5269676
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0499030   -0.1076560    0.0048388
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0216216   -0.1337321    0.0794027
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0021186   -0.1426709    0.1211452
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                -0.0478873   -0.4672027    0.2515909
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.1554285   -0.5370968    0.1314697
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0321856   -0.0634921   -0.0018007
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0636905   -0.1187456    0.2163764
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0079967   -0.0181621    0.0334835
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.6231503    0.5389123    0.6919985
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0319117   -0.0881958    0.0214612
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0425963   -0.2236892    0.2509358
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                 0.0528415   -0.1325625    0.2078942
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                -0.1103896   -0.5032414    0.1797957
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.2043981   -0.9340670    0.2499873
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.1947355   -0.4015974   -0.0184044
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.3928178   -0.5864691   -0.2228045
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0525049   -0.1465393    0.0338172
