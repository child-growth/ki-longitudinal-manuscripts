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

agecat      studyid      country                        perdiar6    swasted   n_cell     n
----------  -----------  -----------------------------  ---------  --------  -------  ----
Birth       CMIN         BANGLADESH                     0%                0        9    19
Birth       CMIN         BANGLADESH                     0%                1        1    19
Birth       CMIN         BANGLADESH                     (0%, 5%]          0        3    19
Birth       CMIN         BANGLADESH                     (0%, 5%]          1        0    19
Birth       CMIN         BANGLADESH                     >5%               0        6    19
Birth       CMIN         BANGLADESH                     >5%               1        0    19
Birth       CONTENT      PERU                           0%                0        0     2
Birth       CONTENT      PERU                           0%                1        0     2
Birth       CONTENT      PERU                           (0%, 5%]          0        1     2
Birth       CONTENT      PERU                           (0%, 5%]          1        0     2
Birth       CONTENT      PERU                           >5%               0        1     2
Birth       CONTENT      PERU                           >5%               1        0     2
Birth       EE           PAKISTAN                       0%                0      158   177
Birth       EE           PAKISTAN                       0%                1        6   177
Birth       EE           PAKISTAN                       (0%, 5%]          0       11   177
Birth       EE           PAKISTAN                       (0%, 5%]          1        0   177
Birth       EE           PAKISTAN                       >5%               0        2   177
Birth       EE           PAKISTAN                       >5%               1        0   177
Birth       MAL-ED       BANGLADESH                     0%                0       64   215
Birth       MAL-ED       BANGLADESH                     0%                1        1   215
Birth       MAL-ED       BANGLADESH                     (0%, 5%]          0       82   215
Birth       MAL-ED       BANGLADESH                     (0%, 5%]          1        4   215
Birth       MAL-ED       BANGLADESH                     >5%               0       61   215
Birth       MAL-ED       BANGLADESH                     >5%               1        3   215
Birth       MAL-ED       BRAZIL                         0%                0       54    62
Birth       MAL-ED       BRAZIL                         0%                1        0    62
Birth       MAL-ED       BRAZIL                         (0%, 5%]          0        6    62
Birth       MAL-ED       BRAZIL                         (0%, 5%]          1        0    62
Birth       MAL-ED       BRAZIL                         >5%               0        2    62
Birth       MAL-ED       BRAZIL                         >5%               1        0    62
Birth       MAL-ED       INDIA                          0%                0       11    45
Birth       MAL-ED       INDIA                          0%                1        0    45
Birth       MAL-ED       INDIA                          (0%, 5%]          0       23    45
Birth       MAL-ED       INDIA                          (0%, 5%]          1        0    45
Birth       MAL-ED       INDIA                          >5%               0       11    45
Birth       MAL-ED       INDIA                          >5%               1        0    45
Birth       MAL-ED       NEPAL                          0%                0        8    26
Birth       MAL-ED       NEPAL                          0%                1        0    26
Birth       MAL-ED       NEPAL                          (0%, 5%]          0        9    26
Birth       MAL-ED       NEPAL                          (0%, 5%]          1        1    26
Birth       MAL-ED       NEPAL                          >5%               0        8    26
Birth       MAL-ED       NEPAL                          >5%               1        0    26
Birth       MAL-ED       PERU                           0%                0       67   228
Birth       MAL-ED       PERU                           0%                1        0   228
Birth       MAL-ED       PERU                           (0%, 5%]          0       69   228
Birth       MAL-ED       PERU                           (0%, 5%]          1        0   228
Birth       MAL-ED       PERU                           >5%               0       92   228
Birth       MAL-ED       PERU                           >5%               1        0   228
Birth       MAL-ED       SOUTH AFRICA                   0%                0       85   112
Birth       MAL-ED       SOUTH AFRICA                   0%                1        0   112
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       23   112
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        0   112
Birth       MAL-ED       SOUTH AFRICA                   >5%               0        4   112
Birth       MAL-ED       SOUTH AFRICA                   >5%               1        0   112
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       51   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        0   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       44   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        0   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       20   115
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   115
Birth       NIH-Birth    BANGLADESH                     0%                0      147   572
Birth       NIH-Birth    BANGLADESH                     0%                1        3   572
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]          0      156   572
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]          1       15   572
Birth       NIH-Birth    BANGLADESH                     >5%               0      231   572
Birth       NIH-Birth    BANGLADESH                     >5%               1       20   572
Birth       NIH-Crypto   BANGLADESH                     0%                0      320   707
Birth       NIH-Crypto   BANGLADESH                     0%                1       25   707
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]          0      152   707
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]          1        8   707
Birth       NIH-Crypto   BANGLADESH                     >5%               0      188   707
Birth       NIH-Crypto   BANGLADESH                     >5%               1       14   707
Birth       PROVIDE      BANGLADESH                     0%                0      155   532
Birth       PROVIDE      BANGLADESH                     0%                1        5   532
Birth       PROVIDE      BANGLADESH                     (0%, 5%]          0      202   532
Birth       PROVIDE      BANGLADESH                     (0%, 5%]          1        4   532
Birth       PROVIDE      BANGLADESH                     >5%               0      162   532
Birth       PROVIDE      BANGLADESH                     >5%               1        4   532
6 months    CMIN         BANGLADESH                     0%                0       81   243
6 months    CMIN         BANGLADESH                     0%                1        0   243
6 months    CMIN         BANGLADESH                     (0%, 5%]          0       56   243
6 months    CMIN         BANGLADESH                     (0%, 5%]          1        2   243
6 months    CMIN         BANGLADESH                     >5%               0      101   243
6 months    CMIN         BANGLADESH                     >5%               1        3   243
6 months    CONTENT      PERU                           0%                0      115   215
6 months    CONTENT      PERU                           0%                1        0   215
6 months    CONTENT      PERU                           (0%, 5%]          0       43   215
6 months    CONTENT      PERU                           (0%, 5%]          1        0   215
6 months    CONTENT      PERU                           >5%               0       57   215
6 months    CONTENT      PERU                           >5%               1        0   215
6 months    EE           PAKISTAN                       0%                0      327   375
6 months    EE           PAKISTAN                       0%                1       11   375
6 months    EE           PAKISTAN                       (0%, 5%]          0       33   375
6 months    EE           PAKISTAN                       (0%, 5%]          1        2   375
6 months    EE           PAKISTAN                       >5%               0        2   375
6 months    EE           PAKISTAN                       >5%               1        0   375
6 months    MAL-ED       BANGLADESH                     0%                0       71   241
6 months    MAL-ED       BANGLADESH                     0%                1        0   241
6 months    MAL-ED       BANGLADESH                     (0%, 5%]          0       90   241
6 months    MAL-ED       BANGLADESH                     (0%, 5%]          1        2   241
6 months    MAL-ED       BANGLADESH                     >5%               0       78   241
6 months    MAL-ED       BANGLADESH                     >5%               1        0   241
6 months    MAL-ED       BRAZIL                         0%                0      192   209
6 months    MAL-ED       BRAZIL                         0%                1        0   209
6 months    MAL-ED       BRAZIL                         (0%, 5%]          0       15   209
6 months    MAL-ED       BRAZIL                         (0%, 5%]          1        0   209
6 months    MAL-ED       BRAZIL                         >5%               0        2   209
6 months    MAL-ED       BRAZIL                         >5%               1        0   209
6 months    MAL-ED       INDIA                          0%                0       49   236
6 months    MAL-ED       INDIA                          0%                1        1   236
6 months    MAL-ED       INDIA                          (0%, 5%]          0      124   236
6 months    MAL-ED       INDIA                          (0%, 5%]          1        3   236
6 months    MAL-ED       INDIA                          >5%               0       57   236
6 months    MAL-ED       INDIA                          >5%               1        2   236
6 months    MAL-ED       NEPAL                          0%                0       80   236
6 months    MAL-ED       NEPAL                          0%                1        0   236
6 months    MAL-ED       NEPAL                          (0%, 5%]          0       76   236
6 months    MAL-ED       NEPAL                          (0%, 5%]          1        0   236
6 months    MAL-ED       NEPAL                          >5%               0       80   236
6 months    MAL-ED       NEPAL                          >5%               1        0   236
6 months    MAL-ED       PERU                           0%                0       68   273
6 months    MAL-ED       PERU                           0%                1        0   273
6 months    MAL-ED       PERU                           (0%, 5%]          0       89   273
6 months    MAL-ED       PERU                           (0%, 5%]          1        0   273
6 months    MAL-ED       PERU                           >5%               0      116   273
6 months    MAL-ED       PERU                           >5%               1        0   273
6 months    MAL-ED       SOUTH AFRICA                   0%                0      188   254
6 months    MAL-ED       SOUTH AFRICA                   0%                1        2   254
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       54   254
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        1   254
6 months    MAL-ED       SOUTH AFRICA                   >5%               0        9   254
6 months    MAL-ED       SOUTH AFRICA                   >5%               1        0   254
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0      105   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        0   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       96   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        0   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       46   247
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   247
6 months    NIH-Birth    BANGLADESH                     0%                0      127   537
6 months    NIH-Birth    BANGLADESH                     0%                1        2   537
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]          0      167   537
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]          1        2   537
6 months    NIH-Birth    BANGLADESH                     >5%               0      237   537
6 months    NIH-Birth    BANGLADESH                     >5%               1        2   537
6 months    NIH-Crypto   BANGLADESH                     0%                0      341   715
6 months    NIH-Crypto   BANGLADESH                     0%                1        0   715
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]          0      167   715
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]          1        0   715
6 months    NIH-Crypto   BANGLADESH                     >5%               0      207   715
6 months    NIH-Crypto   BANGLADESH                     >5%               1        0   715
6 months    PROVIDE      BANGLADESH                     0%                0      155   603
6 months    PROVIDE      BANGLADESH                     0%                1        2   603
6 months    PROVIDE      BANGLADESH                     (0%, 5%]          0      245   603
6 months    PROVIDE      BANGLADESH                     (0%, 5%]          1        1   603
6 months    PROVIDE      BANGLADESH                     >5%               0      198   603
6 months    PROVIDE      BANGLADESH                     >5%               1        2   603
24 months   CMIN         BANGLADESH                     0%                0       84   243
24 months   CMIN         BANGLADESH                     0%                1        1   243
24 months   CMIN         BANGLADESH                     (0%, 5%]          0       58   243
24 months   CMIN         BANGLADESH                     (0%, 5%]          1        0   243
24 months   CMIN         BANGLADESH                     >5%               0       99   243
24 months   CMIN         BANGLADESH                     >5%               1        1   243
24 months   CONTENT      PERU                           0%                0       84   164
24 months   CONTENT      PERU                           0%                1        0   164
24 months   CONTENT      PERU                           (0%, 5%]          0       36   164
24 months   CONTENT      PERU                           (0%, 5%]          1        0   164
24 months   CONTENT      PERU                           >5%               0       44   164
24 months   CONTENT      PERU                           >5%               1        0   164
24 months   EE           PAKISTAN                       0%                0      149   168
24 months   EE           PAKISTAN                       0%                1        4   168
24 months   EE           PAKISTAN                       (0%, 5%]          0       14   168
24 months   EE           PAKISTAN                       (0%, 5%]          1        0   168
24 months   EE           PAKISTAN                       >5%               0        1   168
24 months   EE           PAKISTAN                       >5%               1        0   168
24 months   MAL-ED       BANGLADESH                     0%                0       64   212
24 months   MAL-ED       BANGLADESH                     0%                1        0   212
24 months   MAL-ED       BANGLADESH                     (0%, 5%]          0       83   212
24 months   MAL-ED       BANGLADESH                     (0%, 5%]          1        0   212
24 months   MAL-ED       BANGLADESH                     >5%               0       65   212
24 months   MAL-ED       BANGLADESH                     >5%               1        0   212
24 months   MAL-ED       BRAZIL                         0%                0      153   169
24 months   MAL-ED       BRAZIL                         0%                1        1   169
24 months   MAL-ED       BRAZIL                         (0%, 5%]          0       13   169
24 months   MAL-ED       BRAZIL                         (0%, 5%]          1        0   169
24 months   MAL-ED       BRAZIL                         >5%               0        2   169
24 months   MAL-ED       BRAZIL                         >5%               1        0   169
24 months   MAL-ED       INDIA                          0%                0       47   227
24 months   MAL-ED       INDIA                          0%                1        1   227
24 months   MAL-ED       INDIA                          (0%, 5%]          0      122   227
24 months   MAL-ED       INDIA                          (0%, 5%]          1        0   227
24 months   MAL-ED       INDIA                          >5%               0       56   227
24 months   MAL-ED       INDIA                          >5%               1        1   227
24 months   MAL-ED       NEPAL                          0%                0       77   228
24 months   MAL-ED       NEPAL                          0%                1        0   228
24 months   MAL-ED       NEPAL                          (0%, 5%]          0       75   228
24 months   MAL-ED       NEPAL                          (0%, 5%]          1        0   228
24 months   MAL-ED       NEPAL                          >5%               0       76   228
24 months   MAL-ED       NEPAL                          >5%               1        0   228
24 months   MAL-ED       PERU                           0%                0       51   201
24 months   MAL-ED       PERU                           0%                1        2   201
24 months   MAL-ED       PERU                           (0%, 5%]          0       64   201
24 months   MAL-ED       PERU                           (0%, 5%]          1        0   201
24 months   MAL-ED       PERU                           >5%               0       84   201
24 months   MAL-ED       PERU                           >5%               1        0   201
24 months   MAL-ED       SOUTH AFRICA                   0%                0      177   238
24 months   MAL-ED       SOUTH AFRICA                   0%                1        0   238
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       52   238
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        0   238
24 months   MAL-ED       SOUTH AFRICA                   >5%               0        9   238
24 months   MAL-ED       SOUTH AFRICA                   >5%               1        0   238
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       92   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        0   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       83   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        0   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       39   214
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   214
24 months   NIH-Birth    BANGLADESH                     0%                0      104   428
24 months   NIH-Birth    BANGLADESH                     0%                1        3   428
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]          0      124   428
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]          1        3   428
24 months   NIH-Birth    BANGLADESH                     >5%               0      190   428
24 months   NIH-Birth    BANGLADESH                     >5%               1        4   428
24 months   NIH-Crypto   BANGLADESH                     0%                0      274   514
24 months   NIH-Crypto   BANGLADESH                     0%                1        3   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]          0      106   514
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]          1        0   514
24 months   NIH-Crypto   BANGLADESH                     >5%               0      130   514
24 months   NIH-Crypto   BANGLADESH                     >5%               1        1   514
24 months   PROVIDE      BANGLADESH                     0%                0      152   579
24 months   PROVIDE      BANGLADESH                     0%                1        1   579
24 months   PROVIDE      BANGLADESH                     (0%, 5%]          0      227   579
24 months   PROVIDE      BANGLADESH                     (0%, 5%]          1        5   579
24 months   PROVIDE      BANGLADESH                     >5%               0      191   579
24 months   PROVIDE      BANGLADESH                     >5%               1        3   579


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
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/a7943586-cc72-4367-bd3f-a64507a61c83/b2cf99e3-ac78-4a44-accd-4e7e3c666004/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a7943586-cc72-4367-bd3f-a64507a61c83/b2cf99e3-ac78-4a44-accd-4e7e3c666004/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a7943586-cc72-4367-bd3f-a64507a61c83/b2cf99e3-ac78-4a44-accd-4e7e3c666004/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a7943586-cc72-4367-bd3f-a64507a61c83/b2cf99e3-ac78-4a44-accd-4e7e3c666004/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat   studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    NIH-Crypto   BANGLADESH   0%                   NA                0.0724638   0.0450877   0.0998399
Birth    NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0500000   0.0162058   0.0837942
Birth    NIH-Crypto   BANGLADESH   >5%                  NA                0.0693069   0.0342583   0.1043556


### Parameter: E(Y)


agecat   studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539


### Parameter: RR


agecat   studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth    NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth    NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.6900000   0.3181073   1.496665
Birth    NIH-Crypto   BANGLADESH   >5%                  0%                0.9564356   0.5087601   1.798036


### Parameter: PAR


agecat   studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth    NIH-Crypto   BANGLADESH   0%                   NA                -0.0059857   -0.0248455   0.0128741


### Parameter: PAF


agecat   studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth    NIH-Crypto   BANGLADESH   0%                   NA                -0.0900401   -0.4128831   0.1590335
