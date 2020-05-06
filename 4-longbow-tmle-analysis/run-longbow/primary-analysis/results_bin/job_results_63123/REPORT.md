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

**Outcome Variable:** stunted

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

agecat      studyid      country                        perdiar6    stunted   n_cell     n  outcome_variable 
----------  -----------  -----------------------------  ---------  --------  -------  ----  -----------------
Birth       CMIN         BANGLADESH                     0%                0       10    26  stunted          
Birth       CMIN         BANGLADESH                     0%                1        6    26  stunted          
Birth       CMIN         BANGLADESH                     (0%, 5%]          0        2    26  stunted          
Birth       CMIN         BANGLADESH                     (0%, 5%]          1        2    26  stunted          
Birth       CMIN         BANGLADESH                     >5%               0        5    26  stunted          
Birth       CMIN         BANGLADESH                     >5%               1        1    26  stunted          
Birth       CONTENT      PERU                           0%                0        0     2  stunted          
Birth       CONTENT      PERU                           0%                1        0     2  stunted          
Birth       CONTENT      PERU                           (0%, 5%]          0        1     2  stunted          
Birth       CONTENT      PERU                           (0%, 5%]          1        0     2  stunted          
Birth       CONTENT      PERU                           >5%               0        1     2  stunted          
Birth       CONTENT      PERU                           >5%               1        0     2  stunted          
Birth       EE           PAKISTAN                       0%                0      132   240  stunted          
Birth       EE           PAKISTAN                       0%                1       91   240  stunted          
Birth       EE           PAKISTAN                       (0%, 5%]          0        7   240  stunted          
Birth       EE           PAKISTAN                       (0%, 5%]          1        8   240  stunted          
Birth       EE           PAKISTAN                       >5%               0        1   240  stunted          
Birth       EE           PAKISTAN                       >5%               1        1   240  stunted          
Birth       MAL-ED       BANGLADESH                     0%                0       58   231  stunted          
Birth       MAL-ED       BANGLADESH                     0%                1       14   231  stunted          
Birth       MAL-ED       BANGLADESH                     (0%, 5%]          0       78   231  stunted          
Birth       MAL-ED       BANGLADESH                     (0%, 5%]          1       12   231  stunted          
Birth       MAL-ED       BANGLADESH                     >5%               0       51   231  stunted          
Birth       MAL-ED       BANGLADESH                     >5%               1       18   231  stunted          
Birth       MAL-ED       BRAZIL                         0%                0       48    65  stunted          
Birth       MAL-ED       BRAZIL                         0%                1        9    65  stunted          
Birth       MAL-ED       BRAZIL                         (0%, 5%]          0        6    65  stunted          
Birth       MAL-ED       BRAZIL                         (0%, 5%]          1        0    65  stunted          
Birth       MAL-ED       BRAZIL                         >5%               0        2    65  stunted          
Birth       MAL-ED       BRAZIL                         >5%               1        0    65  stunted          
Birth       MAL-ED       INDIA                          0%                0       10    47  stunted          
Birth       MAL-ED       INDIA                          0%                1        2    47  stunted          
Birth       MAL-ED       INDIA                          (0%, 5%]          0       19    47  stunted          
Birth       MAL-ED       INDIA                          (0%, 5%]          1        5    47  stunted          
Birth       MAL-ED       INDIA                          >5%               0        8    47  stunted          
Birth       MAL-ED       INDIA                          >5%               1        3    47  stunted          
Birth       MAL-ED       NEPAL                          0%                0        8    27  stunted          
Birth       MAL-ED       NEPAL                          0%                1        0    27  stunted          
Birth       MAL-ED       NEPAL                          (0%, 5%]          0       10    27  stunted          
Birth       MAL-ED       NEPAL                          (0%, 5%]          1        0    27  stunted          
Birth       MAL-ED       NEPAL                          >5%               0        7    27  stunted          
Birth       MAL-ED       NEPAL                          >5%               1        2    27  stunted          
Birth       MAL-ED       PERU                           0%                0       58   233  stunted          
Birth       MAL-ED       PERU                           0%                1        9   233  stunted          
Birth       MAL-ED       PERU                           (0%, 5%]          0       64   233  stunted          
Birth       MAL-ED       PERU                           (0%, 5%]          1        8   233  stunted          
Birth       MAL-ED       PERU                           >5%               0       85   233  stunted          
Birth       MAL-ED       PERU                           >5%               1        9   233  stunted          
Birth       MAL-ED       SOUTH AFRICA                   0%                0       80   113  stunted          
Birth       MAL-ED       SOUTH AFRICA                   0%                1        6   113  stunted          
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       20   113  stunted          
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        3   113  stunted          
Birth       MAL-ED       SOUTH AFRICA                   >5%               0        4   113  stunted          
Birth       MAL-ED       SOUTH AFRICA                   >5%               1        0   113  stunted          
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       47   125  stunted          
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       12   125  stunted          
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       36   125  stunted          
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        9   125  stunted          
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       19   125  stunted          
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        2   125  stunted          
Birth       NIH-Birth    BANGLADESH                     0%                0      133   605  stunted          
Birth       NIH-Birth    BANGLADESH                     0%                1       27   605  stunted          
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]          0      150   605  stunted          
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]          1       27   605  stunted          
Birth       NIH-Birth    BANGLADESH                     >5%               0      226   605  stunted          
Birth       NIH-Birth    BANGLADESH                     >5%               1       42   605  stunted          
Birth       NIH-Crypto   BANGLADESH                     0%                0      310   732  stunted          
Birth       NIH-Crypto   BANGLADESH                     0%                1       50   732  stunted          
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]          0      141   732  stunted          
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]          1       22   732  stunted          
Birth       NIH-Crypto   BANGLADESH                     >5%               0      180   732  stunted          
Birth       NIH-Crypto   BANGLADESH                     >5%               1       29   732  stunted          
Birth       PROVIDE      BANGLADESH                     0%                0      148   539  stunted          
Birth       PROVIDE      BANGLADESH                     0%                1       13   539  stunted          
Birth       PROVIDE      BANGLADESH                     (0%, 5%]          0      190   539  stunted          
Birth       PROVIDE      BANGLADESH                     (0%, 5%]          1       19   539  stunted          
Birth       PROVIDE      BANGLADESH                     >5%               0      153   539  stunted          
Birth       PROVIDE      BANGLADESH                     >5%               1       16   539  stunted          
6 months    CMIN         BANGLADESH                     0%                0       55   243  stunted          
6 months    CMIN         BANGLADESH                     0%                1       26   243  stunted          
6 months    CMIN         BANGLADESH                     (0%, 5%]          0       30   243  stunted          
6 months    CMIN         BANGLADESH                     (0%, 5%]          1       29   243  stunted          
6 months    CMIN         BANGLADESH                     >5%               0       65   243  stunted          
6 months    CMIN         BANGLADESH                     >5%               1       38   243  stunted          
6 months    CONTENT      PERU                           0%                0      109   215  stunted          
6 months    CONTENT      PERU                           0%                1        6   215  stunted          
6 months    CONTENT      PERU                           (0%, 5%]          0       41   215  stunted          
6 months    CONTENT      PERU                           (0%, 5%]          1        2   215  stunted          
6 months    CONTENT      PERU                           >5%               0       56   215  stunted          
6 months    CONTENT      PERU                           >5%               1        1   215  stunted          
6 months    EE           PAKISTAN                       0%                0      173   373  stunted          
6 months    EE           PAKISTAN                       0%                1      163   373  stunted          
6 months    EE           PAKISTAN                       (0%, 5%]          0       16   373  stunted          
6 months    EE           PAKISTAN                       (0%, 5%]          1       19   373  stunted          
6 months    EE           PAKISTAN                       >5%               0        1   373  stunted          
6 months    EE           PAKISTAN                       >5%               1        1   373  stunted          
6 months    MAL-ED       BANGLADESH                     0%                0       57   241  stunted          
6 months    MAL-ED       BANGLADESH                     0%                1       14   241  stunted          
6 months    MAL-ED       BANGLADESH                     (0%, 5%]          0       80   241  stunted          
6 months    MAL-ED       BANGLADESH                     (0%, 5%]          1       12   241  stunted          
6 months    MAL-ED       BANGLADESH                     >5%               0       60   241  stunted          
6 months    MAL-ED       BANGLADESH                     >5%               1       18   241  stunted          
6 months    MAL-ED       BRAZIL                         0%                0      187   209  stunted          
6 months    MAL-ED       BRAZIL                         0%                1        5   209  stunted          
6 months    MAL-ED       BRAZIL                         (0%, 5%]          0       14   209  stunted          
6 months    MAL-ED       BRAZIL                         (0%, 5%]          1        1   209  stunted          
6 months    MAL-ED       BRAZIL                         >5%               0        2   209  stunted          
6 months    MAL-ED       BRAZIL                         >5%               1        0   209  stunted          
6 months    MAL-ED       INDIA                          0%                0       42   236  stunted          
6 months    MAL-ED       INDIA                          0%                1        8   236  stunted          
6 months    MAL-ED       INDIA                          (0%, 5%]          0      107   236  stunted          
6 months    MAL-ED       INDIA                          (0%, 5%]          1       20   236  stunted          
6 months    MAL-ED       INDIA                          >5%               0       42   236  stunted          
6 months    MAL-ED       INDIA                          >5%               1       17   236  stunted          
6 months    MAL-ED       NEPAL                          0%                0       75   236  stunted          
6 months    MAL-ED       NEPAL                          0%                1        5   236  stunted          
6 months    MAL-ED       NEPAL                          (0%, 5%]          0       71   236  stunted          
6 months    MAL-ED       NEPAL                          (0%, 5%]          1        5   236  stunted          
6 months    MAL-ED       NEPAL                          >5%               0       78   236  stunted          
6 months    MAL-ED       NEPAL                          >5%               1        2   236  stunted          
6 months    MAL-ED       PERU                           0%                0       51   273  stunted          
6 months    MAL-ED       PERU                           0%                1       17   273  stunted          
6 months    MAL-ED       PERU                           (0%, 5%]          0       67   273  stunted          
6 months    MAL-ED       PERU                           (0%, 5%]          1       22   273  stunted          
6 months    MAL-ED       PERU                           >5%               0       95   273  stunted          
6 months    MAL-ED       PERU                           >5%               1       21   273  stunted          
6 months    MAL-ED       SOUTH AFRICA                   0%                0      155   254  stunted          
6 months    MAL-ED       SOUTH AFRICA                   0%                1       35   254  stunted          
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       42   254  stunted          
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]          1       13   254  stunted          
6 months    MAL-ED       SOUTH AFRICA                   >5%               0        7   254  stunted          
6 months    MAL-ED       SOUTH AFRICA                   >5%               1        2   254  stunted          
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       72   247  stunted          
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       33   247  stunted          
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       77   247  stunted          
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1       19   247  stunted          
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       39   247  stunted          
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        7   247  stunted          
6 months    NIH-Birth    BANGLADESH                     0%                0       98   537  stunted          
6 months    NIH-Birth    BANGLADESH                     0%                1       31   537  stunted          
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]          0      123   537  stunted          
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]          1       46   537  stunted          
6 months    NIH-Birth    BANGLADESH                     >5%               0      172   537  stunted          
6 months    NIH-Birth    BANGLADESH                     >5%               1       67   537  stunted          
6 months    NIH-Crypto   BANGLADESH                     0%                0      279   715  stunted          
6 months    NIH-Crypto   BANGLADESH                     0%                1       62   715  stunted          
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]          0      119   715  stunted          
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]          1       48   715  stunted          
6 months    NIH-Crypto   BANGLADESH                     >5%               0      167   715  stunted          
6 months    NIH-Crypto   BANGLADESH                     >5%               1       40   715  stunted          
6 months    PROVIDE      BANGLADESH                     0%                0      137   604  stunted          
6 months    PROVIDE      BANGLADESH                     0%                1       21   604  stunted          
6 months    PROVIDE      BANGLADESH                     (0%, 5%]          0      206   604  stunted          
6 months    PROVIDE      BANGLADESH                     (0%, 5%]          1       40   604  stunted          
6 months    PROVIDE      BANGLADESH                     >5%               0      165   604  stunted          
6 months    PROVIDE      BANGLADESH                     >5%               1       35   604  stunted          
24 months   CMIN         BANGLADESH                     0%                0       35   242  stunted          
24 months   CMIN         BANGLADESH                     0%                1       50   242  stunted          
24 months   CMIN         BANGLADESH                     (0%, 5%]          0       14   242  stunted          
24 months   CMIN         BANGLADESH                     (0%, 5%]          1       44   242  stunted          
24 months   CMIN         BANGLADESH                     >5%               0       28   242  stunted          
24 months   CMIN         BANGLADESH                     >5%               1       71   242  stunted          
24 months   CONTENT      PERU                           0%                0       77   164  stunted          
24 months   CONTENT      PERU                           0%                1        7   164  stunted          
24 months   CONTENT      PERU                           (0%, 5%]          0       32   164  stunted          
24 months   CONTENT      PERU                           (0%, 5%]          1        4   164  stunted          
24 months   CONTENT      PERU                           >5%               0       42   164  stunted          
24 months   CONTENT      PERU                           >5%               1        2   164  stunted          
24 months   EE           PAKISTAN                       0%                0       45   167  stunted          
24 months   EE           PAKISTAN                       0%                1      107   167  stunted          
24 months   EE           PAKISTAN                       (0%, 5%]          0        4   167  stunted          
24 months   EE           PAKISTAN                       (0%, 5%]          1       10   167  stunted          
24 months   EE           PAKISTAN                       >5%               0        0   167  stunted          
24 months   EE           PAKISTAN                       >5%               1        1   167  stunted          
24 months   MAL-ED       BANGLADESH                     0%                0       33   212  stunted          
24 months   MAL-ED       BANGLADESH                     0%                1       31   212  stunted          
24 months   MAL-ED       BANGLADESH                     (0%, 5%]          0       47   212  stunted          
24 months   MAL-ED       BANGLADESH                     (0%, 5%]          1       36   212  stunted          
24 months   MAL-ED       BANGLADESH                     >5%               0       31   212  stunted          
24 months   MAL-ED       BANGLADESH                     >5%               1       34   212  stunted          
24 months   MAL-ED       BRAZIL                         0%                0      147   169  stunted          
24 months   MAL-ED       BRAZIL                         0%                1        7   169  stunted          
24 months   MAL-ED       BRAZIL                         (0%, 5%]          0       13   169  stunted          
24 months   MAL-ED       BRAZIL                         (0%, 5%]          1        0   169  stunted          
24 months   MAL-ED       BRAZIL                         >5%               0        2   169  stunted          
24 months   MAL-ED       BRAZIL                         >5%               1        0   169  stunted          
24 months   MAL-ED       INDIA                          0%                0       25   227  stunted          
24 months   MAL-ED       INDIA                          0%                1       23   227  stunted          
24 months   MAL-ED       INDIA                          (0%, 5%]          0       70   227  stunted          
24 months   MAL-ED       INDIA                          (0%, 5%]          1       52   227  stunted          
24 months   MAL-ED       INDIA                          >5%               0       35   227  stunted          
24 months   MAL-ED       INDIA                          >5%               1       22   227  stunted          
24 months   MAL-ED       NEPAL                          0%                0       60   228  stunted          
24 months   MAL-ED       NEPAL                          0%                1       17   228  stunted          
24 months   MAL-ED       NEPAL                          (0%, 5%]          0       63   228  stunted          
24 months   MAL-ED       NEPAL                          (0%, 5%]          1       12   228  stunted          
24 months   MAL-ED       NEPAL                          >5%               0       55   228  stunted          
24 months   MAL-ED       NEPAL                          >5%               1       21   228  stunted          
24 months   MAL-ED       PERU                           0%                0       29   201  stunted          
24 months   MAL-ED       PERU                           0%                1       24   201  stunted          
24 months   MAL-ED       PERU                           (0%, 5%]          0       36   201  stunted          
24 months   MAL-ED       PERU                           (0%, 5%]          1       28   201  stunted          
24 months   MAL-ED       PERU                           >5%               0       62   201  stunted          
24 months   MAL-ED       PERU                           >5%               1       22   201  stunted          
24 months   MAL-ED       SOUTH AFRICA                   0%                0      117   238  stunted          
24 months   MAL-ED       SOUTH AFRICA                   0%                1       60   238  stunted          
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       31   238  stunted          
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]          1       21   238  stunted          
24 months   MAL-ED       SOUTH AFRICA                   >5%               0        6   238  stunted          
24 months   MAL-ED       SOUTH AFRICA                   >5%               1        3   238  stunted          
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       26   214  stunted          
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       66   214  stunted          
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       23   214  stunted          
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1       60   214  stunted          
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       10   214  stunted          
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1       29   214  stunted          
24 months   NIH-Birth    BANGLADESH                     0%                0       47   429  stunted          
24 months   NIH-Birth    BANGLADESH                     0%                1       60   429  stunted          
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]          0       65   429  stunted          
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]          1       63   429  stunted          
24 months   NIH-Birth    BANGLADESH                     >5%               0       73   429  stunted          
24 months   NIH-Birth    BANGLADESH                     >5%               1      121   429  stunted          
24 months   NIH-Crypto   BANGLADESH                     0%                0      211   514  stunted          
24 months   NIH-Crypto   BANGLADESH                     0%                1       66   514  stunted          
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]          0       73   514  stunted          
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]          1       33   514  stunted          
24 months   NIH-Crypto   BANGLADESH                     >5%               0       98   514  stunted          
24 months   NIH-Crypto   BANGLADESH                     >5%               1       33   514  stunted          
24 months   PROVIDE      BANGLADESH                     0%                0      107   578  stunted          
24 months   PROVIDE      BANGLADESH                     0%                1       45   578  stunted          
24 months   PROVIDE      BANGLADESH                     (0%, 5%]          0      152   578  stunted          
24 months   PROVIDE      BANGLADESH                     (0%, 5%]          1       80   578  stunted          
24 months   PROVIDE      BANGLADESH                     >5%               0      129   578  stunted          
24 months   PROVIDE      BANGLADESH                     >5%               1       65   578  stunted          


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
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
