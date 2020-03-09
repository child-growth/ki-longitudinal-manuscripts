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

**Outcome Variable:** ever_wasted

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

agecat                        studyid        country                        earlybf    ever_wasted   n_cell       n
----------------------------  -------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   EE             PAKISTAN                       1                    0       33     366
0-24 months (no birth wast)   EE             PAKISTAN                       1                    1       35     366
0-24 months (no birth wast)   EE             PAKISTAN                       0                    0      137     366
0-24 months (no birth wast)   EE             PAKISTAN                       0                    1      161     366
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          1                    0       95     599
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          1                    1       77     599
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          0                    0      209     599
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          0                    1      218     599
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     1                    0      122   26458
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     1                    1       21   26458
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     0                    0    21842   26458
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     0                    1     4473   26458
0-24 months (no birth wast)   JiVitA-4       BANGLADESH                     1                    0     2528    5396
0-24 months (no birth wast)   JiVitA-4       BANGLADESH                     1                    1      886    5396
0-24 months (no birth wast)   JiVitA-4       BANGLADESH                     0                    0     1477    5396
0-24 months (no birth wast)   JiVitA-4       BANGLADESH                     0                    1      505    5396
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     1                    0      128     262
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     1                    1       33     262
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     0                    0       77     262
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     0                    1       24     262
0-24 months (no birth wast)   MAL-ED         BRAZIL                         1                    0      103     233
0-24 months (no birth wast)   MAL-ED         BRAZIL                         1                    1        5     233
0-24 months (no birth wast)   MAL-ED         BRAZIL                         0                    0      117     233
0-24 months (no birth wast)   MAL-ED         BRAZIL                         0                    1        8     233
0-24 months (no birth wast)   MAL-ED         INDIA                          1                    0       90     245
0-24 months (no birth wast)   MAL-ED         INDIA                          1                    1       56     245
0-24 months (no birth wast)   MAL-ED         INDIA                          0                    0       64     245
0-24 months (no birth wast)   MAL-ED         INDIA                          0                    1       35     245
0-24 months (no birth wast)   MAL-ED         NEPAL                          1                    0       79     239
0-24 months (no birth wast)   MAL-ED         NEPAL                          1                    1       18     239
0-24 months (no birth wast)   MAL-ED         NEPAL                          0                    0      114     239
0-24 months (no birth wast)   MAL-ED         NEPAL                          0                    1       28     239
0-24 months (no birth wast)   MAL-ED         PERU                           1                    0      205     302
0-24 months (no birth wast)   MAL-ED         PERU                           1                    1       20     302
0-24 months (no birth wast)   MAL-ED         PERU                           0                    0       76     302
0-24 months (no birth wast)   MAL-ED         PERU                           0                    1        1     302
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA                   1                    0      150     296
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA                   1                    1       31     296
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA                   0                    0      101     296
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA                   0                    1       14     296
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      185     261
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       31     261
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       42     261
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH                     1                    0      555     754
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH                     1                    1       99     754
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH                     0                    0       91     754
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH                     0                    1        9     754
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          1                    0       60    1465
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          1                    1       43    1465
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          0                    0      862    1465
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          0                    1      500    1465
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE                       1                    0     5789   12131
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE                       1                    1      683   12131
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE                       0                    0     5095   12131
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE                       0                    1      564   12131
0-6 months (no birth wast)    EE             PAKISTAN                       1                    0       54     364
0-6 months (no birth wast)    EE             PAKISTAN                       1                    1       14     364
0-6 months (no birth wast)    EE             PAKISTAN                       0                    0      231     364
0-6 months (no birth wast)    EE             PAKISTAN                       0                    1       65     364
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          1                    0      140     582
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          1                    1       25     582
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          0                    0      332     582
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          0                    1       85     582
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     1                    0      124   26164
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     1                    1       17   26164
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     0                    0    24159   26164
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     0                    1     1864   26164
0-6 months (no birth wast)    JiVitA-4       BANGLADESH                     1                    0     3221    4957
0-6 months (no birth wast)    JiVitA-4       BANGLADESH                     1                    1       90    4957
0-6 months (no birth wast)    JiVitA-4       BANGLADESH                     0                    0     1609    4957
0-6 months (no birth wast)    JiVitA-4       BANGLADESH                     0                    1       37    4957
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     1                    0      148     261
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     1                    1       13     261
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     0                    0       94     261
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     0                    1        6     261
0-6 months (no birth wast)    MAL-ED         BRAZIL                         1                    0      105     233
0-6 months (no birth wast)    MAL-ED         BRAZIL                         1                    1        3     233
0-6 months (no birth wast)    MAL-ED         BRAZIL                         0                    0      120     233
0-6 months (no birth wast)    MAL-ED         BRAZIL                         0                    1        5     233
0-6 months (no birth wast)    MAL-ED         INDIA                          1                    0      121     243
0-6 months (no birth wast)    MAL-ED         INDIA                          1                    1       24     243
0-6 months (no birth wast)    MAL-ED         INDIA                          0                    0       83     243
0-6 months (no birth wast)    MAL-ED         INDIA                          0                    1       15     243
0-6 months (no birth wast)    MAL-ED         NEPAL                          1                    0       91     237
0-6 months (no birth wast)    MAL-ED         NEPAL                          1                    1        6     237
0-6 months (no birth wast)    MAL-ED         NEPAL                          0                    0      130     237
0-6 months (no birth wast)    MAL-ED         NEPAL                          0                    1       10     237
0-6 months (no birth wast)    MAL-ED         PERU                           1                    0      220     302
0-6 months (no birth wast)    MAL-ED         PERU                           1                    1        5     302
0-6 months (no birth wast)    MAL-ED         PERU                           0                    0       77     302
0-6 months (no birth wast)    MAL-ED         PERU                           0                    1        0     302
0-6 months (no birth wast)    MAL-ED         SOUTH AFRICA                   1                    0      171     295
0-6 months (no birth wast)    MAL-ED         SOUTH AFRICA                   1                    1       10     295
0-6 months (no birth wast)    MAL-ED         SOUTH AFRICA                   0                    0      110     295
0-6 months (no birth wast)    MAL-ED         SOUTH AFRICA                   0                    1        4     295
0-6 months (no birth wast)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      206     261
0-6 months (no birth wast)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       10     261
0-6 months (no birth wast)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       45     261
0-6 months (no birth wast)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        0     261
0-6 months (no birth wast)    NIH-Crypto     BANGLADESH                     1                    0      635     749
0-6 months (no birth wast)    NIH-Crypto     BANGLADESH                     1                    1       16     749
0-6 months (no birth wast)    NIH-Crypto     BANGLADESH                     0                    0       94     749
0-6 months (no birth wast)    NIH-Crypto     BANGLADESH                     0                    1        4     749
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          1                    0       84    1436
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          1                    1       18    1436
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          0                    0     1167    1436
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          0                    1      167    1436
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE                       1                    0     6147   11900
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE                       1                    1      207   11900
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE                       0                    0     5371   11900
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE                       0                    1      175   11900
6-24 months                   EE             PAKISTAN                       1                    0       42     363
6-24 months                   EE             PAKISTAN                       1                    1       27     363
6-24 months                   EE             PAKISTAN                       0                    0      165     363
6-24 months                   EE             PAKISTAN                       0                    1      129     363
6-24 months                   GMS-Nepal      NEPAL                          1                    0       91     536
6-24 months                   GMS-Nepal      NEPAL                          1                    1       66     536
6-24 months                   GMS-Nepal      NEPAL                          0                    0      198     536
6-24 months                   GMS-Nepal      NEPAL                          0                    1      181     536
6-24 months                   JiVitA-3       BANGLADESH                     1                    0       31   17297
6-24 months                   JiVitA-3       BANGLADESH                     1                    1        5   17297
6-24 months                   JiVitA-3       BANGLADESH                     0                    0    14429   17297
6-24 months                   JiVitA-3       BANGLADESH                     0                    1     2832   17297
6-24 months                   JiVitA-4       BANGLADESH                     1                    0     2588    5430
6-24 months                   JiVitA-4       BANGLADESH                     1                    1      841    5430
6-24 months                   JiVitA-4       BANGLADESH                     0                    0     1499    5430
6-24 months                   JiVitA-4       BANGLADESH                     0                    1      502    5430
6-24 months                   MAL-ED         BANGLADESH                     1                    0      124     239
6-24 months                   MAL-ED         BANGLADESH                     1                    1       23     239
6-24 months                   MAL-ED         BANGLADESH                     0                    0       73     239
6-24 months                   MAL-ED         BANGLADESH                     0                    1       19     239
6-24 months                   MAL-ED         BRAZIL                         1                    0       92     207
6-24 months                   MAL-ED         BRAZIL                         1                    1        3     207
6-24 months                   MAL-ED         BRAZIL                         0                    0      109     207
6-24 months                   MAL-ED         BRAZIL                         0                    1        3     207
6-24 months                   MAL-ED         INDIA                          1                    0       99     235
6-24 months                   MAL-ED         INDIA                          1                    1       40     235
6-24 months                   MAL-ED         INDIA                          0                    0       72     235
6-24 months                   MAL-ED         INDIA                          0                    1       24     235
6-24 months                   MAL-ED         NEPAL                          1                    0       81     235
6-24 months                   MAL-ED         NEPAL                          1                    1       14     235
6-24 months                   MAL-ED         NEPAL                          0                    0      118     235
6-24 months                   MAL-ED         NEPAL                          0                    1       22     235
6-24 months                   MAL-ED         PERU                           1                    0      184     270
6-24 months                   MAL-ED         PERU                           1                    1       17     270
6-24 months                   MAL-ED         PERU                           0                    0       68     270
6-24 months                   MAL-ED         PERU                           0                    1        1     270
6-24 months                   MAL-ED         SOUTH AFRICA                   1                    0      133     255
6-24 months                   MAL-ED         SOUTH AFRICA                   1                    1       25     255
6-24 months                   MAL-ED         SOUTH AFRICA                   0                    0       85     255
6-24 months                   MAL-ED         SOUTH AFRICA                   0                    1       12     255
6-24 months                   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      178     245
6-24 months                   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       25     245
6-24 months                   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       39     245
6-24 months                   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     245
6-24 months                   NIH-Crypto     BANGLADESH                     1                    0      541     730
6-24 months                   NIH-Crypto     BANGLADESH                     1                    1       91     730
6-24 months                   NIH-Crypto     BANGLADESH                     0                    0       93     730
6-24 months                   NIH-Crypto     BANGLADESH                     0                    1        5     730
6-24 months                   SAS-CompFeed   INDIA                          1                    0       72    1389
6-24 months                   SAS-CompFeed   INDIA                          1                    1       29    1389
6-24 months                   SAS-CompFeed   INDIA                          0                    0      892    1389
6-24 months                   SAS-CompFeed   INDIA                          0                    1      396    1389
6-24 months                   ZVITAMBO       ZIMBABWE                       1                    0     4674    9616
6-24 months                   ZVITAMBO       ZIMBABWE                       1                    1      512    9616
6-24 months                   ZVITAMBO       ZIMBABWE                       0                    0     4013    9616
6-24 months                   ZVITAMBO       ZIMBABWE                       0                    1      417    9616


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/99465e24-9fe5-4dbc-94c3-f6568b479932/87a98b1f-f0fc-4ee0-a1a1-f0bcb9aaeb11/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/99465e24-9fe5-4dbc-94c3-f6568b479932/87a98b1f-f0fc-4ee0-a1a1-f0bcb9aaeb11/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/99465e24-9fe5-4dbc-94c3-f6568b479932/87a98b1f-f0fc-4ee0-a1a1-f0bcb9aaeb11/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/99465e24-9fe5-4dbc-94c3-f6568b479932/87a98b1f-f0fc-4ee0-a1a1-f0bcb9aaeb11/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   EE             PAKISTAN       1                    NA                0.5006563   0.3808809   0.6204316
0-24 months (no birth wast)   EE             PAKISTAN       0                    NA                0.5438842   0.4872901   0.6004784
0-24 months (no birth wast)   GMS-Nepal      NEPAL          1                    NA                0.4629329   0.3884078   0.5374579
0-24 months (no birth wast)   GMS-Nepal      NEPAL          0                    NA                0.5063344   0.4592229   0.5534459
0-24 months (no birth wast)   JiVitA-3       BANGLADESH     1                    NA                0.1457445   0.1331901   0.1582989
0-24 months (no birth wast)   JiVitA-3       BANGLADESH     0                    NA                0.1699800   0.1645569   0.1754032
0-24 months (no birth wast)   JiVitA-4       BANGLADESH     1                    NA                0.2578802   0.2401658   0.2755945
0-24 months (no birth wast)   JiVitA-4       BANGLADESH     0                    NA                0.2537736   0.2324372   0.2751099
0-24 months (no birth wast)   MAL-ED         BANGLADESH     1                    NA                0.1970236   0.1355048   0.2585423
0-24 months (no birth wast)   MAL-ED         BANGLADESH     0                    NA                0.2394944   0.1588076   0.3201812
0-24 months (no birth wast)   MAL-ED         BRAZIL         1                    NA                0.0462963   0.0065817   0.0860109
0-24 months (no birth wast)   MAL-ED         BRAZIL         0                    NA                0.0640000   0.0210013   0.1069987
0-24 months (no birth wast)   MAL-ED         INDIA          1                    NA                0.3929527   0.3131887   0.4727167
0-24 months (no birth wast)   MAL-ED         INDIA          0                    NA                0.3454790   0.2479875   0.4429705
0-24 months (no birth wast)   MAL-ED         NEPAL          1                    NA                0.1789312   0.1027724   0.2550901
0-24 months (no birth wast)   MAL-ED         NEPAL          0                    NA                0.2000468   0.1333029   0.2667906
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA   1                    NA                0.1677007   0.1129039   0.2224974
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA   0                    NA                0.1243692   0.0631827   0.1855557
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH     1                    NA                0.1513761   0.1238887   0.1788636
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH     0                    NA                0.0900000   0.0338722   0.1461278
0-24 months (no birth wast)   SAS-CompFeed   INDIA          1                    NA                0.4725174   0.2208495   0.7241852
0-24 months (no birth wast)   SAS-CompFeed   INDIA          0                    NA                0.3669078   0.3124764   0.4213391
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE       1                    NA                0.1056348   0.0980359   0.1132336
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE       0                    NA                0.0999659   0.0919535   0.1079784
0-6 months (no birth wast)    EE             PAKISTAN       1                    NA                0.2123984   0.1116950   0.3131018
0-6 months (no birth wast)    EE             PAKISTAN       0                    NA                0.2179618   0.1708323   0.2650913
0-6 months (no birth wast)    GMS-Nepal      NEPAL          1                    NA                0.1501689   0.0945284   0.2058094
0-6 months (no birth wast)    GMS-Nepal      NEPAL          0                    NA                0.2028660   0.1641140   0.2416179
0-6 months (no birth wast)    JiVitA-3       BANGLADESH     1                    NA                0.1243299   0.1122893   0.1363706
0-6 months (no birth wast)    JiVitA-3       BANGLADESH     0                    NA                0.0716158   0.0678748   0.0753567
0-6 months (no birth wast)    JiVitA-4       BANGLADESH     1                    NA                0.0271621   0.0209661   0.0333582
0-6 months (no birth wast)    JiVitA-4       BANGLADESH     0                    NA                0.0224370   0.0149083   0.0299658
0-6 months (no birth wast)    MAL-ED         BANGLADESH     1                    NA                0.0807453   0.0385810   0.1229097
0-6 months (no birth wast)    MAL-ED         BANGLADESH     0                    NA                0.0600000   0.0133640   0.1066360
0-6 months (no birth wast)    MAL-ED         INDIA          1                    NA                0.1643324   0.1035645   0.2251004
0-6 months (no birth wast)    MAL-ED         INDIA          0                    NA                0.1534293   0.0813133   0.2255453
0-6 months (no birth wast)    MAL-ED         NEPAL          1                    NA                0.0618557   0.0138155   0.1098959
0-6 months (no birth wast)    MAL-ED         NEPAL          0                    NA                0.0714286   0.0286776   0.1141795
0-6 months (no birth wast)    SAS-CompFeed   INDIA          1                    NA                0.1890047   0.1120398   0.2659695
0-6 months (no birth wast)    SAS-CompFeed   INDIA          0                    NA                0.1253717   0.0960253   0.1547180
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE       1                    NA                0.0316867   0.0273470   0.0360264
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE       0                    NA                0.0325402   0.0277303   0.0373501
6-24 months                   EE             PAKISTAN       1                    NA                0.4115638   0.2922773   0.5308502
6-24 months                   EE             PAKISTAN       0                    NA                0.4393069   0.3826508   0.4959631
6-24 months                   GMS-Nepal      NEPAL          1                    NA                0.4354749   0.3581296   0.5128201
6-24 months                   GMS-Nepal      NEPAL          0                    NA                0.4708398   0.4207460   0.5209337
6-24 months                   JiVitA-3       BANGLADESH     1                    NA                0.1388889   0.1308343   0.1469435
6-24 months                   JiVitA-3       BANGLADESH     0                    NA                0.1640693   0.1577997   0.1703388
6-24 months                   JiVitA-4       BANGLADESH     1                    NA                0.2442600   0.2265317   0.2619882
6-24 months                   JiVitA-4       BANGLADESH     0                    NA                0.2491433   0.2275631   0.2707236
6-24 months                   MAL-ED         BANGLADESH     1                    NA                0.1521506   0.0936478   0.2106533
6-24 months                   MAL-ED         BANGLADESH     0                    NA                0.2065477   0.1252128   0.2878825
6-24 months                   MAL-ED         INDIA          1                    NA                0.2902412   0.2140640   0.3664184
6-24 months                   MAL-ED         INDIA          0                    NA                0.2411481   0.1531363   0.3291599
6-24 months                   MAL-ED         NEPAL          1                    NA                0.1395882   0.0700434   0.2091329
6-24 months                   MAL-ED         NEPAL          0                    NA                0.1605875   0.0994139   0.2217611
6-24 months                   MAL-ED         SOUTH AFRICA   1                    NA                0.1623817   0.1053952   0.2193682
6-24 months                   MAL-ED         SOUTH AFRICA   0                    NA                0.1337556   0.0674447   0.2000666
6-24 months                   NIH-Crypto     BANGLADESH     1                    NA                0.1439873   0.1165975   0.1713772
6-24 months                   NIH-Crypto     BANGLADESH     0                    NA                0.0510204   0.0074258   0.0946151
6-24 months                   SAS-CompFeed   INDIA          1                    NA                0.3037327   0.0814133   0.5260522
6-24 months                   SAS-CompFeed   INDIA          0                    NA                0.3075827   0.2587008   0.3564646
6-24 months                   ZVITAMBO       ZIMBABWE       1                    NA                0.1006311   0.0922417   0.1090206
6-24 months                   ZVITAMBO       ZIMBABWE       0                    NA                0.0929853   0.0842768   0.1016938


### Parameter: E(Y)


agecat                        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   EE             PAKISTAN       NA                   NA                0.5355191   0.4843541   0.5866841
0-24 months (no birth wast)   GMS-Nepal      NEPAL          NA                   NA                0.4924875   0.4524176   0.5325574
0-24 months (no birth wast)   JiVitA-3       BANGLADESH     NA                   NA                0.1698541   0.1645584   0.1751498
0-24 months (no birth wast)   JiVitA-4       BANGLADESH     NA                   NA                0.2577835   0.2441424   0.2714247
0-24 months (no birth wast)   MAL-ED         BANGLADESH     NA                   NA                0.2175573   0.1675030   0.2676115
0-24 months (no birth wast)   MAL-ED         BRAZIL         NA                   NA                0.0557940   0.0262594   0.0853286
0-24 months (no birth wast)   MAL-ED         INDIA          NA                   NA                0.3714286   0.3108013   0.4320559
0-24 months (no birth wast)   MAL-ED         NEPAL          NA                   NA                0.1924686   0.1423823   0.2425550
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA   NA                   NA                0.1520270   0.1110549   0.1929992
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   SAS-CompFeed   INDIA          NA                   NA                0.3706485   0.3201448   0.4211521
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE       NA                   NA                0.1027945   0.0973901   0.1081989
0-6 months (no birth wast)    EE             PAKISTAN       NA                   NA                0.2170330   0.1746268   0.2594392
0-6 months (no birth wast)    GMS-Nepal      NEPAL          NA                   NA                0.1890034   0.1571685   0.2208384
0-6 months (no birth wast)    JiVitA-3       BANGLADESH     NA                   NA                0.0718927   0.0682457   0.0755397
0-6 months (no birth wast)    JiVitA-4       BANGLADESH     NA                   NA                0.0256203   0.0209093   0.0303314
0-6 months (no birth wast)    MAL-ED         BANGLADESH     NA                   NA                0.0727969   0.0412174   0.1043764
0-6 months (no birth wast)    MAL-ED         INDIA          NA                   NA                0.1604938   0.1142470   0.2067406
0-6 months (no birth wast)    MAL-ED         NEPAL          NA                   NA                0.0675105   0.0354995   0.0995216
0-6 months (no birth wast)    SAS-CompFeed   INDIA          NA                   NA                0.1288301   0.0985331   0.1591271
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE       NA                   NA                0.0321008   0.0289337   0.0352680
6-24 months                   EE             PAKISTAN       NA                   NA                0.4297521   0.3787562   0.4807479
6-24 months                   GMS-Nepal      NEPAL          NA                   NA                0.4608209   0.4185829   0.5030589
6-24 months                   JiVitA-3       BANGLADESH     NA                   NA                0.1640169   0.1579043   0.1701294
6-24 months                   JiVitA-4       BANGLADESH     NA                   NA                0.2473297   0.2337864   0.2608729
6-24 months                   MAL-ED         BANGLADESH     NA                   NA                0.1757322   0.1273797   0.2240848
6-24 months                   MAL-ED         INDIA          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   MAL-ED         NEPAL          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   MAL-ED         SOUTH AFRICA   NA                   NA                0.1450980   0.1017849   0.1884112
6-24 months                   NIH-Crypto     BANGLADESH     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   SAS-CompFeed   INDIA          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months                   ZVITAMBO       ZIMBABWE       NA                   NA                0.0966098   0.0907048   0.1025148


### Parameter: RR


agecat                        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   EE             PAKISTAN       0                    1                 1.0863426   0.8378337   1.4085615
0-24 months (no birth wast)   GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   GMS-Nepal      NEPAL          0                    1                 1.0937533   0.9097673   1.3149476
0-24 months (no birth wast)   JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   JiVitA-3       BANGLADESH     0                    1                 1.1662880   1.0637880   1.2786643
0-24 months (no birth wast)   JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   JiVitA-4       BANGLADESH     0                    1                 0.9840755   0.8826490   1.0971570
0-24 months (no birth wast)   MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED         BANGLADESH     0                    1                 1.2155619   0.7681115   1.9236671
0-24 months (no birth wast)   MAL-ED         BRAZIL         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED         BRAZIL         0                    1                 1.3824000   0.4649629   4.1100691
0-24 months (no birth wast)   MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED         INDIA          0                    1                 0.8791872   0.6207396   1.2452407
0-24 months (no birth wast)   MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED         NEPAL          0                    1                 1.1180092   0.6508315   1.9205350
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA   0                    1                 0.7416145   0.4118308   1.3354805
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH     0                    1                 0.5945455   0.3105227   1.1383526
0-24 months (no birth wast)   SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   SAS-CompFeed   INDIA          0                    1                 0.7764959   0.4333315   1.3914196
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE       0                    1                 0.9463354   0.8503185   1.0531946
0-6 months (no birth wast)    EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    EE             PAKISTAN       0                    1                 1.0261932   0.6099588   1.7264648
0-6 months (no birth wast)    GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    GMS-Nepal      NEPAL          0                    1                 1.3509185   0.8901258   2.0502505
0-6 months (no birth wast)    JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    JiVitA-3       BANGLADESH     0                    1                 0.5760139   0.5150090   0.6442451
0-6 months (no birth wast)    JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    JiVitA-4       BANGLADESH     0                    1                 0.8260416   0.5433865   1.2557265
0-6 months (no birth wast)    MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    MAL-ED         BANGLADESH     0                    1                 0.7430769   0.2913165   1.8954069
0-6 months (no birth wast)    MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    MAL-ED         INDIA          0                    1                 0.9336523   0.5127551   1.7000446
0-6 months (no birth wast)    MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    MAL-ED         NEPAL          0                    1                 1.1547619   0.4331731   3.0783885
0-6 months (no birth wast)    SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    SAS-CompFeed   INDIA          0                    1                 0.6633258   0.4480001   0.9821451
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE       0                    1                 1.0269359   0.8397189   1.2558933
6-24 months                   EE             PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   EE             PAKISTAN       0                    1                 1.0674092   0.7778947   1.4646742
6-24 months                   GMS-Nepal      NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   GMS-Nepal      NEPAL          0                    1                 1.0812102   0.8803271   1.3279330
6-24 months                   JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   JiVitA-3       BANGLADESH     0                    1                 1.1812989   1.1015864   1.2667794
6-24 months                   JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   JiVitA-4       BANGLADESH     0                    1                 1.0199924   0.9108032   1.1422715
6-24 months                   MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED         BANGLADESH     0                    1                 1.3575217   0.7814413   2.3582899
6-24 months                   MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED         INDIA          0                    1                 0.8308541   0.5303460   1.3016379
6-24 months                   MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED         NEPAL          0                    1                 1.1504378   0.6150316   2.1519333
6-24 months                   MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED         SOUTH AFRICA   0                    1                 0.8237114   0.4477185   1.5154620
6-24 months                   NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Crypto     BANGLADESH     0                    1                 0.3543395   0.1476556   0.8503338
6-24 months                   SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   SAS-CompFeed   INDIA          0                    1                 1.0126754   0.4509730   2.2739971
6-24 months                   ZVITAMBO       ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ZVITAMBO       ZIMBABWE       0                    1                 0.9240212   0.8156873   1.0467432


### Parameter: PAR


agecat                        studyid        country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   EE             PAKISTAN       1                    NA                 0.0348628   -0.0733111    0.1430368
0-24 months (no birth wast)   GMS-Nepal      NEPAL          1                    NA                 0.0295546   -0.0334155    0.0925247
0-24 months (no birth wast)   JiVitA-3       BANGLADESH     1                    NA                 0.0241096    0.0107542    0.0374651
0-24 months (no birth wast)   JiVitA-4       BANGLADESH     1                    NA                -0.0000966   -0.0101946    0.0100013
0-24 months (no birth wast)   MAL-ED         BANGLADESH     1                    NA                 0.0205337   -0.0194831    0.0605504
0-24 months (no birth wast)   MAL-ED         BRAZIL         1                    NA                 0.0094977   -0.0219248    0.0409202
0-24 months (no birth wast)   MAL-ED         INDIA          1                    NA                -0.0215241   -0.0718347    0.0287864
0-24 months (no birth wast)   MAL-ED         NEPAL          1                    NA                 0.0135374   -0.0459907    0.0730654
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA   1                    NA                -0.0156736   -0.0470691    0.0157219
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH     1                    NA                -0.0081401   -0.0165611    0.0002810
0-24 months (no birth wast)   SAS-CompFeed   INDIA          1                    NA                -0.1018689   -0.3572218    0.1534840
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE       1                    NA                -0.0028403   -0.0080619    0.0023813
0-6 months (no birth wast)    EE             PAKISTAN       1                    NA                 0.0046346   -0.0865418    0.0958110
0-6 months (no birth wast)    GMS-Nepal      NEPAL          1                    NA                 0.0388345   -0.0099936    0.0876627
0-6 months (no birth wast)    JiVitA-3       BANGLADESH     1                    NA                -0.0524373   -0.0648799   -0.0399947
0-6 months (no birth wast)    JiVitA-4       BANGLADESH     1                    NA                -0.0015418   -0.0049391    0.0018556
0-6 months (no birth wast)    MAL-ED         BANGLADESH     1                    NA                -0.0079484   -0.0320680    0.0161712
0-6 months (no birth wast)    MAL-ED         INDIA          1                    NA                -0.0038386   -0.0418664    0.0341892
0-6 months (no birth wast)    MAL-ED         NEPAL          1                    NA                 0.0056549   -0.0323377    0.0436474
0-6 months (no birth wast)    SAS-CompFeed   INDIA          1                    NA                -0.0601746   -0.1291244    0.0087752
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE       1                    NA                 0.0004141   -0.0025736    0.0034019
6-24 months                   EE             PAKISTAN       1                    NA                 0.0181883   -0.0903018    0.1266784
6-24 months                   GMS-Nepal      NEPAL          1                    NA                 0.0253460   -0.0397172    0.0904093
6-24 months                   JiVitA-3       BANGLADESH     1                    NA                 0.0251280    0.0151168    0.0351392
6-24 months                   JiVitA-4       BANGLADESH     1                    NA                 0.0030697   -0.0071122    0.0132515
6-24 months                   MAL-ED         BANGLADESH     1                    NA                 0.0235817   -0.0155297    0.0626930
6-24 months                   MAL-ED         INDIA          1                    NA                -0.0179008   -0.0659125    0.0301109
6-24 months                   MAL-ED         NEPAL          1                    NA                 0.0136033   -0.0408902    0.0680968
6-24 months                   MAL-ED         SOUTH AFRICA   1                    NA                -0.0172837   -0.0507554    0.0161881
6-24 months                   NIH-Crypto     BANGLADESH     1                    NA                -0.0124805   -0.0197650   -0.0051960
6-24 months                   SAS-CompFeed   INDIA          1                    NA                 0.0022428   -0.2290138    0.2334993
6-24 months                   ZVITAMBO       ZIMBABWE       1                    NA                -0.0040213   -0.0097963    0.0017536


### Parameter: PAF


agecat                        studyid        country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   EE             PAKISTAN       1                    NA                 0.0651010   -0.1605173    0.2468565
0-24 months (no birth wast)   GMS-Nepal      NEPAL          1                    NA                 0.0600109   -0.0770428    0.1796245
0-24 months (no birth wast)   JiVitA-3       BANGLADESH     1                    NA                 0.1419432    0.0611483    0.2157851
0-24 months (no birth wast)   JiVitA-4       BANGLADESH     1                    NA                -0.0003749   -0.0403221    0.0380384
0-24 months (no birth wast)   MAL-ED         BANGLADESH     1                    NA                 0.0943828   -0.1089947    0.2604631
0-24 months (no birth wast)   MAL-ED         BRAZIL         1                    NA                 0.1702279   -0.6229402    0.5757566
0-24 months (no birth wast)   MAL-ED         INDIA          1                    NA                -0.0579496   -0.2025557    0.0692677
0-24 months (no birth wast)   MAL-ED         NEPAL          1                    NA                 0.0703355   -0.2962889    0.3332689
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA   1                    NA                -0.1030977   -0.3280466    0.0837487
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH     1                    NA                -0.0568298   -0.1167117   -0.0001589
0-24 months (no birth wast)   SAS-CompFeed   INDIA          1                    NA                -0.2748397   -1.2012605    0.2616884
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE       1                    NA                -0.0276307   -0.0796907    0.0219191
0-6 months (no birth wast)    EE             PAKISTAN       1                    NA                 0.0213543   -0.5033900    0.3629415
0-6 months (no birth wast)    GMS-Nepal      NEPAL          1                    NA                 0.2054699   -0.0983807    0.4252647
0-6 months (no birth wast)    JiVitA-3       BANGLADESH     1                    NA                -0.7293826   -0.9257315   -0.5530536
0-6 months (no birth wast)    JiVitA-4       BANGLADESH     1                    NA                -0.0601776   -0.2001244    0.0634499
0-6 months (no birth wast)    MAL-ED         BANGLADESH     1                    NA                -0.1091860   -0.4915374    0.1751507
0-6 months (no birth wast)    MAL-ED         INDIA          1                    NA                -0.0239174   -0.2903776    0.1875194
0-6 months (no birth wast)    MAL-ED         NEPAL          1                    NA                 0.0837629   -0.6911428    0.5035958
0-6 months (no birth wast)    SAS-CompFeed   INDIA          1                    NA                -0.4670848   -1.1196323   -0.0154298
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE       1                    NA                 0.0129010   -0.0847018    0.1017214
6-24 months                   EE             PAKISTAN       1                    NA                 0.0423228   -0.2465069    0.2642274
6-24 months                   GMS-Nepal      NEPAL          1                    NA                 0.0550019   -0.0973482    0.1862005
6-24 months                   JiVitA-3       BANGLADESH     1                    NA                 0.1532037    0.0933552    0.2091015
6-24 months                   JiVitA-4       BANGLADESH     1                    NA                 0.0124113   -0.0297016    0.0528018
6-24 months                   MAL-ED         BANGLADESH     1                    NA                 0.1341909   -0.1179322    0.3294536
6-24 months                   MAL-ED         INDIA          1                    NA                -0.0657294   -0.2573509    0.0966888
6-24 months                   MAL-ED         NEPAL          1                    NA                 0.0887995   -0.3457691    0.3830395
6-24 months                   MAL-ED         SOUTH AFRICA   1                    NA                -0.1191171   -0.3748816    0.0890684
6-24 months                   NIH-Crypto     BANGLADESH     1                    NA                -0.0949037   -0.1496991   -0.0427200
6-24 months                   SAS-CompFeed   INDIA          1                    NA                 0.0073299   -1.1248922    0.5362617
6-24 months                   ZVITAMBO       ZIMBABWE       1                    NA                -0.0416245   -0.1031205    0.0164434
