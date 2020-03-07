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

**Outcome Variable:** ever_swasted

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

agecat                        studyid        country                        earlybf    ever_swasted   n_cell       n
----------------------------  -------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth wast)   EE             PAKISTAN                       1                     0       57     366
0-24 months (no birth wast)   EE             PAKISTAN                       1                     1       11     366
0-24 months (no birth wast)   EE             PAKISTAN                       0                     0      245     366
0-24 months (no birth wast)   EE             PAKISTAN                       0                     1       53     366
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          1                     0      146     599
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          1                     1       26     599
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          0                     0      335     599
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          0                     1       92     599
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     1                     0      137   26458
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     1                     1        6   26458
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     0                     0    25373   26458
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     0                     1      942   26458
0-24 months (no birth wast)   JiVitA-4       BANGLADESH                     1                     0     3268    5396
0-24 months (no birth wast)   JiVitA-4       BANGLADESH                     1                     1      146    5396
0-24 months (no birth wast)   JiVitA-4       BANGLADESH                     0                     0     1896    5396
0-24 months (no birth wast)   JiVitA-4       BANGLADESH                     0                     1       86    5396
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     1                     0      154     262
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     1                     1        7     262
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     0                     0       96     262
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     0                     1        5     262
0-24 months (no birth wast)   MAL-ED         BRAZIL                         1                     0      106     233
0-24 months (no birth wast)   MAL-ED         BRAZIL                         1                     1        2     233
0-24 months (no birth wast)   MAL-ED         BRAZIL                         0                     0      123     233
0-24 months (no birth wast)   MAL-ED         BRAZIL                         0                     1        2     233
0-24 months (no birth wast)   MAL-ED         INDIA                          1                     0      136     245
0-24 months (no birth wast)   MAL-ED         INDIA                          1                     1       10     245
0-24 months (no birth wast)   MAL-ED         INDIA                          0                     0       96     245
0-24 months (no birth wast)   MAL-ED         INDIA                          0                     1        3     245
0-24 months (no birth wast)   MAL-ED         NEPAL                          1                     0       96     239
0-24 months (no birth wast)   MAL-ED         NEPAL                          1                     1        1     239
0-24 months (no birth wast)   MAL-ED         NEPAL                          0                     0      140     239
0-24 months (no birth wast)   MAL-ED         NEPAL                          0                     1        2     239
0-24 months (no birth wast)   MAL-ED         PERU                           1                     0      221     302
0-24 months (no birth wast)   MAL-ED         PERU                           1                     1        4     302
0-24 months (no birth wast)   MAL-ED         PERU                           0                     0       77     302
0-24 months (no birth wast)   MAL-ED         PERU                           0                     1        0     302
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA                   1                     0      171     296
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA                   1                     1       10     296
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA                   0                     0      113     296
0-24 months (no birth wast)   MAL-ED         SOUTH AFRICA                   0                     1        2     296
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      210     261
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1        6     261
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       43     261
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1        2     261
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH                     1                     0      634     754
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH                     1                     1       20     754
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH                     0                     0      100     754
0-24 months (no birth wast)   NIH-Crypto     BANGLADESH                     0                     1        0     754
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          1                     0       91    1465
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          1                     1       12    1465
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          0                     0     1202    1465
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          0                     1      160    1465
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE                       1                     0     6245   12131
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE                       1                     1      227   12131
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE                       0                     0     5458   12131
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE                       0                     1      201   12131
0-6 months (no birth wast)    EE             PAKISTAN                       1                     0       63     364
0-6 months (no birth wast)    EE             PAKISTAN                       1                     1        5     364
0-6 months (no birth wast)    EE             PAKISTAN                       0                     0      282     364
0-6 months (no birth wast)    EE             PAKISTAN                       0                     1       14     364
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          1                     0      159     582
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          1                     1        6     582
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          0                     0      395     582
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          0                     1       22     582
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     1                     0      135   26164
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     1                     1        6   26164
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     0                     0    25594   26164
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     0                     1      429   26164
0-6 months (no birth wast)    JiVitA-4       BANGLADESH                     1                     0     3297    4957
0-6 months (no birth wast)    JiVitA-4       BANGLADESH                     1                     1       14    4957
0-6 months (no birth wast)    JiVitA-4       BANGLADESH                     0                     0     1639    4957
0-6 months (no birth wast)    JiVitA-4       BANGLADESH                     0                     1        7    4957
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     1                     0      156     261
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     1                     1        5     261
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     0                     0       98     261
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     0                     1        2     261
0-6 months (no birth wast)    MAL-ED         BRAZIL                         1                     0      107     233
0-6 months (no birth wast)    MAL-ED         BRAZIL                         1                     1        1     233
0-6 months (no birth wast)    MAL-ED         BRAZIL                         0                     0      123     233
0-6 months (no birth wast)    MAL-ED         BRAZIL                         0                     1        2     233
0-6 months (no birth wast)    MAL-ED         INDIA                          1                     0      139     243
0-6 months (no birth wast)    MAL-ED         INDIA                          1                     1        6     243
0-6 months (no birth wast)    MAL-ED         INDIA                          0                     0       97     243
0-6 months (no birth wast)    MAL-ED         INDIA                          0                     1        1     243
0-6 months (no birth wast)    MAL-ED         NEPAL                          1                     0       97     237
0-6 months (no birth wast)    MAL-ED         NEPAL                          1                     1        0     237
0-6 months (no birth wast)    MAL-ED         NEPAL                          0                     0      139     237
0-6 months (no birth wast)    MAL-ED         NEPAL                          0                     1        1     237
0-6 months (no birth wast)    MAL-ED         PERU                           1                     0      224     302
0-6 months (no birth wast)    MAL-ED         PERU                           1                     1        1     302
0-6 months (no birth wast)    MAL-ED         PERU                           0                     0       77     302
0-6 months (no birth wast)    MAL-ED         PERU                           0                     1        0     302
0-6 months (no birth wast)    MAL-ED         SOUTH AFRICA                   1                     0      178     295
0-6 months (no birth wast)    MAL-ED         SOUTH AFRICA                   1                     1        3     295
0-6 months (no birth wast)    MAL-ED         SOUTH AFRICA                   0                     0      114     295
0-6 months (no birth wast)    MAL-ED         SOUTH AFRICA                   0                     1        0     295
0-6 months (no birth wast)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      213     261
0-6 months (no birth wast)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1        3     261
0-6 months (no birth wast)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       45     261
0-6 months (no birth wast)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1        0     261
0-6 months (no birth wast)    NIH-Crypto     BANGLADESH                     1                     0      650     749
0-6 months (no birth wast)    NIH-Crypto     BANGLADESH                     1                     1        1     749
0-6 months (no birth wast)    NIH-Crypto     BANGLADESH                     0                     0       98     749
0-6 months (no birth wast)    NIH-Crypto     BANGLADESH                     0                     1        0     749
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          1                     0       98    1436
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          1                     1        4    1436
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          0                     0     1292    1436
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          0                     1       42    1436
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE                       1                     0     6290   11900
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE                       1                     1       64   11900
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE                       0                     0     5493   11900
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE                       0                     1       53   11900
6-24 months                   EE             PAKISTAN                       1                     0       60     363
6-24 months                   EE             PAKISTAN                       1                     1        9     363
6-24 months                   EE             PAKISTAN                       0                     0      253     363
6-24 months                   EE             PAKISTAN                       0                     1       41     363
6-24 months                   GMS-Nepal      NEPAL                          1                     0      135     536
6-24 months                   GMS-Nepal      NEPAL                          1                     1       22     536
6-24 months                   GMS-Nepal      NEPAL                          0                     0      301     536
6-24 months                   GMS-Nepal      NEPAL                          0                     1       78     536
6-24 months                   JiVitA-3       BANGLADESH                     1                     0       36   17297
6-24 months                   JiVitA-3       BANGLADESH                     1                     1        0   17297
6-24 months                   JiVitA-3       BANGLADESH                     0                     0    16708   17297
6-24 months                   JiVitA-3       BANGLADESH                     0                     1      553   17297
6-24 months                   JiVitA-4       BANGLADESH                     1                     0     3287    5430
6-24 months                   JiVitA-4       BANGLADESH                     1                     1      142    5430
6-24 months                   JiVitA-4       BANGLADESH                     0                     0     1904    5430
6-24 months                   JiVitA-4       BANGLADESH                     0                     1       97    5430
6-24 months                   MAL-ED         BANGLADESH                     1                     0      145     239
6-24 months                   MAL-ED         BANGLADESH                     1                     1        2     239
6-24 months                   MAL-ED         BANGLADESH                     0                     0       89     239
6-24 months                   MAL-ED         BANGLADESH                     0                     1        3     239
6-24 months                   MAL-ED         BRAZIL                         1                     0       94     207
6-24 months                   MAL-ED         BRAZIL                         1                     1        1     207
6-24 months                   MAL-ED         BRAZIL                         0                     0      112     207
6-24 months                   MAL-ED         BRAZIL                         0                     1        0     207
6-24 months                   MAL-ED         INDIA                          1                     0      135     235
6-24 months                   MAL-ED         INDIA                          1                     1        4     235
6-24 months                   MAL-ED         INDIA                          0                     0       94     235
6-24 months                   MAL-ED         INDIA                          0                     1        2     235
6-24 months                   MAL-ED         NEPAL                          1                     0       94     235
6-24 months                   MAL-ED         NEPAL                          1                     1        1     235
6-24 months                   MAL-ED         NEPAL                          0                     0      139     235
6-24 months                   MAL-ED         NEPAL                          0                     1        1     235
6-24 months                   MAL-ED         PERU                           1                     0      198     270
6-24 months                   MAL-ED         PERU                           1                     1        3     270
6-24 months                   MAL-ED         PERU                           0                     0       69     270
6-24 months                   MAL-ED         PERU                           0                     1        0     270
6-24 months                   MAL-ED         SOUTH AFRICA                   1                     0      151     255
6-24 months                   MAL-ED         SOUTH AFRICA                   1                     1        7     255
6-24 months                   MAL-ED         SOUTH AFRICA                   0                     0       94     255
6-24 months                   MAL-ED         SOUTH AFRICA                   0                     1        3     255
6-24 months                   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      200     245
6-24 months                   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1        3     245
6-24 months                   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       40     245
6-24 months                   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1        2     245
6-24 months                   NIH-Crypto     BANGLADESH                     1                     0      612     730
6-24 months                   NIH-Crypto     BANGLADESH                     1                     1       20     730
6-24 months                   NIH-Crypto     BANGLADESH                     0                     0       98     730
6-24 months                   NIH-Crypto     BANGLADESH                     0                     1        0     730
6-24 months                   SAS-CompFeed   INDIA                          1                     0       93    1389
6-24 months                   SAS-CompFeed   INDIA                          1                     1        8    1389
6-24 months                   SAS-CompFeed   INDIA                          0                     0     1162    1389
6-24 months                   SAS-CompFeed   INDIA                          0                     1      126    1389
6-24 months                   ZVITAMBO       ZIMBABWE                       1                     0     5018    9616
6-24 months                   ZVITAMBO       ZIMBABWE                       1                     1      168    9616
6-24 months                   ZVITAMBO       ZIMBABWE                       0                     0     4278    9616
6-24 months                   ZVITAMBO       ZIMBABWE                       0                     1      152    9616


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

* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/b85244f6-5060-42d9-81d2-0dff229994a9/42a0d4b9-90c7-4ccd-8bba-5cd82c532f24/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b85244f6-5060-42d9-81d2-0dff229994a9/42a0d4b9-90c7-4ccd-8bba-5cd82c532f24/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b85244f6-5060-42d9-81d2-0dff229994a9/42a0d4b9-90c7-4ccd-8bba-5cd82c532f24/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b85244f6-5060-42d9-81d2-0dff229994a9/42a0d4b9-90c7-4ccd-8bba-5cd82c532f24/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   EE             PAKISTAN     1                    NA                0.1436097   0.0594756   0.2277439
0-24 months (no birth wast)   EE             PAKISTAN     0                    NA                0.1791029   0.1353763   0.2228295
0-24 months (no birth wast)   GMS-Nepal      NEPAL        1                    NA                0.1565096   0.1015638   0.2114554
0-24 months (no birth wast)   GMS-Nepal      NEPAL        0                    NA                0.2127479   0.1739223   0.2515736
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   1                    NA                0.0419580   0.0335267   0.0503894
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   0                    NA                0.0357971   0.0331555   0.0384386
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   1                    NA                0.0425064   0.0348708   0.0501419
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   0                    NA                0.0424822   0.0339584   0.0510059
0-24 months (no birth wast)   MAL-ED         BANGLADESH   1                    NA                0.0434783   0.0119174   0.0750391
0-24 months (no birth wast)   MAL-ED         BANGLADESH   0                    NA                0.0495050   0.0071195   0.0918904
0-24 months (no birth wast)   SAS-CompFeed   INDIA        1                    NA                0.1389999   0.0711481   0.2068517
0-24 months (no birth wast)   SAS-CompFeed   INDIA        0                    NA                0.1179228   0.0952318   0.1406138
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE     1                    NA                0.0353765   0.0307549   0.0399981
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE     0                    NA                0.0356662   0.0306942   0.0406382
0-6 months (no birth wast)    EE             PAKISTAN     1                    NA                0.0735294   0.0114086   0.1356503
0-6 months (no birth wast)    EE             PAKISTAN     0                    NA                0.0472973   0.0230816   0.0715130
0-6 months (no birth wast)    GMS-Nepal      NEPAL        1                    NA                0.0363636   0.0077766   0.0649507
0-6 months (no birth wast)    GMS-Nepal      NEPAL        0                    NA                0.0527578   0.0312831   0.0742325
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   1                    NA                0.0425532   0.0339790   0.0511273
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   0                    NA                0.0164854   0.0146253   0.0183455
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   1                    NA                0.0042283   0.0009127   0.0075439
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   0                    NA                0.0042527   0.0006054   0.0079001
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE     1                    NA                0.0098525   0.0074192   0.0122857
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE     0                    NA                0.0096465   0.0070709   0.0122221
6-24 months                   EE             PAKISTAN     1                    NA                0.1304348   0.0508609   0.2100086
6-24 months                   EE             PAKISTAN     0                    NA                0.1394558   0.0998026   0.1791090
6-24 months                   GMS-Nepal      NEPAL        1                    NA                0.1462194   0.0897690   0.2026697
6-24 months                   GMS-Nepal      NEPAL        0                    NA                0.2028737   0.1623324   0.2434149
6-24 months                   JiVitA-4       BANGLADESH   1                    NA                0.0419507   0.0343890   0.0495124
6-24 months                   JiVitA-4       BANGLADESH   0                    NA                0.0469046   0.0379816   0.0558276
6-24 months                   SAS-CompFeed   INDIA        1                    NA                0.0792079   0.0101913   0.1482246
6-24 months                   SAS-CompFeed   INDIA        0                    NA                0.0978261   0.0756691   0.1199830
6-24 months                   ZVITAMBO       ZIMBABWE     1                    NA                0.0329425   0.0279824   0.0379027
6-24 months                   ZVITAMBO       ZIMBABWE     0                    NA                0.0339218   0.0284750   0.0393685


### Parameter: E(Y)


agecat                        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   EE             PAKISTAN     NA                   NA                0.1748634   0.1358949   0.2138319
0-24 months (no birth wast)   GMS-Nepal      NEPAL        NA                   NA                0.1969950   0.1651175   0.2288725
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   NA                   NA                0.0358304   0.0332487   0.0384121
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   NA                   NA                0.0429948   0.0372768   0.0487128
0-24 months (no birth wast)   MAL-ED         BANGLADESH   NA                   NA                0.0458015   0.0204393   0.0711637
0-24 months (no birth wast)   SAS-CompFeed   INDIA        NA                   NA                0.1174061   0.0943414   0.1404709
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE     NA                   NA                0.0352815   0.0319984   0.0385647
0-6 months (no birth wast)    EE             PAKISTAN     NA                   NA                0.0521978   0.0293166   0.0750791
0-6 months (no birth wast)    GMS-Nepal      NEPAL        NA                   NA                0.0481100   0.0307091   0.0655108
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   NA                   NA                0.0166259   0.0148065   0.0184453
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   NA                   NA                0.0042364   0.0017272   0.0067456
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE     NA                   NA                0.0098319   0.0080591   0.0116048
6-24 months                   EE             PAKISTAN     NA                   NA                0.1377410   0.1022397   0.1732424
6-24 months                   GMS-Nepal      NEPAL        NA                   NA                0.1865672   0.1535569   0.2195775
6-24 months                   JiVitA-4       BANGLADESH   NA                   NA                0.0440147   0.0381801   0.0498493
6-24 months                   SAS-CompFeed   INDIA        NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months                   ZVITAMBO       ZIMBABWE     NA                   NA                0.0332779   0.0296928   0.0368630


### Parameter: RR


agecat                        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   EE             PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   EE             PAKISTAN     0                    1                 1.2471501   0.6611963   2.3523775
0-24 months (no birth wast)   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   GMS-Nepal      NEPAL        0                    1                 1.3593283   0.9156220   2.0180527
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   0                    1                 0.8531636   0.6882144   1.0576474
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   0                    1                 0.9994310   0.7589325   1.3161411
0-24 months (no birth wast)   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED         BANGLADESH   0                    1                 1.1386139   0.3705824   3.4983898
0-24 months (no birth wast)   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   SAS-CompFeed   INDIA        0                    1                 0.8483665   0.5412968   1.3296324
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE     0                    1                 1.0081892   0.8330877   1.2200942
0-6 months (no birth wast)    EE             PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    EE             PAKISTAN     0                    1                 0.6432432   0.2395232   1.7274399
0-6 months (no birth wast)    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    GMS-Nepal      NEPAL        0                    1                 1.4508393   0.5986187   3.5163199
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   0                    1                 0.3874073   0.3064495   0.4897525
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   0                    1                 1.0057716   0.3120971   3.2412231
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE     0                    1                 0.9790966   0.6805564   1.4085976
6-24 months                   EE             PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   EE             PAKISTAN     0                    1                 1.0691610   0.5454185   2.0958313
6-24 months                   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   GMS-Nepal      NEPAL        0                    1                 1.3874607   0.8994933   2.1401464
6-24 months                   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   JiVitA-4       BANGLADESH   0                    1                 1.1180886   0.8617777   1.4506317
6-24 months                   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   SAS-CompFeed   INDIA        0                    1                 1.2350543   0.5496390   2.7752022
6-24 months                   ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ZVITAMBO       ZIMBABWE     0                    1                 1.0297249   0.8264208   1.2830430


### Parameter: PAR


agecat                        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   EE             PAKISTAN     1                    NA                 0.0312536   -0.0463500    0.1088572
0-24 months (no birth wast)   GMS-Nepal      NEPAL        1                    NA                 0.0404854   -0.0080400    0.0890108
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   1                    NA                -0.0061277   -0.0147695    0.0025141
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   1                    NA                 0.0004885   -0.0038616    0.0048385
0-24 months (no birth wast)   MAL-ED         BANGLADESH   1                    NA                 0.0023233   -0.0180515    0.0226980
0-24 months (no birth wast)   SAS-CompFeed   INDIA        1                    NA                -0.0215937   -0.0805585    0.0373711
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE     1                    NA                -0.0000950   -0.0033453    0.0031553
0-6 months (no birth wast)    EE             PAKISTAN     1                    NA                -0.0213316   -0.0755601    0.0328969
0-6 months (no birth wast)    GMS-Nepal      NEPAL        1                    NA                 0.0117463   -0.0138786    0.0373713
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   1                    NA                -0.0259273   -0.0345423   -0.0173123
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   1                    NA                 0.0000081   -0.0016401    0.0016563
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE     1                    NA                -0.0000205   -0.0016691    0.0016280
6-24 months                   EE             PAKISTAN     1                    NA                 0.0073063   -0.0647016    0.0793141
6-24 months                   GMS-Nepal      NEPAL        1                    NA                 0.0403478   -0.0093699    0.0900655
6-24 months                   JiVitA-4       BANGLADESH   1                    NA                 0.0020641   -0.0022733    0.0064014
6-24 months                   SAS-CompFeed   INDIA        1                    NA                 0.0172644   -0.0415921    0.0761208
6-24 months                   ZVITAMBO       ZIMBABWE     1                    NA                 0.0003353   -0.0031533    0.0038240


### Parameter: PAF


agecat                        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   EE             PAKISTAN     1                    NA                 0.1787318   -0.4076757    0.5208545
0-24 months (no birth wast)   GMS-Nepal      NEPAL        1                    NA                 0.2055149   -0.0811718    0.4161829
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   1                    NA                -0.1710189   -0.4426878    0.0494928
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   1                    NA                 0.0113608   -0.0954097    0.1077243
0-24 months (no birth wast)   MAL-ED         BANGLADESH   1                    NA                 0.0507246   -0.5154506    0.4053757
0-24 months (no birth wast)   SAS-CompFeed   INDIA        1                    NA                -0.1839232   -0.7993501    0.2210109
0-24 months (no birth wast)   ZVITAMBO       ZIMBABWE     1                    NA                -0.0026924   -0.0991817    0.0853268
0-6 months (no birth wast)    EE             PAKISTAN     1                    NA                -0.4086687   -1.9178010    0.3199167
0-6 months (no birth wast)    GMS-Nepal      NEPAL        1                    NA                 0.2441558   -0.5155273    0.6230352
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   1                    NA                -1.5594522   -2.1928081   -1.0517348
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   1                    NA                 0.0019128   -0.4742472    0.3242802
0-6 months (no birth wast)    ZVITAMBO       ZIMBABWE     1                    NA                -0.0020880   -0.1846003    0.1523044
6-24 months                   EE             PAKISTAN     1                    NA                 0.0530435   -0.6444839    0.4547064
6-24 months                   GMS-Nepal      NEPAL        1                    NA                 0.2162641   -0.0988461    0.4410119
6-24 months                   JiVitA-4       BANGLADESH   1                    NA                 0.0468946   -0.0577266    0.1411675
6-24 months                   SAS-CompFeed   INDIA        1                    NA                 0.1789567   -0.7540977    0.6156930
6-24 months                   ZVITAMBO       ZIMBABWE     1                    NA                 0.0100764   -0.1004956    0.1095388
