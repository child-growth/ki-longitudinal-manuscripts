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

**Outcome Variable:** ever_stunted

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

agecat                       studyid      country                        perdiar6    ever_stunted   n_cell     n
---------------------------  -----------  -----------------------------  ---------  -------------  -------  ----
0-24 months (no birth st.)   CMIN         BANGLADESH                     0%                     0       20   168
0-24 months (no birth st.)   CMIN         BANGLADESH                     0%                     1       48   168
0-24 months (no birth st.)   CMIN         BANGLADESH                     (0%, 5%]               0        5   168
0-24 months (no birth st.)   CMIN         BANGLADESH                     (0%, 5%]               1       29   168
0-24 months (no birth st.)   CMIN         BANGLADESH                     >5%                    0       16   168
0-24 months (no birth st.)   CMIN         BANGLADESH                     >5%                    1       50   168
0-24 months (no birth st.)   CONTENT      PERU                           0%                     0       84   195
0-24 months (no birth st.)   CONTENT      PERU                           0%                     1       19   195
0-24 months (no birth st.)   CONTENT      PERU                           (0%, 5%]               0       31   195
0-24 months (no birth st.)   CONTENT      PERU                           (0%, 5%]               1        6   195
0-24 months (no birth st.)   CONTENT      PERU                           >5%                    0       47   195
0-24 months (no birth st.)   CONTENT      PERU                           >5%                    1        8   195
0-24 months (no birth st.)   EE           PAKISTAN                       0%                     0       38   213
0-24 months (no birth st.)   EE           PAKISTAN                       0%                     1      161   213
0-24 months (no birth st.)   EE           PAKISTAN                       (0%, 5%]               0        2   213
0-24 months (no birth st.)   EE           PAKISTAN                       (0%, 5%]               1       11   213
0-24 months (no birth st.)   EE           PAKISTAN                       >5%                    0        1   213
0-24 months (no birth st.)   EE           PAKISTAN                       >5%                    1        0   213
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0%                     0       35   217
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0%                     1       37   217
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     (0%, 5%]               0       41   217
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     (0%, 5%]               1       44   217
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     >5%                    0       27   217
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     >5%                    1       33   217
0-24 months (no birth st.)   MAL-ED       BRAZIL                         0%                     0      156   202
0-24 months (no birth st.)   MAL-ED       BRAZIL                         0%                     1       30   202
0-24 months (no birth st.)   MAL-ED       BRAZIL                         (0%, 5%]               0       12   202
0-24 months (no birth st.)   MAL-ED       BRAZIL                         (0%, 5%]               1        2   202
0-24 months (no birth st.)   MAL-ED       BRAZIL                         >5%                    0        2   202
0-24 months (no birth st.)   MAL-ED       BRAZIL                         >5%                    1        0   202
0-24 months (no birth st.)   MAL-ED       INDIA                          0%                     0       23   210
0-24 months (no birth st.)   MAL-ED       INDIA                          0%                     1       26   210
0-24 months (no birth st.)   MAL-ED       INDIA                          (0%, 5%]               0       53   210
0-24 months (no birth st.)   MAL-ED       INDIA                          (0%, 5%]               1       53   210
0-24 months (no birth st.)   MAL-ED       INDIA                          >5%                    0       23   210
0-24 months (no birth st.)   MAL-ED       INDIA                          >5%                    1       32   210
0-24 months (no birth st.)   MAL-ED       NEPAL                          0%                     0       53   211
0-24 months (no birth st.)   MAL-ED       NEPAL                          0%                     1       20   211
0-24 months (no birth st.)   MAL-ED       NEPAL                          (0%, 5%]               0       54   211
0-24 months (no birth st.)   MAL-ED       NEPAL                          (0%, 5%]               1       14   211
0-24 months (no birth st.)   MAL-ED       NEPAL                          >5%                    0       49   211
0-24 months (no birth st.)   MAL-ED       NEPAL                          >5%                    1       21   211
0-24 months (no birth st.)   MAL-ED       PERU                           0%                     0       37   266
0-24 months (no birth st.)   MAL-ED       PERU                           0%                     1       40   266
0-24 months (no birth st.)   MAL-ED       PERU                           (0%, 5%]               0       29   266
0-24 months (no birth st.)   MAL-ED       PERU                           (0%, 5%]               1       51   266
0-24 months (no birth st.)   MAL-ED       PERU                           >5%                    0       49   266
0-24 months (no birth st.)   MAL-ED       PERU                           >5%                    1       60   266
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   0%                     0      100   265
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   0%                     1      104   265
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       21   265
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       31   265
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   >5%                    0        7   265
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   >5%                    1        2   265
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       19   219
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       75   219
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       16   219
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       69   219
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0        5   219
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       35   219
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0%                     0       69   528
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0%                     1       72   528
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     (0%, 5%]               0       67   528
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     (0%, 5%]               1       92   528
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     >5%                    0       73   528
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     >5%                    1      155   528
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0%                     0      196   653
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0%                     1      117   653
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     (0%, 5%]               0       85   653
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     (0%, 5%]               1       66   653
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     >5%                    0      115   653
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     >5%                    1       74   653
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0%                     0      149   633
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0%                     1       53   633
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     (0%, 5%]               0      137   633
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     (0%, 5%]               1      101   633
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     >5%                    0      109   633
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     >5%                    1       84   633
0-6 months (no birth st.)    CMIN         BANGLADESH                     0%                     0       45   168
0-6 months (no birth st.)    CMIN         BANGLADESH                     0%                     1       23   168
0-6 months (no birth st.)    CMIN         BANGLADESH                     (0%, 5%]               0       24   168
0-6 months (no birth st.)    CMIN         BANGLADESH                     (0%, 5%]               1       10   168
0-6 months (no birth st.)    CMIN         BANGLADESH                     >5%                    0       51   168
0-6 months (no birth st.)    CMIN         BANGLADESH                     >5%                    1       15   168
0-6 months (no birth st.)    CONTENT      PERU                           0%                     0       99   195
0-6 months (no birth st.)    CONTENT      PERU                           0%                     1        4   195
0-6 months (no birth st.)    CONTENT      PERU                           (0%, 5%]               0       37   195
0-6 months (no birth st.)    CONTENT      PERU                           (0%, 5%]               1        0   195
0-6 months (no birth st.)    CONTENT      PERU                           >5%                    0       52   195
0-6 months (no birth st.)    CONTENT      PERU                           >5%                    1        3   195
0-6 months (no birth st.)    EE           PAKISTAN                       0%                     0       86   213
0-6 months (no birth st.)    EE           PAKISTAN                       0%                     1      113   213
0-6 months (no birth st.)    EE           PAKISTAN                       (0%, 5%]               0        8   213
0-6 months (no birth st.)    EE           PAKISTAN                       (0%, 5%]               1        5   213
0-6 months (no birth st.)    EE           PAKISTAN                       >5%                    0        1   213
0-6 months (no birth st.)    EE           PAKISTAN                       >5%                    1        0   213
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0%                     0       49   217
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0%                     1       23   217
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     (0%, 5%]               0       73   217
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     (0%, 5%]               1       12   217
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     >5%                    0       48   217
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     >5%                    1       12   217
0-6 months (no birth st.)    MAL-ED       BRAZIL                         0%                     0      167   202
0-6 months (no birth st.)    MAL-ED       BRAZIL                         0%                     1       19   202
0-6 months (no birth st.)    MAL-ED       BRAZIL                         (0%, 5%]               0       12   202
0-6 months (no birth st.)    MAL-ED       BRAZIL                         (0%, 5%]               1        2   202
0-6 months (no birth st.)    MAL-ED       BRAZIL                         >5%                    0        2   202
0-6 months (no birth st.)    MAL-ED       BRAZIL                         >5%                    1        0   202
0-6 months (no birth st.)    MAL-ED       INDIA                          0%                     0       38   210
0-6 months (no birth st.)    MAL-ED       INDIA                          0%                     1       11   210
0-6 months (no birth st.)    MAL-ED       INDIA                          (0%, 5%]               0       88   210
0-6 months (no birth st.)    MAL-ED       INDIA                          (0%, 5%]               1       18   210
0-6 months (no birth st.)    MAL-ED       INDIA                          >5%                    0       38   210
0-6 months (no birth st.)    MAL-ED       INDIA                          >5%                    1       17   210
0-6 months (no birth st.)    MAL-ED       NEPAL                          0%                     0       64   211
0-6 months (no birth st.)    MAL-ED       NEPAL                          0%                     1        9   211
0-6 months (no birth st.)    MAL-ED       NEPAL                          (0%, 5%]               0       65   211
0-6 months (no birth st.)    MAL-ED       NEPAL                          (0%, 5%]               1        3   211
0-6 months (no birth st.)    MAL-ED       NEPAL                          >5%                    0       68   211
0-6 months (no birth st.)    MAL-ED       NEPAL                          >5%                    1        2   211
0-6 months (no birth st.)    MAL-ED       PERU                           0%                     0       53   266
0-6 months (no birth st.)    MAL-ED       PERU                           0%                     1       24   266
0-6 months (no birth st.)    MAL-ED       PERU                           (0%, 5%]               0       47   266
0-6 months (no birth st.)    MAL-ED       PERU                           (0%, 5%]               1       33   266
0-6 months (no birth st.)    MAL-ED       PERU                           >5%                    0       74   266
0-6 months (no birth st.)    MAL-ED       PERU                           >5%                    1       35   266
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   0%                     0      143   265
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   0%                     1       61   265
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       38   265
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       14   265
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   >5%                    0        7   265
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   >5%                    1        2   265
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       67   219
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       27   219
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       59   219
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       26   219
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       27   219
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       13   219
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0%                     0      126   528
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0%                     1       15   528
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     (0%, 5%]               0      120   528
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     (0%, 5%]               1       39   528
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     >5%                    0      161   528
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     >5%                    1       67   528
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0%                     0      260   653
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0%                     1       53   653
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     (0%, 5%]               0      112   653
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     (0%, 5%]               1       39   653
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     >5%                    0      157   653
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     >5%                    1       32   653
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0%                     0      183   633
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0%                     1       19   633
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     (0%, 5%]               0      193   633
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     (0%, 5%]               1       45   633
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     >5%                    0      156   633
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     >5%                    1       37   633
6-24 months                  CMIN         BANGLADESH                     0%                     0       14   111
6-24 months                  CMIN         BANGLADESH                     0%                     1       25   111
6-24 months                  CMIN         BANGLADESH                     (0%, 5%]               0        5   111
6-24 months                  CMIN         BANGLADESH                     (0%, 5%]               1       19   111
6-24 months                  CMIN         BANGLADESH                     >5%                    0       13   111
6-24 months                  CMIN         BANGLADESH                     >5%                    1       35   111
6-24 months                  CONTENT      PERU                           0%                     0       84   188
6-24 months                  CONTENT      PERU                           0%                     1       15   188
6-24 months                  CONTENT      PERU                           (0%, 5%]               0       31   188
6-24 months                  CONTENT      PERU                           (0%, 5%]               1        6   188
6-24 months                  CONTENT      PERU                           >5%                    0       47   188
6-24 months                  CONTENT      PERU                           >5%                    1        5   188
6-24 months                  EE           PAKISTAN                       0%                     0       36    93
6-24 months                  EE           PAKISTAN                       0%                     1       48    93
6-24 months                  EE           PAKISTAN                       (0%, 5%]               0        2    93
6-24 months                  EE           PAKISTAN                       (0%, 5%]               1        6    93
6-24 months                  EE           PAKISTAN                       >5%                    0        1    93
6-24 months                  EE           PAKISTAN                       >5%                    1        0    93
6-24 months                  MAL-ED       BANGLADESH                     0%                     0       27   158
6-24 months                  MAL-ED       BANGLADESH                     0%                     1       14   158
6-24 months                  MAL-ED       BANGLADESH                     (0%, 5%]               0       39   158
6-24 months                  MAL-ED       BANGLADESH                     (0%, 5%]               1       32   158
6-24 months                  MAL-ED       BANGLADESH                     >5%                    0       25   158
6-24 months                  MAL-ED       BANGLADESH                     >5%                    1       21   158
6-24 months                  MAL-ED       BRAZIL                         0%                     0      138   163
6-24 months                  MAL-ED       BRAZIL                         0%                     1       11   163
6-24 months                  MAL-ED       BRAZIL                         (0%, 5%]               0       12   163
6-24 months                  MAL-ED       BRAZIL                         (0%, 5%]               1        0   163
6-24 months                  MAL-ED       BRAZIL                         >5%                    0        2   163
6-24 months                  MAL-ED       BRAZIL                         >5%                    1        0   163
6-24 months                  MAL-ED       INDIA                          0%                     0       15   154
6-24 months                  MAL-ED       INDIA                          0%                     1       15   154
6-24 months                  MAL-ED       INDIA                          (0%, 5%]               0       52   154
6-24 months                  MAL-ED       INDIA                          (0%, 5%]               1       35   154
6-24 months                  MAL-ED       INDIA                          >5%                    0       22   154
6-24 months                  MAL-ED       INDIA                          >5%                    1       15   154
6-24 months                  MAL-ED       NEPAL                          0%                     0       52   194
6-24 months                  MAL-ED       NEPAL                          0%                     1       11   194
6-24 months                  MAL-ED       NEPAL                          (0%, 5%]               0       53   194
6-24 months                  MAL-ED       NEPAL                          (0%, 5%]               1       11   194
6-24 months                  MAL-ED       NEPAL                          >5%                    0       48   194
6-24 months                  MAL-ED       NEPAL                          >5%                    1       19   194
6-24 months                  MAL-ED       PERU                           0%                     0       19   149
6-24 months                  MAL-ED       PERU                           0%                     1       16   149
6-24 months                  MAL-ED       PERU                           (0%, 5%]               0       26   149
6-24 months                  MAL-ED       PERU                           (0%, 5%]               1       18   149
6-24 months                  MAL-ED       PERU                           >5%                    0       45   149
6-24 months                  MAL-ED       PERU                           >5%                    1       25   149
6-24 months                  MAL-ED       SOUTH AFRICA                   0%                     0       74   158
6-24 months                  MAL-ED       SOUTH AFRICA                   0%                     1       43   158
6-24 months                  MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       18   158
6-24 months                  MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       17   158
6-24 months                  MAL-ED       SOUTH AFRICA                   >5%                    0        6   158
6-24 months                  MAL-ED       SOUTH AFRICA                   >5%                    1        0   158
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       12   144
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       48   144
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       14   144
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       43   144
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0        5   144
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       22   144
6-24 months                  NIH-Birth    BANGLADESH                     0%                     0       37   345
6-24 months                  NIH-Birth    BANGLADESH                     0%                     1       57   345
6-24 months                  NIH-Birth    BANGLADESH                     (0%, 5%]               0       59   345
6-24 months                  NIH-Birth    BANGLADESH                     (0%, 5%]               1       53   345
6-24 months                  NIH-Birth    BANGLADESH                     >5%                    0       51   345
6-24 months                  NIH-Birth    BANGLADESH                     >5%                    1       88   345
6-24 months                  NIH-Crypto   BANGLADESH                     0%                     0      182   506
6-24 months                  NIH-Crypto   BANGLADESH                     0%                     1       64   506
6-24 months                  NIH-Crypto   BANGLADESH                     (0%, 5%]               0       81   506
6-24 months                  NIH-Crypto   BANGLADESH                     (0%, 5%]               1       27   506
6-24 months                  NIH-Crypto   BANGLADESH                     >5%                    0      110   506
6-24 months                  NIH-Crypto   BANGLADESH                     >5%                    1       42   506
6-24 months                  PROVIDE      BANGLADESH                     0%                     0       93   456
6-24 months                  PROVIDE      BANGLADESH                     0%                     1       34   456
6-24 months                  PROVIDE      BANGLADESH                     (0%, 5%]               0      126   456
6-24 months                  PROVIDE      BANGLADESH                     (0%, 5%]               1       56   456
6-24 months                  PROVIDE      BANGLADESH                     >5%                    0      100   456
6-24 months                  PROVIDE      BANGLADESH                     >5%                    1       47   456


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA

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
![](/tmp/606ff407-3f8c-45c5-9f2a-442e75364fc8/75de5a5d-1784-4243-ad3a-d63f3ab4991c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/606ff407-3f8c-45c5-9f2a-442e75364fc8/75de5a5d-1784-4243-ad3a-d63f3ab4991c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/606ff407-3f8c-45c5-9f2a-442e75364fc8/75de5a5d-1784-4243-ad3a-d63f3ab4991c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/606ff407-3f8c-45c5-9f2a-442e75364fc8/75de5a5d-1784-4243-ad3a-d63f3ab4991c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMIN         BANGLADESH                     0%                   NA                0.7058824   0.5972606   0.8145041
0-24 months (no birth st.)   CMIN         BANGLADESH                     (0%, 5%]             NA                0.8529412   0.7335396   0.9723428
0-24 months (no birth st.)   CMIN         BANGLADESH                     >5%                  NA                0.7575758   0.6538770   0.8612745
0-24 months (no birth st.)   CONTENT      PERU                           0%                   NA                0.1844660   0.1093686   0.2595635
0-24 months (no birth st.)   CONTENT      PERU                           (0%, 5%]             NA                0.1621622   0.0430878   0.2812366
0-24 months (no birth st.)   CONTENT      PERU                           >5%                  NA                0.1454545   0.0520400   0.2388691
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0%                   NA                0.5138889   0.3981745   0.6296032
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.5176471   0.4111737   0.6241204
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     >5%                  NA                0.5500000   0.4238280   0.6761720
0-24 months (no birth st.)   MAL-ED       INDIA                          0%                   NA                0.5306122   0.3905436   0.6706809
0-24 months (no birth st.)   MAL-ED       INDIA                          (0%, 5%]             NA                0.5000000   0.4045883   0.5954117
0-24 months (no birth st.)   MAL-ED       INDIA                          >5%                  NA                0.5818182   0.4511471   0.7124893
0-24 months (no birth st.)   MAL-ED       NEPAL                          0%                   NA                0.2739726   0.1714196   0.3765256
0-24 months (no birth st.)   MAL-ED       NEPAL                          (0%, 5%]             NA                0.2058824   0.1095489   0.3022158
0-24 months (no birth st.)   MAL-ED       NEPAL                          >5%                  NA                0.3000000   0.1923931   0.4076069
0-24 months (no birth st.)   MAL-ED       PERU                           0%                   NA                0.5194805   0.4076756   0.6312854
0-24 months (no birth st.)   MAL-ED       PERU                           (0%, 5%]             NA                0.6375000   0.5319605   0.7430395
0-24 months (no birth st.)   MAL-ED       PERU                           >5%                  NA                0.5504587   0.4568966   0.6440208
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7978723   0.7165036   0.8792411
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8117647   0.7284737   0.8950557
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8750000   0.7722762   0.9777238
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0%                   NA                0.5106383   0.4280494   0.5932272
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.5786164   0.5017926   0.6554401
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     >5%                  NA                0.6798246   0.6192089   0.7404402
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0%                   NA                0.3738019   0.3201623   0.4274415
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.4370861   0.3579095   0.5162627
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     >5%                  NA                0.3915344   0.3218953   0.4611735
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0%                   NA                0.2623762   0.2016613   0.3230912
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.4243697   0.3615282   0.4872113
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     >5%                  NA                0.4352332   0.3652315   0.5052348
0-6 months (no birth st.)    CMIN         BANGLADESH                     0%                   NA                0.3382353   0.2254503   0.4510203
0-6 months (no birth st.)    CMIN         BANGLADESH                     (0%, 5%]             NA                0.2941176   0.1405033   0.4477320
0-6 months (no birth st.)    CMIN         BANGLADESH                     >5%                  NA                0.2272727   0.1258677   0.3286777
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0%                   NA                0.3194444   0.2114965   0.4273924
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1411765   0.0669815   0.2153715
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     >5%                  NA                0.2000000   0.0985539   0.3014461
0-6 months (no birth st.)    MAL-ED       INDIA                          0%                   NA                0.2244898   0.1073839   0.3415957
0-6 months (no birth st.)    MAL-ED       INDIA                          (0%, 5%]             NA                0.1698113   0.0981634   0.2414592
0-6 months (no birth st.)    MAL-ED       INDIA                          >5%                  NA                0.3090909   0.1866697   0.4315122
0-6 months (no birth st.)    MAL-ED       PERU                           0%                   NA                0.3116883   0.2080373   0.4153393
0-6 months (no birth st.)    MAL-ED       PERU                           (0%, 5%]             NA                0.4125000   0.3044221   0.5205779
0-6 months (no birth st.)    MAL-ED       PERU                           >5%                  NA                0.3211009   0.2332844   0.4089174
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2872340   0.1955551   0.3789129
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.3058824   0.2077016   0.4040631
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.3250000   0.1795193   0.4704807
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0%                   NA                0.1063830   0.0554426   0.1573233
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.2452830   0.1783428   0.3122232
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     >5%                  NA                0.2938596   0.2346752   0.3530441
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0%                   NA                0.1693291   0.1277486   0.2109095
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2582781   0.1884136   0.3281427
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     >5%                  NA                0.1693122   0.1158049   0.2228195
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0%                   NA                0.0940594   0.0537722   0.1343466
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1890756   0.1392892   0.2388620
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     >5%                  NA                0.1917098   0.1361298   0.2472899
6-24 months                  CMIN         BANGLADESH                     0%                   NA                0.6410256   0.4897913   0.7922600
6-24 months                  CMIN         BANGLADESH                     (0%, 5%]             NA                0.7916667   0.6284524   0.9548810
6-24 months                  CMIN         BANGLADESH                     >5%                  NA                0.7291667   0.6028801   0.8554532
6-24 months                  CONTENT      PERU                           0%                   NA                0.1515152   0.0806980   0.2223323
6-24 months                  CONTENT      PERU                           (0%, 5%]             NA                0.1621622   0.0430763   0.2812480
6-24 months                  CONTENT      PERU                           >5%                  NA                0.0961538   0.0158132   0.1764945
6-24 months                  MAL-ED       BANGLADESH                     0%                   NA                0.3414634   0.1958515   0.4870753
6-24 months                  MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4507042   0.3346004   0.5668081
6-24 months                  MAL-ED       BANGLADESH                     >5%                  NA                0.4565217   0.3121209   0.6009226
6-24 months                  MAL-ED       INDIA                          0%                   NA                0.5000000   0.3204968   0.6795032
6-24 months                  MAL-ED       INDIA                          (0%, 5%]             NA                0.4022989   0.2989229   0.5056748
6-24 months                  MAL-ED       INDIA                          >5%                  NA                0.4054054   0.2466907   0.5641201
6-24 months                  MAL-ED       NEPAL                          0%                   NA                0.1746032   0.0806184   0.2685879
6-24 months                  MAL-ED       NEPAL                          (0%, 5%]             NA                0.1718750   0.0792060   0.2645440
6-24 months                  MAL-ED       NEPAL                          >5%                  NA                0.2835821   0.1753750   0.3917891
6-24 months                  MAL-ED       PERU                           0%                   NA                0.4571429   0.2915487   0.6227370
6-24 months                  MAL-ED       PERU                           (0%, 5%]             NA                0.4090909   0.2633256   0.5548563
6-24 months                  MAL-ED       PERU                           >5%                  NA                0.3571429   0.2445166   0.4697691
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8000000   0.6984346   0.9015654
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7543860   0.6422494   0.8665225
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8148148   0.6677828   0.9618469
6-24 months                  NIH-Birth    BANGLADESH                     0%                   NA                0.6063830   0.5074765   0.7052895
6-24 months                  NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.4732143   0.3806134   0.5658152
6-24 months                  NIH-Birth    BANGLADESH                     >5%                  NA                0.6330935   0.5528551   0.7133320
6-24 months                  NIH-Crypto   BANGLADESH                     0%                   NA                0.2601626   0.2052843   0.3150409
6-24 months                  NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2500000   0.1682540   0.3317460
6-24 months                  NIH-Crypto   BANGLADESH                     >5%                  NA                0.2763158   0.2051562   0.3474754
6-24 months                  PROVIDE      BANGLADESH                     0%                   NA                0.2677165   0.1906262   0.3448069
6-24 months                  PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3076923   0.2405653   0.3748193
6-24 months                  PROVIDE      BANGLADESH                     >5%                  NA                0.3197279   0.2442538   0.3952020


### Parameter: E(Y)


agecat                       studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMIN         BANGLADESH                     NA                   NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   CONTENT      PERU                           NA                   NA                0.1692308   0.1164681   0.2219935
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     NA                   NA                0.5253456   0.4587520   0.5919392
0-24 months (no birth st.)   MAL-ED       INDIA                          NA                   NA                0.5285714   0.4608954   0.5962474
0-24 months (no birth st.)   MAL-ED       NEPAL                          NA                   NA                0.2606635   0.2012891   0.3200380
0-24 months (no birth st.)   MAL-ED       PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8173516   0.7660617   0.8686415
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     NA                   NA                0.6041667   0.5624147   0.6459187
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-6 months (no birth st.)    CMIN         BANGLADESH                     NA                   NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     NA                   NA                0.2165899   0.1616567   0.2715231
0-6 months (no birth st.)    MAL-ED       INDIA                          NA                   NA                0.2190476   0.1629743   0.2751210
0-6 months (no birth st.)    MAL-ED       PERU                           NA                   NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3013699   0.2404592   0.3622805
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     NA                   NA                0.2291667   0.1932828   0.2650505
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
6-24 months                  CMIN         BANGLADESH                     NA                   NA                0.7117117   0.6270636   0.7963598
6-24 months                  CONTENT      PERU                           NA                   NA                0.1382979   0.0888197   0.1877760
6-24 months                  MAL-ED       BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  MAL-ED       INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months                  MAL-ED       NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months                  MAL-ED       PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7847222   0.7173567   0.8520877
6-24 months                  NIH-Birth    BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  NIH-Crypto   BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  PROVIDE      BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629


### Parameter: RR


agecat                       studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMIN         BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   CMIN         BANGLADESH                     (0%, 5%]             0%                1.2083333   0.9813886   1.4877587
0-24 months (no birth st.)   CMIN         BANGLADESH                     >5%                  0%                1.0732323   0.8734742   1.3186739
0-24 months (no birth st.)   CONTENT      PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   CONTENT      PERU                           (0%, 5%]             0%                0.8790896   0.3796656   2.0354714
0-24 months (no birth st.)   CONTENT      PERU                           >5%                  0%                0.7885167   0.3686200   1.6867200
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     (0%, 5%]             0%                1.0073132   0.7425318   1.3665138
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     >5%                  0%                1.0702703   0.7760506   1.4760358
0-24 months (no birth st.)   MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED       INDIA                          (0%, 5%]             0%                0.9423077   0.6803497   1.3051284
0-24 months (no birth st.)   MAL-ED       INDIA                          >5%                  0%                1.0965035   0.7753328   1.5507146
0-24 months (no birth st.)   MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED       NEPAL                          (0%, 5%]             0%                0.7514706   0.4127427   1.3681841
0-24 months (no birth st.)   MAL-ED       NEPAL                          >5%                  0%                1.0950000   0.6520210   1.8389362
0-24 months (no birth st.)   MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED       PERU                           (0%, 5%]             0%                1.2271875   0.9353767   1.6100350
0-24 months (no birth st.)   MAL-ED       PERU                           >5%                  0%                1.0596330   0.8054736   1.3939901
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.0174118   0.8803783   1.1757749
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0966667   0.9387248   1.2811824
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                1.1331237   0.9191782   1.3968666
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     >5%                  0%                1.3313231   1.1068158   1.6013695
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.1692987   0.9280291   1.4732937
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     >5%                  0%                1.0474382   0.8334484   1.3163703
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.6174092   1.2288717   2.1287923
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     >5%                  0%                1.6588132   1.2514379   2.1987996
0-6 months (no birth st.)    CMIN         BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    CMIN         BANGLADESH                     (0%, 5%]             0%                0.8695652   0.4679381   1.6159054
0-6 months (no birth st.)    CMIN         BANGLADESH                     >5%                  0%                0.6719368   0.3849630   1.1728376
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.4419437   0.2365993   0.8255066
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     >5%                  0%                0.6260870   0.3403592   1.1516801
0-6 months (no birth st.)    MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED       INDIA                          (0%, 5%]             0%                0.7564322   0.3867139   1.4796203
0-6 months (no birth st.)    MAL-ED       INDIA                          >5%                  0%                1.3768595   0.7152164   2.6505854
0-6 months (no birth st.)    MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED       PERU                           (0%, 5%]             0%                1.3234375   0.8666421   2.0210036
0-6 months (no birth st.)    MAL-ED       PERU                           >5%                  0%                1.0301988   0.6697785   1.5845678
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.0649237   0.6772223   1.6745795
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.1314815   0.6529563   1.9606982
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                2.3056604   1.3287206   4.0008937
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     >5%                  0%                2.7622807   1.6431008   4.6437777
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.5253030   1.0585043   2.1979592
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     >5%                  0%                0.9999002   0.6701082   1.4919983
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     (0%, 5%]             0%                2.0101725   1.2158444   3.3234461
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     >5%                  0%                2.0381783   1.2151237   3.4187228
6-24 months                  CMIN         BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  CMIN         BANGLADESH                     (0%, 5%]             0%                1.2350000   0.9028110   1.6894178
6-24 months                  CMIN         BANGLADESH                     >5%                  0%                1.1375000   0.8488789   1.5242530
6-24 months                  CONTENT      PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  CONTENT      PERU                           (0%, 5%]             0%                1.0702703   0.4481737   2.5558805
6-24 months                  CONTENT      PERU                           >5%                  0%                0.6346154   0.2436258   1.6530957
6-24 months                  MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED       BANGLADESH                     (0%, 5%]             0%                1.3199195   0.8020107   2.1722746
6-24 months                  MAL-ED       BANGLADESH                     >5%                  0%                1.3369565   0.7862004   2.2735333
6-24 months                  MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED       INDIA                          (0%, 5%]             0%                0.8045977   0.5174174   1.2511706
6-24 months                  MAL-ED       INDIA                          >5%                  0%                0.8108108   0.4766833   1.3791426
6-24 months                  MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED       NEPAL                          (0%, 5%]             0%                0.9843750   0.4595006   2.1087982
6-24 months                  MAL-ED       NEPAL                          >5%                  0%                1.6241520   0.8396112   3.1417750
6-24 months                  MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED       PERU                           (0%, 5%]             0%                0.8948864   0.5383916   1.4874334
6-24 months                  MAL-ED       PERU                           >5%                  0%                0.7812500   0.4832918   1.2629048
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.9429825   0.7755438   1.1465708
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0185185   0.8168617   1.2699579
6-24 months                  NIH-Birth    BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  NIH-Birth    BANGLADESH                     (0%, 5%]             0%                0.7803885   0.6048876   1.0068088
6-24 months                  NIH-Birth    BANGLADESH                     >5%                  0%                1.0440490   0.8492046   1.2835991
6-24 months                  NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                0.9609375   0.6511828   1.4180363
6-24 months                  NIH-Crypto   BANGLADESH                     >5%                  0%                1.0620888   0.7613563   1.4816094
6-24 months                  PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.1493213   0.8008397   1.6494429
6-24 months                  PROVIDE      BANGLADESH                     >5%                  0%                1.1942777   0.8229960   1.7330574


### Parameter: PAR


agecat                       studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   CMIN         BANGLADESH                     0%                   NA                 0.0500700   -0.0304974    0.1306374
0-24 months (no birth st.)   CONTENT      PERU                           0%                   NA                -0.0152353   -0.0648918    0.0344213
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0%                   NA                 0.0114567   -0.0830902    0.1060036
0-24 months (no birth st.)   MAL-ED       INDIA                          0%                   NA                -0.0020408   -0.1246933    0.1206117
0-24 months (no birth st.)   MAL-ED       NEPAL                          0%                   NA                -0.0133091   -0.0955599    0.0689417
0-24 months (no birth st.)   MAL-ED       PERU                           0%                   NA                 0.0481887   -0.0457312    0.1421085
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0194793   -0.0402523    0.0792108
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0%                   NA                 0.0935284    0.0233774    0.1636794
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0197662   -0.0192873    0.0588197
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0%                   NA                 0.1136111    0.0610785    0.1661438
0-6 months (no birth st.)    CMIN         BANGLADESH                     0%                   NA                -0.0525210   -0.1368856    0.0318436
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0%                   NA                -0.1028546   -0.1861475   -0.0195617
0-6 months (no birth st.)    MAL-ED       INDIA                          0%                   NA                -0.0054422   -0.1077077    0.0968233
0-6 months (no birth st.)    MAL-ED       PERU                           0%                   NA                 0.0341763   -0.0541595    0.1225122
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0141358   -0.0558632    0.0841348
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0%                   NA                 0.1227837    0.0728172    0.1727501
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0%                   NA                 0.0205637   -0.0107068    0.0518342
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0%                   NA                 0.0654983    0.0280515    0.1029450
6-24 months                  CMIN         BANGLADESH                     0%                   NA                 0.0706861   -0.0474877    0.1888598
6-24 months                  CONTENT      PERU                           0%                   NA                -0.0132173   -0.0599220    0.0334874
6-24 months                  MAL-ED       BANGLADESH                     0%                   NA                 0.0825872   -0.0445924    0.2097669
6-24 months                  MAL-ED       INDIA                          0%                   NA                -0.0779221   -0.2385211    0.0826769
6-24 months                  MAL-ED       NEPAL                          0%                   NA                 0.0367370   -0.0433482    0.1168223
6-24 months                  MAL-ED       PERU                           0%                   NA                -0.0611697   -0.2052077    0.0828683
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0152778   -0.0943813    0.0638257
6-24 months                  NIH-Birth    BANGLADESH                     0%                   NA                -0.0324699   -0.1172195    0.0522797
6-24 months                  NIH-Crypto   BANGLADESH                     0%                   NA                 0.0026832   -0.0367783    0.0421448
6-24 months                  PROVIDE      BANGLADESH                     0%                   NA                 0.0327221   -0.0336637    0.0991078


### Parameter: PAF


agecat                       studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   CMIN         BANGLADESH                     0%                   NA                 0.0662344   -0.0474806    0.1676044
0-24 months (no birth st.)   CONTENT      PERU                           0%                   NA                -0.0900265   -0.4257630    0.1666513
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0%                   NA                 0.0218080   -0.1758122    0.1862139
0-24 months (no birth st.)   MAL-ED       INDIA                          0%                   NA                -0.0038610   -0.2649176    0.2033182
0-24 months (no birth st.)   MAL-ED       NEPAL                          0%                   NA                -0.0510585   -0.4190114    0.2214833
0-24 months (no birth st.)   MAL-ED       PERU                           0%                   NA                 0.0848886   -0.0968632    0.2365239
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0238322   -0.0521798    0.0943528
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0%                   NA                 0.1548056    0.0294489    0.2639711
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0502231   -0.0544049    0.1444690
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0%                   NA                 0.3021674    0.1481204    0.4283578
0-6 months (no birth st.)    CMIN         BANGLADESH                     0%                   NA                -0.1838235   -0.5189632    0.0773719
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0%                   NA                -0.4748818   -0.9097091   -0.1390616
0-6 months (no birth st.)    MAL-ED       INDIA                          0%                   NA                -0.0248447   -0.6161868    0.3501329
0-6 months (no birth st.)    MAL-ED       PERU                           0%                   NA                 0.0988142   -0.1964269    0.3211990
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0469052   -0.2160687    0.2530112
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0%                   NA                 0.5357834    0.2764639    0.7021612
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0%                   NA                 0.1082913   -0.0719424    0.2582208
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0%                   NA                 0.4104990    0.1356635    0.5979442
6-24 months                  CMIN         BANGLADESH                     0%                   NA                 0.0993184   -0.0847491    0.2521521
6-24 months                  CONTENT      PERU                           0%                   NA                -0.0955711   -0.4895899    0.1942238
6-24 months                  MAL-ED       BANGLADESH                     0%                   NA                 0.1947579   -0.1692082    0.4454240
6-24 months                  MAL-ED       INDIA                          0%                   NA                -0.1846154   -0.6348712    0.1416366
6-24 months                  MAL-ED       NEPAL                          0%                   NA                 0.1738289   -0.3043634    0.4767112
6-24 months                  MAL-ED       PERU                           0%                   NA                -0.1544794   -0.5829813    0.1580300
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0194690   -0.1255240    0.0765927
6-24 months                  NIH-Birth    BANGLADESH                     0%                   NA                -0.0565764   -0.2152543    0.0813826
6-24 months                  NIH-Crypto   BANGLADESH                     0%                   NA                 0.0102084   -0.1519051    0.1495069
6-24 months                  PROVIDE      BANGLADESH                     0%                   NA                 0.1089143   -0.1416982    0.3045152
