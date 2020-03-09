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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** trth2o

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
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        trth2o    n_cell     n
-------------  ---------------  -----------------------------  -------  -------  ----
0-3 months     CMC-V-BCS-2002   INDIA                          1            107   107
0-3 months     CMC-V-BCS-2002   INDIA                          0              0   107
0-3 months     GMS-Nepal        NEPAL                          1              1     4
0-3 months     GMS-Nepal        NEPAL                          0              3     4
0-3 months     IRC              INDIA                          1            120   120
0-3 months     IRC              INDIA                          0              0   120
0-3 months     MAL-ED           BANGLADESH                     1            132   134
0-3 months     MAL-ED           BANGLADESH                     0              2   134
0-3 months     MAL-ED           BRAZIL                         1             13   103
0-3 months     MAL-ED           BRAZIL                         0             90   103
0-3 months     MAL-ED           INDIA                          1              4     8
0-3 months     MAL-ED           INDIA                          0              4     8
0-3 months     MAL-ED           NEPAL                          1             67    81
0-3 months     MAL-ED           NEPAL                          0             14    81
0-3 months     MAL-ED           PERU                           1             39    49
0-3 months     MAL-ED           PERU                           0             10    49
0-3 months     MAL-ED           SOUTH AFRICA                   1              2    12
0-3 months     MAL-ED           SOUTH AFRICA                   0             10    12
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    41
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             35    41
0-3 months     NIH-Crypto       BANGLADESH                     1            405   725
0-3 months     NIH-Crypto       BANGLADESH                     0            320   725
0-3 months     PROVIDE          BANGLADESH                     1             14   640
0-3 months     PROVIDE          BANGLADESH                     0            626   640
3-6 months     CMC-V-BCS-2002   INDIA                          1            104   104
3-6 months     CMC-V-BCS-2002   INDIA                          0              0   104
3-6 months     GMS-Nepal        NEPAL                          1              1     4
3-6 months     GMS-Nepal        NEPAL                          0              3     4
3-6 months     IRC              INDIA                          1            120   120
3-6 months     IRC              INDIA                          0              0   120
3-6 months     MAL-ED           BANGLADESH                     1            130   132
3-6 months     MAL-ED           BANGLADESH                     0              2   132
3-6 months     MAL-ED           BRAZIL                         1             13   103
3-6 months     MAL-ED           BRAZIL                         0             90   103
3-6 months     MAL-ED           INDIA                          1              3     7
3-6 months     MAL-ED           INDIA                          0              4     7
3-6 months     MAL-ED           NEPAL                          1             68    82
3-6 months     MAL-ED           NEPAL                          0             14    82
3-6 months     MAL-ED           PERU                           1             39    49
3-6 months     MAL-ED           PERU                           0             10    49
3-6 months     MAL-ED           SOUTH AFRICA                   1              2    12
3-6 months     MAL-ED           SOUTH AFRICA                   0             10    12
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    42
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             36    42
3-6 months     NIH-Crypto       BANGLADESH                     1            388   702
3-6 months     NIH-Crypto       BANGLADESH                     0            314   702
3-6 months     PROVIDE          BANGLADESH                     1             14   601
3-6 months     PROVIDE          BANGLADESH                     0            587   601
6-9 months     CMC-V-BCS-2002   INDIA                          1            106   106
6-9 months     CMC-V-BCS-2002   INDIA                          0              0   106
6-9 months     GMS-Nepal        NEPAL                          1              0     2
6-9 months     GMS-Nepal        NEPAL                          0              2     2
6-9 months     IRC              INDIA                          1            122   122
6-9 months     IRC              INDIA                          0              0   122
6-9 months     MAL-ED           BANGLADESH                     1            128   130
6-9 months     MAL-ED           BANGLADESH                     0              2   130
6-9 months     MAL-ED           BRAZIL                         1             13   103
6-9 months     MAL-ED           BRAZIL                         0             90   103
6-9 months     MAL-ED           INDIA                          1              3     8
6-9 months     MAL-ED           INDIA                          0              5     8
6-9 months     MAL-ED           NEPAL                          1             68    82
6-9 months     MAL-ED           NEPAL                          0             14    82
6-9 months     MAL-ED           PERU                           1             39    49
6-9 months     MAL-ED           PERU                           0             10    49
6-9 months     MAL-ED           SOUTH AFRICA                   1              2    11
6-9 months     MAL-ED           SOUTH AFRICA                   0              9    11
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    41
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             35    41
6-9 months     NIH-Crypto       BANGLADESH                     1            379   693
6-9 months     NIH-Crypto       BANGLADESH                     0            314   693
6-9 months     PROVIDE          BANGLADESH                     1             14   576
6-9 months     PROVIDE          BANGLADESH                     0            562   576
9-12 months    CMC-V-BCS-2002   INDIA                          1            104   104
9-12 months    CMC-V-BCS-2002   INDIA                          0              0   104
9-12 months    GMS-Nepal        NEPAL                          1              0     2
9-12 months    GMS-Nepal        NEPAL                          0              2     2
9-12 months    IRC              INDIA                          1            120   120
9-12 months    IRC              INDIA                          0              0   120
9-12 months    MAL-ED           BANGLADESH                     1            129   131
9-12 months    MAL-ED           BANGLADESH                     0              2   131
9-12 months    MAL-ED           BRAZIL                         1             13   103
9-12 months    MAL-ED           BRAZIL                         0             90   103
9-12 months    MAL-ED           INDIA                          1              4     9
9-12 months    MAL-ED           INDIA                          0              5     9
9-12 months    MAL-ED           NEPAL                          1             68    82
9-12 months    MAL-ED           NEPAL                          0             14    82
9-12 months    MAL-ED           PERU                           1             39    49
9-12 months    MAL-ED           PERU                           0             10    49
9-12 months    MAL-ED           SOUTH AFRICA                   1              2    11
9-12 months    MAL-ED           SOUTH AFRICA                   0              9    11
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    41
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             35    41
9-12 months    NIH-Crypto       BANGLADESH                     1            371   683
9-12 months    NIH-Crypto       BANGLADESH                     0            312   683
9-12 months    PROVIDE          BANGLADESH                     1             14   569
9-12 months    PROVIDE          BANGLADESH                     0            555   569
12-15 months   CMC-V-BCS-2002   INDIA                          1            108   108
12-15 months   CMC-V-BCS-2002   INDIA                          0              0   108
12-15 months   GMS-Nepal        NEPAL                          1              1     4
12-15 months   GMS-Nepal        NEPAL                          0              3     4
12-15 months   IRC              INDIA                          1            115   115
12-15 months   IRC              INDIA                          0              0   115
12-15 months   MAL-ED           BANGLADESH                     1            127   129
12-15 months   MAL-ED           BANGLADESH                     0              2   129
12-15 months   MAL-ED           BRAZIL                         1             13   103
12-15 months   MAL-ED           BRAZIL                         0             90   103
12-15 months   MAL-ED           INDIA                          1              4     9
12-15 months   MAL-ED           INDIA                          0              5     9
12-15 months   MAL-ED           NEPAL                          1             69    83
12-15 months   MAL-ED           NEPAL                          0             14    83
12-15 months   MAL-ED           PERU                           1             38    48
12-15 months   MAL-ED           PERU                           0             10    48
12-15 months   MAL-ED           SOUTH AFRICA                   1              2    10
12-15 months   MAL-ED           SOUTH AFRICA                   0              8    10
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    41
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             35    41
12-15 months   NIH-Crypto       BANGLADESH                     1            358   666
12-15 months   NIH-Crypto       BANGLADESH                     0            308   666
12-15 months   PROVIDE          BANGLADESH                     1             14   537
12-15 months   PROVIDE          BANGLADESH                     0            523   537
15-18 months   CMC-V-BCS-2002   INDIA                          1            104   104
15-18 months   CMC-V-BCS-2002   INDIA                          0              0   104
15-18 months   GMS-Nepal        NEPAL                          1              1     4
15-18 months   GMS-Nepal        NEPAL                          0              3     4
15-18 months   IRC              INDIA                          1            112   112
15-18 months   IRC              INDIA                          0              0   112
15-18 months   MAL-ED           BANGLADESH                     1            129   131
15-18 months   MAL-ED           BANGLADESH                     0              2   131
15-18 months   MAL-ED           BRAZIL                         1             13   103
15-18 months   MAL-ED           BRAZIL                         0             90   103
15-18 months   MAL-ED           INDIA                          1              3     8
15-18 months   MAL-ED           INDIA                          0              5     8
15-18 months   MAL-ED           NEPAL                          1             68    81
15-18 months   MAL-ED           NEPAL                          0             13    81
15-18 months   MAL-ED           PERU                           1             38    48
15-18 months   MAL-ED           PERU                           0             10    48
15-18 months   MAL-ED           SOUTH AFRICA                   1              2    10
15-18 months   MAL-ED           SOUTH AFRICA                   0              8    10
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              5    41
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             36    41
15-18 months   NIH-Crypto       BANGLADESH                     1            305   605
15-18 months   NIH-Crypto       BANGLADESH                     0            300   605
15-18 months   PROVIDE          BANGLADESH                     1             12   533
15-18 months   PROVIDE          BANGLADESH                     0            521   533
18-21 months   CMC-V-BCS-2002   INDIA                          1             97    97
18-21 months   CMC-V-BCS-2002   INDIA                          0              0    97
18-21 months   GMS-Nepal        NEPAL                          1              0     3
18-21 months   GMS-Nepal        NEPAL                          0              3     3
18-21 months   IRC              INDIA                          1            113   113
18-21 months   IRC              INDIA                          0              0   113
18-21 months   MAL-ED           BANGLADESH                     1            130   132
18-21 months   MAL-ED           BANGLADESH                     0              2   132
18-21 months   MAL-ED           BRAZIL                         1             13   103
18-21 months   MAL-ED           BRAZIL                         0             90   103
18-21 months   MAL-ED           INDIA                          1              3     8
18-21 months   MAL-ED           INDIA                          0              5     8
18-21 months   MAL-ED           NEPAL                          1             68    81
18-21 months   MAL-ED           NEPAL                          0             13    81
18-21 months   MAL-ED           PERU                           1             37    46
18-21 months   MAL-ED           PERU                           0              9    46
18-21 months   MAL-ED           SOUTH AFRICA                   1              2    11
18-21 months   MAL-ED           SOUTH AFRICA                   0              9    11
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              5    39
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             34    39
18-21 months   NIH-Crypto       BANGLADESH                     1            267   547
18-21 months   NIH-Crypto       BANGLADESH                     0            280   547
18-21 months   PROVIDE          BANGLADESH                     1             12   542
18-21 months   PROVIDE          BANGLADESH                     0            530   542
21-24 months   CMC-V-BCS-2002   INDIA                          1             95    95
21-24 months   CMC-V-BCS-2002   INDIA                          0              0    95
21-24 months   GMS-Nepal        NEPAL                          1              0     3
21-24 months   GMS-Nepal        NEPAL                          0              3     3
21-24 months   IRC              INDIA                          1            116   116
21-24 months   IRC              INDIA                          0              0   116
21-24 months   MAL-ED           BANGLADESH                     1            129   131
21-24 months   MAL-ED           BANGLADESH                     0              2   131
21-24 months   MAL-ED           BRAZIL                         1             13   103
21-24 months   MAL-ED           BRAZIL                         0             90   103
21-24 months   MAL-ED           INDIA                          1              4     9
21-24 months   MAL-ED           INDIA                          0              5     9
21-24 months   MAL-ED           NEPAL                          1             69    83
21-24 months   MAL-ED           NEPAL                          0             14    83
21-24 months   MAL-ED           PERU                           1             36    45
21-24 months   MAL-ED           PERU                           0              9    45
21-24 months   MAL-ED           SOUTH AFRICA                   1              2    11
21-24 months   MAL-ED           SOUTH AFRICA                   0              9    11
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    41
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             35    41
21-24 months   NIH-Crypto       BANGLADESH                     1            227   493
21-24 months   NIH-Crypto       BANGLADESH                     0            266   493
21-24 months   PROVIDE          BANGLADESH                     1             12   485
21-24 months   PROVIDE          BANGLADESH                     0            473   485


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA

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
![](/tmp/4ba973d9-3aa6-45bc-9f1c-f895e82ef332/0d797c50-32d7-4cb0-9516-32a2ccd53c1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4ba973d9-3aa6-45bc-9f1c-f895e82ef332/0d797c50-32d7-4cb0-9516-32a2ccd53c1b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4ba973d9-3aa6-45bc-9f1c-f895e82ef332/0d797c50-32d7-4cb0-9516-32a2ccd53c1b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     MAL-ED       BRAZIL                         1                    NA                1.0569476    0.9604037   1.1534915
0-3 months     MAL-ED       BRAZIL                         0                    NA                1.0894809    1.0321071   1.1468548
0-3 months     MAL-ED       NEPAL                          1                    NA                0.9324350    0.8823542   0.9825158
0-3 months     MAL-ED       NEPAL                          0                    NA                0.9691983    0.8151278   1.1232687
0-3 months     MAL-ED       PERU                           1                    NA                0.9297591    0.8744773   0.9850409
0-3 months     MAL-ED       PERU                           0                    NA                0.8669205    0.7258351   1.0080060
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0002689    0.8901714   1.1103664
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8836569    0.8111346   0.9561791
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                0.8756895    0.8536216   0.8977575
0-3 months     NIH-Crypto   BANGLADESH                     0                    NA                0.8911546    0.8681677   0.9141414
0-3 months     PROVIDE      BANGLADESH                     1                    NA                1.0320708    0.9417641   1.1223774
0-3 months     PROVIDE      BANGLADESH                     0                    NA                0.8988341    0.8839051   0.9137631
3-6 months     MAL-ED       BRAZIL                         1                    NA                0.5992655    0.3621710   0.8363601
3-6 months     MAL-ED       BRAZIL                         0                    NA                0.6001808    0.5490447   0.6513170
3-6 months     MAL-ED       NEPAL                          1                    NA                0.5137231    0.4761906   0.5512556
3-6 months     MAL-ED       NEPAL                          0                    NA                0.5304426    0.3707684   0.6901167
3-6 months     MAL-ED       PERU                           1                    NA                0.5221076    0.4633165   0.5808986
3-6 months     MAL-ED       PERU                           0                    NA                0.4457846    0.3718894   0.5196798
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5378113    0.3002548   0.7753678
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4362014    0.3434105   0.5289923
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                0.4826768    0.4668190   0.4985347
3-6 months     NIH-Crypto   BANGLADESH                     0                    NA                0.5044411    0.4856148   0.5232673
3-6 months     PROVIDE      BANGLADESH                     1                    NA                0.3916875    0.3217550   0.4616200
3-6 months     PROVIDE      BANGLADESH                     0                    NA                0.4884319    0.4751212   0.5017427
6-9 months     MAL-ED       BRAZIL                         1                    NA                0.3940564    0.2741756   0.5139371
6-9 months     MAL-ED       BRAZIL                         0                    NA                0.4005487    0.3588403   0.4422571
6-9 months     MAL-ED       NEPAL                          1                    NA                0.2681249    0.2388108   0.2974391
6-9 months     MAL-ED       NEPAL                          0                    NA                0.2638513    0.1882186   0.3394841
6-9 months     MAL-ED       PERU                           1                    NA                0.2676698    0.2320439   0.3032956
6-9 months     MAL-ED       PERU                           0                    NA                0.2360694    0.1789553   0.2931835
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2693904    0.0734898   0.4652910
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2177891    0.1207225   0.3148556
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                0.2673395    0.2527402   0.2819388
6-9 months     NIH-Crypto   BANGLADESH                     0                    NA                0.2584948    0.2366218   0.2803679
6-9 months     PROVIDE      BANGLADESH                     1                    NA                0.2599394    0.2097441   0.3101347
6-9 months     PROVIDE      BANGLADESH                     0                    NA                0.2496771    0.2373486   0.2620056
9-12 months    MAL-ED       BRAZIL                         1                    NA                0.2050179    0.1404397   0.2695961
9-12 months    MAL-ED       BRAZIL                         0                    NA                0.2843718    0.2409211   0.3278224
9-12 months    MAL-ED       NEPAL                          1                    NA                0.1932670    0.1639353   0.2225987
9-12 months    MAL-ED       NEPAL                          0                    NA                0.2294656    0.1514375   0.3074936
9-12 months    MAL-ED       PERU                           1                    NA                0.2046507    0.1620332   0.2472682
9-12 months    MAL-ED       PERU                           0                    NA                0.2234335    0.1578724   0.2889945
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0241990   -0.1593722   0.2077701
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1516294    0.1035343   0.1997246
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                0.2013491    0.1859087   0.2167894
9-12 months    NIH-Crypto   BANGLADESH                     0                    NA                0.1997446    0.1806488   0.2188404
9-12 months    PROVIDE      BANGLADESH                     1                    NA                0.2852267    0.2317969   0.3386564
9-12 months    PROVIDE      BANGLADESH                     0                    NA                0.1778881    0.1684531   0.1873231
12-15 months   MAL-ED       BRAZIL                         1                    NA                0.1294023    0.0602195   0.1985851
12-15 months   MAL-ED       BRAZIL                         0                    NA                0.2096000    0.1752337   0.2439663
12-15 months   MAL-ED       NEPAL                          1                    NA                0.1342471    0.1012075   0.1672868
12-15 months   MAL-ED       NEPAL                          0                    NA                0.1499423    0.0645488   0.2353358
12-15 months   MAL-ED       PERU                           1                    NA                0.1392217    0.0915839   0.1868595
12-15 months   MAL-ED       PERU                           0                    NA                0.1889848    0.1184866   0.2594830
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2525513    0.0901522   0.4149504
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1959041    0.1382578   0.2535504
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1651839    0.1497933   0.1805745
12-15 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1651243    0.1457178   0.1845308
12-15 months   PROVIDE      BANGLADESH                     1                    NA                0.1836625    0.1328951   0.2344299
12-15 months   PROVIDE      BANGLADESH                     0                    NA                0.1799256    0.1679384   0.1919128
15-18 months   MAL-ED       BRAZIL                         1                    NA                0.2034244    0.1308067   0.2760421
15-18 months   MAL-ED       BRAZIL                         0                    NA                0.2161968    0.1715855   0.2608082
15-18 months   MAL-ED       NEPAL                          1                    NA                0.1821561    0.1568249   0.2074872
15-18 months   MAL-ED       NEPAL                          0                    NA                0.1460170    0.1147166   0.1773175
15-18 months   MAL-ED       PERU                           1                    NA                0.1427574    0.0932094   0.1923054
15-18 months   MAL-ED       PERU                           0                    NA                0.1976325    0.0959433   0.2993217
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0683943   -0.0550421   0.1918307
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1144884    0.0560508   0.1729261
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1491265    0.1334406   0.1648123
15-18 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1652786    0.1447569   0.1858003
15-18 months   PROVIDE      BANGLADESH                     1                    NA                0.1190488    0.0644886   0.1736089
15-18 months   PROVIDE      BANGLADESH                     0                    NA                0.1570476    0.1450485   0.1690466
18-21 months   MAL-ED       BRAZIL                         1                    NA                0.2020195    0.1372365   0.2668026
18-21 months   MAL-ED       BRAZIL                         0                    NA                0.1605545    0.1249102   0.1961988
18-21 months   MAL-ED       NEPAL                          1                    NA                0.1840676    0.1578297   0.2103056
18-21 months   MAL-ED       NEPAL                          0                    NA                0.2064151    0.1479989   0.2648314
18-21 months   MAL-ED       PERU                           1                    NA                0.1882611    0.1464396   0.2300826
18-21 months   MAL-ED       PERU                           0                    NA                0.2332536    0.1412045   0.3253027
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1943418   -0.0010683   0.3897519
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1719850    0.1106525   0.2333175
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1553047    0.1374885   0.1731209
18-21 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1370772    0.1200771   0.1540773
18-21 months   PROVIDE      BANGLADESH                     1                    NA                0.2315088    0.1857844   0.2772331
18-21 months   PROVIDE      BANGLADESH                     0                    NA                0.1322168    0.1204986   0.1439350
21-24 months   MAL-ED       BRAZIL                         1                    NA                0.1785476    0.1165125   0.2405827
21-24 months   MAL-ED       BRAZIL                         0                    NA                0.1487517    0.1133239   0.1841795
21-24 months   MAL-ED       NEPAL                          1                    NA                0.1637240    0.1346189   0.1928292
21-24 months   MAL-ED       NEPAL                          0                    NA                0.1628982    0.1132499   0.2125466
21-24 months   MAL-ED       PERU                           1                    NA                0.1668218    0.1249154   0.2087283
21-24 months   MAL-ED       PERU                           0                    NA                0.2094552    0.1244041   0.2945064
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0283903   -0.2696805   0.3264611
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1347015    0.0691909   0.2002121
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1616632    0.1364745   0.1868520
21-24 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1809271    0.1586350   0.2032192
21-24 months   PROVIDE      BANGLADESH                     1                    NA                0.1259186    0.0804337   0.1714034
21-24 months   PROVIDE      BANGLADESH                     0                    NA                0.1425619    0.1308897   0.1542341


### Parameter: E(Y)


agecat         studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     MAL-ED       BRAZIL                         NA                   NA                1.0785291   1.0272897   1.1297685
0-3 months     MAL-ED       NEPAL                          NA                   NA                0.9493726   0.9004043   0.9983408
0-3 months     MAL-ED       PERU                           NA                   NA                0.9326347   0.8810468   0.9842227
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9007220   0.8354879   0.9659562
0-3 months     NIH-Crypto   BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROVIDE      BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
3-6 months     MAL-ED       BRAZIL                         NA                   NA                0.5934783   0.5435445   0.6434121
3-6 months     MAL-ED       NEPAL                          NA                   NA                0.5160486   0.4804683   0.5516290
3-6 months     MAL-ED       PERU                           NA                   NA                0.5026377   0.4533571   0.5519182
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4507171   0.3635622   0.5378720
3-6 months     NIH-Crypto   BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROVIDE      BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
6-9 months     MAL-ED       BRAZIL                         NA                   NA                0.4002611   0.3612162   0.4393059
6-9 months     MAL-ED       NEPAL                          NA                   NA                0.2683270   0.2401434   0.2965106
6-9 months     MAL-ED       PERU                           NA                   NA                0.2520055   0.2213895   0.2826214
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2253405   0.1374776   0.3132034
6-9 months     NIH-Crypto   BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROVIDE      BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
9-12 months    MAL-ED       BRAZIL                         NA                   NA                0.2831198   0.2443371   0.3219026
9-12 months    MAL-ED       NEPAL                          NA                   NA                0.1905809   0.1625784   0.2185835
9-12 months    MAL-ED       PERU                           NA                   NA                0.1997749   0.1642326   0.2353171
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1329811   0.0819697   0.1839925
9-12 months    NIH-Crypto   BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROVIDE      BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
12-15 months   MAL-ED       BRAZIL                         NA                   NA                0.2016949   0.1703194   0.2330704
12-15 months   MAL-ED       NEPAL                          NA                   NA                0.1416418   0.1110034   0.1722801
12-15 months   MAL-ED       PERU                           NA                   NA                0.1424940   0.1030357   0.1819523
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2041939   0.1491943   0.2591935
12-15 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE      BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
15-18 months   MAL-ED       BRAZIL                         NA                   NA                0.2121519   0.1722209   0.2520830
15-18 months   MAL-ED       NEPAL                          NA                   NA                0.1744053   0.1523126   0.1964979
15-18 months   MAL-ED       PERU                           NA                   NA                0.1396329   0.0961677   0.1830980
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1088672   0.0551896   0.1625448
15-18 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE      BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
18-21 months   MAL-ED       BRAZIL                         NA                   NA                0.1613623   0.1290425   0.1936822
18-21 months   MAL-ED       NEPAL                          NA                   NA                0.1854094   0.1617682   0.2090505
18-21 months   MAL-ED       PERU                           NA                   NA                0.1970640   0.1585526   0.2355754
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1748513   0.1157560   0.2339466
18-21 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE      BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   MAL-ED       BRAZIL                         NA                   NA                0.1492836   0.1183710   0.1801961
21-24 months   MAL-ED       NEPAL                          NA                   NA                0.1643936   0.1387769   0.1900103
21-24 months   MAL-ED       PERU                           NA                   NA                0.1753485   0.1374186   0.2132784
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1191438   0.0472705   0.1910171
21-24 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE      BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BRAZIL                         0                    1                  0.0325334   -0.0810905    0.1461573
0-3 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          0                    1                  0.0367633   -0.1243144    0.1978409
0-3 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           0                    1                 -0.0628386   -0.2161657    0.0904886
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1166120   -0.2484488    0.0152248
0-3 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0154650   -0.0162249    0.0471550
0-3 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     0                    1                 -0.1332367   -0.2249917   -0.0414816
3-6 months     MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BRAZIL                         0                    1                  0.0009153   -0.2419571    0.2437877
3-6 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          0                    1                  0.0167195   -0.1469518    0.1803907
3-6 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           0                    1                 -0.0763230   -0.1716411    0.0189952
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1016099   -0.3566457    0.1534259
3-6 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0217643   -0.0028505    0.0463790
3-6 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     0                    1                  0.0967445    0.0252272    0.1682618
6-9 months     MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BRAZIL                         0                    1                  0.0064923   -0.1206794    0.1336640
6-9 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          0                    1                 -0.0042736   -0.0857593    0.0772121
6-9 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           0                    1                 -0.0316004   -0.1005261    0.0373254
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0516013   -0.2702311    0.1670284
6-9 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.0088447   -0.0351331    0.0174437
6-9 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     0                    1                 -0.0102623   -0.0620245    0.0414999
9-12 months    MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BRAZIL                         0                    1                  0.0793539    0.0014064    0.1573014
9-12 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          0                    1                  0.0361986   -0.0475224    0.1199195
9-12 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           0                    1                  0.0187828   -0.0605544    0.0981200
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1274305   -0.0623365    0.3171975
9-12 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     0                    1                 -0.0016044   -0.0260788    0.0228699
9-12 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     0                    1                 -0.1073386   -0.1618109   -0.0528663
12-15 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BRAZIL                         0                    1                  0.0801977    0.0026518    0.1577436
12-15 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          0                    1                  0.0156952   -0.0766459    0.1080362
12-15 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           0                    1                  0.0497631   -0.0363086    0.1358347
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0566472   -0.2289741    0.1156797
12-15 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0000595   -0.0247685    0.0246494
12-15 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     0                    1                 -0.0037369   -0.0558062    0.0483323
15-18 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BRAZIL                         0                    1                  0.0127725   -0.0725035    0.0980485
15-18 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          0                    1                 -0.0361390   -0.0759850    0.0037070
15-18 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           0                    1                  0.0548751   -0.0599682    0.1697184
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0460942   -0.0904763    0.1826647
15-18 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0161522   -0.0097378    0.0420421
15-18 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     0                    1                  0.0379988   -0.0176784    0.0936760
18-21 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BRAZIL                         0                    1                 -0.0414650   -0.1156988    0.0327688
18-21 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          0                    1                  0.0223475   -0.0419602    0.0866553
18-21 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           0                    1                  0.0449925   -0.0561117    0.1460968
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0223568   -0.2271659    0.1824524
18-21 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0182276   -0.0429480    0.0064929
18-21 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     0                    1                 -0.0992919   -0.1471763   -0.0514075
21-24 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BRAZIL                         0                    1                 -0.0297959   -0.1049066    0.0453148
21-24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          0                    1                 -0.0008258   -0.0594046    0.0577530
21-24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           0                    1                  0.0426334   -0.0521814    0.1374482
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1063112   -0.1988738    0.4114962
21-24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0192638   -0.0144213    0.0529490
21-24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     0                    1                  0.0166433   -0.0302507    0.0635374


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED       BRAZIL                         1                    NA                 0.0215815   -0.0785316    0.1216947
0-3 months     MAL-ED       NEPAL                          1                    NA                 0.0169376   -0.0109486    0.0448237
0-3 months     MAL-ED       PERU                           1                    NA                 0.0028757   -0.0284385    0.0341898
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0995468   -0.2128129    0.0137193
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0088324   -0.0079536    0.0256184
0-3 months     PROVIDE      BANGLADESH                     1                    NA                -0.1304236   -0.2199485   -0.0408987
3-6 months     MAL-ED       BRAZIL                         1                    NA                -0.0057873   -0.2249244    0.2133499
3-6 months     MAL-ED       NEPAL                          1                    NA                 0.0023255   -0.0172863    0.0219373
3-6 months     MAL-ED       PERU                           1                    NA                -0.0194699   -0.0410078    0.0020680
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0870942   -0.3059671    0.1317786
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0153776    0.0034164    0.0273388
3-6 months     PROVIDE      BANGLADESH                     1                    NA                 0.0973736    0.0274711    0.1672762
6-9 months     MAL-ED       BRAZIL                         1                    NA                 0.0062047   -0.1054904    0.1178997
6-9 months     MAL-ED       NEPAL                          1                    NA                 0.0002021   -0.0157012    0.0161054
6-9 months     MAL-ED       PERU                           1                    NA                -0.0156643   -0.0316218    0.0002932
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0440499   -0.2307706    0.1426708
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0001702   -0.0113818    0.0117221
6-9 months     PROVIDE      BANGLADESH                     1                    NA                -0.0107741   -0.0613122    0.0397641
9-12 months    MAL-ED       BRAZIL                         1                    NA                 0.0781020    0.0084573    0.1477466
9-12 months    MAL-ED       NEPAL                          1                    NA                -0.0026861   -0.0180629    0.0126907
9-12 months    MAL-ED       PERU                           1                    NA                -0.0048758   -0.0206598    0.0109082
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1087821   -0.0538143    0.2713786
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0035042   -0.0151657    0.0081574
9-12 months    PROVIDE      BANGLADESH                     1                    NA                -0.1076951   -0.1608759   -0.0545143
12-15 months   MAL-ED       BRAZIL                         1                    NA                 0.0722926    0.0034723    0.1411128
12-15 months   MAL-ED       NEPAL                          1                    NA                 0.0073946   -0.0078761    0.0226653
12-15 months   MAL-ED       PERU                           1                    NA                 0.0032723   -0.0139206    0.0204652
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0483574   -0.1955965    0.0988818
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0011236   -0.0132797    0.0110324
12-15 months   PROVIDE      BANGLADESH                     1                    NA                -0.0036302   -0.0543594    0.0470991
15-18 months   MAL-ED       BRAZIL                         1                    NA                 0.0087276   -0.0659125    0.0833677
15-18 months   MAL-ED       NEPAL                          1                    NA                -0.0077508   -0.0151808   -0.0003208
15-18 months   MAL-ED       PERU                           1                    NA                -0.0031246   -0.0267359    0.0204868
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0404729   -0.0795337    0.1604795
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0120708   -0.0008122    0.0249538
15-18 months   PROVIDE      BANGLADESH                     1                    NA                 0.0373027   -0.0170786    0.0916839
18-21 months   MAL-ED       BRAZIL                         1                    NA                -0.0406572   -0.1060398    0.0247254
18-21 months   MAL-ED       NEPAL                          1                    NA                 0.0013418   -0.0084864    0.0111700
18-21 months   MAL-ED       PERU                           1                    NA                 0.0088029   -0.0116542    0.0292600
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0194905   -0.1980579    0.1590769
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0126438   -0.0271427    0.0018550
18-21 months   PROVIDE      BANGLADESH                     1                    NA                -0.0990206   -0.1463808   -0.0516604
21-24 months   MAL-ED       BRAZIL                         1                    NA                -0.0292640   -0.0956456    0.0371175
21-24 months   MAL-ED       NEPAL                          1                    NA                 0.0006696   -0.0111995    0.0125387
21-24 months   MAL-ED       PERU                           1                    NA                 0.0085267   -0.0110943    0.0281477
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0907535   -0.1700304    0.3515373
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0133868   -0.0073495    0.0341231
21-24 months   PROVIDE      BANGLADESH                     1                    NA                 0.0160519   -0.0296435    0.0617473
