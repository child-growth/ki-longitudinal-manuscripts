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
* W_nchldlt5
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
* delta_W_nchldlt5
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

agecat        studyid                   country                        earlybf    ever_co   n_cell       n
------------  ------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0      140     262
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1       21     262
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       84     262
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1       17     262
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                0      108     233
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        0     233
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                0      123     233
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        2     233
0-24 months   ki0047075b-MAL-ED         INDIA                          1                0      115     250
0-24 months   ki0047075b-MAL-ED         INDIA                          1                1       33     250
0-24 months   ki0047075b-MAL-ED         INDIA                          0                0       81     250
0-24 months   ki0047075b-MAL-ED         INDIA                          0                1       21     250
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                0       89     240
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                1        9     240
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                0      130     240
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                1       12     240
0-24 months   ki0047075b-MAL-ED         PERU                           1                0      214     302
0-24 months   ki0047075b-MAL-ED         PERU                           1                1       11     302
0-24 months   ki0047075b-MAL-ED         PERU                           0                0       76     302
0-24 months   ki0047075b-MAL-ED         PERU                           0                1        1     302
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      170     297
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       11     297
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0      105     297
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       11     297
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      197     261
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       19     261
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       41     261
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        4     261
0-24 months   ki1000109-EE              PAKISTAN                       1                0       47     379
0-24 months   ki1000109-EE              PAKISTAN                       1                1       22     379
0-24 months   ki1000109-EE              PAKISTAN                       0                0      188     379
0-24 months   ki1000109-EE              PAKISTAN                       0                1      122     379
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                0       81    1472
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                1       22    1472
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                0     1042    1472
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                1      327    1472
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      591     758
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1       66     758
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       96     758
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        5     758
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                0      128     548
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                1       35     548
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      247     548
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                1      138     548
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0     6346   12404
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1      237   12404
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0     5540   12404
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1      281   12404
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0      137   26844
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1       29   26844
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0    24325   26844
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1     2353   26844
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     2898    5442
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1      536    5442
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1666    5442
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1      342    5442
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                0      155     262
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                1        6     262
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                0       98     262
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                1        3     262
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                0      108     233
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                1        0     233
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                0      125     233
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                1        0     233
0-6 months    ki0047075b-MAL-ED         INDIA                          1                0      138     250
0-6 months    ki0047075b-MAL-ED         INDIA                          1                1       10     250
0-6 months    ki0047075b-MAL-ED         INDIA                          0                0       94     250
0-6 months    ki0047075b-MAL-ED         INDIA                          0                1        8     250
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                0       96     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                1        2     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                0      137     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                1        5     240
0-6 months    ki0047075b-MAL-ED         PERU                           1                0      223     302
0-6 months    ki0047075b-MAL-ED         PERU                           1                1        2     302
0-6 months    ki0047075b-MAL-ED         PERU                           0                0       77     302
0-6 months    ki0047075b-MAL-ED         PERU                           0                1        0     302
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      180     297
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        1     297
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                0      112     297
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        4     297
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      213     261
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        3     261
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       44     261
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        1     261
0-6 months    ki1000109-EE              PAKISTAN                       1                0       58     379
0-6 months    ki1000109-EE              PAKISTAN                       1                1       11     379
0-6 months    ki1000109-EE              PAKISTAN                       0                0      268     379
0-6 months    ki1000109-EE              PAKISTAN                       0                1       42     379
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                0       95    1463
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                1        7    1463
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                0     1264    1463
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                1       97    1463
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                0      643     758
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                1       14     758
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                0       98     758
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                1        3     758
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                0      159     548
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                1        4     548
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                0      368     548
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                1       17     548
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                0     6489   12320
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                1       56   12320
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                0     5686   12320
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                1       89   12320
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                0      137   26738
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                1       27   26738
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                0    25547   26738
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                1     1027   26738
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                0     3311    5092
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                1       74    5092
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                0     1646    5092
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                1       61    5092
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0      127     238
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1       19     238
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       77     238
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1       15     238
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                0       95     207
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        0     207
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                0      110     207
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        2     207
6-24 months   ki0047075b-MAL-ED         INDIA                          1                0      109     235
6-24 months   ki0047075b-MAL-ED         INDIA                          1                1       30     235
6-24 months   ki0047075b-MAL-ED         INDIA                          0                0       79     235
6-24 months   ki0047075b-MAL-ED         INDIA                          0                1       17     235
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                0       87     235
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                1        8     235
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                0      132     235
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                1        8     235
6-24 months   ki0047075b-MAL-ED         PERU                           1                0      191     270
6-24 months   ki0047075b-MAL-ED         PERU                           1                1       10     270
6-24 months   ki0047075b-MAL-ED         PERU                           0                0       68     270
6-24 months   ki0047075b-MAL-ED         PERU                           0                1        1     270
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      147     255
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       11     255
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       89     255
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        8     255
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      185     245
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       18     245
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       39     245
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        3     245
6-24 months   ki1000109-EE              PAKISTAN                       1                0       49     373
6-24 months   ki1000109-EE              PAKISTAN                       1                1       19     373
6-24 months   ki1000109-EE              PAKISTAN                       0                0      192     373
6-24 months   ki1000109-EE              PAKISTAN                       0                1      113     373
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                0       81    1389
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                1       20    1389
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                0      994    1389
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                1      294    1389
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      571     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1       61     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       96     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        2     730
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                0      122     536
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                1       35     536
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      244     536
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                1      135     536
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0     4937    9509
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1      190    9509
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0     4183    9509
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1      199    9509
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0       32   17279
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1        3   17279
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0    15745   17279
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1     1499   17279
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     2930    5429
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1      498    5429
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1697    5429
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1      304    5429


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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d670fa59-3032-45ea-92b2-08b3ca5117ed/822df19c-1bdd-430a-9076-8ccd132b3254/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d670fa59-3032-45ea-92b2-08b3ca5117ed/822df19c-1bdd-430a-9076-8ccd132b3254/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d670fa59-3032-45ea-92b2-08b3ca5117ed/822df19c-1bdd-430a-9076-8ccd132b3254/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d670fa59-3032-45ea-92b2-08b3ca5117ed/822df19c-1bdd-430a-9076-8ccd132b3254/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1321197   0.0790443   0.1851950
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1588233   0.0887450   0.2289017
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.2199237   0.1528680   0.2869793
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.1930818   0.1166210   0.2695426
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                0.0918367   0.0345397   0.1491337
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                0.0845070   0.0386628   0.1303513
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.0604564   0.0254764   0.0954364
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.0933637   0.0397328   0.1469947
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.2913146   0.1800729   0.4025564
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.3993765   0.3447481   0.4540049
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.2390724   0.1210346   0.3571102
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.2383331   0.1953451   0.2813211
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1004566   0.0774553   0.1234579
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0495050   0.0071725   0.0918374
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.2148632   0.1506903   0.2790362
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.3585323   0.3104736   0.4065911
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0413886   0.0366068   0.0461704
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0435696   0.0383864   0.0487527
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1592108   0.1441508   0.1742708
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0882637   0.0842732   0.0922541
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1564155   0.1423557   0.1704754
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1684026   0.1510390   0.1857662
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.0675676   0.0270479   0.1080872
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.0784314   0.0261524   0.1307104
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                0.1461451   0.0651178   0.2271724
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                0.1374003   0.0985083   0.1762924
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.0686275   0.0186437   0.1186112
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.0712711   0.0481167   0.0944255
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0086758   0.0064327   0.0109190
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0149759   0.0118882   0.0180636
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1657879   0.1505207   0.1810551
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0386518   0.0360982   0.0412053
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0238130   0.0179681   0.0296578
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0315359   0.0229631   0.0401087
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1284777   0.0738600   0.1830955
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1552160   0.0776176   0.2328145
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.2190909   0.1506750   0.2875068
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.1790181   0.1028748   0.2551613
6-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                0.0842105   0.0282485   0.1401725
6-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                0.0571429   0.0186115   0.0956742
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.0696203   0.0298580   0.1093825
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.0824742   0.0276233   0.1373251
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.2814213   0.1651360   0.3977066
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.3721986   0.3178598   0.4265374
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.2047060   0.0882877   0.3211243
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.2278824   0.1902459   0.2655189
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.2283114   0.1620061   0.2946168
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.3571122   0.3087121   0.4055123
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0390057   0.0336138   0.0443977
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0439341   0.0377791   0.0500891
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1451734   0.1317602   0.1585866
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1519575   0.1354394   0.1684757


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1450382   0.1023171   0.1877593
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2160000   0.1648868   0.2671132
0-24 months   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.0875000   0.0516764   0.1233236
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.0740741   0.0442393   0.1039089
0-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2370924   0.1969570   0.2772278
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.3156934   0.2767430   0.3546439
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0417607   0.0382402   0.0452812
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0887349   0.0848433   0.0926265
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1613377   0.1500062   0.1726692
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0720000   0.0398938   0.1041062
0-6 months    ki1000109-EE              PAKISTAN       NA                   NA                0.1398417   0.1048786   0.1748048
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0710868   0.0489978   0.0931759
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0117695   0.0098650   0.0136739
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0394196   0.0369302   0.0419089
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0265122   0.0211694   0.0318550
6-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1428571   0.0983068   0.1874075
6-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.0680851   0.0358110   0.1003592
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.0745098   0.0422157   0.1068040
6-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.3171642   0.2777301   0.3565982
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0409086   0.0369272   0.0448901
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1477252   0.1371297   0.1583206


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.2021173   0.6614308   2.1847881
0-24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA          0                    1                 0.8779492   0.5363558   1.4370961
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    1                 0.9201878   0.4025457   2.1034771
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 1.5443147   0.6825279   3.4942279
0-24 months   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN       0                    1                 1.3709455   0.9147466   2.0546584
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.9969078   0.5815983   1.7087827
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 0.4927993   0.2033366   1.1943305
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.6686536   1.2033299   2.3139165
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.0526951   0.8963963   1.2362468
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.5543823   0.4982891   0.6167899
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0766360   0.9433585   1.2287429
0-6 months    ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA          0                    1                 1.1607843   0.4735377   2.8454338
0-6 months    ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN       0                    1                 0.9401635   0.5045680   1.7518102
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    1                 1.0385221   0.4797340   2.2481797
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.7261596   1.2431275   2.3968796
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.2331400   0.2074037   0.2620698
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.3243152   0.9594998   1.8278385
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.2081163   0.6278945   2.3245069
6-24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA          0                    1                 0.8170947   0.4860814   1.3735228
6-24 months   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         NEPAL          0                    1                 0.6785714   0.2632902   1.7488658
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 1.1846298   0.4930162   2.8464536
6-24 months   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN       0                    1                 1.3225674   0.8538001   2.0487048
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    1                 1.1132181   0.6041076   2.0513807
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.5641451   1.1360905   2.1534815
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.1263492   0.9261632   1.3698044
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0467312   0.9092666   1.2049779


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0129185   -0.0228865    0.0487235
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0039237   -0.0453452    0.0374979
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0043367   -0.0477557    0.0390822
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0136177   -0.0114552    0.0386905
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.0886326   -0.0135395    0.1908048
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0019800   -0.1230519    0.1190919
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0067891   -0.0133260   -0.0002522
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.1008302    0.0438744    0.1577860
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0003721   -0.0030459    0.0037901
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.0704759   -0.0858385   -0.0551134
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0049222   -0.0030514    0.0128958
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                 0.0044324   -0.0225622    0.0314270
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                -0.0063034   -0.0789273    0.0663204
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0024594   -0.0470533    0.0519720
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0030936    0.0012750    0.0049123
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.1263683   -0.1416345   -0.1111021
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0026992   -0.0003812    0.0057796
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0143794   -0.0222483    0.0510072
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0190909   -0.0608302    0.0226484
6-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0161254   -0.0566386    0.0243877
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0048896   -0.0208923    0.0306714
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.0724661   -0.0348268    0.1797590
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0213559   -0.0979447    0.1406566
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0888527    0.0302711    0.1474344
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0019029   -0.0020088    0.0058145
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0025518   -0.0052162    0.0103198


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0890698   -0.1930487    0.3044761
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0181652   -0.2290321    0.1565230
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0495627   -0.6834445    0.3456382
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.1838383   -0.2257215    0.4565487
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.2332761   -0.0892514    0.4603031
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0083512   -0.6737707    0.3925260
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0724805   -0.1430392   -0.0062774
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.3193927    0.1146438    0.4767911
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0089108   -0.0763733    0.0874375
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.7942298   -0.9873523   -0.6198741
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0305087   -0.0203146    0.0788004
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                 0.0615616   -0.3980327    0.3700672
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                -0.0450756   -0.7177060    0.3641619
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0345965   -0.9819848    0.5297624
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.2628521    0.0982410    0.3974144
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -3.2057270   -3.6821444   -2.7777861
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.1018100   -0.0215402    0.2102658
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.1006560   -0.1941832    0.3227005
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0954547   -0.3249320    0.0942773
6-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.2368421   -0.9869236    0.2300769
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0656229   -0.3517250    0.3541138
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.2047716   -0.1648331    0.4570998
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0944695   -0.6161838    0.4926409
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.2801475    0.0710949    0.4421522
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0465153   -0.0538470    0.1373196
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0172739   -0.0368160    0.0685419
