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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* month
* W_parity
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        exclfeed36    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          1                       0        2      5
0-24 months   CMC-V-BCS-2002   INDIA                          1                       1        3      5
0-24 months   CMC-V-BCS-2002   INDIA                          0                       0        0      5
0-24 months   CMC-V-BCS-2002   INDIA                          0                       1        0      5
0-24 months   EE               PAKISTAN                       1                       0        1      4
0-24 months   EE               PAKISTAN                       1                       1        0      4
0-24 months   EE               PAKISTAN                       0                       0        0      4
0-24 months   EE               PAKISTAN                       0                       1        3      4
0-24 months   GMS-Nepal        NEPAL                          1                       0      190    559
0-24 months   GMS-Nepal        NEPAL                          1                       1      257    559
0-24 months   GMS-Nepal        NEPAL                          0                       0       52    559
0-24 months   GMS-Nepal        NEPAL                          0                       1       60    559
0-24 months   IRC              INDIA                          1                       0        0      5
0-24 months   IRC              INDIA                          1                       1        0      5
0-24 months   IRC              INDIA                          0                       0        3      5
0-24 months   IRC              INDIA                          0                       1        2      5
0-24 months   JiVitA-3         BANGLADESH                     1                       0     1673   3743
0-24 months   JiVitA-3         BANGLADESH                     1                       1     1225   3743
0-24 months   JiVitA-3         BANGLADESH                     0                       0      498   3743
0-24 months   JiVitA-3         BANGLADESH                     0                       1      347   3743
0-24 months   JiVitA-4         BANGLADESH                     1                       0      946   1787
0-24 months   JiVitA-4         BANGLADESH                     1                       1      360   1787
0-24 months   JiVitA-4         BANGLADESH                     0                       0      347   1787
0-24 months   JiVitA-4         BANGLADESH                     0                       1      134   1787
0-24 months   Keneba           GAMBIA                         1                       0      131   1460
0-24 months   Keneba           GAMBIA                         1                       1      255   1460
0-24 months   Keneba           GAMBIA                         0                       0      392   1460
0-24 months   Keneba           GAMBIA                         0                       1      682   1460
0-24 months   LCNI-5           MALAWI                         1                       0        5     34
0-24 months   LCNI-5           MALAWI                         1                       1        2     34
0-24 months   LCNI-5           MALAWI                         0                       0       22     34
0-24 months   LCNI-5           MALAWI                         0                       1        5     34
0-24 months   MAL-ED           BANGLADESH                     1                       0        4    121
0-24 months   MAL-ED           BANGLADESH                     1                       1       12    121
0-24 months   MAL-ED           BANGLADESH                     0                       0       39    121
0-24 months   MAL-ED           BANGLADESH                     0                       1       66    121
0-24 months   MAL-ED           BRAZIL                         1                       0        0     24
0-24 months   MAL-ED           BRAZIL                         1                       1        1     24
0-24 months   MAL-ED           BRAZIL                         0                       0        6     24
0-24 months   MAL-ED           BRAZIL                         0                       1       17     24
0-24 months   MAL-ED           INDIA                          1                       0        2    178
0-24 months   MAL-ED           INDIA                          1                       1        5    178
0-24 months   MAL-ED           INDIA                          0                       0       68    178
0-24 months   MAL-ED           INDIA                          0                       1      103    178
0-24 months   MAL-ED           NEPAL                          1                       0        1     98
0-24 months   MAL-ED           NEPAL                          1                       1        0     98
0-24 months   MAL-ED           NEPAL                          0                       0       19     98
0-24 months   MAL-ED           NEPAL                          0                       1       78     98
0-24 months   MAL-ED           PERU                           1                       0        0     34
0-24 months   MAL-ED           PERU                           1                       1        0     34
0-24 months   MAL-ED           PERU                           0                       0        6     34
0-24 months   MAL-ED           PERU                           0                       1       28     34
0-24 months   MAL-ED           SOUTH AFRICA                   1                       0        0     80
0-24 months   MAL-ED           SOUTH AFRICA                   1                       1        0     80
0-24 months   MAL-ED           SOUTH AFRICA                   0                       0       14     80
0-24 months   MAL-ED           SOUTH AFRICA                   0                       1       66     80
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0     50
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     50
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0        9     50
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1       41     50
0-24 months   PROVIDE          BANGLADESH                     1                       0       21    292
0-24 months   PROVIDE          BANGLADESH                     1                       1       44    292
0-24 months   PROVIDE          BANGLADESH                     0                       0       97    292
0-24 months   PROVIDE          BANGLADESH                     0                       1      130    292
0-24 months   SAS-FoodSuppl    INDIA                          1                       0        0    108
0-24 months   SAS-FoodSuppl    INDIA                          1                       1        0    108
0-24 months   SAS-FoodSuppl    INDIA                          0                       0      100    108
0-24 months   SAS-FoodSuppl    INDIA                          0                       1        8    108
0-6 months    CMC-V-BCS-2002   INDIA                          1                       0        1      3
0-6 months    CMC-V-BCS-2002   INDIA                          1                       1        2      3
0-6 months    CMC-V-BCS-2002   INDIA                          0                       0        0      3
0-6 months    CMC-V-BCS-2002   INDIA                          0                       1        0      3
0-6 months    EE               PAKISTAN                       1                       0        1      3
0-6 months    EE               PAKISTAN                       1                       1        0      3
0-6 months    EE               PAKISTAN                       0                       0        0      3
0-6 months    EE               PAKISTAN                       0                       1        2      3
0-6 months    GMS-Nepal        NEPAL                          1                       0       54    216
0-6 months    GMS-Nepal        NEPAL                          1                       1      117    216
0-6 months    GMS-Nepal        NEPAL                          0                       0       18    216
0-6 months    GMS-Nepal        NEPAL                          0                       1       27    216
0-6 months    IRC              INDIA                          1                       0        0      3
0-6 months    IRC              INDIA                          1                       1        0      3
0-6 months    IRC              INDIA                          0                       0        2      3
0-6 months    IRC              INDIA                          0                       1        1      3
0-6 months    JiVitA-3         BANGLADESH                     1                       0      542   2265
0-6 months    JiVitA-3         BANGLADESH                     1                       1     1225   2265
0-6 months    JiVitA-3         BANGLADESH                     0                       0      151   2265
0-6 months    JiVitA-3         BANGLADESH                     0                       1      347   2265
0-6 months    JiVitA-4         BANGLADESH                     1                       0      136    516
0-6 months    JiVitA-4         BANGLADESH                     1                       1      226    516
0-6 months    JiVitA-4         BANGLADESH                     0                       0       75    516
0-6 months    JiVitA-4         BANGLADESH                     0                       1       79    516
0-6 months    Keneba           GAMBIA                         1                       0       29    622
0-6 months    Keneba           GAMBIA                         1                       1      132    622
0-6 months    Keneba           GAMBIA                         0                       0      106    622
0-6 months    Keneba           GAMBIA                         0                       1      355    622
0-6 months    LCNI-5           MALAWI                         1                       0        0      4
0-6 months    LCNI-5           MALAWI                         1                       1        0      4
0-6 months    LCNI-5           MALAWI                         0                       0        4      4
0-6 months    LCNI-5           MALAWI                         0                       1        0      4
0-6 months    MAL-ED           BANGLADESH                     1                       0        1     60
0-6 months    MAL-ED           BANGLADESH                     1                       1        6     60
0-6 months    MAL-ED           BANGLADESH                     0                       0       11     60
0-6 months    MAL-ED           BANGLADESH                     0                       1       42     60
0-6 months    MAL-ED           BRAZIL                         1                       0        0     15
0-6 months    MAL-ED           BRAZIL                         1                       1        1     15
0-6 months    MAL-ED           BRAZIL                         0                       0        1     15
0-6 months    MAL-ED           BRAZIL                         0                       1       13     15
0-6 months    MAL-ED           INDIA                          1                       0        2     83
0-6 months    MAL-ED           INDIA                          1                       1        3     83
0-6 months    MAL-ED           INDIA                          0                       0       24     83
0-6 months    MAL-ED           INDIA                          0                       1       54     83
0-6 months    MAL-ED           NEPAL                          1                       0        1     48
0-6 months    MAL-ED           NEPAL                          1                       1        0     48
0-6 months    MAL-ED           NEPAL                          0                       0        8     48
0-6 months    MAL-ED           NEPAL                          0                       1       39     48
0-6 months    MAL-ED           PERU                           1                       0        0     10
0-6 months    MAL-ED           PERU                           1                       1        0     10
0-6 months    MAL-ED           PERU                           0                       0        0     10
0-6 months    MAL-ED           PERU                           0                       1       10     10
0-6 months    MAL-ED           SOUTH AFRICA                   1                       0        0     29
0-6 months    MAL-ED           SOUTH AFRICA                   1                       1        0     29
0-6 months    MAL-ED           SOUTH AFRICA                   0                       0        5     29
0-6 months    MAL-ED           SOUTH AFRICA                   0                       1       24     29
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1       13     14
0-6 months    PROVIDE          BANGLADESH                     1                       0        4    169
0-6 months    PROVIDE          BANGLADESH                     1                       1       37    169
0-6 months    PROVIDE          BANGLADESH                     0                       0       25    169
0-6 months    PROVIDE          BANGLADESH                     0                       1      103    169
0-6 months    SAS-FoodSuppl    INDIA                          1                       0        0     48
0-6 months    SAS-FoodSuppl    INDIA                          1                       1        0     48
0-6 months    SAS-FoodSuppl    INDIA                          0                       0       48     48
0-6 months    SAS-FoodSuppl    INDIA                          0                       1        0     48
6-24 months   CMC-V-BCS-2002   INDIA                          1                       0        1      2
6-24 months   CMC-V-BCS-2002   INDIA                          1                       1        1      2
6-24 months   CMC-V-BCS-2002   INDIA                          0                       0        0      2
6-24 months   CMC-V-BCS-2002   INDIA                          0                       1        0      2
6-24 months   EE               PAKISTAN                       1                       0        0      1
6-24 months   EE               PAKISTAN                       1                       1        0      1
6-24 months   EE               PAKISTAN                       0                       0        0      1
6-24 months   EE               PAKISTAN                       0                       1        1      1
6-24 months   GMS-Nepal        NEPAL                          1                       0      136    343
6-24 months   GMS-Nepal        NEPAL                          1                       1      140    343
6-24 months   GMS-Nepal        NEPAL                          0                       0       34    343
6-24 months   GMS-Nepal        NEPAL                          0                       1       33    343
6-24 months   IRC              INDIA                          1                       0        0      2
6-24 months   IRC              INDIA                          1                       1        0      2
6-24 months   IRC              INDIA                          0                       0        1      2
6-24 months   IRC              INDIA                          0                       1        1      2
6-24 months   JiVitA-3         BANGLADESH                     1                       0     1131   1478
6-24 months   JiVitA-3         BANGLADESH                     1                       1        0   1478
6-24 months   JiVitA-3         BANGLADESH                     0                       0      347   1478
6-24 months   JiVitA-3         BANGLADESH                     0                       1        0   1478
6-24 months   JiVitA-4         BANGLADESH                     1                       0      810   1271
6-24 months   JiVitA-4         BANGLADESH                     1                       1      134   1271
6-24 months   JiVitA-4         BANGLADESH                     0                       0      272   1271
6-24 months   JiVitA-4         BANGLADESH                     0                       1       55   1271
6-24 months   Keneba           GAMBIA                         1                       0      102    838
6-24 months   Keneba           GAMBIA                         1                       1      123    838
6-24 months   Keneba           GAMBIA                         0                       0      286    838
6-24 months   Keneba           GAMBIA                         0                       1      327    838
6-24 months   LCNI-5           MALAWI                         1                       0        5     30
6-24 months   LCNI-5           MALAWI                         1                       1        2     30
6-24 months   LCNI-5           MALAWI                         0                       0       18     30
6-24 months   LCNI-5           MALAWI                         0                       1        5     30
6-24 months   MAL-ED           BANGLADESH                     1                       0        3     61
6-24 months   MAL-ED           BANGLADESH                     1                       1        6     61
6-24 months   MAL-ED           BANGLADESH                     0                       0       28     61
6-24 months   MAL-ED           BANGLADESH                     0                       1       24     61
6-24 months   MAL-ED           BRAZIL                         1                       0        0      9
6-24 months   MAL-ED           BRAZIL                         1                       1        0      9
6-24 months   MAL-ED           BRAZIL                         0                       0        5      9
6-24 months   MAL-ED           BRAZIL                         0                       1        4      9
6-24 months   MAL-ED           INDIA                          1                       0        0     95
6-24 months   MAL-ED           INDIA                          1                       1        2     95
6-24 months   MAL-ED           INDIA                          0                       0       44     95
6-24 months   MAL-ED           INDIA                          0                       1       49     95
6-24 months   MAL-ED           NEPAL                          1                       0        0     50
6-24 months   MAL-ED           NEPAL                          1                       1        0     50
6-24 months   MAL-ED           NEPAL                          0                       0       11     50
6-24 months   MAL-ED           NEPAL                          0                       1       39     50
6-24 months   MAL-ED           PERU                           1                       0        0     24
6-24 months   MAL-ED           PERU                           1                       1        0     24
6-24 months   MAL-ED           PERU                           0                       0        6     24
6-24 months   MAL-ED           PERU                           0                       1       18     24
6-24 months   MAL-ED           SOUTH AFRICA                   1                       0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   1                       1        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   0                       0        9     51
6-24 months   MAL-ED           SOUTH AFRICA                   0                       1       42     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0     36
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     36
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0        8     36
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1       28     36
6-24 months   PROVIDE          BANGLADESH                     1                       0       17    123
6-24 months   PROVIDE          BANGLADESH                     1                       1        7    123
6-24 months   PROVIDE          BANGLADESH                     0                       0       72    123
6-24 months   PROVIDE          BANGLADESH                     0                       1       27    123
6-24 months   SAS-FoodSuppl    INDIA                          1                       0        0     60
6-24 months   SAS-FoodSuppl    INDIA                          1                       1        0     60
6-24 months   SAS-FoodSuppl    INDIA                          0                       0       52     60
6-24 months   SAS-FoodSuppl    INDIA                          0                       1        8     60


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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
![](/tmp/518cc068-ebea-44fc-b226-8eb5e9c12614/6b50c889-af44-48a9-afc2-daee7ff1213d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/518cc068-ebea-44fc-b226-8eb5e9c12614/6b50c889-af44-48a9-afc2-daee7ff1213d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/518cc068-ebea-44fc-b226-8eb5e9c12614/6b50c889-af44-48a9-afc2-daee7ff1213d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/518cc068-ebea-44fc-b226-8eb5e9c12614/6b50c889-af44-48a9-afc2-daee7ff1213d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.5757676   0.5259269   0.6256083
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.5311258   0.4220493   0.6402024
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.4188778   0.4012402   0.4365154
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.4198803   0.3885615   0.4511990
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.2788183   0.2543201   0.3033164
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.2733335   0.2347377   0.3119293
0-24 months   Keneba      GAMBIA       1                    NA                0.6485545   0.5963902   0.7007187
0-24 months   Keneba      GAMBIA       0                    NA                0.6385834   0.6082869   0.6688800
0-24 months   PROVIDE     BANGLADESH   1                    NA                0.6768561   0.5514801   0.8022320
0-24 months   PROVIDE     BANGLADESH   0                    NA                0.5700070   0.5027456   0.6372683
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.6822855   0.6119391   0.7526318
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.6136258   0.4647535   0.7624981
0-6 months    JiVitA-3    BANGLADESH   1                    NA                0.6931932   0.6717532   0.7146333
0-6 months    JiVitA-3    BANGLADESH   0                    NA                0.6954967   0.6552630   0.7357305
0-6 months    JiVitA-4    BANGLADESH   1                    NA                0.6014268   0.5536640   0.6491896
0-6 months    JiVitA-4    BANGLADESH   0                    NA                0.5560386   0.4926244   0.6194527
0-6 months    Keneba      GAMBIA       1                    NA                0.8192168   0.7641183   0.8743154
0-6 months    Keneba      GAMBIA       0                    NA                0.7701823   0.7325117   0.8078529
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.5063032   0.4413792   0.5712272
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.4869072   0.3624057   0.6114087
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.1420683   0.1202222   0.1639143
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1689494   0.1283054   0.2095935
6-24 months   Keneba      GAMBIA       1                    NA                0.5454379   0.4703828   0.6204929
6-24 months   Keneba      GAMBIA       0                    NA                0.5350417   0.4936905   0.5763929
6-24 months   PROVIDE     BANGLADESH   1                    NA                0.2916667   0.0943448   0.4889886
6-24 months   PROVIDE     BANGLADESH   0                    NA                0.2727273   0.1836941   0.3617604


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.5670841   0.5219813   0.6121868
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.4199840   0.4041851   0.4357828
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.2764410   0.2550939   0.2977881
0-24 months   Keneba      GAMBIA       NA                   NA                0.6417808   0.6154966   0.6680651
0-24 months   PROVIDE     BANGLADESH   NA                   NA                0.5958904   0.5383795   0.6534013
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.6666667   0.6030996   0.7302337
0-6 months    JiVitA-3    BANGLADESH   NA                   NA                0.6940397   0.6750581   0.7130214
0-6 months    JiVitA-4    BANGLADESH   NA                   NA                0.5910853   0.5486247   0.6335459
0-6 months    Keneba      GAMBIA       NA                   NA                0.7829582   0.7512519   0.8146645
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.5043732   0.4466684   0.5620780
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1487018   0.1295178   0.1678858
6-24 months   Keneba      GAMBIA       NA                   NA                0.5369928   0.5007974   0.5731883
6-24 months   PROVIDE     BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 0.9224657   0.7382875   1.152590
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.0023933   0.9223957   1.089329
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 0.9803287   0.8355695   1.150167
0-24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   Keneba      GAMBIA       0                    1                 0.9846258   0.8973914   1.080340
0-24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE     BANGLADESH   0                    1                 0.8421391   0.6755469   1.049813
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 0.8993681   0.6911599   1.170298
0-6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3    BANGLADESH   0                    1                 1.0033230   0.9398373   1.071097
0-6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4    BANGLADESH   0                    1                 0.9245325   0.8191638   1.043455
0-6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    Keneba      GAMBIA       0                    1                 0.9401446   0.8660970   1.020523
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 0.9616909   0.7232080   1.278815
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.1892131   0.8938413   1.582191
6-24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   Keneba      GAMBIA       0                    1                 0.9809398   0.8382733   1.147887
6-24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE     BANGLADESH   0                    1                 0.9350649   0.4411401   1.982015


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0086835   -0.0319647   0.0145977
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0011062   -0.0067916   0.0090040
0-24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0023773   -0.0140670   0.0093124
0-24 months   Keneba      GAMBIA       1                    NA                -0.0067736   -0.0512949   0.0377477
0-24 months   PROVIDE     BANGLADESH   1                    NA                -0.0809657   -0.1945940   0.0326627
0-6 months    GMS-Nepal   NEPAL        1                    NA                -0.0156188   -0.0496664   0.0184288
0-6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0008465   -0.0091297   0.0108227
0-6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0103415   -0.0305789   0.0098959
0-6 months    Keneba      GAMBIA       1                    NA                -0.0362586   -0.0851377   0.0126204
6-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0019300   -0.0291023   0.0252423
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0066335   -0.0050568   0.0183239
6-24 months   Keneba      GAMBIA       1                    NA                -0.0084450   -0.0716255   0.0547355
6-24 months   PROVIDE     BANGLADESH   1                    NA                -0.0152439   -0.1895523   0.1590645


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0153126   -0.0572825   0.0249913
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0026339   -0.0163495   0.0212627
0-24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0085996   -0.0517795   0.0328075
0-24 months   Keneba      GAMBIA       1                    NA                -0.0105545   -0.0823544   0.0564825
0-24 months   PROVIDE     BANGLADESH   1                    NA                -0.1358734   -0.3446246   0.0404695
0-6 months    GMS-Nepal   NEPAL        1                    NA                -0.0234282   -0.0759827   0.0265594
0-6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0012197   -0.0132584   0.0154909
0-6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0174958   -0.0522879   0.0161460
0-6 months    Keneba      GAMBIA       1                    NA                -0.0463098   -0.1108982   0.0145234
6-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0038266   -0.0591521   0.0486089
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0446097   -0.0371778   0.1199477
6-24 months   Keneba      GAMBIA       1                    NA                -0.0157265   -0.1403869   0.0953068
6-24 months   PROVIDE     BANGLADESH   1                    NA                -0.0551471   -0.9164156   0.4190533
