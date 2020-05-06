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

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        pers_wast    sstunted   n_cell      n  outcome_variable 
----------  ---------------  -----------------------------  ----------  ---------  -------  -----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                   0       78     92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                   1        2     92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                   0       10     92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                   1        2     92  sstunted         
Birth       CMIN             BANGLADESH                     0                   0       16     18  sstunted         
Birth       CMIN             BANGLADESH                     0                   1        0     18  sstunted         
Birth       CMIN             BANGLADESH                     1                   0        2     18  sstunted         
Birth       CMIN             BANGLADESH                     1                   1        0     18  sstunted         
Birth       CONTENT          PERU                           0                   0        2      2  sstunted         
Birth       CONTENT          PERU                           0                   1        0      2  sstunted         
Birth       CONTENT          PERU                           1                   0        0      2  sstunted         
Birth       CONTENT          PERU                           1                   1        0      2  sstunted         
Birth       EE               PAKISTAN                       0                   0      177    240  sstunted         
Birth       EE               PAKISTAN                       0                   1       47    240  sstunted         
Birth       EE               PAKISTAN                       1                   0       15    240  sstunted         
Birth       EE               PAKISTAN                       1                   1        1    240  sstunted         
Birth       GMS-Nepal        NEPAL                          0                   0      502    585  sstunted         
Birth       GMS-Nepal        NEPAL                          0                   1       19    585  sstunted         
Birth       GMS-Nepal        NEPAL                          1                   0       62    585  sstunted         
Birth       GMS-Nepal        NEPAL                          1                   1        2    585  sstunted         
Birth       IRC              INDIA                          0                   0      306    387  sstunted         
Birth       IRC              INDIA                          0                   1       13    387  sstunted         
Birth       IRC              INDIA                          1                   0       65    387  sstunted         
Birth       IRC              INDIA                          1                   1        3    387  sstunted         
Birth       Keneba           GAMBIA                         0                   0     1348   1419  sstunted         
Birth       Keneba           GAMBIA                         0                   1       26   1419  sstunted         
Birth       Keneba           GAMBIA                         1                   0       45   1419  sstunted         
Birth       Keneba           GAMBIA                         1                   1        0   1419  sstunted         
Birth       MAL-ED           BANGLADESH                     0                   0      212    229  sstunted         
Birth       MAL-ED           BANGLADESH                     0                   1        8    229  sstunted         
Birth       MAL-ED           BANGLADESH                     1                   0        8    229  sstunted         
Birth       MAL-ED           BANGLADESH                     1                   1        1    229  sstunted         
Birth       MAL-ED           BRAZIL                         0                   0       62     65  sstunted         
Birth       MAL-ED           BRAZIL                         0                   1        3     65  sstunted         
Birth       MAL-ED           BRAZIL                         1                   0        0     65  sstunted         
Birth       MAL-ED           BRAZIL                         1                   1        0     65  sstunted         
Birth       MAL-ED           INDIA                          0                   0       41     45  sstunted         
Birth       MAL-ED           INDIA                          0                   1        2     45  sstunted         
Birth       MAL-ED           INDIA                          1                   0        2     45  sstunted         
Birth       MAL-ED           INDIA                          1                   1        0     45  sstunted         
Birth       MAL-ED           NEPAL                          0                   0       25     27  sstunted         
Birth       MAL-ED           NEPAL                          0                   1        1     27  sstunted         
Birth       MAL-ED           NEPAL                          1                   0        1     27  sstunted         
Birth       MAL-ED           NEPAL                          1                   1        0     27  sstunted         
Birth       MAL-ED           PERU                           0                   0      229    233  sstunted         
Birth       MAL-ED           PERU                           0                   1        4    233  sstunted         
Birth       MAL-ED           PERU                           1                   0        0    233  sstunted         
Birth       MAL-ED           PERU                           1                   1        0    233  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                   0      110    113  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                   1        1    113  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                   0        2    113  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                   1        0    113  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      114    123  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        9    123  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0    123  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0    123  sstunted         
Birth       PROVIDE          BANGLADESH                     0                   0      512    539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                   1        4    539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                   0       23    539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                   1        0    539  sstunted         
Birth       ResPak           PAKISTAN                       0                   0       30     34  sstunted         
Birth       ResPak           PAKISTAN                       0                   1        0     34  sstunted         
Birth       ResPak           PAKISTAN                       1                   0        4     34  sstunted         
Birth       ResPak           PAKISTAN                       1                   1        0     34  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                   0      276    365  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                   1       37    365  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                   0       47    365  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                   1        5    365  sstunted         
6 months    CMIN             BANGLADESH                     0                   0      206    243  sstunted         
6 months    CMIN             BANGLADESH                     0                   1       26    243  sstunted         
6 months    CMIN             BANGLADESH                     1                   0        9    243  sstunted         
6 months    CMIN             BANGLADESH                     1                   1        2    243  sstunted         
6 months    CONTENT          PERU                           0                   0      214    215  sstunted         
6 months    CONTENT          PERU                           0                   1        1    215  sstunted         
6 months    CONTENT          PERU                           1                   0        0    215  sstunted         
6 months    CONTENT          PERU                           1                   1        0    215  sstunted         
6 months    EE               PAKISTAN                       0                   0      272    373  sstunted         
6 months    EE               PAKISTAN                       0                   1       75    373  sstunted         
6 months    EE               PAKISTAN                       1                   0       20    373  sstunted         
6 months    EE               PAKISTAN                       1                   1        6    373  sstunted         
6 months    GMS-Nepal        NEPAL                          0                   0      484    559  sstunted         
6 months    GMS-Nepal        NEPAL                          0                   1       15    559  sstunted         
6 months    GMS-Nepal        NEPAL                          1                   0       54    559  sstunted         
6 months    GMS-Nepal        NEPAL                          1                   1        6    559  sstunted         
6 months    Guatemala BSC    GUATEMALA                      0                   0      244    276  sstunted         
6 months    Guatemala BSC    GUATEMALA                      0                   1       23    276  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1                   0        6    276  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1                   1        3    276  sstunted         
6 months    IRC              INDIA                          0                   0      309    406  sstunted         
6 months    IRC              INDIA                          0                   1       28    406  sstunted         
6 months    IRC              INDIA                          1                   0       68    406  sstunted         
6 months    IRC              INDIA                          1                   1        1    406  sstunted         
6 months    Keneba           GAMBIA                         0                   0     1786   1897  sstunted         
6 months    Keneba           GAMBIA                         0                   1       50   1897  sstunted         
6 months    Keneba           GAMBIA                         1                   0       50   1897  sstunted         
6 months    Keneba           GAMBIA                         1                   1       11   1897  sstunted         
6 months    MAL-ED           BANGLADESH                     0                   0      227    241  sstunted         
6 months    MAL-ED           BANGLADESH                     0                   1        7    241  sstunted         
6 months    MAL-ED           BANGLADESH                     1                   0        6    241  sstunted         
6 months    MAL-ED           BANGLADESH                     1                   1        1    241  sstunted         
6 months    MAL-ED           BRAZIL                         0                   0      208    209  sstunted         
6 months    MAL-ED           BRAZIL                         0                   1        0    209  sstunted         
6 months    MAL-ED           BRAZIL                         1                   0        1    209  sstunted         
6 months    MAL-ED           BRAZIL                         1                   1        0    209  sstunted         
6 months    MAL-ED           INDIA                          0                   0      210    236  sstunted         
6 months    MAL-ED           INDIA                          0                   1        8    236  sstunted         
6 months    MAL-ED           INDIA                          1                   0       17    236  sstunted         
6 months    MAL-ED           INDIA                          1                   1        1    236  sstunted         
6 months    MAL-ED           NEPAL                          0                   0      229    236  sstunted         
6 months    MAL-ED           NEPAL                          0                   1        1    236  sstunted         
6 months    MAL-ED           NEPAL                          1                   0        6    236  sstunted         
6 months    MAL-ED           NEPAL                          1                   1        0    236  sstunted         
6 months    MAL-ED           PERU                           0                   0      263    273  sstunted         
6 months    MAL-ED           PERU                           0                   1       10    273  sstunted         
6 months    MAL-ED           PERU                           1                   0        0    273  sstunted         
6 months    MAL-ED           PERU                           1                   1        0    273  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                   0      246    254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                   1        6    254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                   0        2    254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                   1        0    254  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      233    247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       14    247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0    247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0    247  sstunted         
6 months    PROVIDE          BANGLADESH                     0                   0      579    604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                   1       11    604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                   0       11    604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                   1        3    604  sstunted         
6 months    ResPak           PAKISTAN                       0                   0      162    227  sstunted         
6 months    ResPak           PAKISTAN                       0                   1       40    227  sstunted         
6 months    ResPak           PAKISTAN                       1                   0       23    227  sstunted         
6 months    ResPak           PAKISTAN                       1                   1        2    227  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1949   2019  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1       19   2019  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       51   2019  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0   2019  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                   0      217    366  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                   1       94    366  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                   0       28    366  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                   1       27    366  sstunted         
24 months   CMIN             BANGLADESH                     0                   0      168    242  sstunted         
24 months   CMIN             BANGLADESH                     0                   1       65    242  sstunted         
24 months   CMIN             BANGLADESH                     1                   0        6    242  sstunted         
24 months   CMIN             BANGLADESH                     1                   1        3    242  sstunted         
24 months   CONTENT          PERU                           0                   0      163    164  sstunted         
24 months   CONTENT          PERU                           0                   1        1    164  sstunted         
24 months   CONTENT          PERU                           1                   0        0    164  sstunted         
24 months   CONTENT          PERU                           1                   1        0    164  sstunted         
24 months   EE               PAKISTAN                       0                   0      103    167  sstunted         
24 months   EE               PAKISTAN                       0                   1       53    167  sstunted         
24 months   EE               PAKISTAN                       1                   0        5    167  sstunted         
24 months   EE               PAKISTAN                       1                   1        6    167  sstunted         
24 months   GMS-Nepal        NEPAL                          0                   0      386    479  sstunted         
24 months   GMS-Nepal        NEPAL                          0                   1       44    479  sstunted         
24 months   GMS-Nepal        NEPAL                          1                   0       40    479  sstunted         
24 months   GMS-Nepal        NEPAL                          1                   1        9    479  sstunted         
24 months   IRC              INDIA                          0                   0      302    408  sstunted         
24 months   IRC              INDIA                          0                   1       37    408  sstunted         
24 months   IRC              INDIA                          1                   0       65    408  sstunted         
24 months   IRC              INDIA                          1                   1        4    408  sstunted         
24 months   Keneba           GAMBIA                         0                   0     1290   1442  sstunted         
24 months   Keneba           GAMBIA                         0                   1      105   1442  sstunted         
24 months   Keneba           GAMBIA                         1                   0       33   1442  sstunted         
24 months   Keneba           GAMBIA                         1                   1       14   1442  sstunted         
24 months   MAL-ED           BANGLADESH                     0                   0      178    212  sstunted         
24 months   MAL-ED           BANGLADESH                     0                   1       28    212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                   0        6    212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                   1        0    212  sstunted         
24 months   MAL-ED           BRAZIL                         0                   0      167    169  sstunted         
24 months   MAL-ED           BRAZIL                         0                   1        1    169  sstunted         
24 months   MAL-ED           BRAZIL                         1                   0        1    169  sstunted         
24 months   MAL-ED           BRAZIL                         1                   1        0    169  sstunted         
24 months   MAL-ED           INDIA                          0                   0      180    227  sstunted         
24 months   MAL-ED           INDIA                          0                   1       29    227  sstunted         
24 months   MAL-ED           INDIA                          1                   0       17    227  sstunted         
24 months   MAL-ED           INDIA                          1                   1        1    227  sstunted         
24 months   MAL-ED           NEPAL                          0                   0      216    228  sstunted         
24 months   MAL-ED           NEPAL                          0                   1        6    228  sstunted         
24 months   MAL-ED           NEPAL                          1                   0        5    228  sstunted         
24 months   MAL-ED           NEPAL                          1                   1        1    228  sstunted         
24 months   MAL-ED           PERU                           0                   0      186    201  sstunted         
24 months   MAL-ED           PERU                           0                   1       15    201  sstunted         
24 months   MAL-ED           PERU                           1                   0        0    201  sstunted         
24 months   MAL-ED           PERU                           1                   1        0    201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                   0      209    238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                   1       27    238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                   0        2    238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                   1        0    238  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      144    214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       70    214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0    214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0    214  sstunted         
24 months   PROVIDE          BANGLADESH                     0                   0      513    578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                   1       52    578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                   0       13    578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                   1        0    578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        5      6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        1      6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        0      6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0      6  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
