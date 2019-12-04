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
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
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
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
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
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                0      107     233
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        1     233
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                0      123     233
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        2     233
0-24 months   ki0047075b-MAL-ED         INDIA                          1                0      115     250
0-24 months   ki0047075b-MAL-ED         INDIA                          1                1       33     250
0-24 months   ki0047075b-MAL-ED         INDIA                          0                0       81     250
0-24 months   ki0047075b-MAL-ED         INDIA                          0                1       21     250
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                0       89     240
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                1        9     240
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                0      129     240
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                1       13     240
0-24 months   ki0047075b-MAL-ED         PERU                           1                0      214     302
0-24 months   ki0047075b-MAL-ED         PERU                           1                1       11     302
0-24 months   ki0047075b-MAL-ED         PERU                           0                0       76     302
0-24 months   ki0047075b-MAL-ED         PERU                           0                1        1     302
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      169     297
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       12     297
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0      105     297
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       11     297
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      197     261
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       19     261
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       41     261
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        4     261
0-24 months   ki1000109-EE              PAKISTAN                       1                0       40     367
0-24 months   ki1000109-EE              PAKISTAN                       1                1       29     367
0-24 months   ki1000109-EE              PAKISTAN                       0                0      163     367
0-24 months   ki1000109-EE              PAKISTAN                       0                1      135     367
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                0       81    1472
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                1       22    1472
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                0     1042    1472
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                1      327    1472
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      591     758
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1       66     758
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       96     758
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        5     758
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                0      141     623
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                1       39     623
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      301     623
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                1      142     623
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0     6345   12411
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1      243   12411
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0     5539   12411
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1      284   12411
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0      137   26843
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1       29   26843
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0    24316   26843
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1     2361   26843
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     2898    5442
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1      536    5442
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1666    5442
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1      342    5442
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                0      155     262
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                1        6     262
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                0       98     262
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                1        3     262
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                0      107     233
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                1        1     233
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                0      125     233
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                1        0     233
0-6 months    ki0047075b-MAL-ED         INDIA                          1                0      138     250
0-6 months    ki0047075b-MAL-ED         INDIA                          1                1       10     250
0-6 months    ki0047075b-MAL-ED         INDIA                          0                0       93     250
0-6 months    ki0047075b-MAL-ED         INDIA                          0                1        9     250
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                0       96     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                1        2     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                0      136     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                1        6     240
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
0-6 months    ki1000109-EE              PAKISTAN                       1                0       61     367
0-6 months    ki1000109-EE              PAKISTAN                       1                1        8     367
0-6 months    ki1000109-EE              PAKISTAN                       0                0      251     367
0-6 months    ki1000109-EE              PAKISTAN                       0                1       47     367
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                0       95    1463
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                1        7    1463
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                0     1264    1463
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                1       97    1463
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                0      643     758
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                1       14     758
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                0       98     758
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                1        3     758
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                0      172     623
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                1        8     623
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                0      419     623
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                1       24     623
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                0     6494   12326
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                1       56   12326
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                0     5687   12326
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                1       89   12326
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                0      137   26737
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                1       27   26737
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                0    25538   26737
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                1     1035   26737
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
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      146     255
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       12     255
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       89     255
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        8     255
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      185     245
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       18     245
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       39     245
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        3     245
6-24 months   ki1000109-EE              PAKISTAN                       1                0       41     361
6-24 months   ki1000109-EE              PAKISTAN                       1                1       27     361
6-24 months   ki1000109-EE              PAKISTAN                       0                0      169     361
6-24 months   ki1000109-EE              PAKISTAN                       0                1      124     361
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                0       81    1389
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                1       20    1389
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                0      994    1389
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                1      294    1389
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      571     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1       61     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       96     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        2     730
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                0      121     536
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                1       36     536
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      243     536
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                1      136     536
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0     4989    9614
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1      196    9614
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0     4227    9614
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1      202    9614
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/45f0ff1e-7f47-45f4-a4a2-789d7d7e92b2/6e557cfd-9a50-466b-96cf-67e020565a8e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/45f0ff1e-7f47-45f4-a4a2-789d7d7e92b2/6e557cfd-9a50-466b-96cf-67e020565a8e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/45f0ff1e-7f47-45f4-a4a2-789d7d7e92b2/6e557cfd-9a50-466b-96cf-67e020565a8e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/45f0ff1e-7f47-45f4-a4a2-789d7d7e92b2/6e557cfd-9a50-466b-96cf-67e020565a8e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1313167   0.0786946   0.1839387
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1574725   0.0876610   0.2272839
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.2241266   0.1569077   0.2913454
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.1992720   0.1205740   0.2779701
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                0.0918367   0.0345397   0.1491337
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                0.0915493   0.0440170   0.1390816
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.0738261   0.0364750   0.1111772
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.0897704   0.0397103   0.1398305
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.4224299   0.2983481   0.5465118
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.4549474   0.3984811   0.5114136
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.2390724   0.1210346   0.3571102
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.2383331   0.1953451   0.2813211
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1004566   0.0774553   0.1234579
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0495050   0.0071725   0.0918374
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.2287269   0.1676864   0.2897674
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.3155793   0.2725589   0.3585998
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0421682   0.0373739   0.0469625
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0431930   0.0380168   0.0483692
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1769034   0.1614350   0.1923718
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0885004   0.0844725   0.0925283
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1564304   0.1424089   0.1704518
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1688725   0.1513843   0.1863607
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.0675676   0.0270479   0.1080872
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.0882353   0.0330808   0.1433898
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                0.1159420   0.0402976   0.1915864
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                0.1577181   0.1162798   0.1991564
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.0686275   0.0186437   0.1186112
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.0712711   0.0481167   0.0944255
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.0444444   0.0143146   0.0745743
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.0541761   0.0330799   0.0752723
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0085593   0.0063349   0.0107836
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0152145   0.0121057   0.0183233
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1678010   0.1524023   0.1831997
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0389491   0.0363770   0.0415211
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0242558   0.0183196   0.0301920
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0306883   0.0221465   0.0392300
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1288122   0.0744099   0.1832146
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1509350   0.0741917   0.2276782
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.2210014   0.1520364   0.2899663
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.1745782   0.0933475   0.2558088
6-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                0.0842105   0.0282485   0.1401725
6-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                0.0571429   0.0186115   0.0956742
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.0759494   0.0345606   0.1173382
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.0824742   0.0276233   0.1373251
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.4016076   0.2795131   0.5237020
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.4245737   0.3679453   0.4812021
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.2047060   0.0882877   0.3211243
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.2278824   0.1902459   0.2655189
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.2507978   0.1854987   0.3160969
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.3543438   0.3065744   0.4021132
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0408367   0.0353118   0.0463616
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0427593   0.0367729   0.0487457
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1454896   0.1320856   0.1588936
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1507708   0.1340256   0.1675160


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1450382   0.1023171   0.1877593
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2160000   0.1648868   0.2671132
0-24 months   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.0916667   0.0550838   0.1282495
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.0774411   0.0469912   0.1078909
0-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.4468665   0.3959321   0.4978009
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2370924   0.1969570   0.2772278
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.2905297   0.2548505   0.3262089
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0424623   0.0389147   0.0460100
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0890362   0.0851140   0.0929585
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1613377   0.1500062   0.1726692
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0760000   0.0430852   0.1089148
0-6 months    ki1000109-EE              PAKISTAN       NA                   NA                0.1498638   0.1132959   0.1864317
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0710868   0.0489978   0.0931759
0-6 months    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.0513644   0.0340170   0.0687117
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0117638   0.0098602   0.0136673
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0397202   0.0372135   0.0422270
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0265122   0.0211694   0.0318550
6-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1428571   0.0983068   0.1874075
6-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.0680851   0.0358110   0.1003592
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.0784314   0.0453685   0.1114942
6-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.4182825   0.3673274   0.4692377
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.3208955   0.2813387   0.3604523
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0413980   0.0374157   0.0453802
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1477252   0.1371297   0.1583206


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.1991811   0.6586682   2.1832468
0-24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA          0                    1                 0.8891049   0.5435324   1.4543890
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    1                 0.9968701   0.4427226   2.2446334
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 1.2159707   0.5802275   2.5482847
0-24 months   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN       0                    1                 1.0769771   0.7832054   1.4809392
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.9969078   0.5815983   1.7087827
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 0.4927993   0.2033366   1.1943305
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.3797213   1.0261677   1.8550875
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.0243025   0.8730116   1.2018118
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.5002753   0.4521193   0.5535605
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0795376   0.9461986   1.2316668
0-6 months    ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA          0                    1                 1.3058824   0.5491665   3.1053038
0-6 months    ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN       0                    1                 1.3603188   0.6732560   2.7485342
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    1                 1.0385221   0.4797340   2.2481797
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    1                 1.2189616   0.5577744   2.6639217
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.7775487   1.2797655   2.4689518
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.2321145   0.2065912   0.2607912
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.2651936   0.9092421   1.7604936
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.1717440   0.6061275   2.2651735
6-24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA          0                    1                 0.7899416   0.4539875   1.3745040
6-24 months   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         NEPAL          0                    1                 0.6785714   0.2632902   1.7488658
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 1.0859107   0.4595997   2.5657150
6-24 months   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN       0                    1                 1.0571856   0.7590989   1.4723263
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    1                 1.1132181   0.6041076   2.0513807
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.4128668   1.0579638   1.8868251
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.0470811   0.8632430   1.2700698
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0362996   0.8987003   1.1949667


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0137215   -0.0220218    0.0494648
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0081266   -0.0501933    0.0339401
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0001701   -0.0442175    0.0438774
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0036150   -0.0202363    0.0274663
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.0244366   -0.0882605    0.1371336
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0019800   -0.1230519    0.1190919
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0067891   -0.0133260   -0.0002522
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0618028    0.0086226    0.1149831
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0002941   -0.0031092    0.0036975
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.0878671   -0.1037054   -0.0720289
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0049074   -0.0030005    0.0128152
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                 0.0084324   -0.0195191    0.0363839
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                 0.0339217   -0.0361330    0.1039764
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0024594   -0.0470533    0.0519720
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0069199   -0.0192366    0.0330764
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0032045    0.0013993    0.0050096
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.1280808   -0.1434703   -0.1126912
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0022564   -0.0009014    0.0054141
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0140449   -0.0226822    0.0507720
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0210014   -0.0618041    0.0198013
6-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0161254   -0.0566386    0.0243877
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0024820   -0.0236593    0.0286233
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.0166750   -0.0939806    0.1273306
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0213559   -0.0979447    0.1406566
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0700978    0.0134296    0.1267660
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0005613   -0.0034363    0.0045589
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0022356   -0.0055302    0.0100014


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0946062   -0.1867042    0.3092315
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0376230   -0.2517575    0.1398801
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0018553   -0.6184695    0.3798375
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0466806   -0.3158773    0.3093445
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.0546842   -0.2345249    0.2761411
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0083512   -0.6737707    0.3925260
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0724805   -0.1430392   -0.0062774
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.2127246    0.0075578    0.3754775
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0069272   -0.0765175    0.0839039
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.9868693   -1.1885259   -0.8037939
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0304167   -0.0199774    0.0783210
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                 0.1109531   -0.3405113    0.4103709
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                 0.2263505   -0.4112992    0.5758988
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0345965   -0.9819848    0.5297624
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.1347222   -0.5553245    0.5186177
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.2724039    0.1091961    0.4057098
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -3.2245718   -3.7010196   -2.7964119
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0851076   -0.0416059    0.1964061
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0983143   -0.1969389    0.3207364
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.1050069   -0.3276031    0.0802671
6-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.2368421   -0.9869236    0.2300769
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0316456   -0.3658897    0.3134802
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.0398654   -0.2648151    0.2711516
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0944695   -0.6161838    0.4926409
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.2184442    0.0215926    0.3756900
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0135585   -0.0878412    0.1055065
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0151336   -0.0389251    0.0663794
