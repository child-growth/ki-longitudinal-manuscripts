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

**Intervention Variable:** exclfeed6

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

agecat        studyid          country                        exclfeed6    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          1                      0        7     16
0-24 months   CMC-V-BCS-2002   INDIA                          1                      1        9     16
0-24 months   CMC-V-BCS-2002   INDIA                          0                      0        0     16
0-24 months   CMC-V-BCS-2002   INDIA                          0                      1        0     16
0-24 months   EE               PAKISTAN                       1                      0       15     34
0-24 months   EE               PAKISTAN                       1                      1       16     34
0-24 months   EE               PAKISTAN                       0                      0        0     34
0-24 months   EE               PAKISTAN                       0                      1        3     34
0-24 months   GMS-Nepal        NEPAL                          1                      0      192    594
0-24 months   GMS-Nepal        NEPAL                          1                      1      251    594
0-24 months   GMS-Nepal        NEPAL                          0                      0       70    594
0-24 months   GMS-Nepal        NEPAL                          0                      1       81    594
0-24 months   IRC              INDIA                          1                      0        0     19
0-24 months   IRC              INDIA                          1                      1        0     19
0-24 months   IRC              INDIA                          0                      0       11     19
0-24 months   IRC              INDIA                          0                      1        8     19
0-24 months   JiVitA-3         BANGLADESH                     1                      0     2000   4526
0-24 months   JiVitA-3         BANGLADESH                     1                      1     1503   4526
0-24 months   JiVitA-3         BANGLADESH                     0                      0      598   4526
0-24 months   JiVitA-3         BANGLADESH                     0                      1      425   4526
0-24 months   JiVitA-4         BANGLADESH                     1                      0      983   1841
0-24 months   JiVitA-4         BANGLADESH                     1                      1      372   1841
0-24 months   JiVitA-4         BANGLADESH                     0                      0      352   1841
0-24 months   JiVitA-4         BANGLADESH                     0                      1      134   1841
0-24 months   Keneba           GAMBIA                         1                      0      180   1602
0-24 months   Keneba           GAMBIA                         1                      1      316   1602
0-24 months   Keneba           GAMBIA                         0                      0      406   1602
0-24 months   Keneba           GAMBIA                         0                      1      700   1602
0-24 months   LCNI-5           MALAWI                         1                      0        5     34
0-24 months   LCNI-5           MALAWI                         1                      1        2     34
0-24 months   LCNI-5           MALAWI                         0                      0       22     34
0-24 months   LCNI-5           MALAWI                         0                      1        5     34
0-24 months   MAL-ED           BANGLADESH                     1                      0        7    114
0-24 months   MAL-ED           BANGLADESH                     1                      1       11    114
0-24 months   MAL-ED           BANGLADESH                     0                      0       33    114
0-24 months   MAL-ED           BANGLADESH                     0                      1       63    114
0-24 months   MAL-ED           BRAZIL                         1                      0        0     24
0-24 months   MAL-ED           BRAZIL                         1                      1        1     24
0-24 months   MAL-ED           BRAZIL                         0                      0        6     24
0-24 months   MAL-ED           BRAZIL                         0                      1       17     24
0-24 months   MAL-ED           INDIA                          1                      0        0    162
0-24 months   MAL-ED           INDIA                          1                      1        1    162
0-24 months   MAL-ED           INDIA                          0                      0       62    162
0-24 months   MAL-ED           INDIA                          0                      1       99    162
0-24 months   MAL-ED           NEPAL                          1                      0        0     94
0-24 months   MAL-ED           NEPAL                          1                      1        1     94
0-24 months   MAL-ED           NEPAL                          0                      0       19     94
0-24 months   MAL-ED           NEPAL                          0                      1       74     94
0-24 months   MAL-ED           PERU                           1                      0        0     34
0-24 months   MAL-ED           PERU                           1                      1        0     34
0-24 months   MAL-ED           PERU                           0                      0        6     34
0-24 months   MAL-ED           PERU                           0                      1       28     34
0-24 months   MAL-ED           SOUTH AFRICA                   1                      0        0     75
0-24 months   MAL-ED           SOUTH AFRICA                   1                      1        0     75
0-24 months   MAL-ED           SOUTH AFRICA                   0                      0       11     75
0-24 months   MAL-ED           SOUTH AFRICA                   0                      1       64     75
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        0     50
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     50
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        9     50
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       41     50
0-24 months   PROVIDE          BANGLADESH                     1                      0       31    308
0-24 months   PROVIDE          BANGLADESH                     1                      1       45    308
0-24 months   PROVIDE          BANGLADESH                     0                      0       98    308
0-24 months   PROVIDE          BANGLADESH                     0                      1      134    308
0-24 months   SAS-CompFeed     INDIA                          1                      0      144    238
0-24 months   SAS-CompFeed     INDIA                          1                      1       81    238
0-24 months   SAS-CompFeed     INDIA                          0                      0        6    238
0-24 months   SAS-CompFeed     INDIA                          0                      1        7    238
0-24 months   SAS-FoodSuppl    INDIA                          1                      0        0    108
0-24 months   SAS-FoodSuppl    INDIA                          1                      1        0    108
0-24 months   SAS-FoodSuppl    INDIA                          0                      0      100    108
0-24 months   SAS-FoodSuppl    INDIA                          0                      1        8    108
0-6 months    CMC-V-BCS-2002   INDIA                          1                      0        4      9
0-6 months    CMC-V-BCS-2002   INDIA                          1                      1        5      9
0-6 months    CMC-V-BCS-2002   INDIA                          0                      0        0      9
0-6 months    CMC-V-BCS-2002   INDIA                          0                      1        0      9
0-6 months    EE               PAKISTAN                       1                      0        6     15
0-6 months    EE               PAKISTAN                       1                      1        7     15
0-6 months    EE               PAKISTAN                       0                      0        0     15
0-6 months    EE               PAKISTAN                       0                      1        2     15
0-6 months    GMS-Nepal        NEPAL                          1                      0       54    228
0-6 months    GMS-Nepal        NEPAL                          1                      1      116    228
0-6 months    GMS-Nepal        NEPAL                          0                      0       24    228
0-6 months    GMS-Nepal        NEPAL                          0                      1       34    228
0-6 months    IRC              INDIA                          1                      0        0     13
0-6 months    IRC              INDIA                          1                      1        0     13
0-6 months    IRC              INDIA                          0                      0        7     13
0-6 months    IRC              INDIA                          0                      1        6     13
0-6 months    JiVitA-3         BANGLADESH                     1                      0      702   2832
0-6 months    JiVitA-3         BANGLADESH                     1                      1     1503   2832
0-6 months    JiVitA-3         BANGLADESH                     0                      0      202   2832
0-6 months    JiVitA-3         BANGLADESH                     0                      1      425   2832
0-6 months    JiVitA-4         BANGLADESH                     1                      0      141    526
0-6 months    JiVitA-4         BANGLADESH                     1                      1      229    526
0-6 months    JiVitA-4         BANGLADESH                     0                      0       77    526
0-6 months    JiVitA-4         BANGLADESH                     0                      1       79    526
0-6 months    Keneba           GAMBIA                         1                      0       37    678
0-6 months    Keneba           GAMBIA                         1                      1      166    678
0-6 months    Keneba           GAMBIA                         0                      0      110    678
0-6 months    Keneba           GAMBIA                         0                      1      365    678
0-6 months    LCNI-5           MALAWI                         1                      0        0      4
0-6 months    LCNI-5           MALAWI                         1                      1        0      4
0-6 months    LCNI-5           MALAWI                         0                      0        4      4
0-6 months    LCNI-5           MALAWI                         0                      1        0      4
0-6 months    MAL-ED           BANGLADESH                     1                      0        2     58
0-6 months    MAL-ED           BANGLADESH                     1                      1        5     58
0-6 months    MAL-ED           BANGLADESH                     0                      0       10     58
0-6 months    MAL-ED           BANGLADESH                     0                      1       41     58
0-6 months    MAL-ED           BRAZIL                         1                      0        0     15
0-6 months    MAL-ED           BRAZIL                         1                      1        1     15
0-6 months    MAL-ED           BRAZIL                         0                      0        1     15
0-6 months    MAL-ED           BRAZIL                         0                      1       13     15
0-6 months    MAL-ED           INDIA                          1                      0        0     72
0-6 months    MAL-ED           INDIA                          1                      1        0     72
0-6 months    MAL-ED           INDIA                          0                      0       20     72
0-6 months    MAL-ED           INDIA                          0                      1       52     72
0-6 months    MAL-ED           NEPAL                          1                      0        0     44
0-6 months    MAL-ED           NEPAL                          1                      1        0     44
0-6 months    MAL-ED           NEPAL                          0                      0        8     44
0-6 months    MAL-ED           NEPAL                          0                      1       36     44
0-6 months    MAL-ED           PERU                           1                      0        0     10
0-6 months    MAL-ED           PERU                           1                      1        0     10
0-6 months    MAL-ED           PERU                           0                      0        0     10
0-6 months    MAL-ED           PERU                           0                      1       10     10
0-6 months    MAL-ED           SOUTH AFRICA                   1                      0        0     28
0-6 months    MAL-ED           SOUTH AFRICA                   1                      1        0     28
0-6 months    MAL-ED           SOUTH AFRICA                   0                      0        4     28
0-6 months    MAL-ED           SOUTH AFRICA                   0                      1       24     28
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       13     14
0-6 months    PROVIDE          BANGLADESH                     1                      0       14    185
0-6 months    PROVIDE          BANGLADESH                     1                      1       38    185
0-6 months    PROVIDE          BANGLADESH                     0                      0       26    185
0-6 months    PROVIDE          BANGLADESH                     0                      1      107    185
0-6 months    SAS-CompFeed     INDIA                          1                      0       45     94
0-6 months    SAS-CompFeed     INDIA                          1                      1       43     94
0-6 months    SAS-CompFeed     INDIA                          0                      0        3     94
0-6 months    SAS-CompFeed     INDIA                          0                      1        3     94
0-6 months    SAS-FoodSuppl    INDIA                          1                      0        0     48
0-6 months    SAS-FoodSuppl    INDIA                          1                      1        0     48
0-6 months    SAS-FoodSuppl    INDIA                          0                      0       48     48
0-6 months    SAS-FoodSuppl    INDIA                          0                      1        0     48
6-24 months   CMC-V-BCS-2002   INDIA                          1                      0        3      7
6-24 months   CMC-V-BCS-2002   INDIA                          1                      1        4      7
6-24 months   CMC-V-BCS-2002   INDIA                          0                      0        0      7
6-24 months   CMC-V-BCS-2002   INDIA                          0                      1        0      7
6-24 months   EE               PAKISTAN                       1                      0        9     19
6-24 months   EE               PAKISTAN                       1                      1        9     19
6-24 months   EE               PAKISTAN                       0                      0        0     19
6-24 months   EE               PAKISTAN                       0                      1        1     19
6-24 months   GMS-Nepal        NEPAL                          1                      0      138    366
6-24 months   GMS-Nepal        NEPAL                          1                      1      135    366
6-24 months   GMS-Nepal        NEPAL                          0                      0       46    366
6-24 months   GMS-Nepal        NEPAL                          0                      1       47    366
6-24 months   IRC              INDIA                          1                      0        0      6
6-24 months   IRC              INDIA                          1                      1        0      6
6-24 months   IRC              INDIA                          0                      0        4      6
6-24 months   IRC              INDIA                          0                      1        2      6
6-24 months   JiVitA-3         BANGLADESH                     1                      0     1298   1694
6-24 months   JiVitA-3         BANGLADESH                     1                      1        0   1694
6-24 months   JiVitA-3         BANGLADESH                     0                      0      396   1694
6-24 months   JiVitA-3         BANGLADESH                     0                      1        0   1694
6-24 months   JiVitA-4         BANGLADESH                     1                      0      842   1315
6-24 months   JiVitA-4         BANGLADESH                     1                      1      143   1315
6-24 months   JiVitA-4         BANGLADESH                     0                      0      275   1315
6-24 months   JiVitA-4         BANGLADESH                     0                      1       55   1315
6-24 months   Keneba           GAMBIA                         1                      0      143    924
6-24 months   Keneba           GAMBIA                         1                      1      150    924
6-24 months   Keneba           GAMBIA                         0                      0      296    924
6-24 months   Keneba           GAMBIA                         0                      1      335    924
6-24 months   LCNI-5           MALAWI                         1                      0        5     30
6-24 months   LCNI-5           MALAWI                         1                      1        2     30
6-24 months   LCNI-5           MALAWI                         0                      0       18     30
6-24 months   LCNI-5           MALAWI                         0                      1        5     30
6-24 months   MAL-ED           BANGLADESH                     1                      0        5     56
6-24 months   MAL-ED           BANGLADESH                     1                      1        6     56
6-24 months   MAL-ED           BANGLADESH                     0                      0       23     56
6-24 months   MAL-ED           BANGLADESH                     0                      1       22     56
6-24 months   MAL-ED           BRAZIL                         1                      0        0      9
6-24 months   MAL-ED           BRAZIL                         1                      1        0      9
6-24 months   MAL-ED           BRAZIL                         0                      0        5      9
6-24 months   MAL-ED           BRAZIL                         0                      1        4      9
6-24 months   MAL-ED           INDIA                          1                      0        0     90
6-24 months   MAL-ED           INDIA                          1                      1        1     90
6-24 months   MAL-ED           INDIA                          0                      0       42     90
6-24 months   MAL-ED           INDIA                          0                      1       47     90
6-24 months   MAL-ED           NEPAL                          1                      0        0     50
6-24 months   MAL-ED           NEPAL                          1                      1        1     50
6-24 months   MAL-ED           NEPAL                          0                      0       11     50
6-24 months   MAL-ED           NEPAL                          0                      1       38     50
6-24 months   MAL-ED           PERU                           1                      0        0     24
6-24 months   MAL-ED           PERU                           1                      1        0     24
6-24 months   MAL-ED           PERU                           0                      0        6     24
6-24 months   MAL-ED           PERU                           0                      1       18     24
6-24 months   MAL-ED           SOUTH AFRICA                   1                      0        0     47
6-24 months   MAL-ED           SOUTH AFRICA                   1                      1        0     47
6-24 months   MAL-ED           SOUTH AFRICA                   0                      0        7     47
6-24 months   MAL-ED           SOUTH AFRICA                   0                      1       40     47
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        0     36
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     36
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0        8     36
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       28     36
6-24 months   PROVIDE          BANGLADESH                     1                      0       17    123
6-24 months   PROVIDE          BANGLADESH                     1                      1        7    123
6-24 months   PROVIDE          BANGLADESH                     0                      0       72    123
6-24 months   PROVIDE          BANGLADESH                     0                      1       27    123
6-24 months   SAS-CompFeed     INDIA                          1                      0       99    144
6-24 months   SAS-CompFeed     INDIA                          1                      1       38    144
6-24 months   SAS-CompFeed     INDIA                          0                      0        3    144
6-24 months   SAS-CompFeed     INDIA                          0                      1        4    144
6-24 months   SAS-FoodSuppl    INDIA                          1                      0        0     60
6-24 months   SAS-FoodSuppl    INDIA                          1                      1        0     60
6-24 months   SAS-FoodSuppl    INDIA                          0                      0       52     60
6-24 months   SAS-FoodSuppl    INDIA                          0                      1        8     60


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
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/82a7130a-0a46-4fdb-bbc0-f159a1b3d9ea/015114ed-3b1d-42f6-b46d-1ff98493591a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/82a7130a-0a46-4fdb-bbc0-f159a1b3d9ea/015114ed-3b1d-42f6-b46d-1ff98493591a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/82a7130a-0a46-4fdb-bbc0-f159a1b3d9ea/015114ed-3b1d-42f6-b46d-1ff98493591a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/82a7130a-0a46-4fdb-bbc0-f159a1b3d9ea/015114ed-3b1d-42f6-b46d-1ff98493591a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                0.5646447   0.5145950   0.6146943
0-24 months   GMS-Nepal      NEPAL        0                    NA                0.5264702   0.4358025   0.6171380
0-24 months   JiVitA-3       BANGLADESH   1                    NA                0.4260677   0.4100511   0.4420843
0-24 months   JiVitA-3       BANGLADESH   0                    NA                0.4255554   0.3970720   0.4540387
0-24 months   JiVitA-4       BANGLADESH   1                    NA                0.2755817   0.2516269   0.2995365
0-24 months   JiVitA-4       BANGLADESH   0                    NA                0.2747602   0.2367074   0.3128129
0-24 months   Keneba         GAMBIA       1                    NA                0.6326337   0.5866264   0.6786411
0-24 months   Keneba         GAMBIA       0                    NA                0.6369728   0.6072556   0.6666901
0-24 months   MAL-ED         BANGLADESH   1                    NA                0.6111111   0.3920367   0.8301855
0-24 months   MAL-ED         BANGLADESH   0                    NA                0.6562500   0.5578656   0.7546344
0-24 months   PROVIDE        BANGLADESH   1                    NA                0.5885681   0.4669123   0.7102239
0-24 months   PROVIDE        BANGLADESH   0                    NA                0.5779052   0.5131252   0.6426851
0-24 months   SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-6 months    GMS-Nepal      NEPAL        1                    NA                0.6763949   0.6063243   0.7464655
0-6 months    GMS-Nepal      NEPAL        0                    NA                0.5292543   0.4085943   0.6499142
0-6 months    JiVitA-3       BANGLADESH   1                    NA                0.6812587   0.6619200   0.7005974
0-6 months    JiVitA-3       BANGLADESH   0                    NA                0.6798964   0.6433228   0.7164700
0-6 months    JiVitA-4       BANGLADESH   1                    NA                0.5964870   0.5493540   0.6436201
0-6 months    JiVitA-4       BANGLADESH   0                    NA                0.5526440   0.4883778   0.6169102
0-6 months    Keneba         GAMBIA       1                    NA                0.8242156   0.7741878   0.8742435
0-6 months    Keneba         GAMBIA       0                    NA                0.7665616   0.7296238   0.8034993
0-6 months    PROVIDE        BANGLADESH   1                    NA                0.7032556   0.5891302   0.8173809
0-6 months    PROVIDE        BANGLADESH   0                    NA                0.8015144   0.7344124   0.8686164
6-24 months   GMS-Nepal      NEPAL        1                    NA                0.4978073   0.4332823   0.5623323
6-24 months   GMS-Nepal      NEPAL        0                    NA                0.5057034   0.3959768   0.6154301
6-24 months   JiVitA-4       BANGLADESH   1                    NA                0.1454540   0.1238364   0.1670717
6-24 months   JiVitA-4       BANGLADESH   0                    NA                0.1670294   0.1267740   0.2072849
6-24 months   Keneba         GAMBIA       1                    NA                0.5077503   0.4436578   0.5718428
6-24 months   Keneba         GAMBIA       0                    NA                0.5354060   0.4946424   0.5761697
6-24 months   MAL-ED         BANGLADESH   1                    NA                0.5454545   0.2423555   0.8485536
6-24 months   MAL-ED         BANGLADESH   0                    NA                0.4888889   0.3352411   0.6425366
6-24 months   PROVIDE        BANGLADESH   1                    NA                0.2916667   0.0943448   0.4889886
6-24 months   PROVIDE        BANGLADESH   0                    NA                0.2727273   0.1836941   0.3617604


### Parameter: E(Y)


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        NA                   NA                0.5589226   0.5151400   0.6027051
0-24 months   JiVitA-3       BANGLADESH   NA                   NA                0.4259832   0.4115786   0.4403878
0-24 months   JiVitA-4       BANGLADESH   NA                   NA                0.2748506   0.2539041   0.2957971
0-24 months   Keneba         GAMBIA       NA                   NA                0.6342072   0.6090524   0.6593621
0-24 months   MAL-ED         BANGLADESH   NA                   NA                0.6491228   0.5591034   0.7391422
0-24 months   PROVIDE        BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   SAS-CompFeed   INDIA        NA                   NA                0.3697479   0.3045176   0.4349782
0-6 months    GMS-Nepal      NEPAL        NA                   NA                0.6578947   0.5956613   0.7201282
0-6 months    JiVitA-3       BANGLADESH   NA                   NA                0.6807910   0.6636189   0.6979630
0-6 months    JiVitA-4       BANGLADESH   NA                   NA                0.5855513   0.5434121   0.6276905
0-6 months    Keneba         GAMBIA       NA                   NA                0.7831858   0.7527627   0.8136090
0-6 months    PROVIDE        BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
6-24 months   GMS-Nepal      NEPAL        NA                   NA                0.4972678   0.4417121   0.5528234
6-24 months   JiVitA-4       BANGLADESH   NA                   NA                0.1505703   0.1316510   0.1694897
6-24 months   Keneba         GAMBIA       NA                   NA                0.5248918   0.4904236   0.5593599
6-24 months   MAL-ED         BANGLADESH   NA                   NA                0.5000000   0.3630175   0.6369825
6-24 months   PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682


### Parameter: RR


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal      NEPAL        0                    1                 0.9323922   0.7683770   1.131417
0-24 months   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3       BANGLADESH   0                    1                 0.9987976   0.9274238   1.075664
0-24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4       BANGLADESH   0                    1                 0.9970191   0.8527038   1.165759
0-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   Keneba         GAMBIA       0                    1                 1.0068588   0.9242758   1.096821
0-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         BANGLADESH   0                    1                 1.0738636   0.7282183   1.583568
0-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE        BANGLADESH   0                    1                 0.9818832   0.7759004   1.242549
0-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA        0                    1                 1.4957265   0.8288715   2.699089
0-6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal      NEPAL        0                    1                 0.7824634   0.6060232   1.010273
0-6 months    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3       BANGLADESH   0                    1                 0.9980004   0.9393719   1.060288
0-6 months    JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4       BANGLADESH   0                    1                 0.9264980   0.8188684   1.048274
0-6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    Keneba         GAMBIA       0                    1                 0.9300498   0.8622193   1.003216
0-6 months    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE        BANGLADESH   0                    1                 1.1397200   0.9479211   1.370327
6-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal      NEPAL        0                    1                 1.0158618   0.7902578   1.305872
6-24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4       BANGLADESH   0                    1                 1.1483314   0.8650402   1.524397
6-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   Keneba         GAMBIA       0                    1                 1.0544672   0.9111570   1.220318
6-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         BANGLADESH   0                    1                 0.8962963   0.4731967   1.697702
6-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE        BANGLADESH   0                    1                 0.9350649   0.4411401   1.982015


### Parameter: PAR


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0057221   -0.0320025   0.0205583
0-24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0000845   -0.0072101   0.0070411
0-24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0007311   -0.0118222   0.0103601
0-24 months   Keneba         GAMBIA       1                    NA                 0.0015735   -0.0363256   0.0394726
0-24 months   MAL-ED         BANGLADESH   1                    NA                 0.0380117   -0.1640633   0.2400867
0-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0073993   -0.1123414   0.0975428
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0097479   -0.0087899   0.0282857
0-6 months    GMS-Nepal      NEPAL        1                    NA                -0.0185002   -0.0583406   0.0213403
0-6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0004677   -0.0095666   0.0086312
0-6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0109357   -0.0311568   0.0092854
0-6 months    Keneba         GAMBIA       1                    NA                -0.0410298   -0.0837487   0.0016891
0-6 months    PROVIDE        BANGLADESH   1                    NA                 0.0805282   -0.0162524   0.1773088
6-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0005395   -0.0321055   0.0310264
6-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0051163   -0.0062574   0.0164900
6-24 months   Keneba         GAMBIA       1                    NA                 0.0171415   -0.0350552   0.0693381
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0454545   -0.3193804   0.2284714
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0152439   -0.1895523   0.1590645


### Parameter: PAF


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0102377   -0.0584134   0.0357452
0-24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0001983   -0.0170664   0.0163901
0-24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0026599   -0.0438314   0.0368878
0-24 months   Keneba         GAMBIA       1                    NA                 0.0024811   -0.0591061   0.0604870
0-24 months   MAL-ED         BANGLADESH   1                    NA                 0.0585586   -0.3102443   0.3235521
0-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0127317   -0.2103340   0.1526095
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0263636   -0.0248925   0.0750564
0-6 months    GMS-Nepal      NEPAL        1                    NA                -0.0281203   -0.0908708   0.0310207
0-6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0006871   -0.0141421   0.0125895
0-6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0186759   -0.0537982   0.0152759
0-6 months    Keneba         GAMBIA       1                    NA                -0.0523883   -0.1086153   0.0009869
0-6 months    PROVIDE        BANGLADESH   1                    NA                 0.1027429   -0.0300919   0.2184481
6-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0010850   -0.0666167   0.0604205
6-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0339794   -0.0445062   0.1065675
6-24 months   Keneba         GAMBIA       1                    NA                 0.0326571   -0.0722312   0.1272850
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0909091   -0.8045548   0.3405118
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0551471   -0.9164156   0.4190533
