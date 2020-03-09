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

* arm
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




# Results Detail

## Results Plots
![](/tmp/b0cc84d8-e10a-4825-9ddf-ebd0a1920530/f92fc457-e2a6-40e4-91bc-387142783538/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b0cc84d8-e10a-4825-9ddf-ebd0a1920530/f92fc457-e2a6-40e4-91bc-387142783538/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b0cc84d8-e10a-4825-9ddf-ebd0a1920530/f92fc457-e2a6-40e4-91bc-387142783538/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b0cc84d8-e10a-4825-9ddf-ebd0a1920530/f92fc457-e2a6-40e4-91bc-387142783538/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0%                   NA                0.5377071   0.4247641   0.6506501
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.5125884   0.4045210   0.6206559
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     >5%                  NA                0.5166917   0.3858989   0.6474845
0-24 months (no birth st.)   MAL-ED       INDIA                          0%                   NA                0.5838488   0.4544131   0.7132846
0-24 months (no birth st.)   MAL-ED       INDIA                          (0%, 5%]             NA                0.4946819   0.3992338   0.5901301
0-24 months (no birth st.)   MAL-ED       INDIA                          >5%                  NA                0.5380437   0.3994773   0.6766101
0-24 months (no birth st.)   MAL-ED       NEPAL                          0%                   NA                0.3078339   0.1966578   0.4190100
0-24 months (no birth st.)   MAL-ED       NEPAL                          (0%, 5%]             NA                0.1928192   0.0998692   0.2857691
0-24 months (no birth st.)   MAL-ED       NEPAL                          >5%                  NA                0.2786004   0.1689614   0.3882393
0-24 months (no birth st.)   MAL-ED       PERU                           0%                   NA                0.5809414   0.4744179   0.6874649
0-24 months (no birth st.)   MAL-ED       PERU                           (0%, 5%]             NA                0.6392834   0.5318971   0.7466697
0-24 months (no birth st.)   MAL-ED       PERU                           >5%                  NA                0.5334680   0.4364729   0.6304631
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7978723   0.7165036   0.8792411
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8117647   0.7284737   0.8950557
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8750000   0.7722762   0.9777238
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0%                   NA                0.5168645   0.4340656   0.5996634
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.5754524   0.4994979   0.6514068
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     >5%                  NA                0.6745612   0.6159463   0.7331762
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0%                   NA                0.3779732   0.3260340   0.4299125
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.4187380   0.3476132   0.4898628
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     >5%                  NA                0.3953065   0.3273972   0.4632158
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0%                   NA                0.2828657   0.2251871   0.3405443
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.4118867   0.3517762   0.4719972
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     >5%                  NA                0.4274077   0.3597257   0.4950897
0-6 months (no birth st.)    CMIN         BANGLADESH                     0%                   NA                0.3301793   0.2157969   0.4445618
0-6 months (no birth st.)    CMIN         BANGLADESH                     (0%, 5%]             NA                0.2828400   0.1271794   0.4385006
0-6 months (no birth st.)    CMIN         BANGLADESH                     >5%                  NA                0.2153869   0.1112246   0.3195492
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0%                   NA                0.3158099   0.2062354   0.4253844
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1350852   0.0597316   0.2104389
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     >5%                  NA                0.1946449   0.0910094   0.2982805
0-6 months (no birth st.)    MAL-ED       INDIA                          0%                   NA                0.2296066   0.1099737   0.3492396
0-6 months (no birth st.)    MAL-ED       INDIA                          (0%, 5%]             NA                0.1680646   0.0969793   0.2391499
0-6 months (no birth st.)    MAL-ED       INDIA                          >5%                  NA                0.3149217   0.1897498   0.4400936
0-6 months (no birth st.)    MAL-ED       PERU                           0%                   NA                0.3338630   0.2287223   0.4390037
0-6 months (no birth st.)    MAL-ED       PERU                           (0%, 5%]             NA                0.4043662   0.2924858   0.5162466
0-6 months (no birth st.)    MAL-ED       PERU                           >5%                  NA                0.3162878   0.2267713   0.4058042
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2895684   0.1967001   0.3824366
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.3086825   0.2088220   0.4085430
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.3242832   0.1739871   0.4745792
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0%                   NA                0.1082171   0.0566676   0.1597666
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.2464148   0.1789587   0.3138708
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     >5%                  NA                0.2929523   0.2333761   0.3525285
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0%                   NA                0.1733851   0.1329812   0.2137889
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2465278   0.1820240   0.3110315
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     >5%                  NA                0.1684236   0.1164732   0.2203739
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0%                   NA                0.0960909   0.0555417   0.1366401
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1899665   0.1399779   0.2399551
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     >5%                  NA                0.1907015   0.1354181   0.2459850
6-24 months                  CMIN         BANGLADESH                     0%                   NA                0.6410256   0.4897913   0.7922600
6-24 months                  CMIN         BANGLADESH                     (0%, 5%]             NA                0.7916667   0.6284524   0.9548810
6-24 months                  CMIN         BANGLADESH                     >5%                  NA                0.7291667   0.6028801   0.8554532
6-24 months                  CONTENT      PERU                           0%                   NA                0.1515152   0.0806980   0.2223323
6-24 months                  CONTENT      PERU                           (0%, 5%]             NA                0.1621622   0.0430763   0.2812480
6-24 months                  CONTENT      PERU                           >5%                  NA                0.0961538   0.0158132   0.1764945
6-24 months                  MAL-ED       BANGLADESH                     0%                   NA                0.3274550   0.1809669   0.4739430
6-24 months                  MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4312226   0.3150581   0.5473872
6-24 months                  MAL-ED       BANGLADESH                     >5%                  NA                0.4043434   0.2571370   0.5515498
6-24 months                  MAL-ED       INDIA                          0%                   NA                0.5279979   0.3469310   0.7090648
6-24 months                  MAL-ED       INDIA                          (0%, 5%]             NA                0.4068047   0.3034206   0.5101888
6-24 months                  MAL-ED       INDIA                          >5%                  NA                0.4472612   0.2829363   0.6115860
6-24 months                  MAL-ED       NEPAL                          0%                   NA                0.1719034   0.0757826   0.2680242
6-24 months                  MAL-ED       NEPAL                          (0%, 5%]             NA                0.1690445   0.0740951   0.2639939
6-24 months                  MAL-ED       NEPAL                          >5%                  NA                0.2878954   0.1766112   0.3991796
6-24 months                  MAL-ED       PERU                           0%                   NA                0.4522348   0.2788887   0.6255810
6-24 months                  MAL-ED       PERU                           (0%, 5%]             NA                0.4043959   0.2564103   0.5523815
6-24 months                  MAL-ED       PERU                           >5%                  NA                0.3551732   0.2415888   0.4687577
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8000000   0.6984346   0.9015654
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7543860   0.6422494   0.8665225
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8148148   0.6677828   0.9618469
6-24 months                  NIH-Birth    BANGLADESH                     0%                   NA                0.5995574   0.5035879   0.6955269
6-24 months                  NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.4913372   0.4002683   0.5824061
6-24 months                  NIH-Birth    BANGLADESH                     >5%                  NA                0.6336706   0.5560627   0.7112784
6-24 months                  NIH-Crypto   BANGLADESH                     0%                   NA                0.2587463   0.2040250   0.3134676
6-24 months                  NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2438677   0.1639679   0.3237675
6-24 months                  NIH-Crypto   BANGLADESH                     >5%                  NA                0.2846440   0.2114864   0.3578015
6-24 months                  PROVIDE      BANGLADESH                     0%                   NA                0.2640548   0.1895027   0.3386068
6-24 months                  PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3122431   0.2464576   0.3780287
6-24 months                  PROVIDE      BANGLADESH                     >5%                  NA                0.3208011   0.2472355   0.3943666


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
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.9532856   0.7103289   1.2793418
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     >5%                  0%                0.9609167   0.6936043   1.3312501
0-24 months (no birth st.)   MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED       INDIA                          (0%, 5%]             0%                0.8472774   0.6315607   1.1366746
0-24 months (no birth st.)   MAL-ED       INDIA                          >5%                  0%                0.9215463   0.6561477   1.2942933
0-24 months (no birth st.)   MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED       NEPAL                          (0%, 5%]             0%                0.6263740   0.3442651   1.1396577
0-24 months (no birth st.)   MAL-ED       NEPAL                          >5%                  0%                0.9050347   0.5294546   1.5470407
0-24 months (no birth st.)   MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED       PERU                           (0%, 5%]             0%                1.1004267   0.8572120   1.4126482
0-24 months (no birth st.)   MAL-ED       PERU                           >5%                  0%                0.9182820   0.7105232   1.1867899
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.0174118   0.8803783   1.1757749
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0966667   0.9387248   1.2811824
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                1.1133525   0.9063849   1.3675799
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     >5%                  0%                1.3051027   1.0893077   1.5636472
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.1078510   0.8978793   1.3669252
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     >5%                  0%                1.0458585   0.8438387   1.2962429
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.4561209   1.1430797   1.8548909
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     >5%                  0%                1.5109915   1.1734105   1.9456918
0-6 months (no birth st.)    CMIN         BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    CMIN         BANGLADESH                     (0%, 5%]             0%                0.8566255   0.4464414   1.6436807
0-6 months (no birth st.)    CMIN         BANGLADESH                     >5%                  0%                0.6523331   0.3595404   1.1835620
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.4277422   0.2214559   0.8261843
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     >5%                  0%                0.6163356   0.3270299   1.1615747
0-6 months (no birth st.)    MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED       INDIA                          (0%, 5%]             0%                0.7319675   0.3735151   1.4344172
0-6 months (no birth st.)    MAL-ED       INDIA                          >5%                  0%                1.3715707   0.7119795   2.6422196
0-6 months (no birth st.)    MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED       PERU                           (0%, 5%]             0%                1.2111742   0.7957300   1.8435184
0-6 months (no birth st.)    MAL-ED       PERU                           >5%                  0%                0.9473580   0.6200660   1.4474058
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.0660091   0.6745014   1.6847637
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.1198848   0.6365661   1.9701677
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                2.2770411   1.3153060   3.9419847
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     >5%                  0%                2.7070799   1.6128607   4.5436543
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.4218510   1.0127603   1.9961884
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     >5%                  0%                0.9713844   0.6664078   1.4159312
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.9769452   1.2028084   3.2493222
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     >5%                  0%                1.9845946   1.1902032   3.3091960
6-24 months                  CMIN         BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  CMIN         BANGLADESH                     (0%, 5%]             0%                1.2350000   0.9028110   1.6894178
6-24 months                  CMIN         BANGLADESH                     >5%                  0%                1.1375000   0.8488789   1.5242530
6-24 months                  CONTENT      PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  CONTENT      PERU                           (0%, 5%]             0%                1.0702703   0.4481737   2.5558805
6-24 months                  CONTENT      PERU                           >5%                  0%                0.6346154   0.2436258   1.6530957
6-24 months                  MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED       BANGLADESH                     (0%, 5%]             0%                1.3168913   0.7809107   2.2207441
6-24 months                  MAL-ED       BANGLADESH                     >5%                  0%                1.2348059   0.6950066   2.1938579
6-24 months                  MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED       INDIA                          (0%, 5%]             0%                0.7704665   0.5022872   1.1818311
6-24 months                  MAL-ED       INDIA                          >5%                  0%                0.8470889   0.5132894   1.3979630
6-24 months                  MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED       NEPAL                          (0%, 5%]             0%                0.9833693   0.4437220   2.1793267
6-24 months                  MAL-ED       NEPAL                          >5%                  0%                1.6747511   0.8477516   3.3085057
6-24 months                  MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED       PERU                           (0%, 5%]             0%                0.8942167   0.5261575   1.5197418
6-24 months                  MAL-ED       PERU                           >5%                  0%                0.7853735   0.4763608   1.2948410
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.9429825   0.7755438   1.1465708
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0185185   0.8168617   1.2699579
6-24 months                  NIH-Birth    BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  NIH-Birth    BANGLADESH                     (0%, 5%]             0%                0.8194999   0.6446006   1.0418545
6-24 months                  NIH-Birth    BANGLADESH                     >5%                  0%                1.0568973   0.8672129   1.2880710
6-24 months                  NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                0.9424973   0.6408323   1.3861678
6-24 months                  NIH-Crypto   BANGLADESH                     >5%                  0%                1.1000889   0.7895725   1.5327225
6-24 months                  PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.1824939   0.8367665   1.6710659
6-24 months                  PROVIDE      BANGLADESH                     >5%                  0%                1.2149037   0.8486682   1.7391848


### Parameter: PAR


agecat                       studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   CMIN         BANGLADESH                     0%                   NA                 0.0500700   -0.0304974    0.1306374
0-24 months (no birth st.)   CONTENT      PERU                           0%                   NA                -0.0152353   -0.0648918    0.0344213
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0%                   NA                -0.0123615   -0.1049484    0.0802254
0-24 months (no birth st.)   MAL-ED       INDIA                          0%                   NA                -0.0552774   -0.1710362    0.0604814
0-24 months (no birth st.)   MAL-ED       NEPAL                          0%                   NA                -0.0471704   -0.1374434    0.0431026
0-24 months (no birth st.)   MAL-ED       PERU                           0%                   NA                -0.0132722   -0.1037498    0.0772053
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0194793   -0.0402523    0.0792108
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0%                   NA                 0.0873022    0.0176762    0.1569282
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0155949   -0.0205444    0.0517343
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0%                   NA                 0.0931216    0.0444320    0.1418113
0-6 months (no birth st.)    CMIN         BANGLADESH                     0%                   NA                -0.0444650   -0.1302725    0.0413425
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0%                   NA                -0.0992201   -0.1838777   -0.0145624
0-6 months (no birth st.)    MAL-ED       INDIA                          0%                   NA                -0.0105590   -0.1152613    0.0941432
0-6 months (no birth st.)    MAL-ED       PERU                           0%                   NA                 0.0120017   -0.0780723    0.1020757
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0118015   -0.0595702    0.0831732
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0%                   NA                 0.1209496    0.0705270    0.1713722
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0%                   NA                 0.0165077   -0.0125323    0.0455477
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0%                   NA                 0.0634667    0.0258855    0.1010480
6-24 months                  CMIN         BANGLADESH                     0%                   NA                 0.0706861   -0.0474877    0.1888598
6-24 months                  CONTENT      PERU                           0%                   NA                -0.0132173   -0.0599220    0.0334874
6-24 months                  MAL-ED       BANGLADESH                     0%                   NA                 0.0965956   -0.0316126    0.2248038
6-24 months                  MAL-ED       INDIA                          0%                   NA                -0.1059200   -0.2684345    0.0565945
6-24 months                  MAL-ED       NEPAL                          0%                   NA                 0.0394368   -0.0431205    0.1219941
6-24 months                  MAL-ED       PERU                           0%                   NA                -0.0562617   -0.2073253    0.0948019
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0152778   -0.0943813    0.0638257
6-24 months                  NIH-Birth    BANGLADESH                     0%                   NA                -0.0256443   -0.1065201    0.0552314
6-24 months                  NIH-Crypto   BANGLADESH                     0%                   NA                 0.0040995   -0.0351085    0.0433076
6-24 months                  PROVIDE      BANGLADESH                     0%                   NA                 0.0363838   -0.0270440    0.0998117


### Parameter: PAF


agecat                       studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   CMIN         BANGLADESH                     0%                   NA                 0.0662344   -0.0474806    0.1676044
0-24 months (no birth st.)   CONTENT      PERU                           0%                   NA                -0.0900265   -0.4257630    0.1666513
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0%                   NA                -0.0235302   -0.2159552    0.1384436
0-24 months (no birth st.)   MAL-ED       INDIA                          0%                   NA                -0.1045789   -0.3485741    0.0952706
0-24 months (no birth st.)   MAL-ED       NEPAL                          0%                   NA                -0.1809628   -0.5831667    0.1190611
0-24 months (no birth st.)   MAL-ED       PERU                           0%                   NA                -0.0233802   -0.1959737    0.1243060
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0238322   -0.0521798    0.0943528
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0%                   NA                 0.1445001    0.0201226    0.2530902
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0396245   -0.0567966    0.1272482
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0%                   NA                 0.2476723    0.1073013    0.3659708
0-6 months (no birth st.)    CMIN         BANGLADESH                     0%                   NA                -0.1556277   -0.4973735    0.1081215
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0%                   NA                -0.4581011   -0.8991517   -0.1194782
0-6 months (no birth st.)    MAL-ED       INDIA                          0%                   NA                -0.0482042   -0.6537272    0.3356026
0-6 months (no birth st.)    MAL-ED       PERU                           0%                   NA                 0.0347005   -0.2640830    0.2628624
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0391595   -0.2293638    0.2490308
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0%                   NA                 0.5277799    0.2657194    0.6963126
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0%                   NA                 0.0869318   -0.0791911    0.2274829
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0%                   NA                 0.3977667    0.1223812    0.5867398
6-24 months                  CMIN         BANGLADESH                     0%                   NA                 0.0993184   -0.0847491    0.2521521
6-24 months                  CONTENT      PERU                           0%                   NA                -0.0955711   -0.4895899    0.1942238
6-24 months                  MAL-ED       BANGLADESH                     0%                   NA                 0.2277927   -0.1435404    0.4785457
6-24 months                  MAL-ED       INDIA                          0%                   NA                -0.2509489   -0.7050127    0.0821926
6-24 months                  MAL-ED       NEPAL                          0%                   NA                 0.1866035   -0.3124641    0.4958994
6-24 months                  MAL-ED       PERU                           0%                   NA                -0.1420845   -0.5948011    0.1821193
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0194690   -0.1255240    0.0765927
6-24 months                  NIH-Birth    BANGLADESH                     0%                   NA                -0.0446833   -0.1956509    0.0872225
6-24 months                  NIH-Crypto   BANGLADESH                     0%                   NA                 0.0155967   -0.1454713    0.1540164
6-24 months                  PROVIDE      BANGLADESH                     0%                   NA                 0.1211024   -0.1174298    0.3087164
