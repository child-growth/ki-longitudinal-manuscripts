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

agecat      studyid      country                        perdiar6    sstunted   n_cell     n  outcome_variable 
----------  -----------  -----------------------------  ---------  ---------  -------  ----  -----------------
Birth       CMIN         BANGLADESH                     0%                 0       10    26  sstunted         
Birth       CMIN         BANGLADESH                     0%                 1        6    26  sstunted         
Birth       CMIN         BANGLADESH                     (0%, 5%]           0        4    26  sstunted         
Birth       CMIN         BANGLADESH                     (0%, 5%]           1        0    26  sstunted         
Birth       CMIN         BANGLADESH                     >5%                0        6    26  sstunted         
Birth       CMIN         BANGLADESH                     >5%                1        0    26  sstunted         
Birth       CONTENT      PERU                           0%                 0        0     2  sstunted         
Birth       CONTENT      PERU                           0%                 1        0     2  sstunted         
Birth       CONTENT      PERU                           (0%, 5%]           0        1     2  sstunted         
Birth       CONTENT      PERU                           (0%, 5%]           1        0     2  sstunted         
Birth       CONTENT      PERU                           >5%                0        1     2  sstunted         
Birth       CONTENT      PERU                           >5%                1        0     2  sstunted         
Birth       EE           PAKISTAN                       0%                 0      179   240  sstunted         
Birth       EE           PAKISTAN                       0%                 1       44   240  sstunted         
Birth       EE           PAKISTAN                       (0%, 5%]           0       11   240  sstunted         
Birth       EE           PAKISTAN                       (0%, 5%]           1        4   240  sstunted         
Birth       EE           PAKISTAN                       >5%                0        2   240  sstunted         
Birth       EE           PAKISTAN                       >5%                1        0   240  sstunted         
Birth       MAL-ED       BANGLADESH                     0%                 0       69   231  sstunted         
Birth       MAL-ED       BANGLADESH                     0%                 1        3   231  sstunted         
Birth       MAL-ED       BANGLADESH                     (0%, 5%]           0       87   231  sstunted         
Birth       MAL-ED       BANGLADESH                     (0%, 5%]           1        3   231  sstunted         
Birth       MAL-ED       BANGLADESH                     >5%                0       66   231  sstunted         
Birth       MAL-ED       BANGLADESH                     >5%                1        3   231  sstunted         
Birth       MAL-ED       BRAZIL                         0%                 0       54    65  sstunted         
Birth       MAL-ED       BRAZIL                         0%                 1        3    65  sstunted         
Birth       MAL-ED       BRAZIL                         (0%, 5%]           0        6    65  sstunted         
Birth       MAL-ED       BRAZIL                         (0%, 5%]           1        0    65  sstunted         
Birth       MAL-ED       BRAZIL                         >5%                0        2    65  sstunted         
Birth       MAL-ED       BRAZIL                         >5%                1        0    65  sstunted         
Birth       MAL-ED       INDIA                          0%                 0       11    47  sstunted         
Birth       MAL-ED       INDIA                          0%                 1        1    47  sstunted         
Birth       MAL-ED       INDIA                          (0%, 5%]           0       23    47  sstunted         
Birth       MAL-ED       INDIA                          (0%, 5%]           1        1    47  sstunted         
Birth       MAL-ED       INDIA                          >5%                0       11    47  sstunted         
Birth       MAL-ED       INDIA                          >5%                1        0    47  sstunted         
Birth       MAL-ED       NEPAL                          0%                 0        8    27  sstunted         
Birth       MAL-ED       NEPAL                          0%                 1        0    27  sstunted         
Birth       MAL-ED       NEPAL                          (0%, 5%]           0       10    27  sstunted         
Birth       MAL-ED       NEPAL                          (0%, 5%]           1        0    27  sstunted         
Birth       MAL-ED       NEPAL                          >5%                0        8    27  sstunted         
Birth       MAL-ED       NEPAL                          >5%                1        1    27  sstunted         
Birth       MAL-ED       PERU                           0%                 0       66   233  sstunted         
Birth       MAL-ED       PERU                           0%                 1        1   233  sstunted         
Birth       MAL-ED       PERU                           (0%, 5%]           0       70   233  sstunted         
Birth       MAL-ED       PERU                           (0%, 5%]           1        2   233  sstunted         
Birth       MAL-ED       PERU                           >5%                0       93   233  sstunted         
Birth       MAL-ED       PERU                           >5%                1        1   233  sstunted         
Birth       MAL-ED       SOUTH AFRICA                   0%                 0       85   113  sstunted         
Birth       MAL-ED       SOUTH AFRICA                   0%                 1        1   113  sstunted         
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       23   113  sstunted         
Birth       MAL-ED       SOUTH AFRICA                   (0%, 5%]           1        0   113  sstunted         
Birth       MAL-ED       SOUTH AFRICA                   >5%                0        4   113  sstunted         
Birth       MAL-ED       SOUTH AFRICA                   >5%                1        0   113  sstunted         
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       51   125  sstunted         
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1        8   125  sstunted         
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       44   125  sstunted         
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        1   125  sstunted         
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       20   125  sstunted         
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1        1   125  sstunted         
Birth       NIH-Birth    BANGLADESH                     0%                 0      155   605  sstunted         
Birth       NIH-Birth    BANGLADESH                     0%                 1        5   605  sstunted         
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]           0      174   605  sstunted         
Birth       NIH-Birth    BANGLADESH                     (0%, 5%]           1        3   605  sstunted         
Birth       NIH-Birth    BANGLADESH                     >5%                0      257   605  sstunted         
Birth       NIH-Birth    BANGLADESH                     >5%                1       11   605  sstunted         
Birth       NIH-Crypto   BANGLADESH                     0%                 0      352   732  sstunted         
Birth       NIH-Crypto   BANGLADESH                     0%                 1        8   732  sstunted         
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]           0      162   732  sstunted         
Birth       NIH-Crypto   BANGLADESH                     (0%, 5%]           1        1   732  sstunted         
Birth       NIH-Crypto   BANGLADESH                     >5%                0      208   732  sstunted         
Birth       NIH-Crypto   BANGLADESH                     >5%                1        1   732  sstunted         
Birth       PROVIDE      BANGLADESH                     0%                 0      161   539  sstunted         
Birth       PROVIDE      BANGLADESH                     0%                 1        0   539  sstunted         
Birth       PROVIDE      BANGLADESH                     (0%, 5%]           0      207   539  sstunted         
Birth       PROVIDE      BANGLADESH                     (0%, 5%]           1        2   539  sstunted         
Birth       PROVIDE      BANGLADESH                     >5%                0      167   539  sstunted         
Birth       PROVIDE      BANGLADESH                     >5%                1        2   539  sstunted         
6 months    CMIN         BANGLADESH                     0%                 0       71   243  sstunted         
6 months    CMIN         BANGLADESH                     0%                 1       10   243  sstunted         
6 months    CMIN         BANGLADESH                     (0%, 5%]           0       49   243  sstunted         
6 months    CMIN         BANGLADESH                     (0%, 5%]           1       10   243  sstunted         
6 months    CMIN         BANGLADESH                     >5%                0       95   243  sstunted         
6 months    CMIN         BANGLADESH                     >5%                1        8   243  sstunted         
6 months    CONTENT      PERU                           0%                 0      114   215  sstunted         
6 months    CONTENT      PERU                           0%                 1        1   215  sstunted         
6 months    CONTENT      PERU                           (0%, 5%]           0       43   215  sstunted         
6 months    CONTENT      PERU                           (0%, 5%]           1        0   215  sstunted         
6 months    CONTENT      PERU                           >5%                0       57   215  sstunted         
6 months    CONTENT      PERU                           >5%                1        0   215  sstunted         
6 months    EE           PAKISTAN                       0%                 0      266   373  sstunted         
6 months    EE           PAKISTAN                       0%                 1       70   373  sstunted         
6 months    EE           PAKISTAN                       (0%, 5%]           0       25   373  sstunted         
6 months    EE           PAKISTAN                       (0%, 5%]           1       10   373  sstunted         
6 months    EE           PAKISTAN                       >5%                0        1   373  sstunted         
6 months    EE           PAKISTAN                       >5%                1        1   373  sstunted         
6 months    MAL-ED       BANGLADESH                     0%                 0       69   241  sstunted         
6 months    MAL-ED       BANGLADESH                     0%                 1        2   241  sstunted         
6 months    MAL-ED       BANGLADESH                     (0%, 5%]           0       90   241  sstunted         
6 months    MAL-ED       BANGLADESH                     (0%, 5%]           1        2   241  sstunted         
6 months    MAL-ED       BANGLADESH                     >5%                0       74   241  sstunted         
6 months    MAL-ED       BANGLADESH                     >5%                1        4   241  sstunted         
6 months    MAL-ED       BRAZIL                         0%                 0      192   209  sstunted         
6 months    MAL-ED       BRAZIL                         0%                 1        0   209  sstunted         
6 months    MAL-ED       BRAZIL                         (0%, 5%]           0       15   209  sstunted         
6 months    MAL-ED       BRAZIL                         (0%, 5%]           1        0   209  sstunted         
6 months    MAL-ED       BRAZIL                         >5%                0        2   209  sstunted         
6 months    MAL-ED       BRAZIL                         >5%                1        0   209  sstunted         
6 months    MAL-ED       INDIA                          0%                 0       48   236  sstunted         
6 months    MAL-ED       INDIA                          0%                 1        2   236  sstunted         
6 months    MAL-ED       INDIA                          (0%, 5%]           0      122   236  sstunted         
6 months    MAL-ED       INDIA                          (0%, 5%]           1        5   236  sstunted         
6 months    MAL-ED       INDIA                          >5%                0       57   236  sstunted         
6 months    MAL-ED       INDIA                          >5%                1        2   236  sstunted         
6 months    MAL-ED       NEPAL                          0%                 0       79   236  sstunted         
6 months    MAL-ED       NEPAL                          0%                 1        1   236  sstunted         
6 months    MAL-ED       NEPAL                          (0%, 5%]           0       76   236  sstunted         
6 months    MAL-ED       NEPAL                          (0%, 5%]           1        0   236  sstunted         
6 months    MAL-ED       NEPAL                          >5%                0       80   236  sstunted         
6 months    MAL-ED       NEPAL                          >5%                1        0   236  sstunted         
6 months    MAL-ED       PERU                           0%                 0       63   273  sstunted         
6 months    MAL-ED       PERU                           0%                 1        5   273  sstunted         
6 months    MAL-ED       PERU                           (0%, 5%]           0       88   273  sstunted         
6 months    MAL-ED       PERU                           (0%, 5%]           1        1   273  sstunted         
6 months    MAL-ED       PERU                           >5%                0      112   273  sstunted         
6 months    MAL-ED       PERU                           >5%                1        4   273  sstunted         
6 months    MAL-ED       SOUTH AFRICA                   0%                 0      185   254  sstunted         
6 months    MAL-ED       SOUTH AFRICA                   0%                 1        5   254  sstunted         
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       54   254  sstunted         
6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]           1        1   254  sstunted         
6 months    MAL-ED       SOUTH AFRICA                   >5%                0        9   254  sstunted         
6 months    MAL-ED       SOUTH AFRICA                   >5%                1        0   254  sstunted         
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       98   247  sstunted         
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1        7   247  sstunted         
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       90   247  sstunted         
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        6   247  sstunted         
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       45   247  sstunted         
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1        1   247  sstunted         
6 months    NIH-Birth    BANGLADESH                     0%                 0      120   537  sstunted         
6 months    NIH-Birth    BANGLADESH                     0%                 1        9   537  sstunted         
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]           0      159   537  sstunted         
6 months    NIH-Birth    BANGLADESH                     (0%, 5%]           1       10   537  sstunted         
6 months    NIH-Birth    BANGLADESH                     >5%                0      223   537  sstunted         
6 months    NIH-Birth    BANGLADESH                     >5%                1       16   537  sstunted         
6 months    NIH-Crypto   BANGLADESH                     0%                 0      335   715  sstunted         
6 months    NIH-Crypto   BANGLADESH                     0%                 1        6   715  sstunted         
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]           0      156   715  sstunted         
6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]           1       11   715  sstunted         
6 months    NIH-Crypto   BANGLADESH                     >5%                0      201   715  sstunted         
6 months    NIH-Crypto   BANGLADESH                     >5%                1        6   715  sstunted         
6 months    PROVIDE      BANGLADESH                     0%                 0      154   604  sstunted         
6 months    PROVIDE      BANGLADESH                     0%                 1        4   604  sstunted         
6 months    PROVIDE      BANGLADESH                     (0%, 5%]           0      240   604  sstunted         
6 months    PROVIDE      BANGLADESH                     (0%, 5%]           1        6   604  sstunted         
6 months    PROVIDE      BANGLADESH                     >5%                0      196   604  sstunted         
6 months    PROVIDE      BANGLADESH                     >5%                1        4   604  sstunted         
24 months   CMIN         BANGLADESH                     0%                 0       65   242  sstunted         
24 months   CMIN         BANGLADESH                     0%                 1       20   242  sstunted         
24 months   CMIN         BANGLADESH                     (0%, 5%]           0       34   242  sstunted         
24 months   CMIN         BANGLADESH                     (0%, 5%]           1       24   242  sstunted         
24 months   CMIN         BANGLADESH                     >5%                0       75   242  sstunted         
24 months   CMIN         BANGLADESH                     >5%                1       24   242  sstunted         
24 months   CONTENT      PERU                           0%                 0       83   164  sstunted         
24 months   CONTENT      PERU                           0%                 1        1   164  sstunted         
24 months   CONTENT      PERU                           (0%, 5%]           0       36   164  sstunted         
24 months   CONTENT      PERU                           (0%, 5%]           1        0   164  sstunted         
24 months   CONTENT      PERU                           >5%                0       44   164  sstunted         
24 months   CONTENT      PERU                           >5%                1        0   164  sstunted         
24 months   EE           PAKISTAN                       0%                 0      100   167  sstunted         
24 months   EE           PAKISTAN                       0%                 1       52   167  sstunted         
24 months   EE           PAKISTAN                       (0%, 5%]           0        7   167  sstunted         
24 months   EE           PAKISTAN                       (0%, 5%]           1        7   167  sstunted         
24 months   EE           PAKISTAN                       >5%                0        1   167  sstunted         
24 months   EE           PAKISTAN                       >5%                1        0   167  sstunted         
24 months   MAL-ED       BANGLADESH                     0%                 0       53   212  sstunted         
24 months   MAL-ED       BANGLADESH                     0%                 1       11   212  sstunted         
24 months   MAL-ED       BANGLADESH                     (0%, 5%]           0       72   212  sstunted         
24 months   MAL-ED       BANGLADESH                     (0%, 5%]           1       11   212  sstunted         
24 months   MAL-ED       BANGLADESH                     >5%                0       59   212  sstunted         
24 months   MAL-ED       BANGLADESH                     >5%                1        6   212  sstunted         
24 months   MAL-ED       BRAZIL                         0%                 0      153   169  sstunted         
24 months   MAL-ED       BRAZIL                         0%                 1        1   169  sstunted         
24 months   MAL-ED       BRAZIL                         (0%, 5%]           0       13   169  sstunted         
24 months   MAL-ED       BRAZIL                         (0%, 5%]           1        0   169  sstunted         
24 months   MAL-ED       BRAZIL                         >5%                0        2   169  sstunted         
24 months   MAL-ED       BRAZIL                         >5%                1        0   169  sstunted         
24 months   MAL-ED       INDIA                          0%                 0       42   227  sstunted         
24 months   MAL-ED       INDIA                          0%                 1        6   227  sstunted         
24 months   MAL-ED       INDIA                          (0%, 5%]           0      108   227  sstunted         
24 months   MAL-ED       INDIA                          (0%, 5%]           1       14   227  sstunted         
24 months   MAL-ED       INDIA                          >5%                0       47   227  sstunted         
24 months   MAL-ED       INDIA                          >5%                1       10   227  sstunted         
24 months   MAL-ED       NEPAL                          0%                 0       75   228  sstunted         
24 months   MAL-ED       NEPAL                          0%                 1        2   228  sstunted         
24 months   MAL-ED       NEPAL                          (0%, 5%]           0       72   228  sstunted         
24 months   MAL-ED       NEPAL                          (0%, 5%]           1        3   228  sstunted         
24 months   MAL-ED       NEPAL                          >5%                0       74   228  sstunted         
24 months   MAL-ED       NEPAL                          >5%                1        2   228  sstunted         
24 months   MAL-ED       PERU                           0%                 0       46   201  sstunted         
24 months   MAL-ED       PERU                           0%                 1        7   201  sstunted         
24 months   MAL-ED       PERU                           (0%, 5%]           0       58   201  sstunted         
24 months   MAL-ED       PERU                           (0%, 5%]           1        6   201  sstunted         
24 months   MAL-ED       PERU                           >5%                0       82   201  sstunted         
24 months   MAL-ED       PERU                           >5%                1        2   201  sstunted         
24 months   MAL-ED       SOUTH AFRICA                   0%                 0      161   238  sstunted         
24 months   MAL-ED       SOUTH AFRICA                   0%                 1       16   238  sstunted         
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       42   238  sstunted         
24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]           1       10   238  sstunted         
24 months   MAL-ED       SOUTH AFRICA                   >5%                0        8   238  sstunted         
24 months   MAL-ED       SOUTH AFRICA                   >5%                1        1   238  sstunted         
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       61   214  sstunted         
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1       31   214  sstunted         
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       56   214  sstunted         
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       27   214  sstunted         
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       27   214  sstunted         
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1       12   214  sstunted         
24 months   NIH-Birth    BANGLADESH                     0%                 0       83   429  sstunted         
24 months   NIH-Birth    BANGLADESH                     0%                 1       24   429  sstunted         
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]           0      102   429  sstunted         
24 months   NIH-Birth    BANGLADESH                     (0%, 5%]           1       26   429  sstunted         
24 months   NIH-Birth    BANGLADESH                     >5%                0      149   429  sstunted         
24 months   NIH-Birth    BANGLADESH                     >5%                1       45   429  sstunted         
24 months   NIH-Crypto   BANGLADESH                     0%                 0      261   514  sstunted         
24 months   NIH-Crypto   BANGLADESH                     0%                 1       16   514  sstunted         
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]           0       95   514  sstunted         
24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]           1       11   514  sstunted         
24 months   NIH-Crypto   BANGLADESH                     >5%                0      122   514  sstunted         
24 months   NIH-Crypto   BANGLADESH                     >5%                1        9   514  sstunted         
24 months   PROVIDE      BANGLADESH                     0%                 0      137   578  sstunted         
24 months   PROVIDE      BANGLADESH                     0%                 1       15   578  sstunted         
24 months   PROVIDE      BANGLADESH                     (0%, 5%]           0      213   578  sstunted         
24 months   PROVIDE      BANGLADESH                     (0%, 5%]           1       19   578  sstunted         
24 months   PROVIDE      BANGLADESH                     >5%                0      176   578  sstunted         
24 months   PROVIDE      BANGLADESH                     >5%                1       18   578  sstunted         


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
