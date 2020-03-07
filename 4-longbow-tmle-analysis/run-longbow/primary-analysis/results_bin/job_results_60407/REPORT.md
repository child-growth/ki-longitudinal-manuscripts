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

**Intervention Variable:** predexfd6

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

agecat        studyid          country                        predexfd6    wast_rec90d   n_cell      n
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
0-24 months   JiVitA-3         BANGLADESH                     1                      0     2004   4526
0-24 months   JiVitA-3         BANGLADESH                     1                      1     1506   4526
0-24 months   JiVitA-3         BANGLADESH                     0                      0      594   4526
0-24 months   JiVitA-3         BANGLADESH                     0                      1      422   4526
0-24 months   JiVitA-4         BANGLADESH                     1                      0      986   1841
0-24 months   JiVitA-4         BANGLADESH                     1                      1      372   1841
0-24 months   JiVitA-4         BANGLADESH                     0                      0      349   1841
0-24 months   JiVitA-4         BANGLADESH                     0                      1      134   1841
0-24 months   Keneba           GAMBIA                         1                      0      180   1602
0-24 months   Keneba           GAMBIA                         1                      1      316   1602
0-24 months   Keneba           GAMBIA                         0                      0      406   1602
0-24 months   Keneba           GAMBIA                         0                      1      700   1602
0-24 months   LCNI-5           MALAWI                         1                      0        5     34
0-24 months   LCNI-5           MALAWI                         1                      1        2     34
0-24 months   LCNI-5           MALAWI                         0                      0       22     34
0-24 months   LCNI-5           MALAWI                         0                      1        5     34
0-24 months   MAL-ED           BANGLADESH                     1                      0       15    114
0-24 months   MAL-ED           BANGLADESH                     1                      1       30    114
0-24 months   MAL-ED           BANGLADESH                     0                      0       25    114
0-24 months   MAL-ED           BANGLADESH                     0                      1       44    114
0-24 months   MAL-ED           BRAZIL                         1                      0        1     24
0-24 months   MAL-ED           BRAZIL                         1                      1        1     24
0-24 months   MAL-ED           BRAZIL                         0                      0        5     24
0-24 months   MAL-ED           BRAZIL                         0                      1       17     24
0-24 months   MAL-ED           INDIA                          1                      0        0    162
0-24 months   MAL-ED           INDIA                          1                      1        2    162
0-24 months   MAL-ED           INDIA                          0                      0       62    162
0-24 months   MAL-ED           INDIA                          0                      1       98    162
0-24 months   MAL-ED           NEPAL                          1                      0        1     94
0-24 months   MAL-ED           NEPAL                          1                      1        2     94
0-24 months   MAL-ED           NEPAL                          0                      0       18     94
0-24 months   MAL-ED           NEPAL                          0                      1       73     94
0-24 months   MAL-ED           PERU                           1                      0        2     34
0-24 months   MAL-ED           PERU                           1                      1        6     34
0-24 months   MAL-ED           PERU                           0                      0        4     34
0-24 months   MAL-ED           PERU                           0                      1       22     34
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
0-6 months    JiVitA-3         BANGLADESH                     1                      1     1506   2832
0-6 months    JiVitA-3         BANGLADESH                     0                      0      202   2832
0-6 months    JiVitA-3         BANGLADESH                     0                      1      422   2832
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
0-6 months    MAL-ED           BANGLADESH                     1                      0        4     58
0-6 months    MAL-ED           BANGLADESH                     1                      1       14     58
0-6 months    MAL-ED           BANGLADESH                     0                      0        8     58
0-6 months    MAL-ED           BANGLADESH                     0                      1       32     58
0-6 months    MAL-ED           BRAZIL                         1                      0        1     15
0-6 months    MAL-ED           BRAZIL                         1                      1        1     15
0-6 months    MAL-ED           BRAZIL                         0                      0        0     15
0-6 months    MAL-ED           BRAZIL                         0                      1       13     15
0-6 months    MAL-ED           INDIA                          1                      0        0     72
0-6 months    MAL-ED           INDIA                          1                      1        1     72
0-6 months    MAL-ED           INDIA                          0                      0       20     72
0-6 months    MAL-ED           INDIA                          0                      1       51     72
0-6 months    MAL-ED           NEPAL                          1                      0        0     44
0-6 months    MAL-ED           NEPAL                          1                      1        1     44
0-6 months    MAL-ED           NEPAL                          0                      0        8     44
0-6 months    MAL-ED           NEPAL                          0                      1       35     44
0-6 months    MAL-ED           PERU                           1                      0        0     10
0-6 months    MAL-ED           PERU                           1                      1        3     10
0-6 months    MAL-ED           PERU                           0                      0        0     10
0-6 months    MAL-ED           PERU                           0                      1        7     10
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
6-24 months   JiVitA-3         BANGLADESH                     1                      0     1302   1694
6-24 months   JiVitA-3         BANGLADESH                     1                      1        0   1694
6-24 months   JiVitA-3         BANGLADESH                     0                      0      392   1694
6-24 months   JiVitA-3         BANGLADESH                     0                      1        0   1694
6-24 months   JiVitA-4         BANGLADESH                     1                      0      845   1315
6-24 months   JiVitA-4         BANGLADESH                     1                      1      143   1315
6-24 months   JiVitA-4         BANGLADESH                     0                      0      272   1315
6-24 months   JiVitA-4         BANGLADESH                     0                      1       55   1315
6-24 months   Keneba           GAMBIA                         1                      0      143    924
6-24 months   Keneba           GAMBIA                         1                      1      150    924
6-24 months   Keneba           GAMBIA                         0                      0      296    924
6-24 months   Keneba           GAMBIA                         0                      1      335    924
6-24 months   LCNI-5           MALAWI                         1                      0        5     30
6-24 months   LCNI-5           MALAWI                         1                      1        2     30
6-24 months   LCNI-5           MALAWI                         0                      0       18     30
6-24 months   LCNI-5           MALAWI                         0                      1        5     30
6-24 months   MAL-ED           BANGLADESH                     1                      0       11     56
6-24 months   MAL-ED           BANGLADESH                     1                      1       16     56
6-24 months   MAL-ED           BANGLADESH                     0                      0       17     56
6-24 months   MAL-ED           BANGLADESH                     0                      1       12     56
6-24 months   MAL-ED           BRAZIL                         1                      0        0      9
6-24 months   MAL-ED           BRAZIL                         1                      1        0      9
6-24 months   MAL-ED           BRAZIL                         0                      0        5      9
6-24 months   MAL-ED           BRAZIL                         0                      1        4      9
6-24 months   MAL-ED           INDIA                          1                      0        0     90
6-24 months   MAL-ED           INDIA                          1                      1        1     90
6-24 months   MAL-ED           INDIA                          0                      0       42     90
6-24 months   MAL-ED           INDIA                          0                      1       47     90
6-24 months   MAL-ED           NEPAL                          1                      0        1     50
6-24 months   MAL-ED           NEPAL                          1                      1        1     50
6-24 months   MAL-ED           NEPAL                          0                      0       10     50
6-24 months   MAL-ED           NEPAL                          0                      1       38     50
6-24 months   MAL-ED           PERU                           1                      0        2     24
6-24 months   MAL-ED           PERU                           1                      1        3     24
6-24 months   MAL-ED           PERU                           0                      0        4     24
6-24 months   MAL-ED           PERU                           0                      1       15     24
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




# Results Detail

## Results Plots
![](/tmp/ed022870-88a1-46bd-bd81-30d2b2a78b61/37e78369-601b-436f-b070-df830ba41ea7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ed022870-88a1-46bd-bd81-30d2b2a78b61/37e78369-601b-436f-b070-df830ba41ea7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ed022870-88a1-46bd-bd81-30d2b2a78b61/37e78369-601b-436f-b070-df830ba41ea7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ed022870-88a1-46bd-bd81-30d2b2a78b61/37e78369-601b-436f-b070-df830ba41ea7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                0.5652442   0.5151641   0.6153243
0-24 months   GMS-Nepal      NEPAL        0                    NA                0.5230226   0.4317787   0.6142665
0-24 months   JiVitA-3       BANGLADESH   1                    NA                0.4263341   0.4103218   0.4423463
0-24 months   JiVitA-3       BANGLADESH   0                    NA                0.4225798   0.3939567   0.4512029
0-24 months   JiVitA-4       BANGLADESH   1                    NA                0.2759336   0.2519364   0.2999309
0-24 months   JiVitA-4       BANGLADESH   0                    NA                0.2717178   0.2329696   0.3104659
0-24 months   Keneba         GAMBIA       1                    NA                0.6349621   0.5889777   0.6809466
0-24 months   Keneba         GAMBIA       0                    NA                0.6357310   0.6060056   0.6654565
0-24 months   MAL-ED         BANGLADESH   1                    NA                0.6554847   0.5244332   0.7865363
0-24 months   MAL-ED         BANGLADESH   0                    NA                0.6379512   0.5148008   0.7611015
0-24 months   PROVIDE        BANGLADESH   1                    NA                0.5911815   0.4715110   0.7108520
0-24 months   PROVIDE        BANGLADESH   0                    NA                0.5773280   0.5124434   0.6422126
0-24 months   SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-6 months    GMS-Nepal      NEPAL        1                    NA                0.6887434   0.6179844   0.7595023
0-6 months    GMS-Nepal      NEPAL        0                    NA                0.6534965   0.5213382   0.7856547
0-6 months    JiVitA-3       BANGLADESH   1                    NA                0.6813507   0.6620273   0.7006740
0-6 months    JiVitA-3       BANGLADESH   0                    NA                0.6787296   0.6420077   0.7154516
0-6 months    JiVitA-4       BANGLADESH   1                    NA                0.5934036   0.5462741   0.6405331
0-6 months    JiVitA-4       BANGLADESH   0                    NA                0.5609522   0.4972142   0.6246903
0-6 months    Keneba         GAMBIA       1                    NA                0.8243480   0.7740799   0.8746161
0-6 months    Keneba         GAMBIA       0                    NA                0.7654510   0.7284609   0.8024411
0-6 months    PROVIDE        BANGLADESH   1                    NA                0.7428750   0.6237490   0.8620010
0-6 months    PROVIDE        BANGLADESH   0                    NA                0.8052587   0.7378427   0.8726746
6-24 months   GMS-Nepal      NEPAL        1                    NA                0.4977769   0.4330475   0.5625063
6-24 months   GMS-Nepal      NEPAL        0                    NA                0.4738220   0.3656691   0.5819750
6-24 months   JiVitA-4       BANGLADESH   1                    NA                0.1443185   0.1228516   0.1657855
6-24 months   JiVitA-4       BANGLADESH   0                    NA                0.1723078   0.1313948   0.2132208
6-24 months   Keneba         GAMBIA       1                    NA                0.5031469   0.4381863   0.5681076
6-24 months   Keneba         GAMBIA       0                    NA                0.5364807   0.4956978   0.5772637
6-24 months   MAL-ED         BANGLADESH   1                    NA                0.5425939   0.3548019   0.7303858
6-24 months   MAL-ED         BANGLADESH   0                    NA                0.3832980   0.1935620   0.5730341
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
0-24 months   GMS-Nepal      NEPAL        0                    1                 0.9253038   0.7609758   1.125117
0-24 months   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3       BANGLADESH   0                    1                 0.9911941   0.9196458   1.068309
0-24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4       BANGLADESH   0                    1                 0.9847214   0.8388997   1.155890
0-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   Keneba         GAMBIA       0                    1                 1.0012109   0.9191321   1.090619
0-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         BANGLADESH   0                    1                 0.9732510   0.7365999   1.285932
0-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE        BANGLADESH   0                    1                 0.9765664   0.7743746   1.231551
0-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA        0                    1                 1.4957265   0.8288715   2.699089
0-6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal      NEPAL        0                    1                 0.9488244   0.7548457   1.192651
0-6 months    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3       BANGLADESH   0                    1                 0.9961532   0.9374016   1.058587
0-6 months    JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4       BANGLADESH   0                    1                 0.9453131   0.8382760   1.066018
0-6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    Keneba         GAMBIA       0                    1                 0.9285532   0.8603721   1.002137
0-6 months    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE        BANGLADESH   0                    1                 1.0839760   0.9043806   1.299236
6-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal      NEPAL        0                    1                 0.9518762   0.7326450   1.236709
6-24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4       BANGLADESH   0                    1                 1.1939409   0.9021170   1.580166
6-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   Keneba         GAMBIA       0                    1                 1.0662506   0.9187306   1.237458
6-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         BANGLADESH   0                    1                 0.7064180   0.3847560   1.296994
6-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE        BANGLADESH   0                    1                 0.9350649   0.4411401   1.982015


### Parameter: PAR


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0063216   -0.0325768   0.0199336
0-24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0003508   -0.0074721   0.0067704
0-24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0010830   -0.0124198   0.0102537
0-24 months   Keneba         GAMBIA       1                    NA                -0.0007549   -0.0385344   0.0370246
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0063619   -0.1157963   0.1030724
0-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0100127   -0.1131933   0.0931680
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0097479   -0.0087899   0.0282857
0-6 months    GMS-Nepal      NEPAL        1                    NA                -0.0308486   -0.0701428   0.0084456
0-6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0005597   -0.0096192   0.0084998
0-6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0078523   -0.0276445   0.0119399
0-6 months    Keneba         GAMBIA       1                    NA                -0.0411622   -0.0841017   0.0017773
0-6 months    PROVIDE        BANGLADESH   1                    NA                 0.0409088   -0.0583926   0.1402101
6-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0005092   -0.0322370   0.0312187
6-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0062518   -0.0050214   0.0175250
6-24 months   Keneba         GAMBIA       1                    NA                 0.0217448   -0.0311445   0.0746341
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0425939   -0.1880588   0.1028711
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0152439   -0.1895523   0.1590645


### Parameter: PAF


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0113104   -0.0594415   0.0346341
0-24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0008236   -0.0176816   0.0157551
0-24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0039404   -0.0460419   0.0364666
0-24 months   Keneba         GAMBIA       1                    NA                -0.0011903   -0.0625663   0.0566405
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0098008   -0.1935220   0.1456398
0-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0172285   -0.2111331   0.1456316
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0263636   -0.0248925   0.0750564
0-6 months    GMS-Nepal      NEPAL        1                    NA                -0.0468899   -0.1089195   0.0116700
0-6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0008221   -0.0142186   0.0123974
0-6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0134101   -0.0477631   0.0198166
0-6 months    Keneba         GAMBIA       1                    NA                -0.0525574   -0.1090764   0.0010814
0-6 months    PROVIDE        BANGLADESH   1                    NA                 0.0521939   -0.0837749   0.1711044
6-24 months   GMS-Nepal      NEPAL        1                    NA                -0.0010240   -0.0669024   0.0607866
6-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0415208   -0.0362276   0.1134357
6-24 months   Keneba         GAMBIA       1                    NA                 0.0414273   -0.0650565   0.1372648
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0851877   -0.4236162   0.1727880
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0551471   -0.9164156   0.4190533
