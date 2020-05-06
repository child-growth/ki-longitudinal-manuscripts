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

**Intervention Variable:** impfloor

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
* W_nrooms
* W_nchldlt5
* W_parity
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        impfloor    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                  0       68      72  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                  1        4      72  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                  0        0      72  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                  1        0      72  sstunted         
Birth       CONTENT          PERU                           1                  0        2       2  sstunted         
Birth       CONTENT          PERU                           1                  1        0       2  sstunted         
Birth       CONTENT          PERU                           0                  0        0       2  sstunted         
Birth       CONTENT          PERU                           0                  1        0       2  sstunted         
Birth       GMS-Nepal        NEPAL                          1                  0       98     544  sstunted         
Birth       GMS-Nepal        NEPAL                          1                  1        2     544  sstunted         
Birth       GMS-Nepal        NEPAL                          0                  0      420     544  sstunted         
Birth       GMS-Nepal        NEPAL                          0                  1       24     544  sstunted         
Birth       IRC              INDIA                          1                  0      274     287  sstunted         
Birth       IRC              INDIA                          1                  1       13     287  sstunted         
Birth       IRC              INDIA                          0                  0        0     287  sstunted         
Birth       IRC              INDIA                          0                  1        0     287  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                  0     1307   22399  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                  1       87   22399  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                  0    18649   22399  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                  1     2356   22399  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                  0      289    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                  1       18    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                  0     2298    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                  1      215    2820  sstunted         
Birth       MAL-ED           BANGLADESH                     1                  0      190     213  sstunted         
Birth       MAL-ED           BANGLADESH                     1                  1        6     213  sstunted         
Birth       MAL-ED           BANGLADESH                     0                  0       17     213  sstunted         
Birth       MAL-ED           BANGLADESH                     0                  1        0     213  sstunted         
Birth       MAL-ED           BRAZIL                         1                  0       55      60  sstunted         
Birth       MAL-ED           BRAZIL                         1                  1        3      60  sstunted         
Birth       MAL-ED           BRAZIL                         0                  0        2      60  sstunted         
Birth       MAL-ED           BRAZIL                         0                  1        0      60  sstunted         
Birth       MAL-ED           INDIA                          1                  0       33      41  sstunted         
Birth       MAL-ED           INDIA                          1                  1        2      41  sstunted         
Birth       MAL-ED           INDIA                          0                  0        6      41  sstunted         
Birth       MAL-ED           INDIA                          0                  1        0      41  sstunted         
Birth       MAL-ED           NEPAL                          1                  0        8      25  sstunted         
Birth       MAL-ED           NEPAL                          1                  1        1      25  sstunted         
Birth       MAL-ED           NEPAL                          0                  0       16      25  sstunted         
Birth       MAL-ED           NEPAL                          0                  1        0      25  sstunted         
Birth       MAL-ED           PERU                           1                  0       37     215  sstunted         
Birth       MAL-ED           PERU                           1                  1        2     215  sstunted         
Birth       MAL-ED           PERU                           0                  0      174     215  sstunted         
Birth       MAL-ED           PERU                           0                  1        2     215  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                  0       86      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                  1        1      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                  0        9      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                  1        0      96  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        5     119  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        2     119  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      106     119  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        6     119  sstunted         
Birth       NIH-Birth        BANGLADESH                     1                  0      517     605  sstunted         
Birth       NIH-Birth        BANGLADESH                     1                  1       16     605  sstunted         
Birth       NIH-Birth        BANGLADESH                     0                  0       69     605  sstunted         
Birth       NIH-Birth        BANGLADESH                     0                  1        3     605  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                  0      555     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                  1        3     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     0                  0      167     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     0                  1        7     732  sstunted         
Birth       PROVIDE          BANGLADESH                     1                  0      488     539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                  1        3     539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                  0       47     539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                  1        1     539  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                  0      221     257  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                  1       36     257  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                  0        0     257  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                  1        0     257  sstunted         
6 months    CONTENT          PERU                           1                  0      200     215  sstunted         
6 months    CONTENT          PERU                           1                  1        1     215  sstunted         
6 months    CONTENT          PERU                           0                  0       14     215  sstunted         
6 months    CONTENT          PERU                           0                  1        0     215  sstunted         
6 months    GMS-Nepal        NEPAL                          1                  0       78     441  sstunted         
6 months    GMS-Nepal        NEPAL                          1                  1        0     441  sstunted         
6 months    GMS-Nepal        NEPAL                          0                  0      346     441  sstunted         
6 months    GMS-Nepal        NEPAL                          0                  1       17     441  sstunted         
6 months    IRC              INDIA                          1                  0      285     303  sstunted         
6 months    IRC              INDIA                          1                  1       18     303  sstunted         
6 months    IRC              INDIA                          0                  0        0     303  sstunted         
6 months    IRC              INDIA                          0                  1        0     303  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                  0     1429   16773  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                  1       36   16773  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                  0    14328   16773  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                  1      980   16773  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                  0      574    4824  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                  1       16    4824  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                  0     3979    4824  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                  1      255    4824  sstunted         
6 months    MAL-ED           BANGLADESH                     1                  0      214     240  sstunted         
6 months    MAL-ED           BANGLADESH                     1                  1        7     240  sstunted         
6 months    MAL-ED           BANGLADESH                     0                  0       18     240  sstunted         
6 months    MAL-ED           BANGLADESH                     0                  1        1     240  sstunted         
6 months    MAL-ED           BRAZIL                         1                  0      207     209  sstunted         
6 months    MAL-ED           BRAZIL                         1                  1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         0                  0        2     209  sstunted         
6 months    MAL-ED           BRAZIL                         0                  1        0     209  sstunted         
6 months    MAL-ED           INDIA                          1                  0      212     235  sstunted         
6 months    MAL-ED           INDIA                          1                  1        8     235  sstunted         
6 months    MAL-ED           INDIA                          0                  0       14     235  sstunted         
6 months    MAL-ED           INDIA                          0                  1        1     235  sstunted         
6 months    MAL-ED           NEPAL                          1                  0      102     229  sstunted         
6 months    MAL-ED           NEPAL                          1                  1        1     229  sstunted         
6 months    MAL-ED           NEPAL                          0                  0      126     229  sstunted         
6 months    MAL-ED           NEPAL                          0                  1        0     229  sstunted         
6 months    MAL-ED           PERU                           1                  0       55     270  sstunted         
6 months    MAL-ED           PERU                           1                  1        3     270  sstunted         
6 months    MAL-ED           PERU                           0                  0      205     270  sstunted         
6 months    MAL-ED           PERU                           0                  1        7     270  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                  0      223     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                  1        6     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                  0       20     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                  1        0     249  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       13     245  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        1     245  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      218     245  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       13     245  sstunted         
6 months    NIH-Birth        BANGLADESH                     1                  0      446     535  sstunted         
6 months    NIH-Birth        BANGLADESH                     1                  1       31     535  sstunted         
6 months    NIH-Birth        BANGLADESH                     0                  0       54     535  sstunted         
6 months    NIH-Birth        BANGLADESH                     0                  1        4     535  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                  0      521     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                  1       16     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     0                  0      171     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     0                  1        7     715  sstunted         
6 months    PROVIDE          BANGLADESH                     1                  0      549     604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                  1        8     604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                  0       41     604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                  1        6     604  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                  0      165     259  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                  1       94     259  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                  0        0     259  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                  1        0     259  sstunted         
24 months   CONTENT          PERU                           1                  0      153     164  sstunted         
24 months   CONTENT          PERU                           1                  1        1     164  sstunted         
24 months   CONTENT          PERU                           0                  0       10     164  sstunted         
24 months   CONTENT          PERU                           0                  1        0     164  sstunted         
24 months   GMS-Nepal        NEPAL                          1                  0       69     374  sstunted         
24 months   GMS-Nepal        NEPAL                          1                  1        3     374  sstunted         
24 months   GMS-Nepal        NEPAL                          0                  0      268     374  sstunted         
24 months   GMS-Nepal        NEPAL                          0                  1       34     374  sstunted         
24 months   IRC              INDIA                          1                  0      282     305  sstunted         
24 months   IRC              INDIA                          1                  1       23     305  sstunted         
24 months   IRC              INDIA                          0                  0        0     305  sstunted         
24 months   IRC              INDIA                          0                  1        0     305  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                  0      629    8609  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                  1       45    8609  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                  0     6637    8609  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                  1     1298    8609  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                  0      543    4746  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                  1       23    4746  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                  0     3751    4746  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                  1      429    4746  sstunted         
24 months   MAL-ED           BANGLADESH                     1                  0      168     212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                  1       27     212  sstunted         
24 months   MAL-ED           BANGLADESH                     0                  0       16     212  sstunted         
24 months   MAL-ED           BANGLADESH                     0                  1        1     212  sstunted         
24 months   MAL-ED           BRAZIL                         1                  0      166     169  sstunted         
24 months   MAL-ED           BRAZIL                         1                  1        1     169  sstunted         
24 months   MAL-ED           BRAZIL                         0                  0        2     169  sstunted         
24 months   MAL-ED           BRAZIL                         0                  1        0     169  sstunted         
24 months   MAL-ED           INDIA                          1                  0      184     227  sstunted         
24 months   MAL-ED           INDIA                          1                  1       28     227  sstunted         
24 months   MAL-ED           INDIA                          0                  0       13     227  sstunted         
24 months   MAL-ED           INDIA                          0                  1        2     227  sstunted         
24 months   MAL-ED           NEPAL                          1                  0       95     221  sstunted         
24 months   MAL-ED           NEPAL                          1                  1        3     221  sstunted         
24 months   MAL-ED           NEPAL                          0                  0      119     221  sstunted         
24 months   MAL-ED           NEPAL                          0                  1        4     221  sstunted         
24 months   MAL-ED           PERU                           1                  0       46     201  sstunted         
24 months   MAL-ED           PERU                           1                  1        3     201  sstunted         
24 months   MAL-ED           PERU                           0                  0      140     201  sstunted         
24 months   MAL-ED           PERU                           0                  1       12     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                  0      195     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                  1       25     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                  0       16     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                  1        2     238  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        9     212  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        3     212  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      134     212  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       66     212  sstunted         
24 months   NIH-Birth        BANGLADESH                     1                  0      304     427  sstunted         
24 months   NIH-Birth        BANGLADESH                     1                  1       73     427  sstunted         
24 months   NIH-Birth        BANGLADESH                     0                  0       28     427  sstunted         
24 months   NIH-Birth        BANGLADESH                     0                  1       22     427  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                  0      323     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                  1       23     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     0                  0      155     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     0                  1       13     514  sstunted         
24 months   PROVIDE          BANGLADESH                     1                  0      492     578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                  1       41     578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                  0       34     578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                  1       11     578  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
