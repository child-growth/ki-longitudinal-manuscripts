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

unadjusted

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
![](/tmp/c1288bbb-35b4-497f-b730-1e10185de3da/8126cdf2-8d32-4197-800b-353162cbe3af/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c1288bbb-35b4-497f-b730-1e10185de3da/8126cdf2-8d32-4197-800b-353162cbe3af/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c1288bbb-35b4-497f-b730-1e10185de3da/8126cdf2-8d32-4197-800b-353162cbe3af/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     MAL-ED       BRAZIL                         1                    NA                1.0020168    0.9162690   1.0877647
0-3 months     MAL-ED       BRAZIL                         0                    NA                1.0895809    1.0326282   1.1465336
0-3 months     MAL-ED       NEPAL                          1                    NA                0.9356101    0.8856311   0.9855891
0-3 months     MAL-ED       NEPAL                          0                    NA                1.0152358    0.8682613   1.1622102
0-3 months     MAL-ED       PERU                           1                    NA                0.9347777    0.8799373   0.9896182
0-3 months     MAL-ED       PERU                           0                    NA                0.9242771    0.7896659   1.0588882
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0002689    0.8901714   1.1103664
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8836569    0.8111346   0.9561791
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                0.8741442    0.8549364   0.8933520
0-3 months     NIH-Crypto   BANGLADESH                     0                    NA                0.8976563    0.8754840   0.9198286
0-3 months     PROVIDE      BANGLADESH                     1                    NA                1.0199951    0.9409177   1.0990724
0-3 months     PROVIDE      BANGLADESH                     0                    NA                0.8990004    0.8840689   0.9139319
3-6 months     MAL-ED       BRAZIL                         1                    NA                0.5454162    0.3603331   0.7304993
3-6 months     MAL-ED       BRAZIL                         0                    NA                0.6004206    0.5500764   0.6507648
3-6 months     MAL-ED       NEPAL                          1                    NA                0.5156939    0.4787798   0.5526080
3-6 months     MAL-ED       NEPAL                          0                    NA                0.5177715    0.4115555   0.6239874
3-6 months     MAL-ED       PERU                           1                    NA                0.5219366    0.4637584   0.5801148
3-6 months     MAL-ED       PERU                           0                    NA                0.4273718    0.3638292   0.4909145
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5378113    0.3002548   0.7753678
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4362014    0.3434105   0.5289923
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                0.4932351    0.4783060   0.5081642
3-6 months     NIH-Crypto   BANGLADESH                     0                    NA                0.5040094    0.4875510   0.5204679
3-6 months     PROVIDE      BANGLADESH                     1                    NA                0.5089583    0.4494359   0.5684807
3-6 months     PROVIDE      BANGLADESH                     0                    NA                0.4885866    0.4752863   0.5018868
6-9 months     MAL-ED       BRAZIL                         1                    NA                0.3998959    0.2858629   0.5139289
6-9 months     MAL-ED       BRAZIL                         0                    NA                0.4003138    0.3587758   0.4418519
6-9 months     MAL-ED       NEPAL                          1                    NA                0.2685606    0.2394796   0.2976416
6-9 months     MAL-ED       NEPAL                          0                    NA                0.2671924    0.1817652   0.3526195
6-9 months     MAL-ED       PERU                           1                    NA                0.2650023    0.2298248   0.3001798
6-9 months     MAL-ED       PERU                           0                    NA                0.2013177    0.1521457   0.2504898
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2693904    0.0734898   0.4652910
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2177891    0.1207225   0.3148556
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                0.2639107    0.2504926   0.2773288
6-9 months     NIH-Crypto   BANGLADESH                     0                    NA                0.2718537    0.2551138   0.2885936
6-9 months     PROVIDE      BANGLADESH                     1                    NA                0.2501899    0.1977193   0.3026605
6-9 months     PROVIDE      BANGLADESH                     0                    NA                0.2491398    0.2368523   0.2614273
9-12 months    MAL-ED       BRAZIL                         1                    NA                0.2572899    0.1920578   0.3225219
9-12 months    MAL-ED       BRAZIL                         0                    NA                0.2868508    0.2435327   0.3301690
9-12 months    MAL-ED       NEPAL                          1                    NA                0.1906752    0.1613358   0.2200146
9-12 months    MAL-ED       NEPAL                          0                    NA                0.1901232    0.1089266   0.2713199
9-12 months    MAL-ED       PERU                           1                    NA                0.2026978    0.1606273   0.2447682
9-12 months    MAL-ED       PERU                           0                    NA                0.1883756    0.1305306   0.2462206
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0241990   -0.1593722   0.2077701
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1516294    0.1035343   0.1997246
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                0.1937816    0.1794494   0.2081138
9-12 months    NIH-Crypto   BANGLADESH                     0                    NA                0.2026766    0.1876113   0.2177418
9-12 months    PROVIDE      BANGLADESH                     1                    NA                0.1724890    0.1073556   0.2376224
9-12 months    PROVIDE      BANGLADESH                     0                    NA                0.1776588    0.1682316   0.1870860
12-15 months   MAL-ED       BRAZIL                         1                    NA                0.1462088    0.0836205   0.2087971
12-15 months   MAL-ED       BRAZIL                         0                    NA                0.2097095    0.1752758   0.2441433
12-15 months   MAL-ED       NEPAL                          1                    NA                0.1345970    0.1017589   0.1674352
12-15 months   MAL-ED       NEPAL                          0                    NA                0.1763623    0.0963804   0.2563441
12-15 months   MAL-ED       PERU                           1                    NA                0.1371182    0.0902699   0.1839665
12-15 months   MAL-ED       PERU                           0                    NA                0.1629222    0.0998896   0.2259547
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2525513    0.0901522   0.4149504
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1959041    0.1382578   0.2535504
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1678682    0.1540176   0.1817188
12-15 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1596341    0.1435144   0.1757538
12-15 months   PROVIDE      BANGLADESH                     1                    NA                0.1957490    0.1447960   0.2467021
12-15 months   PROVIDE      BANGLADESH                     0                    NA                0.1796117    0.1676729   0.1915504
15-18 months   MAL-ED       BRAZIL                         1                    NA                0.1904935    0.1232032   0.2577838
15-18 months   MAL-ED       BRAZIL                         0                    NA                0.2152804    0.1706646   0.2598962
15-18 months   MAL-ED       NEPAL                          1                    NA                0.1810530    0.1556405   0.2064656
15-18 months   MAL-ED       NEPAL                          0                    NA                0.1396323    0.1105099   0.1687547
15-18 months   MAL-ED       PERU                           1                    NA                0.1367681    0.0878311   0.1857052
15-18 months   MAL-ED       PERU                           0                    NA                0.1505189    0.0562456   0.2447922
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0683943   -0.0550421   0.1918307
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1144884    0.0560508   0.1729261
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1506259    0.1363863   0.1648655
15-18 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1719448    0.1564883   0.1874014
15-18 months   PROVIDE      BANGLADESH                     1                    NA                0.1289078    0.0729394   0.1848762
15-18 months   PROVIDE      BANGLADESH                     0                    NA                0.1569835    0.1450038   0.1689633
18-21 months   MAL-ED       BRAZIL                         1                    NA                0.1724142    0.1055176   0.2393107
18-21 months   MAL-ED       BRAZIL                         0                    NA                0.1597660    0.1240744   0.1954575
18-21 months   MAL-ED       NEPAL                          1                    NA                0.1836820    0.1575009   0.2098631
18-21 months   MAL-ED       NEPAL                          0                    NA                0.1944448    0.1404596   0.2484300
18-21 months   MAL-ED       PERU                           1                    NA                0.1882611    0.1464396   0.2300826
18-21 months   MAL-ED       PERU                           0                    NA                0.2332536    0.1412045   0.3253027
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1943418   -0.0010683   0.3897519
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1719850    0.1106525   0.2333175
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1467977    0.1318536   0.1617419
18-21 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1387162    0.1233640   0.1540684
18-21 months   PROVIDE      BANGLADESH                     1                    NA                0.1430639    0.0975476   0.1885801
18-21 months   PROVIDE      BANGLADESH                     0                    NA                0.1322487    0.1205699   0.1439276
21-24 months   MAL-ED       BRAZIL                         1                    NA                0.1386694    0.0723241   0.2050146
21-24 months   MAL-ED       BRAZIL                         0                    NA                0.1508167    0.1167735   0.1848599
21-24 months   MAL-ED       NEPAL                          1                    NA                0.1646786    0.1359397   0.1934174
21-24 months   MAL-ED       NEPAL                          0                    NA                0.1629892    0.1082014   0.2177770
21-24 months   MAL-ED       PERU                           1                    NA                0.1668218    0.1249154   0.2087283
21-24 months   MAL-ED       PERU                           0                    NA                0.2094552    0.1244041   0.2945064
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0283903   -0.2696805   0.3264611
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1347015    0.0691909   0.2002121
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1601683    0.1416430   0.1786937
21-24 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1877499    0.1708154   0.2046843
21-24 months   PROVIDE      BANGLADESH                     1                    NA                0.1206362    0.0746355   0.1666369
21-24 months   PROVIDE      BANGLADESH                     0                    NA                0.1425117    0.1308450   0.1541784


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
0-3 months     MAL-ED       BRAZIL                         0                    1                  0.0875640   -0.0153743    0.1905024
0-3 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          0                    1                  0.0796256   -0.0756142    0.2348654
0-3 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           0                    1                 -0.0105007   -0.1558541    0.1348528
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1166120   -0.2484488    0.0152248
0-3 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0235120   -0.0058231    0.0528472
0-3 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     0                    1                 -0.1209946   -0.2014693   -0.0405199
3-6 months     MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BRAZIL                         0                    1                  0.0550044   -0.1368036    0.2468123
3-6 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          0                    1                  0.0020775   -0.1103701    0.1145252
3-6 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           0                    1                 -0.0945648   -0.1807179   -0.0084116
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1016099   -0.3566457    0.1534259
3-6 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0107743   -0.0114463    0.0329950
3-6 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     0                    1                 -0.0203717   -0.0813620    0.0406186
6-9 months     MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BRAZIL                         0                    1                  0.0004179   -0.1209449    0.1217807
6-9 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          0                    1                 -0.0013682   -0.0916096    0.0888731
6-9 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           0                    1                 -0.0636846   -0.1241441   -0.0032251
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0516013   -0.2702311    0.1670284
6-9 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0079430   -0.0135109    0.0293969
6-9 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     0                    1                 -0.0010501   -0.0549402    0.0528401
9-12 months    MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BRAZIL                         0                    1                  0.0295610   -0.0487441    0.1078660
9-12 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          0                    1                 -0.0005519   -0.0868868    0.0857829
9-12 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           0                    1                 -0.0143222   -0.0858482    0.0572039
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1274305   -0.0623365    0.3171975
9-12 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     0                    1                  0.0088950   -0.0118987    0.0296886
9-12 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     0                    1                  0.0051698   -0.0606423    0.0709818
12-15 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BRAZIL                         0                    1                  0.0635007   -0.0079344    0.1349358
12-15 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          0                    1                  0.0417652   -0.0446954    0.1282259
12-15 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           0                    1                  0.0258040   -0.0527318    0.1043397
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0566472   -0.2289741    0.1156797
12-15 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0082341   -0.0294869    0.0130188
12-15 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     0                    1                 -0.0161374   -0.0684704    0.0361957
15-18 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BRAZIL                         0                    1                  0.0247868   -0.0559507    0.1055244
15-18 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          0                    1                 -0.0414207   -0.0800719   -0.0027696
15-18 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           0                    1                  0.0137507   -0.0924674    0.1199688
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0460942   -0.0904763    0.1826647
15-18 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0213189    0.0003029    0.0423349
15-18 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     0                    1                  0.0280757   -0.0291604    0.0853119
18-21 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BRAZIL                         0                    1                 -0.0126482   -0.0884706    0.0631742
18-21 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          0                    1                  0.0107628   -0.0492360    0.0707616
18-21 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           0                    1                  0.0449925   -0.0561117    0.1460968
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0223568   -0.2271659    0.1824524
18-21 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0080815   -0.0295062    0.0133432
18-21 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     0                    1                 -0.0108152   -0.0578058    0.0361755
21-24 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BRAZIL                         0                    1                  0.0121474   -0.0624223    0.0867170
21-24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          0                    1                 -0.0016893   -0.0635571    0.0601785
21-24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           0                    1                  0.0426334   -0.0521814    0.1374482
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1063112   -0.1988738    0.4114962
21-24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0275815    0.0024825    0.0526806
21-24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     0                    1                  0.0218755   -0.0255816    0.0693326


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED       BRAZIL                         1                    NA                 0.0765123   -0.0136107    0.1666352
0-3 months     MAL-ED       NEPAL                          1                    NA                 0.0137625   -0.0138683    0.0413932
0-3 months     MAL-ED       PERU                           1                    NA                -0.0021430   -0.0318311    0.0275451
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0995468   -0.2128129    0.0137193
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0103777   -0.0025981    0.0233536
0-3 months     PROVIDE      BANGLADESH                     1                    NA                -0.1183479   -0.1968227   -0.0398730
3-6 months     MAL-ED       BRAZIL                         1                    NA                 0.0480621   -0.1195746    0.2156988
3-6 months     MAL-ED       NEPAL                          1                    NA                 0.0003547   -0.0188444    0.0195538
3-6 months     MAL-ED       PERU                           1                    NA                -0.0192989   -0.0399238    0.0013259
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0870942   -0.3059671    0.1317786
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0048193   -0.0051278    0.0147664
3-6 months     PROVIDE      BANGLADESH                     1                    NA                -0.0198972   -0.0793632    0.0395689
6-9 months     MAL-ED       BRAZIL                         1                    NA                 0.0003652   -0.1056800    0.1064103
6-9 months     MAL-ED       NEPAL                          1                    NA                -0.0002336   -0.0156411    0.0151739
6-9 months     MAL-ED       PERU                           1                    NA                -0.0129969   -0.0273135    0.0013197
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0440499   -0.2307706    0.1426708
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0035990   -0.0061263    0.0133243
6-9 months     PROVIDE      BANGLADESH                     1                    NA                -0.0010245   -0.0535674    0.0515183
9-12 months    MAL-ED       BRAZIL                         1                    NA                 0.0258300   -0.0426185    0.0942784
9-12 months    MAL-ED       NEPAL                          1                    NA                -0.0000942   -0.0148344    0.0146459
9-12 months    MAL-ED       PERU                           1                    NA                -0.0029229   -0.0176111    0.0117653
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1087821   -0.0538143    0.2713786
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0040633   -0.0054412    0.0135678
9-12 months    PROVIDE      BANGLADESH                     1                    NA                 0.0050426   -0.0591242    0.0692094
12-15 months   MAL-ED       BRAZIL                         1                    NA                 0.0554860   -0.0070670    0.1180391
12-15 months   MAL-ED       NEPAL                          1                    NA                 0.0070447   -0.0079267    0.0220162
12-15 months   MAL-ED       PERU                           1                    NA                 0.0053758   -0.0112578    0.0220095
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0483574   -0.1955965    0.0988818
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0038080   -0.0136416    0.0060257
12-15 months   PROVIDE      BANGLADESH                     1                    NA                -0.0157167   -0.0666858    0.0352525
15-18 months   MAL-ED       BRAZIL                         1                    NA                 0.0216584   -0.0489071    0.0922239
15-18 months   MAL-ED       NEPAL                          1                    NA                -0.0066478   -0.0136891    0.0003936
15-18 months   MAL-ED       PERU                           1                    NA                 0.0028647   -0.0193216    0.0250510
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0404729   -0.0795337    0.1604795
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0105714    0.0001156    0.0210271
15-18 months   PROVIDE      BANGLADESH                     1                    NA                 0.0274437   -0.0283627    0.0832500
18-21 months   MAL-ED       BRAZIL                         1                    NA                -0.0110518   -0.0773094    0.0552058
18-21 months   MAL-ED       NEPAL                          1                    NA                 0.0017274   -0.0079409    0.0113956
18-21 months   MAL-ED       PERU                           1                    NA                 0.0088029   -0.0116542    0.0292600
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0194905   -0.1980579    0.1590769
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0041368   -0.0151090    0.0068354
18-21 months   PROVIDE      BANGLADESH                     1                    NA                -0.0105757   -0.0563918    0.0352404
21-24 months   MAL-ED       BRAZIL                         1                    NA                 0.0106142   -0.0545485    0.0757769
21-24 months   MAL-ED       NEPAL                          1                    NA                -0.0002849   -0.0107214    0.0101515
21-24 months   MAL-ED       PERU                           1                    NA                 0.0085267   -0.0110943    0.0281477
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0907535   -0.1700304    0.3515373
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0148817    0.0012850    0.0284784
21-24 months   PROVIDE      BANGLADESH                     1                    NA                 0.0213343   -0.0249374    0.0676059
