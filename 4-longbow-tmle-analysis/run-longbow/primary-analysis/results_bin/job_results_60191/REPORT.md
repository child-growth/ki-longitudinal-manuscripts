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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** perdiar6

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
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid      country                        perdiar6    sstunted   n_cell     n
----------  -----------  -----------------------------  ---------  ---------  -------  ----
Birth       CMIN         BANGLADESH                     0%                 0       10    26
Birth       CMIN         BANGLADESH                     0%                 1        6    26
Birth       CMIN         BANGLADESH                     (0%, 5%]           0        4    26
Birth       CMIN         BANGLADESH                     (0%, 5%]           1        0    26
Birth       CMIN         BANGLADESH                     >5%                0        6    26
Birth       CMIN         BANGLADESH                     >5%                1        0    26
Birth       CONTENT      PERU                           0%                 0        0     2
Birth       CONTENT      PERU                           0%                 1        0     2
Birth       CONTENT      PERU                           (0%, 5%]           0        1     2
Birth       CONTENT      PERU                           (0%, 5%]           1        0     2
Birth       CONTENT      PERU                           >5%                0        1     2
Birth       CONTENT      PERU                           >5%                1        0     2
Birth       EE           PAKISTAN                       0%                 0      179   240
Birth       EE           PAKISTAN                       0%                 1       44   240
Birth       EE           PAKISTAN                       (0%, 5%]           0       11   240
Birth       EE           PAKISTAN                       (0%, 5%]           1        4   240
Birth       EE           PAKISTAN                       >5%                0        2   240
Birth       EE           PAKISTAN                       >5%                1        0   240
Birth       MAL-ED       BANGLADESH                     0%                 0       69   231
Birth       MAL-ED       BANGLADESH                     0%                 1        3   231
Birth       MAL-ED       BANGLADESH                     (0%, 5%]           0       87   231
Birth       MAL-ED       BANGLADESH                     (0%, 5%]           1        3   231
Birth       MAL-ED       BANGLADESH                     >5%                0       66   231
Birth       MAL-ED       BANGLADESH                     >5%                1        3   231
Birth       MAL-ED       BRAZIL                         0%                 0       54    65
Birth       MAL-ED       BRAZIL                         0%                 1        3    65
Birth       MAL-ED       BRAZIL                         (0%, 5%]           0        6    65
Birth       MAL-ED       BRAZIL                         (0%, 5%]           1        0    65
Birth       MAL-ED       BRAZIL                         >5%                0        2    65
Birth       MAL-ED       BRAZIL                         >5%                1        0    65
Birth       MAL-ED       INDIA                          0%                 0       11    47
Birth       MAL-ED       INDIA                          0%                 1        1    47
Birth       MAL-ED       INDIA                          (0%, 5%]           0       23    47
Birth       MAL-ED       INDIA                          (0%, 5%]           1        1    47
Birth       MAL-ED       INDIA                          >5%                0       11    47
Birth       MAL-ED       INDIA                          >5%                1        0    47
Birth       MAL-ED       NEPAL                          0%                 0        8    27
Birth       MAL-ED       NEPAL                          0%                 1        0    27
Birth       MAL-ED       NEPAL                          (0%, 5%]           0       10    27
Birth       MAL-ED       NEPAL                          (0%, 5%]           1        0    27
Birth       MAL-ED       NEPAL                          >5%                0        8    27
Birth       MAL-ED       NEPAL                          >5%                1        1    27
Birth       MAL-ED       PERU                           0%                 0       66   233
Birth       MAL-ED       PERU                           0%                 1        1   233
Birth       MAL-ED       PERU                           (0%, 5%]           0       70   233
Birth       MAL-ED       PERU                           (0%, 5%]           1        2   233
Birth       MAL-ED       PERU                           >5%                0       93   233
Birth       MAL-ED       PERU                           >5%                1        1   233
Birth       MAL-ED       SOUTH AFRICA                   0%                 0       85   113
Birth       MAL-ED       SOUTH AFRICA                   0%                 1        1   113
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       23   113
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]           1        0   113
Birth       MAL-ED       SOUTH AFRICA                   >5%                0        4   113
Birth       MAL-ED       SOUTH AFRICA                   >5%                1        0   113
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       51   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1        8   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       44   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        1   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       20   125
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1        1   125
Birth       NIH-Birth    BANGLADESH                     0%                 0      155   605
Birth       NIH-Birth    BANGLADESH                     0%                 1        5   605
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]           0      174   605
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]           1        3   605
Birth       NIH-Birth    BANGLADESH                     >5%                0      257   605
Birth       NIH-Birth    BANGLADESH                     >5%                1       11   605
Birth       NIH-Crypto   BANGLADESH                     0%                 0      352   732
Birth       NIH-Crypto   BANGLADESH                     0%                 1        8   732
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]           0      162   732
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]           1        1   732
Birth       NIH-Crypto   BANGLADESH                     >5%                0      208   732
Birth       NIH-Crypto   BANGLADESH                     >5%                1        1   732
Birth       PROVIDE      BANGLADESH                     0%                 0      161   539
Birth       PROVIDE      BANGLADESH                     0%                 1        0   539
Birth       PROVIDE      BANGLADESH                     (0%, 5%]           0      207   539
Birth       PROVIDE      BANGLADESH                     (0%, 5%]           1        2   539
Birth       PROVIDE      BANGLADESH                     >5%                0      167   539
Birth       PROVIDE      BANGLADESH                     >5%                1        2   539
6 months    CMIN         BANGLADESH                     0%                 0       71   243
6 months    CMIN         BANGLADESH                     0%                 1       10   243
6 months    CMIN         BANGLADESH                     (0%, 5%]           0       49   243
6 months    CMIN         BANGLADESH                     (0%, 5%]           1       10   243
6 months    CMIN         BANGLADESH                     >5%                0       95   243
6 months    CMIN         BANGLADESH                     >5%                1        8   243
6 months    CONTENT      PERU                           0%                 0      114   215
6 months    CONTENT      PERU                           0%                 1        1   215
6 months    CONTENT      PERU                           (0%, 5%]           0       43   215
6 months    CONTENT      PERU                           (0%, 5%]           1        0   215
6 months    CONTENT      PERU                           >5%                0       57   215
6 months    CONTENT      PERU                           >5%                1        0   215
6 months    EE           PAKISTAN                       0%                 0      266   373
6 months    EE           PAKISTAN                       0%                 1       70   373
6 months    EE           PAKISTAN                       (0%, 5%]           0       25   373
6 months    EE           PAKISTAN                       (0%, 5%]           1       10   373
6 months    EE           PAKISTAN                       >5%                0        1   373
6 months    EE           PAKISTAN                       >5%                1        1   373
6 months    MAL-ED       BANGLADESH                     0%                 0       69   241
6 months    MAL-ED       BANGLADESH                     0%                 1        2   241
6 months    MAL-ED       BANGLADESH                     (0%, 5%]           0       90   241
6 months    MAL-ED       BANGLADESH                     (0%, 5%]           1        2   241
6 months    MAL-ED       BANGLADESH                     >5%                0       74   241
6 months    MAL-ED       BANGLADESH                     >5%                1        4   241
6 months    MAL-ED       BRAZIL                         0%                 0      192   209
6 months    MAL-ED       BRAZIL                         0%                 1        0   209
6 months    MAL-ED       BRAZIL                         (0%, 5%]           0       15   209
6 months    MAL-ED       BRAZIL                         (0%, 5%]           1        0   209
6 months    MAL-ED       BRAZIL                         >5%                0        2   209
6 months    MAL-ED       BRAZIL                         >5%                1        0   209
6 months    MAL-ED       INDIA                          0%                 0       48   236
6 months    MAL-ED       INDIA                          0%                 1        2   236
6 months    MAL-ED       INDIA                          (0%, 5%]           0      122   236
6 months    MAL-ED       INDIA                          (0%, 5%]           1        5   236
6 months    MAL-ED       INDIA                          >5%                0       57   236
6 months    MAL-ED       INDIA                          >5%                1        2   236
6 months    MAL-ED       NEPAL                          0%                 0       79   236
6 months    MAL-ED       NEPAL                          0%                 1        1   236
6 months    MAL-ED       NEPAL                          (0%, 5%]           0       76   236
6 months    MAL-ED       NEPAL                          (0%, 5%]           1        0   236
6 months    MAL-ED       NEPAL                          >5%                0       80   236
6 months    MAL-ED       NEPAL                          >5%                1        0   236
6 months    MAL-ED       PERU                           0%                 0       63   273
6 months    MAL-ED       PERU                           0%                 1        5   273
6 months    MAL-ED       PERU                           (0%, 5%]           0       88   273
6 months    MAL-ED       PERU                           (0%, 5%]           1        1   273
6 months    MAL-ED       PERU                           >5%                0      112   273
6 months    MAL-ED       PERU                           >5%                1        4   273
6 months    MAL-ED       SOUTH AFRICA                   0%                 0      185   254
6 months    MAL-ED       SOUTH AFRICA                   0%                 1        5   254
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       54   254
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]           1        1   254
6 months    MAL-ED       SOUTH AFRICA                   >5%                0        9   254
6 months    MAL-ED       SOUTH AFRICA                   >5%                1        0   254
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       98   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1        7   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       90   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        6   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       45   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1        1   247
6 months    NIH-Birth    BANGLADESH                     0%                 0      120   537
6 months    NIH-Birth    BANGLADESH                     0%                 1        9   537
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]           0      159   537
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]           1       10   537
6 months    NIH-Birth    BANGLADESH                     >5%                0      223   537
6 months    NIH-Birth    BANGLADESH                     >5%                1       16   537
6 months    NIH-Crypto   BANGLADESH                     0%                 0      335   715
6 months    NIH-Crypto   BANGLADESH                     0%                 1        6   715
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]           0      156   715
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]           1       11   715
6 months    NIH-Crypto   BANGLADESH                     >5%                0      201   715
6 months    NIH-Crypto   BANGLADESH                     >5%                1        6   715
6 months    PROVIDE      BANGLADESH                     0%                 0      154   604
6 months    PROVIDE      BANGLADESH                     0%                 1        4   604
6 months    PROVIDE      BANGLADESH                     (0%, 5%]           0      240   604
6 months    PROVIDE      BANGLADESH                     (0%, 5%]           1        6   604
6 months    PROVIDE      BANGLADESH                     >5%                0      196   604
6 months    PROVIDE      BANGLADESH                     >5%                1        4   604
24 months   CMIN         BANGLADESH                     0%                 0       65   242
24 months   CMIN         BANGLADESH                     0%                 1       20   242
24 months   CMIN         BANGLADESH                     (0%, 5%]           0       34   242
24 months   CMIN         BANGLADESH                     (0%, 5%]           1       24   242
24 months   CMIN         BANGLADESH                     >5%                0       75   242
24 months   CMIN         BANGLADESH                     >5%                1       24   242
24 months   CONTENT      PERU                           0%                 0       83   164
24 months   CONTENT      PERU                           0%                 1        1   164
24 months   CONTENT      PERU                           (0%, 5%]           0       36   164
24 months   CONTENT      PERU                           (0%, 5%]           1        0   164
24 months   CONTENT      PERU                           >5%                0       44   164
24 months   CONTENT      PERU                           >5%                1        0   164
24 months   EE           PAKISTAN                       0%                 0      100   167
24 months   EE           PAKISTAN                       0%                 1       52   167
24 months   EE           PAKISTAN                       (0%, 5%]           0        7   167
24 months   EE           PAKISTAN                       (0%, 5%]           1        7   167
24 months   EE           PAKISTAN                       >5%                0        1   167
24 months   EE           PAKISTAN                       >5%                1        0   167
24 months   MAL-ED       BANGLADESH                     0%                 0       53   212
24 months   MAL-ED       BANGLADESH                     0%                 1       11   212
24 months   MAL-ED       BANGLADESH                     (0%, 5%]           0       72   212
24 months   MAL-ED       BANGLADESH                     (0%, 5%]           1       11   212
24 months   MAL-ED       BANGLADESH                     >5%                0       59   212
24 months   MAL-ED       BANGLADESH                     >5%                1        6   212
24 months   MAL-ED       BRAZIL                         0%                 0      153   169
24 months   MAL-ED       BRAZIL                         0%                 1        1   169
24 months   MAL-ED       BRAZIL                         (0%, 5%]           0       13   169
24 months   MAL-ED       BRAZIL                         (0%, 5%]           1        0   169
24 months   MAL-ED       BRAZIL                         >5%                0        2   169
24 months   MAL-ED       BRAZIL                         >5%                1        0   169
24 months   MAL-ED       INDIA                          0%                 0       42   227
24 months   MAL-ED       INDIA                          0%                 1        6   227
24 months   MAL-ED       INDIA                          (0%, 5%]           0      108   227
24 months   MAL-ED       INDIA                          (0%, 5%]           1       14   227
24 months   MAL-ED       INDIA                          >5%                0       47   227
24 months   MAL-ED       INDIA                          >5%                1       10   227
24 months   MAL-ED       NEPAL                          0%                 0       75   228
24 months   MAL-ED       NEPAL                          0%                 1        2   228
24 months   MAL-ED       NEPAL                          (0%, 5%]           0       72   228
24 months   MAL-ED       NEPAL                          (0%, 5%]           1        3   228
24 months   MAL-ED       NEPAL                          >5%                0       74   228
24 months   MAL-ED       NEPAL                          >5%                1        2   228
24 months   MAL-ED       PERU                           0%                 0       46   201
24 months   MAL-ED       PERU                           0%                 1        7   201
24 months   MAL-ED       PERU                           (0%, 5%]           0       58   201
24 months   MAL-ED       PERU                           (0%, 5%]           1        6   201
24 months   MAL-ED       PERU                           >5%                0       82   201
24 months   MAL-ED       PERU                           >5%                1        2   201
24 months   MAL-ED       SOUTH AFRICA                   0%                 0      161   238
24 months   MAL-ED       SOUTH AFRICA                   0%                 1       16   238
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       42   238
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]           1       10   238
24 months   MAL-ED       SOUTH AFRICA                   >5%                0        8   238
24 months   MAL-ED       SOUTH AFRICA                   >5%                1        1   238
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       61   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1       31   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       56   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       27   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       27   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1       12   214
24 months   NIH-Birth    BANGLADESH                     0%                 0       83   429
24 months   NIH-Birth    BANGLADESH                     0%                 1       24   429
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]           0      102   429
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]           1       26   429
24 months   NIH-Birth    BANGLADESH                     >5%                0      149   429
24 months   NIH-Birth    BANGLADESH                     >5%                1       45   429
24 months   NIH-Crypto   BANGLADESH                     0%                 0      261   514
24 months   NIH-Crypto   BANGLADESH                     0%                 1       16   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]           0       95   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]           1       11   514
24 months   NIH-Crypto   BANGLADESH                     >5%                0      122   514
24 months   NIH-Crypto   BANGLADESH                     >5%                1        9   514
24 months   PROVIDE      BANGLADESH                     0%                 0      137   578
24 months   PROVIDE      BANGLADESH                     0%                 1       15   578
24 months   PROVIDE      BANGLADESH                     (0%, 5%]           0      213   578
24 months   PROVIDE      BANGLADESH                     (0%, 5%]           1       19   578
24 months   PROVIDE      BANGLADESH                     >5%                0      176   578
24 months   PROVIDE      BANGLADESH                     >5%                1       18   578


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

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
![](/tmp/f4e885ef-f6f6-4d90-b1f9-565ca7f60860/e830bd40-06ea-4cf1-b4f5-d3920ead0749/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f4e885ef-f6f6-4d90-b1f9-565ca7f60860/e830bd40-06ea-4cf1-b4f5-d3920ead0749/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f4e885ef-f6f6-4d90-b1f9-565ca7f60860/e830bd40-06ea-4cf1-b4f5-d3920ead0749/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f4e885ef-f6f6-4d90-b1f9-565ca7f60860/e830bd40-06ea-4cf1-b4f5-d3920ead0749/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    CMIN         BANGLADESH                     0%                   NA                0.1234568   0.0516699   0.1952437
6 months    CMIN         BANGLADESH                     (0%, 5%]             NA                0.1694915   0.0735595   0.2654235
6 months    CMIN         BANGLADESH                     >5%                  NA                0.0776699   0.0258741   0.1294657
6 months    NIH-Birth    BANGLADESH                     0%                   NA                0.0697674   0.0257647   0.1137702
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.0591716   0.0235657   0.0947774
6 months    NIH-Birth    BANGLADESH                     >5%                  NA                0.0669456   0.0352303   0.0986609
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                0.0175953   0.0036310   0.0315596
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.0658683   0.0282208   0.1035157
6 months    NIH-Crypto   BANGLADESH                     >5%                  NA                0.0289855   0.0061153   0.0518557
24 months   CMIN         BANGLADESH                     0%                   NA                0.2156068   0.1236111   0.3076024
24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                0.3884519   0.2659513   0.5109525
24 months   CMIN         BANGLADESH                     >5%                  NA                0.2340825   0.1489151   0.3192500
24 months   MAL-ED       BANGLADESH                     0%                   NA                0.1718750   0.0792263   0.2645237
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1325301   0.0594128   0.2056474
24 months   MAL-ED       BANGLADESH                     >5%                  NA                0.0923077   0.0217724   0.1628430
24 months   MAL-ED       INDIA                          0%                   NA                0.1250000   0.0312340   0.2187660
24 months   MAL-ED       INDIA                          (0%, 5%]             NA                0.1147541   0.0580724   0.1714358
24 months   MAL-ED       INDIA                          >5%                  NA                0.1754386   0.0764823   0.2743949
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.3182669   0.2239129   0.4126209
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.3399025   0.2358136   0.4439914
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.3096457   0.1504927   0.4687987
24 months   NIH-Birth    BANGLADESH                     0%                   NA                0.2294606   0.1517361   0.3071852
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.2203701   0.1479817   0.2927585
24 months   NIH-Birth    BANGLADESH                     >5%                  NA                0.2229563   0.1641860   0.2817265
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                0.0577617   0.0302618   0.0852617
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1037736   0.0456610   0.1618862
24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                0.0687023   0.0253447   0.1120599
24 months   PROVIDE      BANGLADESH                     0%                   NA                0.1005310   0.0524675   0.1485945
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.0820532   0.0466858   0.1174206
24 months   PROVIDE      BANGLADESH                     >5%                  NA                0.0930305   0.0521797   0.1338813


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    CMIN         BANGLADESH                     NA                   NA                0.1152263   0.0749980   0.1554547
6 months    NIH-Birth    BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
24 months   CMIN         BANGLADESH                     NA                   NA                0.2809917   0.2242434   0.3377401
24 months   MAL-ED       BANGLADESH                     NA                   NA                0.1320755   0.0863920   0.1777589
24 months   MAL-ED       INDIA                          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   NIH-Birth    BANGLADESH                     NA                   NA                0.2214452   0.1821080   0.2607825
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.0700389   0.0479542   0.0921236
24 months   PROVIDE      BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122


### Parameter: RR


agecat      studyid      country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
6 months    CMIN         BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
6 months    CMIN         BANGLADESH                     (0%, 5%]             0%                1.3728814   0.6098466   3.090619
6 months    CMIN         BANGLADESH                     >5%                  0%                0.6291262   0.2597075   1.524022
6 months    NIH-Birth    BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                0.8481262   0.3547163   2.027869
6 months    NIH-Birth    BANGLADESH                     >5%                  0%                0.9595537   0.4360054   2.111770
6 months    NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                3.7435130   1.4077570   9.954765
6 months    NIH-Crypto   BANGLADESH                     >5%                  0%                1.6473430   0.5379715   5.044392
24 months   CMIN         BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                1.8016684   1.0574232   3.069735
24 months   CMIN         BANGLADESH                     >5%                  0%                1.0856920   0.6206557   1.899164
24 months   MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.7710843   0.3565481   1.667576
24 months   MAL-ED       BANGLADESH                     >5%                  0%                0.5370629   0.2108158   1.368193
24 months   MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.000000
24 months   MAL-ED       INDIA                          (0%, 5%]             0%                0.9180328   0.3739364   2.253817
24 months   MAL-ED       INDIA                          >5%                  0%                1.4035088   0.5490542   3.587691
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.0679795   0.7000953   1.629178
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                0.9729121   0.5353824   1.768004
24 months   NIH-Birth    BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                0.9603830   0.6030163   1.529537
24 months   NIH-Birth    BANGLADESH                     >5%                  0%                0.9716538   0.6357904   1.484941
24 months   NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.7965802   0.8614509   3.746818
24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                1.1894084   0.5395188   2.622137
24 months   PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                0.8161979   0.4286774   1.554033
24 months   PROVIDE      BANGLADESH                     >5%                  0%                0.9253912   0.4832422   1.772090


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    CMIN         BANGLADESH                     0%                   NA                -0.0082305   -0.0659895   0.0495286
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.0045905   -0.0425728   0.0333917
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                 0.0145725    0.0012871   0.0278579
24 months   CMIN         BANGLADESH                     0%                   NA                 0.0653850   -0.0110709   0.1418408
24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0397995   -0.1138812   0.0342822
24 months   MAL-ED       INDIA                          0%                   NA                 0.0071586   -0.0766467   0.0909639
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0088359   -0.0625101   0.0801819
24 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.0080154   -0.0753833   0.0593525
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0122772   -0.0084323   0.0329866
24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0105656   -0.0512776   0.0301464


### Parameter: PAF


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    CMIN         BANGLADESH                     0%                   NA                -0.0714286   -0.7098807   0.3286320
6 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.0704319   -0.8443502   0.3787381
6 months    NIH-Crypto   BANGLADESH                     0%                   NA                 0.4530154   -0.0802446   0.7230330
24 months   CMIN         BANGLADESH                     0%                   NA                 0.2326936   -0.0950200   0.4623302
24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.3013393   -0.9935094   0.1505011
24 months   MAL-ED       INDIA                          0%                   NA                 0.0541667   -0.8488415   0.5161290
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0270126   -0.2174474   0.2223858
24 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.0361958   -0.3899485   0.2275240
24 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.1752908   -0.1738390   0.4205805
24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.1174409   -0.6742834   0.2542038
