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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                   country                        earlybf    swasted   n_cell       n  outcome_variable 
----------  ------------------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                0      135     214  swasted          
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                1        5     214  swasted          
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                0       71     214  swasted          
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                1        3     214  swasted          
Birth       ki0047075b-MAL-ED         BRAZIL                         1                0       26      62  swasted          
Birth       ki0047075b-MAL-ED         BRAZIL                         1                1        0      62  swasted          
Birth       ki0047075b-MAL-ED         BRAZIL                         0                0       36      62  swasted          
Birth       ki0047075b-MAL-ED         BRAZIL                         0                1        0      62  swasted          
Birth       ki0047075b-MAL-ED         INDIA                          1                0       31      44  swasted          
Birth       ki0047075b-MAL-ED         INDIA                          1                1        0      44  swasted          
Birth       ki0047075b-MAL-ED         INDIA                          0                0       13      44  swasted          
Birth       ki0047075b-MAL-ED         INDIA                          0                1        0      44  swasted          
Birth       ki0047075b-MAL-ED         NEPAL                          1                0       14      26  swasted          
Birth       ki0047075b-MAL-ED         NEPAL                          1                1        0      26  swasted          
Birth       ki0047075b-MAL-ED         NEPAL                          0                0       11      26  swasted          
Birth       ki0047075b-MAL-ED         NEPAL                          0                1        1      26  swasted          
Birth       ki0047075b-MAL-ED         PERU                           1                0      172     228  swasted          
Birth       ki0047075b-MAL-ED         PERU                           1                1        0     228  swasted          
Birth       ki0047075b-MAL-ED         PERU                           0                0       56     228  swasted          
Birth       ki0047075b-MAL-ED         PERU                           0                1        0     228  swasted          
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                0       69     110  swasted          
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        0     110  swasted          
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       41     110  swasted          
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        0     110  swasted          
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      103     115  swasted          
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     115  swasted          
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       12     115  swasted          
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     115  swasted          
Birth       ki1000109-EE              PAKISTAN                       1                0       34     170  swasted          
Birth       ki1000109-EE              PAKISTAN                       1                1        2     170  swasted          
Birth       ki1000109-EE              PAKISTAN                       0                0      130     170  swasted          
Birth       ki1000109-EE              PAKISTAN                       0                1        4     170  swasted          
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                0       77    1072  swasted          
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                1        2    1072  swasted          
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                0      968    1072  swasted          
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                1       25    1072  swasted          
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                0      571     707  swasted          
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                1       42     707  swasted          
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                0       89     707  swasted          
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                1        5     707  swasted          
Birth       ki1113344-GMS-Nepal       NEPAL                          1                0      162     586  swasted          
Birth       ki1113344-GMS-Nepal       NEPAL                          1                1        9     586  swasted          
Birth       ki1113344-GMS-Nepal       NEPAL                          0                0      398     586  swasted          
Birth       ki1113344-GMS-Nepal       NEPAL                          0                1       17     586  swasted          
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                0     5862   11514  swasted          
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                1      280   11514  swasted          
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                0     4929   11514  swasted          
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                1      443   11514  swasted          
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                0      103   17943  swasted          
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                1        2   17943  swasted          
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                0    17492   17943  swasted          
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                1      346   17943  swasted          
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                0     1611    2396  swasted          
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                1       13    2396  swasted          
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                0      754    2396  swasted          
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                1       18    2396  swasted          
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                0      147     240  swasted          
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                1        0     240  swasted          
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                0       91     240  swasted          
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                1        2     240  swasted          
6 months    ki0047075b-MAL-ED         BRAZIL                         1                0       95     209  swasted          
6 months    ki0047075b-MAL-ED         BRAZIL                         1                1        0     209  swasted          
6 months    ki0047075b-MAL-ED         BRAZIL                         0                0      114     209  swasted          
6 months    ki0047075b-MAL-ED         BRAZIL                         0                1        0     209  swasted          
6 months    ki0047075b-MAL-ED         INDIA                          1                0      136     236  swasted          
6 months    ki0047075b-MAL-ED         INDIA                          1                1        4     236  swasted          
6 months    ki0047075b-MAL-ED         INDIA                          0                0       94     236  swasted          
6 months    ki0047075b-MAL-ED         INDIA                          0                1        2     236  swasted          
6 months    ki0047075b-MAL-ED         NEPAL                          1                0       96     236  swasted          
6 months    ki0047075b-MAL-ED         NEPAL                          1                1        0     236  swasted          
6 months    ki0047075b-MAL-ED         NEPAL                          0                0      140     236  swasted          
6 months    ki0047075b-MAL-ED         NEPAL                          0                1        0     236  swasted          
6 months    ki0047075b-MAL-ED         PERU                           1                0      202     273  swasted          
6 months    ki0047075b-MAL-ED         PERU                           1                1        0     273  swasted          
6 months    ki0047075b-MAL-ED         PERU                           0                0       71     273  swasted          
6 months    ki0047075b-MAL-ED         PERU                           0                1        0     273  swasted          
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      153     250  swasted          
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        3     250  swasted          
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       94     250  swasted          
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        0     250  swasted          
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      205     247  swasted          
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     247  swasted          
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       42     247  swasted          
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     247  swasted          
6 months    ki1000109-EE              PAKISTAN                       1                0       67     364  swasted          
6 months    ki1000109-EE              PAKISTAN                       1                1        2     364  swasted          
6 months    ki1000109-EE              PAKISTAN                       0                0      285     364  swasted          
6 months    ki1000109-EE              PAKISTAN                       0                1       10     364  swasted          
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                0       92    1334  swasted          
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                1        5    1334  swasted          
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                0     1199    1334  swasted          
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                1       38    1334  swasted          
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                0      619     715  swasted          
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                1        0     715  swasted          
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                0       96     715  swasted          
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0     715  swasted          
6 months    ki1113344-GMS-Nepal       NEPAL                          1                0      148     511  swasted          
6 months    ki1113344-GMS-Nepal       NEPAL                          1                1        3     511  swasted          
6 months    ki1113344-GMS-Nepal       NEPAL                          0                0      356     511  swasted          
6 months    ki1113344-GMS-Nepal       NEPAL                          0                1        4     511  swasted          
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                0     4030    7553  swasted          
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                1       35    7553  swasted          
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                0     3454    7553  swasted          
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                1       34    7553  swasted          
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                0       36   16784  swasted          
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                1        0   16784  swasted          
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                0    16518   16784  swasted          
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                1      230   16784  swasted          
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                0     3073    4833  swasted          
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                1       22    4833  swasted          
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                0     1727    4833  swasted          
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                1       11    4833  swasted          
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0      128     211  swasted          
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1        0     211  swasted          
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       83     211  swasted          
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1        0     211  swasted          
24 months   ki0047075b-MAL-ED         BRAZIL                         1                0       79     169  swasted          
24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        1     169  swasted          
24 months   ki0047075b-MAL-ED         BRAZIL                         0                0       89     169  swasted          
24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        0     169  swasted          
24 months   ki0047075b-MAL-ED         INDIA                          1                0      133     227  swasted          
24 months   ki0047075b-MAL-ED         INDIA                          1                1        1     227  swasted          
24 months   ki0047075b-MAL-ED         INDIA                          0                0       92     227  swasted          
24 months   ki0047075b-MAL-ED         INDIA                          0                1        1     227  swasted          
24 months   ki0047075b-MAL-ED         NEPAL                          1                0       95     228  swasted          
24 months   ki0047075b-MAL-ED         NEPAL                          1                1        0     228  swasted          
24 months   ki0047075b-MAL-ED         NEPAL                          0                0      133     228  swasted          
24 months   ki0047075b-MAL-ED         NEPAL                          0                1        0     228  swasted          
24 months   ki0047075b-MAL-ED         PERU                           1                0      147     201  swasted          
24 months   ki0047075b-MAL-ED         PERU                           1                1        2     201  swasted          
24 months   ki0047075b-MAL-ED         PERU                           0                0       52     201  swasted          
24 months   ki0047075b-MAL-ED         PERU                           0                1        0     201  swasted          
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      144     235  swasted          
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        0     235  swasted          
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       91     235  swasted          
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        0     235  swasted          
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      180     214  swasted          
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     214  swasted          
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       34     214  swasted          
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     214  swasted          
24 months   ki1000109-EE              PAKISTAN                       1                0       32     164  swasted          
24 months   ki1000109-EE              PAKISTAN                       1                1        0     164  swasted          
24 months   ki1000109-EE              PAKISTAN                       0                0      128     164  swasted          
24 months   ki1000109-EE              PAKISTAN                       0                1        4     164  swasted          
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      439     514  swasted          
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1        4     514  swasted          
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       71     514  swasted          
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        0     514  swasted          
24 months   ki1113344-GMS-Nepal       NEPAL                          1                0      129     444  swasted          
24 months   ki1113344-GMS-Nepal       NEPAL                          1                1        2     444  swasted          
24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      302     444  swasted          
24 months   ki1113344-GMS-Nepal       NEPAL                          0                1       11     444  swasted          
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0      187     379  swasted          
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1       14     379  swasted          
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0      163     379  swasted          
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1       15     379  swasted          
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0        1    8603  swasted          
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1        0    8603  swasted          
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0     8267    8603  swasted          
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1      335    8603  swasted          
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     2957    4735  swasted          
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1       74    4735  swasted          
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1649    4735  swasted          
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1       55    4735  swasted          


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/57a20aae-75e5-40cf-a1c3-ca7c960404c2/73a94893-46ad-4439-adbd-1796943c4ec9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/57a20aae-75e5-40cf-a1c3-ca7c960404c2/73a94893-46ad-4439-adbd-1796943c4ec9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/57a20aae-75e5-40cf-a1c3-ca7c960404c2/73a94893-46ad-4439-adbd-1796943c4ec9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/57a20aae-75e5-40cf-a1c3-ca7c960404c2/73a94893-46ad-4439-adbd-1796943c4ec9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.0685155   0.0485027   0.0885283
Birth       ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.0531915   0.0077928   0.0985902
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0526316   0.0191348   0.0861284
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0409639   0.0218779   0.0600498
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0455878   0.0403710   0.0508046
Birth       ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0824646   0.0751086   0.0898207
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0080049   0.0039565   0.0120533
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0233161   0.0088163   0.0378159
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0515464   0.0256358   0.0774570
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0307195   0.0217846   0.0396544
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0086101   0.0057697   0.0114504
6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0097477   0.0064870   0.0130084
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0071082   0.0030192   0.0111973
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0063291   0.0026465   0.0100118
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0696517   0.0344136   0.1048898
24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0842697   0.0434066   0.1251328
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0244144   0.0181484   0.0306804
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0322770   0.0232095   0.0413445


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.0443686   0.0276826   0.0610546
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0627931   0.0583619   0.0672244
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0129382   0.0075150   0.0183614
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0091354   0.0069896   0.0112812
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0068281   0.0038634   0.0097927
24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0765172   0.0497195   0.1033148
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0272439   0.0220352   0.0324527


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093c-NIH-Crypto     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH   0                    1                 0.7763425   0.3149772   1.913496
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 0.7783133   0.3536728   1.712802
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.8089206   1.5646096   2.091380
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 2.9127142   1.2976313   6.537993
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 0.5959580   0.3210516   1.106258
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.1321265   0.7077149   1.811055
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 0.8903913   0.3968951   1.997497
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.2098716   0.6003371   2.438279
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.3220483   0.9062703   1.928577


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                -0.0020374   -0.0086451   0.0045702
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0082630   -0.0355690   0.0190431
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0172054    0.0129845   0.0214263
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0049333    0.0000329   0.0098337
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0193125   -0.0457136   0.0070885
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0005254   -0.0014717   0.0025224
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0002802   -0.0022342   0.0016739
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0068654   -0.0184872   0.0322181
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0028295   -0.0011105   0.0067696


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                -0.0306480   -0.1346550   0.0638253
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.1862348   -0.9869502   0.2918026
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.2740008    0.2063738   0.3358651
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.3812967    0.0098584   0.6133949
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.5991369   -1.7539793   0.0714386
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0575075   -0.1880083   0.2522847
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0410339   -0.3627637   0.2047399
24 months   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0897238   -0.3081209   0.3665702
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.1038596   -0.0527581   0.2371774
