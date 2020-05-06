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

**Intervention Variable:** anywast06

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

agecat      studyid          country                        anywast06    sstunted   n_cell      n  outcome_variable 
----------  ---------------  -----------------------------  ----------  ---------  -------  -----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                   0       37     92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                   1        0     92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                   0       51     92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                   1        4     92  sstunted         
Birth       CMIN             BANGLADESH                     0                   0       15     20  sstunted         
Birth       CMIN             BANGLADESH                     0                   1        0     20  sstunted         
Birth       CMIN             BANGLADESH                     1                   0        5     20  sstunted         
Birth       CMIN             BANGLADESH                     1                   1        0     20  sstunted         
Birth       CONTENT          PERU                           0                   0        2      2  sstunted         
Birth       CONTENT          PERU                           0                   1        0      2  sstunted         
Birth       CONTENT          PERU                           1                   0        0      2  sstunted         
Birth       CONTENT          PERU                           1                   1        0      2  sstunted         
Birth       EE               PAKISTAN                       0                   0      119    240  sstunted         
Birth       EE               PAKISTAN                       0                   1       37    240  sstunted         
Birth       EE               PAKISTAN                       1                   0       73    240  sstunted         
Birth       EE               PAKISTAN                       1                   1       11    240  sstunted         
Birth       GMS-Nepal        NEPAL                          0                   0      406    684  sstunted         
Birth       GMS-Nepal        NEPAL                          0                   1       16    684  sstunted         
Birth       GMS-Nepal        NEPAL                          1                   0      257    684  sstunted         
Birth       GMS-Nepal        NEPAL                          1                   1        5    684  sstunted         
Birth       IRC              INDIA                          0                   0      155    388  sstunted         
Birth       IRC              INDIA                          0                   1        9    388  sstunted         
Birth       IRC              INDIA                          1                   0      217    388  sstunted         
Birth       IRC              INDIA                          1                   1        7    388  sstunted         
Birth       Keneba           GAMBIA                         0                   0      970   1542  sstunted         
Birth       Keneba           GAMBIA                         0                   1       24   1542  sstunted         
Birth       Keneba           GAMBIA                         1                   0      543   1542  sstunted         
Birth       Keneba           GAMBIA                         1                   1        5   1542  sstunted         
Birth       MAL-ED           BANGLADESH                     0                   0      170    229  sstunted         
Birth       MAL-ED           BANGLADESH                     0                   1        7    229  sstunted         
Birth       MAL-ED           BANGLADESH                     1                   0       50    229  sstunted         
Birth       MAL-ED           BANGLADESH                     1                   1        2    229  sstunted         
Birth       MAL-ED           BRAZIL                         0                   0       59     65  sstunted         
Birth       MAL-ED           BRAZIL                         0                   1        3     65  sstunted         
Birth       MAL-ED           BRAZIL                         1                   0        3     65  sstunted         
Birth       MAL-ED           BRAZIL                         1                   1        0     65  sstunted         
Birth       MAL-ED           INDIA                          0                   0       32     47  sstunted         
Birth       MAL-ED           INDIA                          0                   1        1     47  sstunted         
Birth       MAL-ED           INDIA                          1                   0       13     47  sstunted         
Birth       MAL-ED           INDIA                          1                   1        1     47  sstunted         
Birth       MAL-ED           NEPAL                          0                   0       22     27  sstunted         
Birth       MAL-ED           NEPAL                          0                   1        1     27  sstunted         
Birth       MAL-ED           NEPAL                          1                   0        4     27  sstunted         
Birth       MAL-ED           NEPAL                          1                   1        0     27  sstunted         
Birth       MAL-ED           PERU                           0                   0      219    233  sstunted         
Birth       MAL-ED           PERU                           0                   1        4    233  sstunted         
Birth       MAL-ED           PERU                           1                   0       10    233  sstunted         
Birth       MAL-ED           PERU                           1                   1        0    233  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                   0      100    122  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                   1        1    122  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                   0       21    122  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                   1        0    122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      110    124  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        9    124  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        5    124  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0    124  sstunted         
Birth       PROVIDE          BANGLADESH                     0                   0      392    539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                   1        4    539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                   0      143    539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                   1        0    539  sstunted         
Birth       ResPak           PAKISTAN                       0                   0       27     42  sstunted         
Birth       ResPak           PAKISTAN                       0                   1        1     42  sstunted         
Birth       ResPak           PAKISTAN                       1                   0       13     42  sstunted         
Birth       ResPak           PAKISTAN                       1                   1        1     42  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                   0      155    365  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                   1       22    365  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                   0      168    365  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                   1       20    365  sstunted         
6 months    CMIN             BANGLADESH                     0                   0      179    243  sstunted         
6 months    CMIN             BANGLADESH                     0                   1       22    243  sstunted         
6 months    CMIN             BANGLADESH                     1                   0       36    243  sstunted         
6 months    CMIN             BANGLADESH                     1                   1        6    243  sstunted         
6 months    CONTENT          PERU                           0                   0      210    215  sstunted         
6 months    CONTENT          PERU                           0                   1        1    215  sstunted         
6 months    CONTENT          PERU                           1                   0        4    215  sstunted         
6 months    CONTENT          PERU                           1                   1        0    215  sstunted         
6 months    EE               PAKISTAN                       0                   0      196    373  sstunted         
6 months    EE               PAKISTAN                       0                   1       53    373  sstunted         
6 months    EE               PAKISTAN                       1                   0       96    373  sstunted         
6 months    EE               PAKISTAN                       1                   1       28    373  sstunted         
6 months    GMS-Nepal        NEPAL                          0                   0      324    564  sstunted         
6 months    GMS-Nepal        NEPAL                          0                   1       12    564  sstunted         
6 months    GMS-Nepal        NEPAL                          1                   0      219    564  sstunted         
6 months    GMS-Nepal        NEPAL                          1                   1        9    564  sstunted         
6 months    Guatemala BSC    GUATEMALA                      0                   0      247    280  sstunted         
6 months    Guatemala BSC    GUATEMALA                      0                   1       23    280  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1                   0        6    280  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1                   1        4    280  sstunted         
6 months    IRC              INDIA                          0                   0      162    407  sstunted         
6 months    IRC              INDIA                          0                   1       18    407  sstunted         
6 months    IRC              INDIA                          1                   0      216    407  sstunted         
6 months    IRC              INDIA                          1                   1       11    407  sstunted         
6 months    Keneba           GAMBIA                         0                   0     1411   2056  sstunted         
6 months    Keneba           GAMBIA                         0                   1       30   2056  sstunted         
6 months    Keneba           GAMBIA                         1                   0      578   2056  sstunted         
6 months    Keneba           GAMBIA                         1                   1       37   2056  sstunted         
6 months    MAL-ED           BANGLADESH                     0                   0      179    241  sstunted         
6 months    MAL-ED           BANGLADESH                     0                   1        4    241  sstunted         
6 months    MAL-ED           BANGLADESH                     1                   0       54    241  sstunted         
6 months    MAL-ED           BANGLADESH                     1                   1        4    241  sstunted         
6 months    MAL-ED           BRAZIL                         0                   0      194    209  sstunted         
6 months    MAL-ED           BRAZIL                         0                   1        0    209  sstunted         
6 months    MAL-ED           BRAZIL                         1                   0       15    209  sstunted         
6 months    MAL-ED           BRAZIL                         1                   1        0    209  sstunted         
6 months    MAL-ED           INDIA                          0                   0      154    236  sstunted         
6 months    MAL-ED           INDIA                          0                   1        5    236  sstunted         
6 months    MAL-ED           INDIA                          1                   0       73    236  sstunted         
6 months    MAL-ED           INDIA                          1                   1        4    236  sstunted         
6 months    MAL-ED           NEPAL                          0                   0      188    236  sstunted         
6 months    MAL-ED           NEPAL                          0                   1        0    236  sstunted         
6 months    MAL-ED           NEPAL                          1                   0       47    236  sstunted         
6 months    MAL-ED           NEPAL                          1                   1        1    236  sstunted         
6 months    MAL-ED           PERU                           0                   0      254    273  sstunted         
6 months    MAL-ED           PERU                           0                   1        9    273  sstunted         
6 months    MAL-ED           PERU                           1                   0        9    273  sstunted         
6 months    MAL-ED           PERU                           1                   1        1    273  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                   0      218    254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                   1        5    254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                   0       30    254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                   1        1    254  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      220    247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       14    247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       13    247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0    247  sstunted         
6 months    PROVIDE          BANGLADESH                     0                   0      443    604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                   1        7    604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                   0      147    604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                   1        7    604  sstunted         
6 months    ResPak           PAKISTAN                       0                   0      111    239  sstunted         
6 months    ResPak           PAKISTAN                       0                   1       32    239  sstunted         
6 months    ResPak           PAKISTAN                       1                   0       81    239  sstunted         
6 months    ResPak           PAKISTAN                       1                   1       15    239  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1713   2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1       15   2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      297   2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   2029  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                   0      125    366  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                   1       51    366  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                   0      120    366  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                   1       70    366  sstunted         
24 months   CMIN             BANGLADESH                     0                   0      147    242  sstunted         
24 months   CMIN             BANGLADESH                     0                   1       53    242  sstunted         
24 months   CMIN             BANGLADESH                     1                   0       27    242  sstunted         
24 months   CMIN             BANGLADESH                     1                   1       15    242  sstunted         
24 months   CONTENT          PERU                           0                   0      161    164  sstunted         
24 months   CONTENT          PERU                           0                   1        1    164  sstunted         
24 months   CONTENT          PERU                           1                   0        2    164  sstunted         
24 months   CONTENT          PERU                           1                   1        0    164  sstunted         
24 months   EE               PAKISTAN                       0                   0       73    167  sstunted         
24 months   EE               PAKISTAN                       0                   1       36    167  sstunted         
24 months   EE               PAKISTAN                       1                   0       35    167  sstunted         
24 months   EE               PAKISTAN                       1                   1       23    167  sstunted         
24 months   GMS-Nepal        NEPAL                          0                   0      267    488  sstunted         
24 months   GMS-Nepal        NEPAL                          0                   1       33    488  sstunted         
24 months   GMS-Nepal        NEPAL                          1                   0      168    488  sstunted         
24 months   GMS-Nepal        NEPAL                          1                   1       20    488  sstunted         
24 months   IRC              INDIA                          0                   0      163    409  sstunted         
24 months   IRC              INDIA                          0                   1       18    409  sstunted         
24 months   IRC              INDIA                          1                   0      205    409  sstunted         
24 months   IRC              INDIA                          1                   1       23    409  sstunted         
24 months   Keneba           GAMBIA                         0                   0     1009   1563  sstunted         
24 months   Keneba           GAMBIA                         0                   1       82   1563  sstunted         
24 months   Keneba           GAMBIA                         1                   0      425   1563  sstunted         
24 months   Keneba           GAMBIA                         1                   1       47   1563  sstunted         
24 months   MAL-ED           BANGLADESH                     0                   0      142    212  sstunted         
24 months   MAL-ED           BANGLADESH                     0                   1       20    212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                   0       42    212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                   1        8    212  sstunted         
24 months   MAL-ED           BRAZIL                         0                   0      156    169  sstunted         
24 months   MAL-ED           BRAZIL                         0                   1        0    169  sstunted         
24 months   MAL-ED           BRAZIL                         1                   0       12    169  sstunted         
24 months   MAL-ED           BRAZIL                         1                   1        1    169  sstunted         
24 months   MAL-ED           INDIA                          0                   0      129    227  sstunted         
24 months   MAL-ED           INDIA                          0                   1       22    227  sstunted         
24 months   MAL-ED           INDIA                          1                   0       68    227  sstunted         
24 months   MAL-ED           INDIA                          1                   1        8    227  sstunted         
24 months   MAL-ED           NEPAL                          0                   0      178    228  sstunted         
24 months   MAL-ED           NEPAL                          0                   1        4    228  sstunted         
24 months   MAL-ED           NEPAL                          1                   0       43    228  sstunted         
24 months   MAL-ED           NEPAL                          1                   1        3    228  sstunted         
24 months   MAL-ED           PERU                           0                   0      179    201  sstunted         
24 months   MAL-ED           PERU                           0                   1       14    201  sstunted         
24 months   MAL-ED           PERU                           1                   0        7    201  sstunted         
24 months   MAL-ED           PERU                           1                   1        1    201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                   0      190    238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                   1       22    238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                   0       21    238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                   1        5    238  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      136    214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       66    214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        8    214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        4    214  sstunted         
24 months   PROVIDE          BANGLADESH                     0                   0      390    578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                   1       42    578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                   0      136    578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                   1       10    578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        4      6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        1      6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        1      6  sstunted         
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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
