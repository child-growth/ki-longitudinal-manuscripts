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

**Intervention Variable:** impsan

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
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid      country                        impsan    wast_rec90d   n_cell      n
------------  -----------  -----------------------------  -------  ------------  -------  -----
0-24 months   COHORTS      GUATEMALA                      1                   0       10    264
0-24 months   COHORTS      GUATEMALA                      1                   1       14    264
0-24 months   COHORTS      GUATEMALA                      0                   0      154    264
0-24 months   COHORTS      GUATEMALA                      0                   1       86    264
0-24 months   COHORTS      INDIA                          1                   0      452   1962
0-24 months   COHORTS      INDIA                          1                   1      178   1962
0-24 months   COHORTS      INDIA                          0                   0     1050   1962
0-24 months   COHORTS      INDIA                          0                   1      282   1962
0-24 months   COHORTS      PHILIPPINES                    1                   0       22    683
0-24 months   COHORTS      PHILIPPINES                    1                   1       58    683
0-24 months   COHORTS      PHILIPPINES                    0                   0      242    683
0-24 months   COHORTS      PHILIPPINES                    0                   1      361    683
0-24 months   CONTENT      PERU                           1                   0        1      7
0-24 months   CONTENT      PERU                           1                   1        6      7
0-24 months   CONTENT      PERU                           0                   0        0      7
0-24 months   CONTENT      PERU                           0                   1        0      7
0-24 months   JiVitA-3     BANGLADESH                     1                   0     2903   7560
0-24 months   JiVitA-3     BANGLADESH                     1                   1     2228   7560
0-24 months   JiVitA-3     BANGLADESH                     0                   0     1463   7560
0-24 months   JiVitA-3     BANGLADESH                     0                   1      966   7560
0-24 months   JiVitA-4     BANGLADESH                     1                   0     1115   2062
0-24 months   JiVitA-4     BANGLADESH                     1                   1      390   2062
0-24 months   JiVitA-4     BANGLADESH                     0                   0      415   2062
0-24 months   JiVitA-4     BANGLADESH                     0                   1      142   2062
0-24 months   LCNI-5       MALAWI                         1                   0        0     77
0-24 months   LCNI-5       MALAWI                         1                   1        0     77
0-24 months   LCNI-5       MALAWI                         0                   0       65     77
0-24 months   LCNI-5       MALAWI                         0                   1       12     77
0-24 months   MAL-ED       BANGLADESH                     1                   0       33    121
0-24 months   MAL-ED       BANGLADESH                     1                   1       67    121
0-24 months   MAL-ED       BANGLADESH                     0                   0       10    121
0-24 months   MAL-ED       BANGLADESH                     0                   1       11    121
0-24 months   MAL-ED       BRAZIL                         1                   0        6     24
0-24 months   MAL-ED       BRAZIL                         1                   1       17     24
0-24 months   MAL-ED       BRAZIL                         0                   0        0     24
0-24 months   MAL-ED       BRAZIL                         0                   1        1     24
0-24 months   MAL-ED       INDIA                          1                   0       25    172
0-24 months   MAL-ED       INDIA                          1                   1       43    172
0-24 months   MAL-ED       INDIA                          0                   0       39    172
0-24 months   MAL-ED       INDIA                          0                   1       65    172
0-24 months   MAL-ED       NEPAL                          1                   0       19     97
0-24 months   MAL-ED       NEPAL                          1                   1       78     97
0-24 months   MAL-ED       NEPAL                          0                   0        0     97
0-24 months   MAL-ED       NEPAL                          0                   1        0     97
0-24 months   MAL-ED       PERU                           1                   0        3     33
0-24 months   MAL-ED       PERU                           1                   1        6     33
0-24 months   MAL-ED       PERU                           0                   0        3     33
0-24 months   MAL-ED       PERU                           0                   1       21     33
0-24 months   MAL-ED       SOUTH AFRICA                   1                   0        1     79
0-24 months   MAL-ED       SOUTH AFRICA                   1                   1        1     79
0-24 months   MAL-ED       SOUTH AFRICA                   0                   0       12     79
0-24 months   MAL-ED       SOUTH AFRICA                   0                   1       65     79
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     50
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     50
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        9     50
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       41     50
0-24 months   NIH-Birth    BANGLADESH                     1                   0       66    421
0-24 months   NIH-Birth    BANGLADESH                     1                   1       81    421
0-24 months   NIH-Birth    BANGLADESH                     0                   0      136    421
0-24 months   NIH-Birth    BANGLADESH                     0                   1      138    421
0-24 months   NIH-Crypto   BANGLADESH                     1                   0       96    306
0-24 months   NIH-Crypto   BANGLADESH                     1                   1      169    306
0-24 months   NIH-Crypto   BANGLADESH                     0                   0       18    306
0-24 months   NIH-Crypto   BANGLADESH                     0                   1       23    306
0-24 months   PROVIDE      BANGLADESH                     1                   0        9     15
0-24 months   PROVIDE      BANGLADESH                     1                   1        6     15
0-24 months   PROVIDE      BANGLADESH                     0                   0        0     15
0-24 months   PROVIDE      BANGLADESH                     0                   1        0     15
0-6 months    COHORTS      GUATEMALA                      1                   0        1    125
0-6 months    COHORTS      GUATEMALA                      1                   1       14    125
0-6 months    COHORTS      GUATEMALA                      0                   0       30    125
0-6 months    COHORTS      GUATEMALA                      0                   1       80    125
0-6 months    COHORTS      INDIA                          1                   0      269   1290
0-6 months    COHORTS      INDIA                          1                   1      178   1290
0-6 months    COHORTS      INDIA                          0                   0      561   1290
0-6 months    COHORTS      INDIA                          0                   1      282   1290
0-6 months    COHORTS      PHILIPPINES                    1                   0        8    280
0-6 months    COHORTS      PHILIPPINES                    1                   1       41    280
0-6 months    COHORTS      PHILIPPINES                    0                   0       58    280
0-6 months    COHORTS      PHILIPPINES                    0                   1      173    280
0-6 months    CONTENT      PERU                           1                   0        0      4
0-6 months    CONTENT      PERU                           1                   1        4      4
0-6 months    CONTENT      PERU                           0                   0        0      4
0-6 months    CONTENT      PERU                           0                   1        0      4
0-6 months    JiVitA-3     BANGLADESH                     1                   0      980   4728
0-6 months    JiVitA-3     BANGLADESH                     1                   1     2228   4728
0-6 months    JiVitA-3     BANGLADESH                     0                   0      554   4728
0-6 months    JiVitA-3     BANGLADESH                     0                   1      966   4728
0-6 months    JiVitA-4     BANGLADESH                     1                   0      172    548
0-6 months    JiVitA-4     BANGLADESH                     1                   1      233    548
0-6 months    JiVitA-4     BANGLADESH                     0                   0       70    548
0-6 months    JiVitA-4     BANGLADESH                     0                   1       73    548
0-6 months    LCNI-5       MALAWI                         1                   0        0      4
0-6 months    LCNI-5       MALAWI                         1                   1        0      4
0-6 months    LCNI-5       MALAWI                         0                   0        4      4
0-6 months    LCNI-5       MALAWI                         0                   1        0      4
0-6 months    MAL-ED       BANGLADESH                     1                   0       11     60
0-6 months    MAL-ED       BANGLADESH                     1                   1       41     60
0-6 months    MAL-ED       BANGLADESH                     0                   0        1     60
0-6 months    MAL-ED       BANGLADESH                     0                   1        7     60
0-6 months    MAL-ED       BRAZIL                         1                   0        1     15
0-6 months    MAL-ED       BRAZIL                         1                   1       13     15
0-6 months    MAL-ED       BRAZIL                         0                   0        0     15
0-6 months    MAL-ED       BRAZIL                         0                   1        1     15
0-6 months    MAL-ED       INDIA                          1                   0       11     79
0-6 months    MAL-ED       INDIA                          1                   1       26     79
0-6 months    MAL-ED       INDIA                          0                   0       11     79
0-6 months    MAL-ED       INDIA                          0                   1       31     79
0-6 months    MAL-ED       NEPAL                          1                   0        8     47
0-6 months    MAL-ED       NEPAL                          1                   1       39     47
0-6 months    MAL-ED       NEPAL                          0                   0        0     47
0-6 months    MAL-ED       NEPAL                          0                   1        0     47
0-6 months    MAL-ED       PERU                           1                   0        0      9
0-6 months    MAL-ED       PERU                           1                   1        1      9
0-6 months    MAL-ED       PERU                           0                   0        0      9
0-6 months    MAL-ED       PERU                           0                   1        8      9
0-6 months    MAL-ED       SOUTH AFRICA                   1                   0        0     28
0-6 months    MAL-ED       SOUTH AFRICA                   1                   1        0     28
0-6 months    MAL-ED       SOUTH AFRICA                   0                   0        4     28
0-6 months    MAL-ED       SOUTH AFRICA                   0                   1       24     28
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     14
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     14
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        1     14
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       13     14
0-6 months    NIH-Birth    BANGLADESH                     1                   0       22    223
0-6 months    NIH-Birth    BANGLADESH                     1                   1       62    223
0-6 months    NIH-Birth    BANGLADESH                     0                   0       42    223
0-6 months    NIH-Birth    BANGLADESH                     0                   1       97    223
0-6 months    NIH-Crypto   BANGLADESH                     1                   0       16    195
0-6 months    NIH-Crypto   BANGLADESH                     1                   1      153    195
0-6 months    NIH-Crypto   BANGLADESH                     0                   0        4    195
0-6 months    NIH-Crypto   BANGLADESH                     0                   1       22    195
0-6 months    PROVIDE      BANGLADESH                     1                   0        8     13
0-6 months    PROVIDE      BANGLADESH                     1                   1        5     13
0-6 months    PROVIDE      BANGLADESH                     0                   0        0     13
0-6 months    PROVIDE      BANGLADESH                     0                   1        0     13
6-24 months   COHORTS      GUATEMALA                      1                   0        9    139
6-24 months   COHORTS      GUATEMALA                      1                   1        0    139
6-24 months   COHORTS      GUATEMALA                      0                   0      124    139
6-24 months   COHORTS      GUATEMALA                      0                   1        6    139
6-24 months   COHORTS      INDIA                          1                   0      183    672
6-24 months   COHORTS      INDIA                          1                   1        0    672
6-24 months   COHORTS      INDIA                          0                   0      489    672
6-24 months   COHORTS      INDIA                          0                   1        0    672
6-24 months   COHORTS      PHILIPPINES                    1                   0       14    403
6-24 months   COHORTS      PHILIPPINES                    1                   1       17    403
6-24 months   COHORTS      PHILIPPINES                    0                   0      184    403
6-24 months   COHORTS      PHILIPPINES                    0                   1      188    403
6-24 months   CONTENT      PERU                           1                   0        1      3
6-24 months   CONTENT      PERU                           1                   1        2      3
6-24 months   CONTENT      PERU                           0                   0        0      3
6-24 months   CONTENT      PERU                           0                   1        0      3
6-24 months   JiVitA-3     BANGLADESH                     1                   0     1923   2832
6-24 months   JiVitA-3     BANGLADESH                     1                   1        0   2832
6-24 months   JiVitA-3     BANGLADESH                     0                   0      909   2832
6-24 months   JiVitA-3     BANGLADESH                     0                   1        0   2832
6-24 months   JiVitA-4     BANGLADESH                     1                   0      943   1514
6-24 months   JiVitA-4     BANGLADESH                     1                   1      157   1514
6-24 months   JiVitA-4     BANGLADESH                     0                   0      345   1514
6-24 months   JiVitA-4     BANGLADESH                     0                   1       69   1514
6-24 months   LCNI-5       MALAWI                         1                   0        0     73
6-24 months   LCNI-5       MALAWI                         1                   1        0     73
6-24 months   LCNI-5       MALAWI                         0                   0       61     73
6-24 months   LCNI-5       MALAWI                         0                   1       12     73
6-24 months   MAL-ED       BANGLADESH                     1                   0       22     61
6-24 months   MAL-ED       BANGLADESH                     1                   1       26     61
6-24 months   MAL-ED       BANGLADESH                     0                   0        9     61
6-24 months   MAL-ED       BANGLADESH                     0                   1        4     61
6-24 months   MAL-ED       BRAZIL                         1                   0        5      9
6-24 months   MAL-ED       BRAZIL                         1                   1        4      9
6-24 months   MAL-ED       BRAZIL                         0                   0        0      9
6-24 months   MAL-ED       BRAZIL                         0                   1        0      9
6-24 months   MAL-ED       INDIA                          1                   0       14     93
6-24 months   MAL-ED       INDIA                          1                   1       17     93
6-24 months   MAL-ED       INDIA                          0                   0       28     93
6-24 months   MAL-ED       INDIA                          0                   1       34     93
6-24 months   MAL-ED       NEPAL                          1                   0       11     50
6-24 months   MAL-ED       NEPAL                          1                   1       39     50
6-24 months   MAL-ED       NEPAL                          0                   0        0     50
6-24 months   MAL-ED       NEPAL                          0                   1        0     50
6-24 months   MAL-ED       PERU                           1                   0        3     24
6-24 months   MAL-ED       PERU                           1                   1        5     24
6-24 months   MAL-ED       PERU                           0                   0        3     24
6-24 months   MAL-ED       PERU                           0                   1       13     24
6-24 months   MAL-ED       SOUTH AFRICA                   1                   0        1     51
6-24 months   MAL-ED       SOUTH AFRICA                   1                   1        1     51
6-24 months   MAL-ED       SOUTH AFRICA                   0                   0        8     51
6-24 months   MAL-ED       SOUTH AFRICA                   0                   1       41     51
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     36
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     36
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        8     36
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       28     36
6-24 months   NIH-Birth    BANGLADESH                     1                   0       44    198
6-24 months   NIH-Birth    BANGLADESH                     1                   1       19    198
6-24 months   NIH-Birth    BANGLADESH                     0                   0       94    198
6-24 months   NIH-Birth    BANGLADESH                     0                   1       41    198
6-24 months   NIH-Crypto   BANGLADESH                     1                   0       80    111
6-24 months   NIH-Crypto   BANGLADESH                     1                   1       16    111
6-24 months   NIH-Crypto   BANGLADESH                     0                   0       14    111
6-24 months   NIH-Crypto   BANGLADESH                     0                   1        1    111
6-24 months   PROVIDE      BANGLADESH                     1                   0        1      2
6-24 months   PROVIDE      BANGLADESH                     1                   1        1      2
6-24 months   PROVIDE      BANGLADESH                     0                   0        0      2
6-24 months   PROVIDE      BANGLADESH                     0                   1        0      2


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/49a8df92-5be4-4ee1-a51c-33546c9db5c8/a7176248-98e3-4bff-b277-f52b5bf6017a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/49a8df92-5be4-4ee1-a51c-33546c9db5c8/a7176248-98e3-4bff-b277-f52b5bf6017a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/49a8df92-5be4-4ee1-a51c-33546c9db5c8/a7176248-98e3-4bff-b277-f52b5bf6017a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/49a8df92-5be4-4ee1-a51c-33546c9db5c8/a7176248-98e3-4bff-b277-f52b5bf6017a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS      GUATEMALA     1                    NA                0.5511773   0.2878121   0.8145425
0-24 months   COHORTS      GUATEMALA     0                    NA                0.3621886   0.2991975   0.4251797
0-24 months   COHORTS      INDIA         1                    NA                0.2736646   0.2343233   0.3130058
0-24 months   COHORTS      INDIA         0                    NA                0.2181238   0.1956156   0.2406320
0-24 months   COHORTS      PHILIPPINES   1                    NA                0.7318640   0.6151529   0.8485751
0-24 months   COHORTS      PHILIPPINES   0                    NA                0.5979340   0.5574488   0.6384191
0-24 months   JiVitA-3     BANGLADESH    1                    NA                0.4278786   0.4132078   0.4425493
0-24 months   JiVitA-3     BANGLADESH    0                    NA                0.4110076   0.3875029   0.4345123
0-24 months   JiVitA-4     BANGLADESH    1                    NA                0.2582153   0.2347220   0.2817086
0-24 months   JiVitA-4     BANGLADESH    0                    NA                0.2692740   0.2266671   0.3118809
0-24 months   MAL-ED       BANGLADESH    1                    NA                0.6749116   0.5791755   0.7706476
0-24 months   MAL-ED       BANGLADESH    0                    NA                0.6165538   0.4241916   0.8089161
0-24 months   MAL-ED       INDIA         1                    NA                0.6293134   0.5013453   0.7572815
0-24 months   MAL-ED       INDIA         0                    NA                0.6252907   0.5196511   0.7309303
0-24 months   NIH-Birth    BANGLADESH    1                    NA                0.5574819   0.4701363   0.6448276
0-24 months   NIH-Birth    BANGLADESH    0                    NA                0.5078893   0.4447655   0.5710132
0-24 months   NIH-Crypto   BANGLADESH    1                    NA                0.6382102   0.5807895   0.6956310
0-24 months   NIH-Crypto   BANGLADESH    0                    NA                0.5510227   0.3844747   0.7175707
0-6 months    COHORTS      INDIA         1                    NA                0.3947092   0.3466121   0.4428062
0-6 months    COHORTS      INDIA         0                    NA                0.3388788   0.3061326   0.3716249
0-6 months    COHORTS      PHILIPPINES   1                    NA                0.8367347   0.7280039   0.9454655
0-6 months    COHORTS      PHILIPPINES   0                    NA                0.7489177   0.6935154   0.8043201
0-6 months    JiVitA-3     BANGLADESH    1                    NA                0.6838803   0.6663318   0.7014288
0-6 months    JiVitA-3     BANGLADESH    0                    NA                0.6659381   0.6388150   0.6930612
0-6 months    JiVitA-4     BANGLADESH    1                    NA                0.5701421   0.5206625   0.6196217
0-6 months    JiVitA-4     BANGLADESH    0                    NA                0.5008223   0.4151952   0.5864495
0-6 months    MAL-ED       INDIA         1                    NA                0.6953879   0.5485635   0.8422123
0-6 months    MAL-ED       INDIA         0                    NA                0.7395992   0.5987985   0.8803999
0-6 months    NIH-Birth    BANGLADESH    1                    NA                0.7488462   0.6542258   0.8434665
0-6 months    NIH-Birth    BANGLADESH    0                    NA                0.7045969   0.6278735   0.7813203
6-24 months   COHORTS      PHILIPPINES   1                    NA                0.5362259   0.2897000   0.7827519
6-24 months   COHORTS      PHILIPPINES   0                    NA                0.5059073   0.4519047   0.5599100
6-24 months   JiVitA-4     BANGLADESH    1                    NA                0.1424887   0.1212682   0.1637093
6-24 months   JiVitA-4     BANGLADESH    0                    NA                0.1729156   0.1353690   0.2104623
6-24 months   MAL-ED       INDIA         1                    NA                0.5832029   0.3814389   0.7849668
6-24 months   MAL-ED       INDIA         0                    NA                0.5610665   0.4156887   0.7064443
6-24 months   NIH-Birth    BANGLADESH    1                    NA                0.2969310   0.1791961   0.4146660
6-24 months   NIH-Birth    BANGLADESH    0                    NA                0.3065753   0.2267953   0.3863554


### Parameter: E(Y)


agecat        studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS      GUATEMALA     NA                   NA                0.3787879   0.3179432   0.4396325
0-24 months   COHORTS      INDIA         NA                   NA                0.2344546   0.2156201   0.2532892
0-24 months   COHORTS      PHILIPPINES   NA                   NA                0.6134700   0.5751620   0.6517779
0-24 months   JiVitA-3     BANGLADESH    NA                   NA                0.4224868   0.4113573   0.4336163
0-24 months   JiVitA-4     BANGLADESH    NA                   NA                0.2580019   0.2386523   0.2773515
0-24 months   MAL-ED       BANGLADESH    NA                   NA                0.6446281   0.5577732   0.7314830
0-24 months   MAL-ED       INDIA         NA                   NA                0.6279070   0.5477344   0.7080796
0-24 months   NIH-Birth    BANGLADESH    NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto   BANGLADESH    NA                   NA                0.6274510   0.5732906   0.6816113
0-6 months    COHORTS      INDIA         NA                   NA                0.3565891   0.3304405   0.3827378
0-6 months    COHORTS      PHILIPPINES   NA                   NA                0.7642857   0.7146210   0.8139505
0-6 months    JiVitA-3     BANGLADESH    NA                   NA                0.6755499   0.6622049   0.6888949
0-6 months    JiVitA-4     BANGLADESH    NA                   NA                0.5583942   0.5167799   0.6000084
0-6 months    MAL-ED       INDIA         NA                   NA                0.7215190   0.6193314   0.8237066
0-6 months    NIH-Birth    BANGLADESH    NA                   NA                0.7130045   0.6535890   0.7724200
6-24 months   COHORTS      PHILIPPINES   NA                   NA                0.5086849   0.4571562   0.5602135
6-24 months   JiVitA-4     BANGLADESH    NA                   NA                0.1492734   0.1316631   0.1668838
6-24 months   MAL-ED       INDIA         NA                   NA                0.5483871   0.4327976   0.6639766
6-24 months   NIH-Birth    BANGLADESH    NA                   NA                0.3030303   0.2377927   0.3682679


### Parameter: RR


agecat        studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS      GUATEMALA     0                    1                 0.6571181   0.3954543   1.0919193
0-24 months   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS      INDIA         0                    1                 0.7970480   0.6678613   0.9512237
0-24 months   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS      PHILIPPINES   0                    1                 0.8170015   0.6869097   0.9717310
0-24 months   JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3     BANGLADESH    0                    1                 0.9605707   0.8989156   1.0264545
0-24 months   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4     BANGLADESH    0                    1                 1.0428276   0.8688796   1.2515998
0-24 months   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED       BANGLADESH    0                    1                 0.9135327   0.6477571   1.2883564
0-24 months   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED       INDIA         0                    1                 0.9936079   0.7615008   1.2964617
0-24 months   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth    BANGLADESH    0                    1                 0.9110418   0.7456723   1.1130856
0-24 months   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto   BANGLADESH    0                    1                 0.8633874   0.6299350   1.1833567
0-6 months    COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS      INDIA         0                    1                 0.8585531   0.7349873   1.0028929
0-6 months    COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS      PHILIPPINES   0                    1                 0.8950480   0.7707387   1.0394068
0-6 months    JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3     BANGLADESH    0                    1                 0.9737641   0.9283280   1.0214240
0-6 months    JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4     BANGLADESH    0                    1                 0.8784167   0.7249587   1.0643583
0-6 months    MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED       INDIA         0                    1                 1.0635779   0.8047944   1.4055738
0-6 months    NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth    BANGLADESH    0                    1                 0.9409101   0.7959995   1.1122014
6-24 months   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS      PHILIPPINES   0                    1                 0.9434593   0.5883563   1.5128851
6-24 months   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4     BANGLADESH    0                    1                 1.2135388   0.9326004   1.5791078
6-24 months   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED       INDIA         0                    1                 0.9620435   0.6242315   1.4826672
6-24 months   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth    BANGLADESH    0                    1                 1.0324799   0.6418911   1.6607408


### Parameter: PAR


agecat        studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS      GUATEMALA     1                    NA                -0.1723894   -0.4246236    0.0798448
0-24 months   COHORTS      INDIA         1                    NA                -0.0392100   -0.0715498   -0.0068701
0-24 months   COHORTS      PHILIPPINES   1                    NA                -0.1183940   -0.2280036   -0.0087844
0-24 months   JiVitA-3     BANGLADESH    1                    NA                -0.0053918   -0.0145646    0.0037810
0-24 months   JiVitA-4     BANGLADESH    1                    NA                -0.0002133   -0.0128042    0.0123775
0-24 months   MAL-ED       BANGLADESH    1                    NA                -0.0302835   -0.0709325    0.0103656
0-24 months   MAL-ED       INDIA         1                    NA                -0.0014064   -0.1037332    0.1009204
0-24 months   NIH-Birth    BANGLADESH    1                    NA                -0.0372919   -0.1084815    0.0338977
0-24 months   NIH-Crypto   BANGLADESH    1                    NA                -0.0107593   -0.0331960    0.0116774
0-6 months    COHORTS      INDIA         1                    NA                -0.0381200   -0.0777546    0.0015146
0-6 months    COHORTS      PHILIPPINES   1                    NA                -0.0724490   -0.1732018    0.0283039
0-6 months    JiVitA-3     BANGLADESH    1                    NA                -0.0083304   -0.0197478    0.0030870
0-6 months    JiVitA-4     BANGLADESH    1                    NA                -0.0117480   -0.0383546    0.0148587
0-6 months    MAL-ED       INDIA         1                    NA                 0.0261311   -0.0804843    0.1327465
0-6 months    NIH-Birth    BANGLADESH    1                    NA                -0.0358417   -0.1117898    0.0401065
6-24 months   COHORTS      PHILIPPINES   1                    NA                -0.0275411   -0.2668217    0.2117396
6-24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0067847   -0.0049039    0.0184733
6-24 months   MAL-ED       INDIA         1                    NA                -0.0348158   -0.2035974    0.1339659
6-24 months   NIH-Birth    BANGLADESH    1                    NA                 0.0060993   -0.0919397    0.1041382


### Parameter: PAF


agecat        studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS      GUATEMALA     1                    NA                -0.4551080   -1.2982119    0.0787015
0-24 months   COHORTS      INDIA         1                    NA                -0.1672390   -0.3125633   -0.0380046
0-24 months   COHORTS      PHILIPPINES   1                    NA                -0.1929907   -0.3859746   -0.0268780
0-24 months   JiVitA-3     BANGLADESH    1                    NA                -0.0127620   -0.0346984    0.0087093
0-24 months   JiVitA-4     BANGLADESH    1                    NA                -0.0008268   -0.0508351    0.0468015
0-24 months   MAL-ED       BANGLADESH    1                    NA                -0.0469782   -0.1123397    0.0145427
0-24 months   MAL-ED       INDIA         1                    NA                -0.0022398   -0.1792131    0.1481737
0-24 months   NIH-Birth    BANGLADESH    1                    NA                -0.0716890   -0.2178656    0.0569424
0-24 months   NIH-Crypto   BANGLADESH    1                    NA                -0.0171476   -0.0536617    0.0181012
0-6 months    COHORTS      INDIA         1                    NA                -0.1069018   -0.2238832   -0.0011016
0-6 months    COHORTS      PHILIPPINES   1                    NA                -0.0947931   -0.2355973    0.0299657
0-6 months    JiVitA-3     BANGLADESH    1                    NA                -0.0123313   -0.0293762    0.0044314
0-6 months    JiVitA-4     BANGLADESH    1                    NA                -0.0210388   -0.0698373    0.0255338
0-6 months    MAL-ED       INDIA         1                    NA                 0.0362168   -0.1235124    0.1732374
0-6 months    NIH-Birth    BANGLADESH    1                    NA                -0.0502685   -0.1626442    0.0512454
6-24 months   COHORTS      PHILIPPINES   1                    NA                -0.0541417   -0.6467535    0.3252088
6-24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0454515   -0.0364022    0.1208405
6-24 months   MAL-ED       INDIA         1                    NA                -0.0634876   -0.4213380    0.2042668
6-24 months   NIH-Birth    BANGLADESH    1                    NA                 0.0201275   -0.3632463    0.2956885
