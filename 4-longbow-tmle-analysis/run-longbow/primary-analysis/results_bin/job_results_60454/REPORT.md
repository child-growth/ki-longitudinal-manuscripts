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

agecat                        studyid      country                        perdiar6    ever_wasted   n_cell     n
----------------------------  -----------  -----------------------------  ---------  ------------  -------  ----
0-24 months (no birth wast)   CMIN         BANGLADESH                     0%                    0       54   268
0-24 months (no birth wast)   CMIN         BANGLADESH                     0%                    1       39   268
0-24 months (no birth wast)   CMIN         BANGLADESH                     (0%, 5%]              0       40   268
0-24 months (no birth wast)   CMIN         BANGLADESH                     (0%, 5%]              1       22   268
0-24 months (no birth wast)   CMIN         BANGLADESH                     >5%                   0       59   268
0-24 months (no birth wast)   CMIN         BANGLADESH                     >5%                   1       54   268
0-24 months (no birth wast)   CONTENT      PERU                           0%                    0      114   215
0-24 months (no birth wast)   CONTENT      PERU                           0%                    1        1   215
0-24 months (no birth wast)   CONTENT      PERU                           (0%, 5%]              0       42   215
0-24 months (no birth wast)   CONTENT      PERU                           (0%, 5%]              1        1   215
0-24 months (no birth wast)   CONTENT      PERU                           >5%                   0       55   215
0-24 months (no birth wast)   CONTENT      PERU                           >5%                   1        2   215
0-24 months (no birth wast)   EE           PAKISTAN                       0%                    0      159   377
0-24 months (no birth wast)   EE           PAKISTAN                       0%                    1      181   377
0-24 months (no birth wast)   EE           PAKISTAN                       (0%, 5%]              0       14   377
0-24 months (no birth wast)   EE           PAKISTAN                       (0%, 5%]              1       21   377
0-24 months (no birth wast)   EE           PAKISTAN                       >5%                   0        1   377
0-24 months (no birth wast)   EE           PAKISTAN                       >5%                   1        1   377
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     0%                    0       65   263
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     0%                    1       20   263
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     (0%, 5%]              0       75   263
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     (0%, 5%]              1       23   263
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     >5%                   0       65   263
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     >5%                   1       15   263
0-24 months (no birth wast)   MAL-ED       BRAZIL                         0%                    0      205   233
0-24 months (no birth wast)   MAL-ED       BRAZIL                         0%                    1       11   233
0-24 months (no birth wast)   MAL-ED       BRAZIL                         (0%, 5%]              0       14   233
0-24 months (no birth wast)   MAL-ED       BRAZIL                         (0%, 5%]              1        1   233
0-24 months (no birth wast)   MAL-ED       BRAZIL                         >5%                   0        1   233
0-24 months (no birth wast)   MAL-ED       BRAZIL                         >5%                   1        1   233
0-24 months (no birth wast)   MAL-ED       INDIA                          0%                    0       35   246
0-24 months (no birth wast)   MAL-ED       INDIA                          0%                    1       24   246
0-24 months (no birth wast)   MAL-ED       INDIA                          (0%, 5%]              0       85   246
0-24 months (no birth wast)   MAL-ED       INDIA                          (0%, 5%]              1       43   246
0-24 months (no birth wast)   MAL-ED       INDIA                          >5%                   0       35   246
0-24 months (no birth wast)   MAL-ED       INDIA                          >5%                   1       24   246
0-24 months (no birth wast)   MAL-ED       NEPAL                          0%                    0       65   239
0-24 months (no birth wast)   MAL-ED       NEPAL                          0%                    1       18   239
0-24 months (no birth wast)   MAL-ED       NEPAL                          (0%, 5%]              0       63   239
0-24 months (no birth wast)   MAL-ED       NEPAL                          (0%, 5%]              1       13   239
0-24 months (no birth wast)   MAL-ED       NEPAL                          >5%                   0       65   239
0-24 months (no birth wast)   MAL-ED       NEPAL                          >5%                   1       15   239
0-24 months (no birth wast)   MAL-ED       PERU                           0%                    0       83   302
0-24 months (no birth wast)   MAL-ED       PERU                           0%                    1        6   302
0-24 months (no birth wast)   MAL-ED       PERU                           (0%, 5%]              0       88   302
0-24 months (no birth wast)   MAL-ED       PERU                           (0%, 5%]              1        5   302
0-24 months (no birth wast)   MAL-ED       PERU                           >5%                   0      110   302
0-24 months (no birth wast)   MAL-ED       PERU                           >5%                   1       10   302
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   0%                    0      195   302
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   0%                    1       37   302
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       53   302
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        7   302
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   >5%                   0        9   302
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   >5%                   1        1   302
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0       96   261
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       17   261
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0       88   261
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       14   261
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0       43   261
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        3   261
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     0%                    0      120   599
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     0%                    1       37   599
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     (0%, 5%]              0      136   599
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     (0%, 5%]              1       46   599
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     >5%                   0      165   599
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     >5%                   1       95   599
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     0%                    0      307   754
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     0%                    1       57   754
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     (0%, 5%]              0      149   754
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     (0%, 5%]              1       24   754
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     >5%                   0      190   754
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     >5%                   1       27   754
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     0%                    0      183   687
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     0%                    1       30   687
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     (0%, 5%]              0      198   687
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     (0%, 5%]              1       61   687
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     >5%                   0      184   687
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     >5%                   1       31   687
0-6 months (no birth wast)    CMIN         BANGLADESH                     0%                    0       86   267
0-6 months (no birth wast)    CMIN         BANGLADESH                     0%                    1        7   267
0-6 months (no birth wast)    CMIN         BANGLADESH                     (0%, 5%]              0       50   267
0-6 months (no birth wast)    CMIN         BANGLADESH                     (0%, 5%]              1       11   267
0-6 months (no birth wast)    CMIN         BANGLADESH                     >5%                   0      100   267
0-6 months (no birth wast)    CMIN         BANGLADESH                     >5%                   1       13   267
0-6 months (no birth wast)    CONTENT      PERU                           0%                    0      114   215
0-6 months (no birth wast)    CONTENT      PERU                           0%                    1        1   215
0-6 months (no birth wast)    CONTENT      PERU                           (0%, 5%]              0       43   215
0-6 months (no birth wast)    CONTENT      PERU                           (0%, 5%]              1        0   215
0-6 months (no birth wast)    CONTENT      PERU                           >5%                   0       55   215
0-6 months (no birth wast)    CONTENT      PERU                           >5%                   1        2   215
0-6 months (no birth wast)    EE           PAKISTAN                       0%                    0      267   375
0-6 months (no birth wast)    EE           PAKISTAN                       0%                    1       71   375
0-6 months (no birth wast)    EE           PAKISTAN                       (0%, 5%]              0       26   375
0-6 months (no birth wast)    EE           PAKISTAN                       (0%, 5%]              1        9   375
0-6 months (no birth wast)    EE           PAKISTAN                       >5%                   0        1   375
0-6 months (no birth wast)    EE           PAKISTAN                       >5%                   1        1   375
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     0%                    0       78   262
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     0%                    1        6   262
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     (0%, 5%]              0       92   262
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     (0%, 5%]              1        6   262
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     >5%                   0       73   262
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     >5%                   1        7   262
0-6 months (no birth wast)    MAL-ED       BRAZIL                         0%                    0      209   233
0-6 months (no birth wast)    MAL-ED       BRAZIL                         0%                    1        7   233
0-6 months (no birth wast)    MAL-ED       BRAZIL                         (0%, 5%]              0       14   233
0-6 months (no birth wast)    MAL-ED       BRAZIL                         (0%, 5%]              1        1   233
0-6 months (no birth wast)    MAL-ED       BRAZIL                         >5%                   0        2   233
0-6 months (no birth wast)    MAL-ED       BRAZIL                         >5%                   1        0   233
0-6 months (no birth wast)    MAL-ED       INDIA                          0%                    0       49   244
0-6 months (no birth wast)    MAL-ED       INDIA                          0%                    1       10   244
0-6 months (no birth wast)    MAL-ED       INDIA                          (0%, 5%]              0      107   244
0-6 months (no birth wast)    MAL-ED       INDIA                          (0%, 5%]              1       20   244
0-6 months (no birth wast)    MAL-ED       INDIA                          >5%                   0       49   244
0-6 months (no birth wast)    MAL-ED       INDIA                          >5%                   1        9   244
0-6 months (no birth wast)    MAL-ED       NEPAL                          0%                    0       76   237
0-6 months (no birth wast)    MAL-ED       NEPAL                          0%                    1        5   237
0-6 months (no birth wast)    MAL-ED       NEPAL                          (0%, 5%]              0       68   237
0-6 months (no birth wast)    MAL-ED       NEPAL                          (0%, 5%]              1        8   237
0-6 months (no birth wast)    MAL-ED       NEPAL                          >5%                   0       77   237
0-6 months (no birth wast)    MAL-ED       NEPAL                          >5%                   1        3   237
0-6 months (no birth wast)    MAL-ED       PERU                           0%                    0       89   302
0-6 months (no birth wast)    MAL-ED       PERU                           0%                    1        0   302
0-6 months (no birth wast)    MAL-ED       PERU                           (0%, 5%]              0       92   302
0-6 months (no birth wast)    MAL-ED       PERU                           (0%, 5%]              1        1   302
0-6 months (no birth wast)    MAL-ED       PERU                           >5%                   0      116   302
0-6 months (no birth wast)    MAL-ED       PERU                           >5%                   1        4   302
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   0%                    0      220   301
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   0%                    1       11   301
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       57   301
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        3   301
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   >5%                   0       10   301
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   >5%                   1        0   301
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0      108   261
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1        5   261
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0       98   261
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1        4   261
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0       45   261
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        1   261
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     0%                    0      147   581
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     0%                    1        5   581
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     (0%, 5%]              0      163   581
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     (0%, 5%]              1       12   581
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     >5%                   0      225   581
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     >5%                   1       29   581
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     0%                    0      354   749
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     0%                    1        8   749
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     (0%, 5%]              0      166   749
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     (0%, 5%]              1        6   749
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     >5%                   0      209   749
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     >5%                   1        6   749
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     0%                    0      204   683
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     0%                    1        8   683
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     (0%, 5%]              0      242   683
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     (0%, 5%]              1       16   683
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     >5%                   0      200   683
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     >5%                   1       13   683
6-24 months                   CMIN         BANGLADESH                     0%                    0       51   252
6-24 months                   CMIN         BANGLADESH                     0%                    1       35   252
6-24 months                   CMIN         BANGLADESH                     (0%, 5%]              0       42   252
6-24 months                   CMIN         BANGLADESH                     (0%, 5%]              1       17   252
6-24 months                   CMIN         BANGLADESH                     >5%                   0       62   252
6-24 months                   CMIN         BANGLADESH                     >5%                   1       45   252
6-24 months                   CONTENT      PERU                           0%                    0      115   215
6-24 months                   CONTENT      PERU                           0%                    1        0   215
6-24 months                   CONTENT      PERU                           (0%, 5%]              0       42   215
6-24 months                   CONTENT      PERU                           (0%, 5%]              1        1   215
6-24 months                   CONTENT      PERU                           >5%                   0       56   215
6-24 months                   CONTENT      PERU                           >5%                   1        1   215
6-24 months                   EE           PAKISTAN                       0%                    0      191   374
6-24 months                   EE           PAKISTAN                       0%                    1      146   374
6-24 months                   EE           PAKISTAN                       (0%, 5%]              0       21   374
6-24 months                   EE           PAKISTAN                       (0%, 5%]              1       14   374
6-24 months                   EE           PAKISTAN                       >5%                   0        1   374
6-24 months                   EE           PAKISTAN                       >5%                   1        1   374
6-24 months                   MAL-ED       BANGLADESH                     0%                    0       55   240
6-24 months                   MAL-ED       BANGLADESH                     0%                    1       16   240
6-24 months                   MAL-ED       BANGLADESH                     (0%, 5%]              0       74   240
6-24 months                   MAL-ED       BANGLADESH                     (0%, 5%]              1       18   240
6-24 months                   MAL-ED       BANGLADESH                     >5%                   0       68   240
6-24 months                   MAL-ED       BANGLADESH                     >5%                   1        9   240
6-24 months                   MAL-ED       BRAZIL                         0%                    0      185   207
6-24 months                   MAL-ED       BRAZIL                         0%                    1        5   207
6-24 months                   MAL-ED       BRAZIL                         (0%, 5%]              0       15   207
6-24 months                   MAL-ED       BRAZIL                         (0%, 5%]              1        0   207
6-24 months                   MAL-ED       BRAZIL                         >5%                   0        1   207
6-24 months                   MAL-ED       BRAZIL                         >5%                   1        1   207
6-24 months                   MAL-ED       INDIA                          0%                    0       34   235
6-24 months                   MAL-ED       INDIA                          0%                    1       16   235
6-24 months                   MAL-ED       INDIA                          (0%, 5%]              0       97   235
6-24 months                   MAL-ED       INDIA                          (0%, 5%]              1       29   235
6-24 months                   MAL-ED       INDIA                          >5%                   0       40   235
6-24 months                   MAL-ED       INDIA                          >5%                   1       19   235
6-24 months                   MAL-ED       NEPAL                          0%                    0       63   235
6-24 months                   MAL-ED       NEPAL                          0%                    1       17   235
6-24 months                   MAL-ED       NEPAL                          (0%, 5%]              0       70   235
6-24 months                   MAL-ED       NEPAL                          (0%, 5%]              1        6   235
6-24 months                   MAL-ED       NEPAL                          >5%                   0       66   235
6-24 months                   MAL-ED       NEPAL                          >5%                   1       13   235
6-24 months                   MAL-ED       PERU                           0%                    0       61   270
6-24 months                   MAL-ED       PERU                           0%                    1        6   270
6-24 months                   MAL-ED       PERU                           (0%, 5%]              0       83   270
6-24 months                   MAL-ED       PERU                           (0%, 5%]              1        4   270
6-24 months                   MAL-ED       PERU                           >5%                   0      108   270
6-24 months                   MAL-ED       PERU                           >5%                   1        8   270
6-24 months                   MAL-ED       SOUTH AFRICA                   0%                    0      164   259
6-24 months                   MAL-ED       SOUTH AFRICA                   0%                    1       30   259
6-24 months                   MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       50   259
6-24 months                   MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        6   259
6-24 months                   MAL-ED       SOUTH AFRICA                   >5%                   0        8   259
6-24 months                   MAL-ED       SOUTH AFRICA                   >5%                   1        1   259
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0       90   245
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       14   245
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0       84   245
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       12   245
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0       43   245
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        2   245
6-24 months                   NIH-Birth    BANGLADESH                     0%                    0       96   542
6-24 months                   NIH-Birth    BANGLADESH                     0%                    1       33   542
6-24 months                   NIH-Birth    BANGLADESH                     (0%, 5%]              0      129   542
6-24 months                   NIH-Birth    BANGLADESH                     (0%, 5%]              1       43   542
6-24 months                   NIH-Birth    BANGLADESH                     >5%                   0      158   542
6-24 months                   NIH-Birth    BANGLADESH                     >5%                   1       83   542
6-24 months                   NIH-Crypto   BANGLADESH                     0%                    0      294   730
6-24 months                   NIH-Crypto   BANGLADESH                     0%                    1       51   730
6-24 months                   NIH-Crypto   BANGLADESH                     (0%, 5%]              0      149   730
6-24 months                   NIH-Crypto   BANGLADESH                     (0%, 5%]              1       21   730
6-24 months                   NIH-Crypto   BANGLADESH                     >5%                   0      191   730
6-24 months                   NIH-Crypto   BANGLADESH                     >5%                   1       24   730
6-24 months                   PROVIDE      BANGLADESH                     0%                    0      137   615
6-24 months                   PROVIDE      BANGLADESH                     0%                    1       24   615
6-24 months                   PROVIDE      BANGLADESH                     (0%, 5%]              0      198   615
6-24 months                   PROVIDE      BANGLADESH                     (0%, 5%]              1       52   615
6-24 months                   PROVIDE      BANGLADESH                     >5%                   0      181   615
6-24 months                   PROVIDE      BANGLADESH                     >5%                   1       23   615


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
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

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
![](/tmp/4d373150-2692-4dae-933a-1c39b8f565c7/50e113eb-8524-4c92-840c-b04e2a611585/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4d373150-2692-4dae-933a-1c39b8f565c7/50e113eb-8524-4c92-840c-b04e2a611585/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4d373150-2692-4dae-933a-1c39b8f565c7/50e113eb-8524-4c92-840c-b04e2a611585/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4d373150-2692-4dae-933a-1c39b8f565c7/50e113eb-8524-4c92-840c-b04e2a611585/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMIN         BANGLADESH   0%                   NA                0.4154296   0.3118848   0.5189744
0-24 months (no birth wast)   CMIN         BANGLADESH   (0%, 5%]             NA                0.3609147   0.2392406   0.4825888
0-24 months (no birth wast)   CMIN         BANGLADESH   >5%                  NA                0.4792315   0.3857316   0.5727313
0-24 months (no birth wast)   MAL-ED       BANGLADESH   0%                   NA                0.2402223   0.1474813   0.3329633
0-24 months (no birth wast)   MAL-ED       BANGLADESH   (0%, 5%]             NA                0.2235056   0.1411330   0.3058781
0-24 months (no birth wast)   MAL-ED       BANGLADESH   >5%                  NA                0.1927620   0.1053461   0.2801778
0-24 months (no birth wast)   MAL-ED       INDIA        0%                   NA                0.3940859   0.2653332   0.5228387
0-24 months (no birth wast)   MAL-ED       INDIA        (0%, 5%]             NA                0.3370729   0.2550769   0.4190689
0-24 months (no birth wast)   MAL-ED       INDIA        >5%                  NA                0.4078537   0.2790322   0.5366753
0-24 months (no birth wast)   MAL-ED       NEPAL        0%                   NA                0.2172243   0.1271003   0.3073484
0-24 months (no birth wast)   MAL-ED       NEPAL        (0%, 5%]             NA                0.1679885   0.0824413   0.2535357
0-24 months (no birth wast)   MAL-ED       NEPAL        >5%                  NA                0.1868465   0.1001568   0.2735361
0-24 months (no birth wast)   MAL-ED       PERU         0%                   NA                0.0674157   0.0152365   0.1195950
0-24 months (no birth wast)   MAL-ED       PERU         (0%, 5%]             NA                0.0537634   0.0078468   0.0996801
0-24 months (no birth wast)   MAL-ED       PERU         >5%                  NA                0.0833333   0.0338005   0.1328661
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   0%                   NA                0.2431955   0.1753077   0.3110834
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.2546906   0.1916083   0.3177730
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   >5%                  NA                0.3586645   0.3001495   0.4171795
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   0%                   NA                0.1560966   0.1188732   0.1933199
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.1410213   0.0888605   0.1931821
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   >5%                  NA                0.1231397   0.0795008   0.1667786
0-24 months (no birth wast)   PROVIDE      BANGLADESH   0%                   NA                0.1473508   0.0987607   0.1959408
0-24 months (no birth wast)   PROVIDE      BANGLADESH   (0%, 5%]             NA                0.2300043   0.1781269   0.2818816
0-24 months (no birth wast)   PROVIDE      BANGLADESH   >5%                  NA                0.1453926   0.0975762   0.1932089
0-6 months (no birth wast)    CMIN         BANGLADESH   0%                   NA                0.0752688   0.0215487   0.1289889
0-6 months (no birth wast)    CMIN         BANGLADESH   (0%, 5%]             NA                0.1803279   0.0836673   0.2769885
0-6 months (no birth wast)    CMIN         BANGLADESH   >5%                  NA                0.1150442   0.0561033   0.1739852
0-6 months (no birth wast)    MAL-ED       BANGLADESH   0%                   NA                0.0714286   0.0162485   0.1266087
0-6 months (no birth wast)    MAL-ED       BANGLADESH   (0%, 5%]             NA                0.0612245   0.0136681   0.1087809
0-6 months (no birth wast)    MAL-ED       BANGLADESH   >5%                  NA                0.0875000   0.0254625   0.1495375
0-6 months (no birth wast)    MAL-ED       INDIA        0%                   NA                0.1694915   0.0735603   0.2654227
0-6 months (no birth wast)    MAL-ED       INDIA        (0%, 5%]             NA                0.1574803   0.0939997   0.2209609
0-6 months (no birth wast)    MAL-ED       INDIA        >5%                  NA                0.1551724   0.0618003   0.2485445
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   0%                   NA                0.0328947   0.0045155   0.0612740
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.0685714   0.0310957   0.1060471
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   >5%                  NA                0.1141732   0.0750295   0.1533169
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   0%                   NA                0.0220994   0.0069456   0.0372533
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0348837   0.0074443   0.0623232
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   >5%                  NA                0.0279070   0.0058762   0.0499377
0-6 months (no birth wast)    PROVIDE      BANGLADESH   0%                   NA                0.0377358   0.0120660   0.0634057
0-6 months (no birth wast)    PROVIDE      BANGLADESH   (0%, 5%]             NA                0.0620155   0.0325642   0.0914668
0-6 months (no birth wast)    PROVIDE      BANGLADESH   >5%                  NA                0.0610329   0.0288605   0.0932053
6-24 months                   CMIN         BANGLADESH   0%                   NA                0.4070299   0.3014962   0.5125636
6-24 months                   CMIN         BANGLADESH   (0%, 5%]             NA                0.2941355   0.1761282   0.4121428
6-24 months                   CMIN         BANGLADESH   >5%                  NA                0.4150344   0.3206811   0.5093877
6-24 months                   MAL-ED       BANGLADESH   0%                   NA                0.2253521   0.1279634   0.3227408
6-24 months                   MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1956522   0.1144206   0.2768838
6-24 months                   MAL-ED       BANGLADESH   >5%                  NA                0.1168831   0.0449723   0.1887940
6-24 months                   MAL-ED       INDIA        0%                   NA                0.3324801   0.2039358   0.4610244
6-24 months                   MAL-ED       INDIA        (0%, 5%]             NA                0.2330789   0.1597595   0.3063984
6-24 months                   MAL-ED       INDIA        >5%                  NA                0.3120350   0.1874938   0.4365761
6-24 months                   MAL-ED       NEPAL        0%                   NA                0.2125000   0.1226674   0.3023326
6-24 months                   MAL-ED       NEPAL        (0%, 5%]             NA                0.0789474   0.0181929   0.1397019
6-24 months                   MAL-ED       NEPAL        >5%                  NA                0.1645570   0.0826205   0.2464934
6-24 months                   NIH-Birth    BANGLADESH   0%                   NA                0.2641477   0.1851247   0.3431707
6-24 months                   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.2548710   0.1893392   0.3204028
6-24 months                   NIH-Birth    BANGLADESH   >5%                  NA                0.3348203   0.2753496   0.3942910
6-24 months                   NIH-Crypto   BANGLADESH   0%                   NA                0.1480885   0.1104298   0.1857473
6-24 months                   NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.1205698   0.0715877   0.1695518
6-24 months                   NIH-Crypto   BANGLADESH   >5%                  NA                0.1106574   0.0685066   0.1528082
6-24 months                   PROVIDE      BANGLADESH   0%                   NA                0.1480951   0.0925072   0.2036830
6-24 months                   PROVIDE      BANGLADESH   (0%, 5%]             NA                0.2072405   0.1566040   0.2578771
6-24 months                   PROVIDE      BANGLADESH   >5%                  NA                0.1138929   0.0704504   0.1573353


### Parameter: E(Y)


agecat                        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMIN         BANGLADESH   NA                   NA                0.4291045   0.3697365   0.4884725
0-24 months (no birth wast)   MAL-ED       BANGLADESH   NA                   NA                0.2205323   0.1703290   0.2707357
0-24 months (no birth wast)   MAL-ED       INDIA        NA                   NA                0.3699187   0.3094659   0.4303715
0-24 months (no birth wast)   MAL-ED       NEPAL        NA                   NA                0.1924686   0.1423823   0.2425550
0-24 months (no birth wast)   MAL-ED       PERU         NA                   NA                0.0695364   0.0408008   0.0982721
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   NA                   NA                0.2971619   0.2605332   0.3337907
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   PROVIDE      BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-6 months (no birth wast)    CMIN         BANGLADESH   NA                   NA                0.1161049   0.0776073   0.1546024
0-6 months (no birth wast)    MAL-ED       BANGLADESH   NA                   NA                0.0725191   0.0410556   0.1039825
0-6 months (no birth wast)    MAL-ED       INDIA        NA                   NA                0.1598361   0.1137612   0.2059110
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   NA                   NA                0.0791738   0.0571996   0.1011481
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    PROVIDE      BANGLADESH   NA                   NA                0.0541728   0.0371844   0.0711612
6-24 months                   CMIN         BANGLADESH   NA                   NA                0.3849206   0.3247254   0.4451159
6-24 months                   MAL-ED       BANGLADESH   NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months                   MAL-ED       INDIA        NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   MAL-ED       NEPAL        NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   NIH-Birth    BANGLADESH   NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months                   NIH-Crypto   BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   PROVIDE      BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447


### Parameter: RR


agecat                        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMIN         BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMIN         BANGLADESH   (0%, 5%]             0%                0.8687747   0.5707376   1.3224456
0-24 months (no birth wast)   CMIN         BANGLADESH   >5%                  0%                1.1535804   0.8398003   1.5846002
0-24 months (no birth wast)   MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED       BANGLADESH   (0%, 5%]             0%                0.9304113   0.5466373   1.5836189
0-24 months (no birth wast)   MAL-ED       BANGLADESH   >5%                  0%                0.8024316   0.4426813   1.4545373
0-24 months (no birth wast)   MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED       INDIA        (0%, 5%]             0%                0.8553285   0.5690141   1.2857095
0-24 months (no birth wast)   MAL-ED       INDIA        >5%                  0%                1.0349360   0.6566240   1.6312115
0-24 months (no birth wast)   MAL-ED       NEPAL        0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED       NEPAL        (0%, 5%]             0%                0.7733413   0.4008324   1.4920370
0-24 months (no birth wast)   MAL-ED       NEPAL        >5%                  0%                0.8601544   0.4618055   1.6021150
0-24 months (no birth wast)   MAL-ED       PERU         0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED       PERU         (0%, 5%]             0%                0.7974910   0.2518616   2.5251640
0-24 months (no birth wast)   MAL-ED       PERU         >5%                  0%                1.2361111   0.4658353   3.2800664
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   (0%, 5%]             0%                1.0472669   0.7212659   1.5206153
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   >5%                  0%                1.4747989   1.0680689   2.0364154
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.9034234   0.5815210   1.4035155
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   >5%                  0%                0.7888687   0.5146234   1.2092605
0-24 months (no birth wast)   PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROVIDE      BANGLADESH   (0%, 5%]             0%                1.5609301   1.0465832   2.3280545
0-24 months (no birth wast)   PROVIDE      BANGLADESH   >5%                  0%                0.9867104   0.6194414   1.5717346
0-6 months (no birth wast)    CMIN         BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    CMIN         BANGLADESH   (0%, 5%]             0%                2.3957845   0.9813036   5.8491418
0-6 months (no birth wast)    CMIN         BANGLADESH   >5%                  0%                1.5284450   0.6348869   3.6796223
0-6 months (no birth wast)    MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    MAL-ED       BANGLADESH   (0%, 5%]             0%                0.8571429   0.2866027   2.5634573
0-6 months (no birth wast)    MAL-ED       BANGLADESH   >5%                  0%                1.2250000   0.4292932   3.4955711
0-6 months (no birth wast)    MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    MAL-ED       INDIA        (0%, 5%]             0%                0.9291339   0.4637685   1.8614668
0-6 months (no birth wast)    MAL-ED       INDIA        >5%                  0%                0.9155172   0.4007733   2.0913862
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   (0%, 5%]             0%                2.0845714   0.7507348   5.7882467
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   >5%                  0%                3.4708661   1.3716980   8.7824812
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.5784884   0.5559638   4.4816327
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   >5%                  0%                1.2627907   0.4438198   3.5929903
0-6 months (no birth wast)    PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROVIDE      BANGLADESH   (0%, 5%]             0%                1.6434109   0.7168794   3.7674385
0-6 months (no birth wast)    PROVIDE      BANGLADESH   >5%                  0%                1.6173709   0.6840090   3.8243481
6-24 months                   CMIN         BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   CMIN         BANGLADESH   (0%, 5%]             0%                0.7226385   0.4479172   1.1658549
6-24 months                   CMIN         BANGLADESH   >5%                  0%                1.0196656   0.7220891   1.4398747
6-24 months                   MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED       BANGLADESH   (0%, 5%]             0%                0.8682065   0.4768229   1.5808440
6-24 months                   MAL-ED       BANGLADESH   >5%                  0%                0.5186688   0.2445485   1.1000571
6-24 months                   MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED       INDIA        (0%, 5%]             0%                0.7010312   0.4254825   1.1550295
6-24 months                   MAL-ED       INDIA        >5%                  0%                0.9385073   0.5394842   1.6326630
6-24 months                   MAL-ED       NEPAL        0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED       NEPAL        (0%, 5%]             0%                0.3715170   0.1544035   0.8939232
6-24 months                   MAL-ED       NEPAL        >5%                  0%                0.7743857   0.4029837   1.4880830
6-24 months                   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Birth    BANGLADESH   (0%, 5%]             0%                0.9648807   0.6502107   1.4318357
6-24 months                   NIH-Birth    BANGLADESH   >5%                  0%                1.2675499   0.8953844   1.7944055
6-24 months                   NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.8141735   0.5042947   1.3144665
6-24 months                   NIH-Crypto   BANGLADESH   >5%                  0%                0.7472384   0.4730232   1.1804184
6-24 months                   PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   PROVIDE      BANGLADESH   (0%, 5%]             0%                1.3993748   0.8939563   2.1905432
6-24 months                   PROVIDE      BANGLADESH   >5%                  0%                0.7690521   0.4502865   1.3134776


### Parameter: PAR


agecat                        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMIN         BANGLADESH   0%                   NA                 0.0136749   -0.0706522   0.0980019
0-24 months (no birth wast)   MAL-ED       BANGLADESH   0%                   NA                -0.0196900   -0.0950246   0.0556446
0-24 months (no birth wast)   MAL-ED       INDIA        0%                   NA                -0.0241672   -0.1358584   0.0875240
0-24 months (no birth wast)   MAL-ED       NEPAL        0%                   NA                -0.0247557   -0.0960192   0.0465078
0-24 months (no birth wast)   MAL-ED       PERU         0%                   NA                 0.0021207   -0.0419662   0.0462076
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   0%                   NA                 0.0539664   -0.0059856   0.1139184
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   0%                   NA                -0.0128605   -0.0387654   0.0130444
0-24 months (no birth wast)   PROVIDE      BANGLADESH   0%                   NA                 0.0302329   -0.0119539   0.0724197
0-6 months (no birth wast)    CMIN         BANGLADESH   0%                   NA                 0.0408361   -0.0077185   0.0893906
0-6 months (no birth wast)    MAL-ED       BANGLADESH   0%                   NA                 0.0010905   -0.0445425   0.0467235
0-6 months (no birth wast)    MAL-ED       INDIA        0%                   NA                -0.0096555   -0.0925720   0.0732611
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   0%                   NA                 0.0462791    0.0168369   0.0757213
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   0%                   NA                 0.0046028   -0.0072773   0.0164829
0-6 months (no birth wast)    PROVIDE      BANGLADESH   0%                   NA                 0.0164369   -0.0067683   0.0396421
6-24 months                   CMIN         BANGLADESH   0%                   NA                -0.0221093   -0.1077091   0.0634906
6-24 months                   MAL-ED       BANGLADESH   0%                   NA                -0.0461854   -0.1251580   0.0327871
6-24 months                   MAL-ED       INDIA        0%                   NA                -0.0601397   -0.1730924   0.0528131
6-24 months                   MAL-ED       NEPAL        0%                   NA                -0.0593085   -0.1279023   0.0092853
6-24 months                   NIH-Birth    BANGLADESH   0%                   NA                 0.0292103   -0.0408063   0.0992268
6-24 months                   NIH-Crypto   BANGLADESH   0%                   NA                -0.0165817   -0.0428244   0.0096611
6-24 months                   PROVIDE      BANGLADESH   0%                   NA                 0.0128805   -0.0354419   0.0612029


### Parameter: PAF


agecat                        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMIN         BANGLADESH   0%                   NA                 0.0318684   -0.1861236    0.2097967
0-24 months (no birth wast)   MAL-ED       BANGLADESH   0%                   NA                -0.0892840   -0.4898562    0.2035878
0-24 months (no birth wast)   MAL-ED       INDIA        0%                   NA                -0.0653312   -0.4141787    0.1974632
0-24 months (no birth wast)   MAL-ED       NEPAL        0%                   NA                -0.1286221   -0.5654563    0.1863154
0-24 months (no birth wast)   MAL-ED       PERU         0%                   NA                 0.0304976   -0.8642767    0.4958179
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   0%                   NA                 0.1816060   -0.0466407    0.3600777
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   0%                   NA                -0.0897853   -0.2860513    0.0765283
0-24 months (no birth wast)   PROVIDE      BANGLADESH   0%                   NA                 0.1702460   -0.1033375    0.3759917
0-6 months (no birth wast)    CMIN         BANGLADESH   0%                   NA                 0.3517170   -0.2098491    0.6526254
0-6 months (no birth wast)    MAL-ED       BANGLADESH   0%                   NA                 0.0150376   -0.8657846    0.4800306
0-6 months (no birth wast)    MAL-ED       INDIA        0%                   NA                -0.0604085   -0.7292670    0.3497440
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   0%                   NA                 0.5845252    0.0640759    0.8155627
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   0%                   NA                 0.1723757   -0.4065203    0.5130095
0-6 months (no birth wast)    PROVIDE      BANGLADESH   0%                   NA                 0.3034166   -0.2702928    0.6180185
6-24 months                   CMIN         BANGLADESH   0%                   NA                -0.0574385   -0.3049579    0.1431324
6-24 months                   MAL-ED       BANGLADESH   0%                   NA                -0.2577792   -0.7821004    0.1122786
6-24 months                   MAL-ED       INDIA        0%                   NA                -0.2208253   -0.7157686    0.1313430
6-24 months                   MAL-ED       NEPAL        0%                   NA                -0.3871528   -0.9051231   -0.0100097
6-24 months                   NIH-Birth    BANGLADESH   0%                   NA                 0.0995721   -0.1737765    0.3092634
6-24 months                   NIH-Crypto   BANGLADESH   0%                   NA                -0.1260898   -0.3432865    0.0559883
6-24 months                   PROVIDE      BANGLADESH   0%                   NA                 0.0800153   -0.2747745    0.3360615
