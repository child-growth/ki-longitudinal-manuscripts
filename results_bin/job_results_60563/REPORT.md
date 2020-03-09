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

agecat        studyid      country                        perdiar6    ever_co   n_cell     n
------------  -----------  -----------------------------  ---------  --------  -------  ----
0-24 months   CMIN         BANGLADESH                     0%                0       62   271
0-24 months   CMIN         BANGLADESH                     0%                1       32   271
0-24 months   CMIN         BANGLADESH                     (0%, 5%]          0       44   271
0-24 months   CMIN         BANGLADESH                     (0%, 5%]          1       19   271
0-24 months   CMIN         BANGLADESH                     >5%               0       73   271
0-24 months   CMIN         BANGLADESH                     >5%               1       41   271
0-24 months   CONTENT      PERU                           0%                0      115   215
0-24 months   CONTENT      PERU                           0%                1        0   215
0-24 months   CONTENT      PERU                           (0%, 5%]          0       43   215
0-24 months   CONTENT      PERU                           (0%, 5%]          1        0   215
0-24 months   CONTENT      PERU                           >5%               0       57   215
0-24 months   CONTENT      PERU                           >5%               1        0   215
0-24 months   EE           PAKISTAN                       0%                0      188   379
0-24 months   EE           PAKISTAN                       0%                1      154   379
0-24 months   EE           PAKISTAN                       (0%, 5%]          0       20   379
0-24 months   EE           PAKISTAN                       (0%, 5%]          1       15   379
0-24 months   EE           PAKISTAN                       >5%               0        1   379
0-24 months   EE           PAKISTAN                       >5%               1        1   379
0-24 months   MAL-ED       BANGLADESH                     0%                0       70   263
0-24 months   MAL-ED       BANGLADESH                     0%                1       15   263
0-24 months   MAL-ED       BANGLADESH                     (0%, 5%]          0       83   263
0-24 months   MAL-ED       BANGLADESH                     (0%, 5%]          1       15   263
0-24 months   MAL-ED       BANGLADESH                     >5%               0       71   263
0-24 months   MAL-ED       BANGLADESH                     >5%               1        9   263
0-24 months   MAL-ED       BRAZIL                         0%                0      213   233
0-24 months   MAL-ED       BRAZIL                         0%                1        3   233
0-24 months   MAL-ED       BRAZIL                         (0%, 5%]          0       15   233
0-24 months   MAL-ED       BRAZIL                         (0%, 5%]          1        0   233
0-24 months   MAL-ED       BRAZIL                         >5%               0        2   233
0-24 months   MAL-ED       BRAZIL                         >5%               1        0   233
0-24 months   MAL-ED       INDIA                          0%                0       46   251
0-24 months   MAL-ED       INDIA                          0%                1       15   251
0-24 months   MAL-ED       INDIA                          (0%, 5%]          0      105   251
0-24 months   MAL-ED       INDIA                          (0%, 5%]          1       24   251
0-24 months   MAL-ED       INDIA                          >5%               0       46   251
0-24 months   MAL-ED       INDIA                          >5%               1       15   251
0-24 months   MAL-ED       NEPAL                          0%                0       72   240
0-24 months   MAL-ED       NEPAL                          0%                1       11   240
0-24 months   MAL-ED       NEPAL                          (0%, 5%]          0       73   240
0-24 months   MAL-ED       NEPAL                          (0%, 5%]          1        4   240
0-24 months   MAL-ED       NEPAL                          >5%               0       73   240
0-24 months   MAL-ED       NEPAL                          >5%               1        7   240
0-24 months   MAL-ED       PERU                           0%                0       84   302
0-24 months   MAL-ED       PERU                           0%                1        5   302
0-24 months   MAL-ED       PERU                           (0%, 5%]          0       89   302
0-24 months   MAL-ED       PERU                           (0%, 5%]          1        4   302
0-24 months   MAL-ED       PERU                           >5%               0      117   302
0-24 months   MAL-ED       PERU                           >5%               1        3   302
0-24 months   MAL-ED       SOUTH AFRICA                   0%                0      218   303
0-24 months   MAL-ED       SOUTH AFRICA                   0%                1       15   303
0-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       53   303
0-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        7   303
0-24 months   MAL-ED       SOUTH AFRICA                   >5%               0        9   303
0-24 months   MAL-ED       SOUTH AFRICA                   >5%               1        1   303
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0      101   261
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       12   261
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       93   261
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        9   261
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       44   261
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        2   261
0-24 months   NIH-Birth    BANGLADESH                     0%                0      134   621
0-24 months   NIH-Birth    BANGLADESH                     0%                1       31   621
0-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]          0      151   621
0-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]          1       35   621
0-24 months   NIH-Birth    BANGLADESH                     >5%               0      199   621
0-24 months   NIH-Birth    BANGLADESH                     >5%               1       71   621
0-24 months   NIH-Crypto   BANGLADESH                     0%                0      330   758
0-24 months   NIH-Crypto   BANGLADESH                     0%                1       34   758
0-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]          0      157   758
0-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]          1       17   758
0-24 months   NIH-Crypto   BANGLADESH                     >5%               0      200   758
0-24 months   NIH-Crypto   BANGLADESH                     >5%               1       20   758
0-24 months   PROVIDE      BANGLADESH                     0%                0      201   700
0-24 months   PROVIDE      BANGLADESH                     0%                1       21   700
0-24 months   PROVIDE      BANGLADESH                     (0%, 5%]          0      219   700
0-24 months   PROVIDE      BANGLADESH                     (0%, 5%]          1       42   700
0-24 months   PROVIDE      BANGLADESH                     >5%               0      190   700
0-24 months   PROVIDE      BANGLADESH                     >5%               1       27   700
0-6 months    CMIN         BANGLADESH                     0%                0       91   271
0-6 months    CMIN         BANGLADESH                     0%                1        3   271
0-6 months    CMIN         BANGLADESH                     (0%, 5%]          0       57   271
0-6 months    CMIN         BANGLADESH                     (0%, 5%]          1        6   271
0-6 months    CMIN         BANGLADESH                     >5%               0      108   271
0-6 months    CMIN         BANGLADESH                     >5%               1        6   271
0-6 months    CONTENT      PERU                           0%                0      115   215
0-6 months    CONTENT      PERU                           0%                1        0   215
0-6 months    CONTENT      PERU                           (0%, 5%]          0       43   215
0-6 months    CONTENT      PERU                           (0%, 5%]          1        0   215
0-6 months    CONTENT      PERU                           >5%               0       57   215
0-6 months    CONTENT      PERU                           >5%               1        0   215
0-6 months    EE           PAKISTAN                       0%                0      290   379
0-6 months    EE           PAKISTAN                       0%                1       52   379
0-6 months    EE           PAKISTAN                       (0%, 5%]          0       31   379
0-6 months    EE           PAKISTAN                       (0%, 5%]          1        4   379
0-6 months    EE           PAKISTAN                       >5%               0        1   379
0-6 months    EE           PAKISTAN                       >5%               1        1   379
0-6 months    MAL-ED       BANGLADESH                     0%                0       85   263
0-6 months    MAL-ED       BANGLADESH                     0%                1        0   263
0-6 months    MAL-ED       BANGLADESH                     (0%, 5%]          0       94   263
0-6 months    MAL-ED       BANGLADESH                     (0%, 5%]          1        4   263
0-6 months    MAL-ED       BANGLADESH                     >5%               0       75   263
0-6 months    MAL-ED       BANGLADESH                     >5%               1        5   263
0-6 months    MAL-ED       BRAZIL                         0%                0      215   233
0-6 months    MAL-ED       BRAZIL                         0%                1        1   233
0-6 months    MAL-ED       BRAZIL                         (0%, 5%]          0       15   233
0-6 months    MAL-ED       BRAZIL                         (0%, 5%]          1        0   233
0-6 months    MAL-ED       BRAZIL                         >5%               0        2   233
0-6 months    MAL-ED       BRAZIL                         >5%               1        0   233
0-6 months    MAL-ED       INDIA                          0%                0       54   251
0-6 months    MAL-ED       INDIA                          0%                1        7   251
0-6 months    MAL-ED       INDIA                          (0%, 5%]          0      123   251
0-6 months    MAL-ED       INDIA                          (0%, 5%]          1        6   251
0-6 months    MAL-ED       INDIA                          >5%               0       55   251
0-6 months    MAL-ED       INDIA                          >5%               1        6   251
0-6 months    MAL-ED       NEPAL                          0%                0       78   240
0-6 months    MAL-ED       NEPAL                          0%                1        5   240
0-6 months    MAL-ED       NEPAL                          (0%, 5%]          0       75   240
0-6 months    MAL-ED       NEPAL                          (0%, 5%]          1        2   240
0-6 months    MAL-ED       NEPAL                          >5%               0       79   240
0-6 months    MAL-ED       NEPAL                          >5%               1        1   240
0-6 months    MAL-ED       PERU                           0%                0       89   302
0-6 months    MAL-ED       PERU                           0%                1        0   302
0-6 months    MAL-ED       PERU                           (0%, 5%]          0       92   302
0-6 months    MAL-ED       PERU                           (0%, 5%]          1        1   302
0-6 months    MAL-ED       PERU                           >5%               0      119   302
0-6 months    MAL-ED       PERU                           >5%               1        1   302
0-6 months    MAL-ED       SOUTH AFRICA                   0%                0      231   303
0-6 months    MAL-ED       SOUTH AFRICA                   0%                1        2   303
0-6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       57   303
0-6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        3   303
0-6 months    MAL-ED       SOUTH AFRICA                   >5%               0       10   303
0-6 months    MAL-ED       SOUTH AFRICA                   >5%               1        0   303
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0      112   261
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        1   261
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       99   261
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        3   261
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       46   261
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   261
0-6 months    NIH-Birth    BANGLADESH                     0%                0      155   619
0-6 months    NIH-Birth    BANGLADESH                     0%                1        9   619
0-6 months    NIH-Birth    BANGLADESH                     (0%, 5%]          0      171   619
0-6 months    NIH-Birth    BANGLADESH                     (0%, 5%]          1       14   619
0-6 months    NIH-Birth    BANGLADESH                     >5%               0      248   619
0-6 months    NIH-Birth    BANGLADESH                     >5%               1       22   619
0-6 months    NIH-Crypto   BANGLADESH                     0%                0      356   758
0-6 months    NIH-Crypto   BANGLADESH                     0%                1        8   758
0-6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]          0      171   758
0-6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]          1        3   758
0-6 months    NIH-Crypto   BANGLADESH                     >5%               0      214   758
0-6 months    NIH-Crypto   BANGLADESH                     >5%               1        6   758
0-6 months    PROVIDE      BANGLADESH                     0%                0      212   700
0-6 months    PROVIDE      BANGLADESH                     0%                1       10   700
0-6 months    PROVIDE      BANGLADESH                     (0%, 5%]          0      252   700
0-6 months    PROVIDE      BANGLADESH                     (0%, 5%]          1        9   700
0-6 months    PROVIDE      BANGLADESH                     >5%               0      206   700
0-6 months    PROVIDE      BANGLADESH                     >5%               1       11   700
6-24 months   CMIN         BANGLADESH                     0%                0       55   251
6-24 months   CMIN         BANGLADESH                     0%                1       31   251
6-24 months   CMIN         BANGLADESH                     (0%, 5%]          0       43   251
6-24 months   CMIN         BANGLADESH                     (0%, 5%]          1       16   251
6-24 months   CMIN         BANGLADESH                     >5%               0       67   251
6-24 months   CMIN         BANGLADESH                     >5%               1       39   251
6-24 months   CONTENT      PERU                           0%                0      115   215
6-24 months   CONTENT      PERU                           0%                1        0   215
6-24 months   CONTENT      PERU                           (0%, 5%]          0       43   215
6-24 months   CONTENT      PERU                           (0%, 5%]          1        0   215
6-24 months   CONTENT      PERU                           >5%               0       57   215
6-24 months   CONTENT      PERU                           >5%               1        0   215
6-24 months   EE           PAKISTAN                       0%                0      194   372
6-24 months   EE           PAKISTAN                       0%                1      141   372
6-24 months   EE           PAKISTAN                       (0%, 5%]          0       21   372
6-24 months   EE           PAKISTAN                       (0%, 5%]          1       14   372
6-24 months   EE           PAKISTAN                       >5%               0        1   372
6-24 months   EE           PAKISTAN                       >5%               1        1   372
6-24 months   MAL-ED       BANGLADESH                     0%                0       56   239
6-24 months   MAL-ED       BANGLADESH                     0%                1       15   239
6-24 months   MAL-ED       BANGLADESH                     (0%, 5%]          0       78   239
6-24 months   MAL-ED       BANGLADESH                     (0%, 5%]          1       14   239
6-24 months   MAL-ED       BANGLADESH                     >5%               0       70   239
6-24 months   MAL-ED       BANGLADESH                     >5%               1        6   239
6-24 months   MAL-ED       BRAZIL                         0%                0      188   207
6-24 months   MAL-ED       BRAZIL                         0%                1        2   207
6-24 months   MAL-ED       BRAZIL                         (0%, 5%]          0       15   207
6-24 months   MAL-ED       BRAZIL                         (0%, 5%]          1        0   207
6-24 months   MAL-ED       BRAZIL                         >5%               0        2   207
6-24 months   MAL-ED       BRAZIL                         >5%               1        0   207
6-24 months   MAL-ED       INDIA                          0%                0       39   235
6-24 months   MAL-ED       INDIA                          0%                1       11   235
6-24 months   MAL-ED       INDIA                          (0%, 5%]          0      104   235
6-24 months   MAL-ED       INDIA                          (0%, 5%]          1       22   235
6-24 months   MAL-ED       INDIA                          >5%               0       45   235
6-24 months   MAL-ED       INDIA                          >5%               1       14   235
6-24 months   MAL-ED       NEPAL                          0%                0       73   235
6-24 months   MAL-ED       NEPAL                          0%                1        7   235
6-24 months   MAL-ED       NEPAL                          (0%, 5%]          0       73   235
6-24 months   MAL-ED       NEPAL                          (0%, 5%]          1        3   235
6-24 months   MAL-ED       NEPAL                          >5%               0       73   235
6-24 months   MAL-ED       NEPAL                          >5%               1        6   235
6-24 months   MAL-ED       PERU                           0%                0       62   270
6-24 months   MAL-ED       PERU                           0%                1        5   270
6-24 months   MAL-ED       PERU                           (0%, 5%]          0       84   270
6-24 months   MAL-ED       PERU                           (0%, 5%]          1        3   270
6-24 months   MAL-ED       PERU                           >5%               0      113   270
6-24 months   MAL-ED       PERU                           >5%               1        3   270
6-24 months   MAL-ED       SOUTH AFRICA                   0%                0      181   259
6-24 months   MAL-ED       SOUTH AFRICA                   0%                1       13   259
6-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       50   259
6-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        6   259
6-24 months   MAL-ED       SOUTH AFRICA                   >5%               0        8   259
6-24 months   MAL-ED       SOUTH AFRICA                   >5%               1        1   259
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       92   245
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       12   245
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       89   245
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        7   245
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       43   245
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        2   245
6-24 months   NIH-Birth    BANGLADESH                     0%                0      102   542
6-24 months   NIH-Birth    BANGLADESH                     0%                1       27   542
6-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]          0      143   542
6-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]          1       29   542
6-24 months   NIH-Birth    BANGLADESH                     >5%               0      183   542
6-24 months   NIH-Birth    BANGLADESH                     >5%               1       58   542
6-24 months   NIH-Crypto   BANGLADESH                     0%                0      314   730
6-24 months   NIH-Crypto   BANGLADESH                     0%                1       31   730
6-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]          0      153   730
6-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]          1       17   730
6-24 months   NIH-Crypto   BANGLADESH                     >5%               0      200   730
6-24 months   NIH-Crypto   BANGLADESH                     >5%               1       15   730
6-24 months   PROVIDE      BANGLADESH                     0%                0      146   614
6-24 months   PROVIDE      BANGLADESH                     0%                1       14   614
6-24 months   PROVIDE      BANGLADESH                     (0%, 5%]          0      211   614
6-24 months   PROVIDE      BANGLADESH                     (0%, 5%]          1       39   614
6-24 months   PROVIDE      BANGLADESH                     >5%               0      182   614
6-24 months   PROVIDE      BANGLADESH                     >5%               1       22   614


The following strata were considered:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
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
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
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

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/63e4e1f3-88bd-4030-9caa-44d7c04c8bb1/bf28a537-fc57-4f39-a5e2-44636c7eda47/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/63e4e1f3-88bd-4030-9caa-44d7c04c8bb1/bf28a537-fc57-4f39-a5e2-44636c7eda47/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/63e4e1f3-88bd-4030-9caa-44d7c04c8bb1/bf28a537-fc57-4f39-a5e2-44636c7eda47/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/63e4e1f3-88bd-4030-9caa-44d7c04c8bb1/bf28a537-fc57-4f39-a5e2-44636c7eda47/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMIN         BANGLADESH   0%                   NA                0.3395345   0.2421222   0.4369467
0-24 months   CMIN         BANGLADESH   (0%, 5%]             NA                0.2986993   0.1824824   0.4149162
0-24 months   CMIN         BANGLADESH   >5%                  NA                0.3598486   0.2711839   0.4485133
0-24 months   MAL-ED       BANGLADESH   0%                   NA                0.1764706   0.0952733   0.2576679
0-24 months   MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1530612   0.0816411   0.2244814
0-24 months   MAL-ED       BANGLADESH   >5%                  NA                0.1125000   0.0431270   0.1818730
0-24 months   MAL-ED       INDIA        0%                   NA                0.2767036   0.1654286   0.3879785
0-24 months   MAL-ED       INDIA        (0%, 5%]             NA                0.1853846   0.1183212   0.2524479
0-24 months   MAL-ED       INDIA        >5%                  NA                0.2663968   0.1570463   0.3757473
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                0.1892154   0.1301425   0.2482884
0-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.1966355   0.1398747   0.2533963
0-24 months   NIH-Birth    BANGLADESH   >5%                  NA                0.2578300   0.2051874   0.3104726
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                0.0952679   0.0646375   0.1258983
0-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0966437   0.0522100   0.1410774
0-24 months   NIH-Crypto   BANGLADESH   >5%                  NA                0.0883064   0.0508868   0.1257260
0-24 months   PROVIDE      BANGLADESH   0%                   NA                0.1097936   0.0668878   0.1526995
0-24 months   PROVIDE      BANGLADESH   (0%, 5%]             NA                0.1522649   0.1084533   0.1960765
0-24 months   PROVIDE      BANGLADESH   >5%                  NA                0.1278281   0.0823518   0.1733044
0-6 months    MAL-ED       INDIA        0%                   NA                0.1147541   0.0346110   0.1948972
0-6 months    MAL-ED       INDIA        (0%, 5%]             NA                0.0465116   0.0100985   0.0829248
0-6 months    MAL-ED       INDIA        >5%                  NA                0.0983607   0.0234787   0.1732426
0-6 months    NIH-Birth    BANGLADESH   0%                   NA                0.0548780   0.0199945   0.0897616
0-6 months    NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.0756757   0.0375337   0.1138177
0-6 months    NIH-Birth    BANGLADESH   >5%                  NA                0.0814815   0.0488234   0.1141396
0-6 months    PROVIDE      BANGLADESH   0%                   NA                0.0450450   0.0177429   0.0723472
0-6 months    PROVIDE      BANGLADESH   (0%, 5%]             NA                0.0344828   0.0123304   0.0566351
0-6 months    PROVIDE      BANGLADESH   >5%                  NA                0.0506912   0.0214834   0.0798990
6-24 months   CMIN         BANGLADESH   0%                   NA                0.3537566   0.2505836   0.4569297
6-24 months   CMIN         BANGLADESH   (0%, 5%]             NA                0.2734372   0.1574159   0.3894585
6-24 months   CMIN         BANGLADESH   >5%                  NA                0.3697962   0.2766234   0.4629690
6-24 months   MAL-ED       BANGLADESH   0%                   NA                0.2112676   0.1161172   0.3064180
6-24 months   MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1521739   0.0786230   0.2257248
6-24 months   MAL-ED       BANGLADESH   >5%                  NA                0.0789474   0.0181951   0.1396997
6-24 months   MAL-ED       INDIA        0%                   NA                0.2205373   0.1029015   0.3381731
6-24 months   MAL-ED       INDIA        (0%, 5%]             NA                0.1725996   0.1056837   0.2395155
6-24 months   MAL-ED       INDIA        >5%                  NA                0.2334759   0.1204096   0.3465422
6-24 months   NIH-Birth    BANGLADESH   0%                   NA                0.2069071   0.1355435   0.2782708
6-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.1701686   0.1145349   0.2258024
6-24 months   NIH-Birth    BANGLADESH   >5%                  NA                0.2330254   0.1790131   0.2870377
6-24 months   NIH-Crypto   BANGLADESH   0%                   NA                0.0924626   0.0617736   0.1231515
6-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0959836   0.0515739   0.1403933
6-24 months   NIH-Crypto   BANGLADESH   >5%                  NA                0.0678474   0.0343385   0.1013563
6-24 months   PROVIDE      BANGLADESH   0%                   NA                0.0846975   0.0403310   0.1290640
6-24 months   PROVIDE      BANGLADESH   (0%, 5%]             NA                0.1505394   0.1049609   0.1961180
6-24 months   PROVIDE      BANGLADESH   >5%                  NA                0.1043683   0.0617514   0.1469853


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMIN         BANGLADESH   NA                   NA                0.3394834   0.2830004   0.3959663
0-24 months   MAL-ED       BANGLADESH   NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   MAL-ED       INDIA        NA                   NA                0.2151394   0.1642023   0.2660766
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.2206119   0.1879724   0.2532514
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   PROVIDE      BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-6 months    MAL-ED       INDIA        NA                   NA                0.0756972   0.0429084   0.1084860
0-6 months    NIH-Birth    BANGLADESH   NA                   NA                0.0726979   0.0522275   0.0931683
0-6 months    PROVIDE      BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
6-24 months   CMIN         BANGLADESH   NA                   NA                0.3426295   0.2837999   0.4014590
6-24 months   MAL-ED       BANGLADESH   NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   MAL-ED       INDIA        NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE      BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMIN         BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   CMIN         BANGLADESH   (0%, 5%]             0%                0.8797320   0.5424423   1.4267476
0-24 months   CMIN         BANGLADESH   >5%                  0%                1.0598294   0.7258081   1.5475692
0-24 months   MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED       BANGLADESH   (0%, 5%]             0%                0.8673469   0.4503955   1.6702892
0-24 months   MAL-ED       BANGLADESH   >5%                  0%                0.6375000   0.2953502   1.3760149
0-24 months   MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED       INDIA        (0%, 5%]             0%                0.6699754   0.3897280   1.1517444
0-24 months   MAL-ED       INDIA        >5%                  0%                0.9627515   0.5404491   1.7150375
0-24 months   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             0%                1.0392149   0.6800762   1.5880097
0-24 months   NIH-Birth    BANGLADESH   >5%                  0%                1.3626264   0.9392489   1.9768463
0-24 months   NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.0144418   0.5789236   1.7775957
0-24 months   NIH-Crypto   BANGLADESH   >5%                  0%                0.9269273   0.5450352   1.5764016
0-24 months   PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE      BANGLADESH   (0%, 5%]             0%                1.3868286   0.8533596   2.2537902
0-24 months   PROVIDE      BANGLADESH   >5%                  0%                1.1642579   0.6851523   1.9783871
0-6 months    MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED       INDIA        (0%, 5%]             0%                0.4053156   0.1419600   1.1572328
0-6 months    MAL-ED       INDIA        >5%                  0%                0.8571429   0.3050544   2.4084031
0-6 months    NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth    BANGLADESH   (0%, 5%]             0%                1.3789790   0.6126960   3.1036321
0-6 months    NIH-Birth    BANGLADESH   >5%                  0%                1.4847737   0.7003297   3.1478783
0-6 months    PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE      BANGLADESH   (0%, 5%]             0%                0.7655172   0.3165046   1.8515265
0-6 months    PROVIDE      BANGLADESH   >5%                  0%                1.1253456   0.4876348   2.5970311
6-24 months   CMIN         BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   CMIN         BANGLADESH   (0%, 5%]             0%                0.7729528   0.4621183   1.2928638
6-24 months   CMIN         BANGLADESH   >5%                  0%                1.0453406   0.7110953   1.5366956
6-24 months   MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED       BANGLADESH   (0%, 5%]             0%                0.7202899   0.3720423   1.3945120
6-24 months   MAL-ED       BANGLADESH   >5%                  0%                0.3736842   0.1532046   0.9114602
6-24 months   MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED       INDIA        (0%, 5%]             0%                0.7826321   0.4042040   1.5153561
6-24 months   MAL-ED       INDIA        >5%                  0%                1.0586684   0.5146216   2.1778697
6-24 months   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             0%                0.8224397   0.5124740   1.3198856
6-24 months   NIH-Birth    BANGLADESH   >5%                  0%                1.1262319   0.7432522   1.7065516
6-24 months   NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.0380805   0.5878651   1.8330925
6-24 months   NIH-Crypto   BANGLADESH   >5%                  0%                0.7337818   0.4050972   1.3291518
6-24 months   PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE      BANGLADESH   (0%, 5%]             0%                1.7773769   0.9701249   3.2563527
6-24 months   PROVIDE      BANGLADESH   >5%                  0%                1.2322475   0.6345936   2.3927661


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMIN         BANGLADESH   0%                   NA                -0.0000511   -0.0787975   0.0786954
0-24 months   MAL-ED       BANGLADESH   0%                   NA                -0.0281816   -0.0928591   0.0364958
0-24 months   MAL-ED       INDIA        0%                   NA                -0.0615641   -0.1577217   0.0345935
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                 0.0313965   -0.0203893   0.0831822
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                -0.0016003   -0.0238107   0.0206100
0-24 months   PROVIDE      BANGLADESH   0%                   NA                 0.0187778   -0.0189100   0.0564657
0-6 months    MAL-ED       INDIA        0%                   NA                -0.0390569   -0.1052092   0.0270954
0-6 months    NIH-Birth    BANGLADESH   0%                   NA                 0.0178199   -0.0136619   0.0493016
0-6 months    PROVIDE      BANGLADESH   0%                   NA                -0.0021879   -0.0245047   0.0201289
6-24 months   CMIN         BANGLADESH   0%                   NA                -0.0111272   -0.0943721   0.0721178
6-24 months   MAL-ED       BANGLADESH   0%                   NA                -0.0648241   -0.1402695   0.0106213
6-24 months   MAL-ED       INDIA        0%                   NA                -0.0205373   -0.1241131   0.0830385
6-24 months   NIH-Birth    BANGLADESH   0%                   NA                 0.0034250   -0.0588280   0.0656779
6-24 months   NIH-Crypto   BANGLADESH   0%                   NA                -0.0061612   -0.0281115   0.0157891
6-24 months   PROVIDE      BANGLADESH   0%                   NA                 0.0374523   -0.0028487   0.0777533


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMIN         BANGLADESH   0%                   NA                -0.0001504   -0.2612141    0.2068746
0-24 months   MAL-ED       BANGLADESH   0%                   NA                -0.1900452   -0.7139097    0.1736976
0-24 months   MAL-ED       INDIA        0%                   NA                -0.2861592   -0.8225780    0.0923816
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                 0.1423154   -0.1268182    0.3471680
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                -0.0170854   -0.2840893    0.1943997
0-24 months   PROVIDE      BANGLADESH   0%                   NA                 0.1460497   -0.2014340    0.3930327
0-6 months    MAL-ED       INDIA        0%                   NA                -0.5159620   -1.6595874    0.1359032
0-6 months    NIH-Birth    BANGLADESH   0%                   NA                 0.2451220   -0.3311018    0.5719029
0-6 months    PROVIDE      BANGLADESH   0%                   NA                -0.0510511   -0.7245378    0.3594178
6-24 months   CMIN         BANGLADESH   0%                   NA                -0.0324758   -0.3062998    0.1839498
6-24 months   MAL-ED       BANGLADESH   0%                   NA                -0.4426559   -1.0488447   -0.0158194
6-24 months   MAL-ED       INDIA        0%                   NA                -0.1026867   -0.7628302    0.3102468
6-24 months   NIH-Birth    BANGLADESH   0%                   NA                 0.0162836   -0.3290871    0.2719077
6-24 months   NIH-Crypto   BANGLADESH   0%                   NA                -0.0713919   -0.3581111    0.1547963
6-24 months   PROVIDE      BANGLADESH   0%                   NA                 0.3066096   -0.1097803    0.5667699
