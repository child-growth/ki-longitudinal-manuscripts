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

unadjusted

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
![](/tmp/b6d87a80-f5d5-4357-bf1a-f0aaef20f2bc/c9896988-a85c-4ade-8106-00efff81b5fa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b6d87a80-f5d5-4357-bf1a-f0aaef20f2bc/c9896988-a85c-4ade-8106-00efff81b5fa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b6d87a80-f5d5-4357-bf1a-f0aaef20f2bc/c9896988-a85c-4ade-8106-00efff81b5fa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b6d87a80-f5d5-4357-bf1a-f0aaef20f2bc/c9896988-a85c-4ade-8106-00efff81b5fa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMIN         BANGLADESH   0%                   NA                0.4193548   0.3188783   0.5198314
0-24 months (no birth wast)   CMIN         BANGLADESH   (0%, 5%]             NA                0.3548387   0.2355186   0.4741588
0-24 months (no birth wast)   CMIN         BANGLADESH   >5%                  NA                0.4778761   0.3856051   0.5701471
0-24 months (no birth wast)   MAL-ED       BANGLADESH   0%                   NA                0.2352941   0.1449461   0.3256421
0-24 months (no birth wast)   MAL-ED       BANGLADESH   (0%, 5%]             NA                0.2346939   0.1506259   0.3187619
0-24 months (no birth wast)   MAL-ED       BANGLADESH   >5%                  NA                0.1875000   0.1018075   0.2731925
0-24 months (no birth wast)   MAL-ED       INDIA        0%                   NA                0.4067797   0.2811783   0.5323810
0-24 months (no birth wast)   MAL-ED       INDIA        (0%, 5%]             NA                0.3359375   0.2539474   0.4179276
0-24 months (no birth wast)   MAL-ED       INDIA        >5%                  NA                0.4067797   0.2811783   0.5323810
0-24 months (no birth wast)   MAL-ED       NEPAL        0%                   NA                0.2168675   0.1280222   0.3057127
0-24 months (no birth wast)   MAL-ED       NEPAL        (0%, 5%]             NA                0.1710526   0.0862166   0.2558886
0-24 months (no birth wast)   MAL-ED       NEPAL        >5%                  NA                0.1875000   0.1017911   0.2732089
0-24 months (no birth wast)   MAL-ED       PERU         0%                   NA                0.0674157   0.0152365   0.1195950
0-24 months (no birth wast)   MAL-ED       PERU         (0%, 5%]             NA                0.0537634   0.0078468   0.0996801
0-24 months (no birth wast)   MAL-ED       PERU         >5%                  NA                0.0833333   0.0338005   0.1328661
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   0%                   NA                0.2356688   0.1692252   0.3021124
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.2527473   0.1895567   0.3159378
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   >5%                  NA                0.3653846   0.3068039   0.4239653
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   0%                   NA                0.1565934   0.1192348   0.1939520
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.1387283   0.0871858   0.1902709
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   >5%                  NA                0.1244240   0.0804794   0.1683685
0-24 months (no birth wast)   PROVIDE      BANGLADESH   0%                   NA                0.1408451   0.0940951   0.1875950
0-24 months (no birth wast)   PROVIDE      BANGLADESH   (0%, 5%]             NA                0.2355212   0.1838067   0.2872357
0-24 months (no birth wast)   PROVIDE      BANGLADESH   >5%                  NA                0.1441860   0.0971970   0.1911751
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
6-24 months                   CMIN         BANGLADESH   0%                   NA                0.4069767   0.3029409   0.5110126
6-24 months                   CMIN         BANGLADESH   (0%, 5%]             NA                0.2881356   0.1723425   0.4039287
6-24 months                   CMIN         BANGLADESH   >5%                  NA                0.4205607   0.3268395   0.5142820
6-24 months                   MAL-ED       BANGLADESH   0%                   NA                0.2253521   0.1279634   0.3227408
6-24 months                   MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1956522   0.1144206   0.2768838
6-24 months                   MAL-ED       BANGLADESH   >5%                  NA                0.1168831   0.0449723   0.1887940
6-24 months                   MAL-ED       INDIA        0%                   NA                0.3200000   0.1904258   0.4495742
6-24 months                   MAL-ED       INDIA        (0%, 5%]             NA                0.2301587   0.1565036   0.3038139
6-24 months                   MAL-ED       INDIA        >5%                  NA                0.3220339   0.2025518   0.4415160
6-24 months                   MAL-ED       NEPAL        0%                   NA                0.2125000   0.1226674   0.3023326
6-24 months                   MAL-ED       NEPAL        (0%, 5%]             NA                0.0789474   0.0181929   0.1397019
6-24 months                   MAL-ED       NEPAL        >5%                  NA                0.1645570   0.0826205   0.2464934
6-24 months                   NIH-Birth    BANGLADESH   0%                   NA                0.2558140   0.1804511   0.3311768
6-24 months                   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.2500000   0.1852283   0.3147717
6-24 months                   NIH-Birth    BANGLADESH   >5%                  NA                0.3443983   0.2843514   0.4044453
6-24 months                   NIH-Crypto   BANGLADESH   0%                   NA                0.1478261   0.1103481   0.1853040
6-24 months                   NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.1235294   0.0740328   0.1730260
6-24 months                   NIH-Crypto   BANGLADESH   >5%                  NA                0.1116279   0.0695058   0.1537500
6-24 months                   PROVIDE      BANGLADESH   0%                   NA                0.1490683   0.0940093   0.2041274
6-24 months                   PROVIDE      BANGLADESH   (0%, 5%]             NA                0.2080000   0.1576470   0.2583530
6-24 months                   PROVIDE      BANGLADESH   >5%                  NA                0.1127451   0.0693081   0.1561821


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
0-24 months (no birth wast)   CMIN         BANGLADESH   (0%, 5%]             0%                0.8461538   0.5599272   1.2786954
0-24 months (no birth wast)   CMIN         BANGLADESH   >5%                  0%                1.1395507   0.8377111   1.5501476
0-24 months (no birth wast)   MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED       BANGLADESH   (0%, 5%]             0%                0.9974490   0.5899765   1.6863458
0-24 months (no birth wast)   MAL-ED       BANGLADESH   >5%                  0%                0.7968750   0.4386835   1.4475352
0-24 months (no birth wast)   MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED       INDIA        (0%, 5%]             0%                0.8258464   0.5571463   1.2241348
0-24 months (no birth wast)   MAL-ED       INDIA        >5%                  0%                1.0000000   0.6461868   1.5475401
0-24 months (no birth wast)   MAL-ED       NEPAL        0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED       NEPAL        (0%, 5%]             0%                0.7887427   0.4145344   1.5007561
0-24 months (no birth wast)   MAL-ED       NEPAL        >5%                  0%                0.8645833   0.4679763   1.5973123
0-24 months (no birth wast)   MAL-ED       PERU         0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED       PERU         (0%, 5%]             0%                0.7974910   0.2518616   2.5251640
0-24 months (no birth wast)   MAL-ED       PERU         >5%                  0%                1.2361111   0.4658353   3.2800664
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   (0%, 5%]             0%                1.0724681   0.7357534   1.5632788
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   >5%                  0%                1.5504158   1.1209642   2.1443942
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.8859142   0.5696847   1.3776813
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   >5%                  0%                0.7945671   0.5188357   1.2168339
0-24 months (no birth wast)   PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROVIDE      BANGLADESH   (0%, 5%]             0%                1.6722008   1.1231777   2.4895930
0-24 months (no birth wast)   PROVIDE      BANGLADESH   >5%                  0%                1.0237209   0.6429284   1.6300487
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
6-24 months                   CMIN         BANGLADESH   (0%, 5%]             0%                0.7079903   0.4397235   1.1399215
6-24 months                   CMIN         BANGLADESH   >5%                  0%                1.0333778   0.7361686   1.4505777
6-24 months                   MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED       BANGLADESH   (0%, 5%]             0%                0.8682065   0.4768229   1.5808440
6-24 months                   MAL-ED       BANGLADESH   >5%                  0%                0.5186688   0.2445485   1.1000571
6-24 months                   MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED       INDIA        (0%, 5%]             0%                0.7192460   0.4292722   1.2050974
6-24 months                   MAL-ED       INDIA        >5%                  0%                1.0063559   0.5810829   1.7428705
6-24 months                   MAL-ED       NEPAL        0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED       NEPAL        (0%, 5%]             0%                0.3715170   0.1544035   0.8939232
6-24 months                   MAL-ED       NEPAL        >5%                  0%                0.7743857   0.4029837   1.4880830
6-24 months                   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Birth    BANGLADESH   (0%, 5%]             0%                0.9772727   0.6601357   1.4467662
6-24 months                   NIH-Birth    BANGLADESH   >5%                  0%                1.3462844   0.9560173   1.8958670
6-24 months                   NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.8356401   0.5201098   1.3425903
6-24 months                   NIH-Crypto   BANGLADESH   >5%                  0%                0.7551300   0.4792805   1.1897444
6-24 months                   PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   PROVIDE      BANGLADESH   (0%, 5%]             0%                1.3953333   0.8971928   2.1700520
6-24 months                   PROVIDE      BANGLADESH   >5%                  0%                0.7563317   0.4435292   1.2897407


### Parameter: PAR


agecat                        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMIN         BANGLADESH   0%                   NA                 0.0097496   -0.0715737   0.0910730
0-24 months (no birth wast)   MAL-ED       BANGLADESH   0%                   NA                -0.0147618   -0.0882929   0.0587693
0-24 months (no birth wast)   MAL-ED       INDIA        0%                   NA                -0.0368610   -0.1457785   0.0720566
0-24 months (no birth wast)   MAL-ED       NEPAL        0%                   NA                -0.0243989   -0.0945389   0.0457412
0-24 months (no birth wast)   MAL-ED       PERU         0%                   NA                 0.0021207   -0.0419662   0.0462076
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   0%                   NA                 0.0614931    0.0028231   0.1201631
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   0%                   NA                -0.0133573   -0.0393224   0.0126077
0-24 months (no birth wast)   PROVIDE      BANGLADESH   0%                   NA                 0.0367386   -0.0038589   0.0773361
0-6 months (no birth wast)    CMIN         BANGLADESH   0%                   NA                 0.0408361   -0.0077185   0.0893906
0-6 months (no birth wast)    MAL-ED       BANGLADESH   0%                   NA                 0.0010905   -0.0445425   0.0467235
0-6 months (no birth wast)    MAL-ED       INDIA        0%                   NA                -0.0096555   -0.0925720   0.0732611
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   0%                   NA                 0.0462791    0.0168369   0.0757213
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   0%                   NA                 0.0046028   -0.0072773   0.0164829
0-6 months (no birth wast)    PROVIDE      BANGLADESH   0%                   NA                 0.0164369   -0.0067683   0.0396421
6-24 months                   CMIN         BANGLADESH   0%                   NA                -0.0220561   -0.1060769   0.0619647
6-24 months                   MAL-ED       BANGLADESH   0%                   NA                -0.0461854   -0.1251580   0.0327871
6-24 months                   MAL-ED       INDIA        0%                   NA                -0.0476596   -0.1612302   0.0659111
6-24 months                   MAL-ED       NEPAL        0%                   NA                -0.0593085   -0.1279023   0.0092853
6-24 months                   NIH-Birth    BANGLADESH   0%                   NA                 0.0375440   -0.0291491   0.1042370
6-24 months                   NIH-Crypto   BANGLADESH   0%                   NA                -0.0163192   -0.0423732   0.0097347
6-24 months                   PROVIDE      BANGLADESH   0%                   NA                 0.0119073   -0.0359392   0.0597538


### Parameter: PAF


agecat                        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMIN         BANGLADESH   0%                   NA                 0.0227209   -0.1864367    0.1950060
0-24 months (no birth wast)   MAL-ED       BANGLADESH   0%                   NA                -0.0669371   -0.4581522    0.2193169
0-24 months (no birth wast)   MAL-ED       INDIA        0%                   NA                -0.0996461   -0.4374393    0.1587669
0-24 months (no birth wast)   MAL-ED       NEPAL        0%                   NA                -0.1267679   -0.5560689    0.1840940
0-24 months (no birth wast)   MAL-ED       PERU         0%                   NA                 0.0304976   -0.8642767    0.4958179
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   0%                   NA                 0.2069348   -0.0165515    0.3812882
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   0%                   NA                -0.0932540   -0.2898749    0.0733952
0-24 months (no birth wast)   PROVIDE      BANGLADESH   0%                   NA                 0.2068806   -0.0559505    0.4042918
0-6 months (no birth wast)    CMIN         BANGLADESH   0%                   NA                 0.3517170   -0.2098491    0.6526254
0-6 months (no birth wast)    MAL-ED       BANGLADESH   0%                   NA                 0.0150376   -0.8657846    0.4800306
0-6 months (no birth wast)    MAL-ED       INDIA        0%                   NA                -0.0604085   -0.7292670    0.3497440
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   0%                   NA                 0.5845252    0.0640759    0.8155627
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   0%                   NA                 0.1723757   -0.4065203    0.5130095
0-6 months (no birth wast)    PROVIDE      BANGLADESH   0%                   NA                 0.3034166   -0.2702928    0.6180185
6-24 months                   CMIN         BANGLADESH   0%                   NA                -0.0573004   -0.2998204    0.1399703
6-24 months                   MAL-ED       BANGLADESH   0%                   NA                -0.2577792   -0.7821004    0.1122786
6-24 months                   MAL-ED       INDIA        0%                   NA                -0.1750000   -0.6753318    0.1759095
6-24 months                   MAL-ED       NEPAL        0%                   NA                -0.3871528   -0.9051231   -0.0100097
6-24 months                   NIH-Birth    BANGLADESH   0%                   NA                 0.1279801   -0.1315305    0.3279733
6-24 months                   NIH-Crypto   BANGLADESH   0%                   NA                -0.1240942   -0.3396781    0.0567975
6-24 months                   PROVIDE      BANGLADESH   0%                   NA                 0.0739695   -0.2762333    0.3280754
