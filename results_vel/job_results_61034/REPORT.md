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

**Outcome Variable:** y_rate_haz

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
0-3 months     CMC-V-BCS-2002   INDIA                          1             25    25
0-3 months     CMC-V-BCS-2002   INDIA                          0              0    25
0-3 months     GMS-Nepal        NEPAL                          1              1     4
0-3 months     GMS-Nepal        NEPAL                          0              3     4
0-3 months     IRC              INDIA                          1            118   118
0-3 months     IRC              INDIA                          0              0   118
0-3 months     MAL-ED           BANGLADESH                     1            132   134
0-3 months     MAL-ED           BANGLADESH                     0              2   134
0-3 months     MAL-ED           BRAZIL                         1             11    82
0-3 months     MAL-ED           BRAZIL                         0             71    82
0-3 months     MAL-ED           INDIA                          1              2     5
0-3 months     MAL-ED           INDIA                          0              3     5
0-3 months     MAL-ED           NEPAL                          1             45    55
0-3 months     MAL-ED           NEPAL                          0             10    55
0-3 months     MAL-ED           PERU                           1             36    45
0-3 months     MAL-ED           PERU                           0              9    45
0-3 months     MAL-ED           SOUTH AFRICA                   1              1     9
0-3 months     MAL-ED           SOUTH AFRICA                   0              8     9
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    38
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             32    38
0-3 months     NIH-Crypto       BANGLADESH                     1            402   721
0-3 months     NIH-Crypto       BANGLADESH                     0            319   721
0-3 months     PROVIDE          BANGLADESH                     1             14   640
0-3 months     PROVIDE          BANGLADESH                     0            626   640
3-6 months     CMC-V-BCS-2002   INDIA                          1            101   101
3-6 months     CMC-V-BCS-2002   INDIA                          0              0   101
3-6 months     GMS-Nepal        NEPAL                          1              1     4
3-6 months     GMS-Nepal        NEPAL                          0              3     4
3-6 months     IRC              INDIA                          1            119   119
3-6 months     IRC              INDIA                          0              0   119
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
3-6 months     NIH-Crypto       BANGLADESH                     1            382   695
3-6 months     NIH-Crypto       BANGLADESH                     0            313   695
3-6 months     PROVIDE          BANGLADESH                     1             14   598
3-6 months     PROVIDE          BANGLADESH                     0            584   598
6-9 months     CMC-V-BCS-2002   INDIA                          1            104   104
6-9 months     CMC-V-BCS-2002   INDIA                          0              0   104
6-9 months     GMS-Nepal        NEPAL                          1              0     2
6-9 months     GMS-Nepal        NEPAL                          0              2     2
6-9 months     IRC              INDIA                          1            121   121
6-9 months     IRC              INDIA                          0              0   121
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
6-9 months     NIH-Crypto       BANGLADESH                     1            374   688
6-9 months     NIH-Crypto       BANGLADESH                     0            314   688
6-9 months     PROVIDE          BANGLADESH                     1             14   565
6-9 months     PROVIDE          BANGLADESH                     0            551   565
9-12 months    CMC-V-BCS-2002   INDIA                          1            101   101
9-12 months    CMC-V-BCS-2002   INDIA                          0              0   101
9-12 months    GMS-Nepal        NEPAL                          1              0     2
9-12 months    GMS-Nepal        NEPAL                          0              2     2
9-12 months    IRC              INDIA                          1            119   119
9-12 months    IRC              INDIA                          0              0   119
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
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    42
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             36    42
9-12 months    NIH-Crypto       BANGLADESH                     1            363   674
9-12 months    NIH-Crypto       BANGLADESH                     0            311   674
9-12 months    PROVIDE          BANGLADESH                     1             14   566
9-12 months    PROVIDE          BANGLADESH                     0            552   566
12-15 months   CMC-V-BCS-2002   INDIA                          1            105   105
12-15 months   CMC-V-BCS-2002   INDIA                          0              0   105
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
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    42
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             36    42
12-15 months   NIH-Crypto       BANGLADESH                     1            353   660
12-15 months   NIH-Crypto       BANGLADESH                     0            307   660
12-15 months   PROVIDE          BANGLADESH                     1             14   532
12-15 months   PROVIDE          BANGLADESH                     0            518   532
15-18 months   CMC-V-BCS-2002   INDIA                          1            101   101
15-18 months   CMC-V-BCS-2002   INDIA                          0              0   101
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
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              5    40
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             35    40
15-18 months   NIH-Crypto       BANGLADESH                     1            304   604
15-18 months   NIH-Crypto       BANGLADESH                     0            300   604
15-18 months   PROVIDE          BANGLADESH                     1             12   528
15-18 months   PROVIDE          BANGLADESH                     0            516   528
18-21 months   CMC-V-BCS-2002   INDIA                          1             94    94
18-21 months   CMC-V-BCS-2002   INDIA                          0              0    94
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              5    38
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             33    38
18-21 months   NIH-Crypto       BANGLADESH                     1            266   546
18-21 months   NIH-Crypto       BANGLADESH                     0            280   546
18-21 months   PROVIDE          BANGLADESH                     1             12   541
18-21 months   PROVIDE          BANGLADESH                     0            529   541
21-24 months   CMC-V-BCS-2002   INDIA                          1             93    93
21-24 months   CMC-V-BCS-2002   INDIA                          0              0    93
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
21-24 months   NIH-Crypto       BANGLADESH                     1            225   490
21-24 months   NIH-Crypto       BANGLADESH                     0            265   490
21-24 months   PROVIDE          BANGLADESH                     1             11   471
21-24 months   PROVIDE          BANGLADESH                     0            460   471


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




# Results Detail

## Results Plots
![](/tmp/d049346d-a5e4-4eb7-bf71-bf00ebdc098f/ca09b494-4f4f-41f5-9b92-c75687c18129/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d049346d-a5e4-4eb7-bf71-bf00ebdc098f/ca09b494-4f4f-41f5-9b92-c75687c18129/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d049346d-a5e4-4eb7-bf71-bf00ebdc098f/ca09b494-4f4f-41f5-9b92-c75687c18129/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED       BRAZIL                         1                    NA                 0.3298830    0.1879857    0.4717803
0-3 months     MAL-ED       BRAZIL                         0                    NA                 0.1536608    0.0689384    0.2383831
0-3 months     MAL-ED       NEPAL                          1                    NA                 0.0216954   -0.0580991    0.1014900
0-3 months     MAL-ED       NEPAL                          0                    NA                -0.1488029   -0.4505447    0.1529389
0-3 months     MAL-ED       PERU                           1                    NA                -0.2775269   -0.3807449   -0.1743088
0-3 months     MAL-ED       PERU                           0                    NA                -0.1825068   -0.2881511   -0.0768626
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0521782   -0.2154773    0.1111208
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.2818987   -0.3925793   -0.1712181
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.2196408   -0.2474651   -0.1918164
0-3 months     NIH-Crypto   BANGLADESH                     0                    NA                -0.2413930   -0.2730689   -0.2097171
0-3 months     PROVIDE      BANGLADESH                     1                    NA                -0.2473301   -0.3368873   -0.1577729
0-3 months     PROVIDE      BANGLADESH                     0                    NA                -0.1867366   -0.2043888   -0.1690844
3-6 months     MAL-ED       BRAZIL                         1                    NA                -0.0285243   -0.2297676    0.1727190
3-6 months     MAL-ED       BRAZIL                         0                    NA                 0.1036602    0.0534613    0.1538592
3-6 months     MAL-ED       NEPAL                          1                    NA                -0.0276402   -0.0798220    0.0245416
3-6 months     MAL-ED       NEPAL                          0                    NA                 0.0872172   -0.0694993    0.2439337
3-6 months     MAL-ED       PERU                           1                    NA                 0.0238034   -0.0583871    0.1059939
3-6 months     MAL-ED       PERU                           0                    NA                 0.0967036    0.0043775    0.1890297
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2457527   -0.3985192   -0.0929862
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0410643   -0.1081175    0.0259890
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0304335   -0.0018268    0.0626939
3-6 months     NIH-Crypto   BANGLADESH                     0                    NA                 0.0335403    0.0061835    0.0608971
3-6 months     PROVIDE      BANGLADESH                     1                    NA                -0.1416510   -0.2229390   -0.0603630
3-6 months     PROVIDE      BANGLADESH                     0                    NA                -0.0241888   -0.0403237   -0.0080538
6-9 months     MAL-ED       BRAZIL                         1                    NA                 0.1406654    0.0431354    0.2381955
6-9 months     MAL-ED       BRAZIL                         0                    NA                 0.0376034   -0.0227841    0.0979908
6-9 months     MAL-ED       NEPAL                          1                    NA                -0.0546563   -0.0899983   -0.0193144
6-9 months     MAL-ED       NEPAL                          0                    NA                -0.1005954   -0.1626855   -0.0385053
6-9 months     MAL-ED       PERU                           1                    NA                -0.0820810   -0.1430065   -0.0211556
6-9 months     MAL-ED       PERU                           0                    NA                -0.0968944   -0.1349132   -0.0588756
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0776357   -0.1299187   -0.0253527
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0587924   -0.1887795    0.0711948
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0240213   -0.0441691   -0.0038736
6-9 months     NIH-Crypto   BANGLADESH                     0                    NA                -0.0573747   -0.0766018   -0.0381476
6-9 months     PROVIDE      BANGLADESH                     1                    NA                -0.0155530   -0.0736642    0.0425582
6-9 months     PROVIDE      BANGLADESH                     0                    NA                -0.0625380   -0.0735653   -0.0515107
9-12 months    MAL-ED       BRAZIL                         1                    NA                -0.0520139   -0.1644060    0.0603782
9-12 months    MAL-ED       BRAZIL                         0                    NA                 0.0028987   -0.0420941    0.0478914
9-12 months    MAL-ED       NEPAL                          1                    NA                -0.0605383   -0.0915469   -0.0295297
9-12 months    MAL-ED       NEPAL                          0                    NA                -0.0925674   -0.1836650   -0.0014699
9-12 months    MAL-ED       PERU                           1                    NA                -0.0064881   -0.0673055    0.0543293
9-12 months    MAL-ED       PERU                           0                    NA                -0.1176157   -0.2492891    0.0140577
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0643073   -0.2234610    0.0948463
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1651919   -0.2902566   -0.0401272
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0240348   -0.0446968   -0.0033729
9-12 months    NIH-Crypto   BANGLADESH                     0                    NA                -0.0474338   -0.0649037   -0.0299639
9-12 months    PROVIDE      BANGLADESH                     1                    NA                -0.1033196   -0.1491832   -0.0574560
9-12 months    PROVIDE      BANGLADESH                     0                    NA                -0.0619162   -0.0731437   -0.0506888
12-15 months   MAL-ED       BRAZIL                         1                    NA                -0.1068365   -0.2017804   -0.0118926
12-15 months   MAL-ED       BRAZIL                         0                    NA                 0.0185130   -0.0113956    0.0484217
12-15 months   MAL-ED       NEPAL                          1                    NA                -0.0340376   -0.0596790   -0.0083963
12-15 months   MAL-ED       NEPAL                          0                    NA                -0.0296150   -0.0883155    0.0290856
12-15 months   MAL-ED       PERU                           1                    NA                -0.0590352   -0.1135672   -0.0045032
12-15 months   MAL-ED       PERU                           0                    NA                -0.0662724   -0.1489023    0.0163575
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2075770   -0.4055752   -0.0095788
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0702827   -0.1255483   -0.0150171
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0364762   -0.0517231   -0.0212292
12-15 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.0471091   -0.0619907   -0.0322274
12-15 months   PROVIDE      BANGLADESH                     1                    NA                -0.0526751   -0.0806937   -0.0246564
12-15 months   PROVIDE      BANGLADESH                     0                    NA                -0.0408402   -0.0512383   -0.0304421
15-18 months   MAL-ED       BRAZIL                         1                    NA                -0.1474848   -0.2136641   -0.0813056
15-18 months   MAL-ED       BRAZIL                         0                    NA                -0.0125793   -0.0452725    0.0201140
15-18 months   MAL-ED       NEPAL                          1                    NA                -0.0419587   -0.0671664   -0.0167511
15-18 months   MAL-ED       NEPAL                          0                    NA                -0.0916366   -0.1478728   -0.0354005
15-18 months   MAL-ED       PERU                           1                    NA                -0.0267869   -0.0741326    0.0205588
15-18 months   MAL-ED       PERU                           0                    NA                -0.0750334   -0.1840222    0.0339555
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0175680   -0.1090802    0.1442163
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0633099   -0.1177238   -0.0088961
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0172917   -0.0298619   -0.0047215
15-18 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.0159211   -0.0295741   -0.0022681
15-18 months   PROVIDE      BANGLADESH                     1                    NA                -0.0689919   -0.1017034   -0.0362804
15-18 months   PROVIDE      BANGLADESH                     0                    NA                -0.0370159   -0.0459530   -0.0280789
18-21 months   MAL-ED       BRAZIL                         1                    NA                -0.0666018   -0.1184755   -0.0147282
18-21 months   MAL-ED       BRAZIL                         0                    NA                -0.0180456   -0.0584758    0.0223847
18-21 months   MAL-ED       NEPAL                          1                    NA                -0.0513598   -0.0743729   -0.0283467
18-21 months   MAL-ED       NEPAL                          0                    NA                 0.0059612   -0.0490120    0.0609344
18-21 months   MAL-ED       PERU                           1                    NA                -0.0049563   -0.0399845    0.0300720
18-21 months   MAL-ED       PERU                           0                    NA                 0.0060811   -0.0449992    0.0571615
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0279937   -0.1658200    0.1098325
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0773440   -0.1314138   -0.0232741
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0205606   -0.0331589   -0.0079624
18-21 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.0364847   -0.0496766   -0.0232928
18-21 months   PROVIDE      BANGLADESH                     1                    NA                 0.0469322    0.0121152    0.0817493
18-21 months   PROVIDE      BANGLADESH                     0                    NA                -0.0122097   -0.0205317   -0.0038877
21-24 months   MAL-ED       BRAZIL                         1                    NA                 0.0572587    0.0073876    0.1071297
21-24 months   MAL-ED       BRAZIL                         0                    NA                -0.0013772   -0.0218033    0.0190488
21-24 months   MAL-ED       NEPAL                          1                    NA                 0.0030008   -0.0183163    0.0243180
21-24 months   MAL-ED       NEPAL                          0                    NA                 0.0130507   -0.0325527    0.0586542
21-24 months   MAL-ED       PERU                           1                    NA                 0.0773191    0.0425925    0.1120457
21-24 months   MAL-ED       PERU                           0                    NA                 0.0402277   -0.0281677    0.1086232
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0994837   -0.1973677   -0.0015996
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0139199   -0.0339523    0.0617922
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0537706    0.0395716    0.0679696
21-24 months   NIH-Crypto   BANGLADESH                     0                    NA                 0.0622733    0.0495574    0.0749891
21-24 months   PROVIDE      BANGLADESH                     1                    NA                -0.0438566   -0.0998262    0.0121130
21-24 months   PROVIDE      BANGLADESH                     0                    NA                 0.0471885    0.0384398    0.0559372


### Parameter: E(Y)


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED       BRAZIL                         NA                   NA                 0.1691205    0.0933788    0.2448622
0-3 months     MAL-ED       NEPAL                          NA                   NA                -0.0005167   -0.0779898    0.0769564
0-3 months     MAL-ED       PERU                           NA                   NA                -0.2585229   -0.3444943   -0.1725514
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.2456271   -0.3460284   -0.1452257
0-3 months     NIH-Crypto   BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROVIDE      BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
3-6 months     MAL-ED       BRAZIL                         NA                   NA                 0.0932868    0.0431702    0.1434034
3-6 months     MAL-ED       NEPAL                          NA                   NA                -0.0086825   -0.0584538    0.0410888
3-6 months     MAL-ED       PERU                           NA                   NA                 0.0185031   -0.0490183    0.0860244
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0703055   -0.1355760   -0.0050350
3-6 months     NIH-Crypto   BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROVIDE      BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
6-9 months     MAL-ED       BRAZIL                         NA                   NA                 0.0330733   -0.0210538    0.0872004
6-9 months     MAL-ED       NEPAL                          NA                   NA                -0.0537194   -0.0848710   -0.0225678
6-9 months     MAL-ED       PERU                           NA                   NA                -0.0872219   -0.1357552   -0.0386886
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0615499   -0.1727971    0.0496973
6-9 months     NIH-Crypto   BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROVIDE      BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
9-12 months    MAL-ED       BRAZIL                         NA                   NA                 0.0012215   -0.0398479    0.0422909
9-12 months    MAL-ED       NEPAL                          NA                   NA                -0.0679160   -0.0976463   -0.0381856
9-12 months    MAL-ED       PERU                           NA                   NA                -0.0252263   -0.0764321    0.0259796
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1507799   -0.2608943   -0.0406655
9-12 months    NIH-Crypto   BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROVIDE      BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
12-15 months   MAL-ED       BRAZIL                         NA                   NA                 0.0081475   -0.0199315    0.0362265
12-15 months   MAL-ED       NEPAL                          NA                   NA                -0.0274684   -0.0511861   -0.0037507
12-15 months   MAL-ED       PERU                           NA                   NA                -0.0674136   -0.1121894   -0.0226379
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0898961   -0.1469951   -0.0327972
12-15 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROVIDE      BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
15-18 months   MAL-ED       BRAZIL                         NA                   NA                -0.0199999   -0.0494604    0.0094605
15-18 months   MAL-ED       NEPAL                          NA                   NA                -0.0444437   -0.0669103   -0.0219771
15-18 months   MAL-ED       PERU                           NA                   NA                -0.0369648   -0.0765062    0.0025766
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0532002   -0.1040727   -0.0023277
15-18 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROVIDE      BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
18-21 months   MAL-ED       BRAZIL                         NA                   NA                -0.0238213   -0.0596356    0.0119930
18-21 months   MAL-ED       NEPAL                          NA                   NA                -0.0451263   -0.0665050   -0.0237475
18-21 months   MAL-ED       PERU                           NA                   NA                -0.0027968   -0.0327190    0.0271255
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0708505   -0.1214725   -0.0202285
18-21 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE      BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   MAL-ED       BRAZIL                         NA                   NA                 0.0081826   -0.0112535    0.0276187
21-24 months   MAL-ED       NEPAL                          NA                   NA                 0.0062925   -0.0130572    0.0256421
21-24 months   MAL-ED       PERU                           NA                   NA                 0.0699008    0.0386257    0.1011760
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0026757   -0.0477263    0.0423749
21-24 months   NIH-Crypto   BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE      BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BRAZIL                         0                    1                 -0.1762223   -0.3425424   -0.0099022
0-3 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          0                    1                 -0.1704983   -0.4822811    0.1412844
0-3 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           0                    1                  0.0950200   -0.0526779    0.2427179
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2297205   -0.4269939   -0.0324471
0-3 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.0217522   -0.0640136    0.0205091
0-3 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     0                    1                  0.0605935   -0.0303877    0.1515747
3-6 months     MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BRAZIL                         0                    1                  0.1321845   -0.0753598    0.3397288
3-6 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          0                    1                  0.1148574   -0.0507233    0.2804380
3-6 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           0                    1                  0.0729002   -0.0538882    0.1996886
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2046884    0.0378539    0.3715229
3-6 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0031068   -0.0390577    0.0452712
3-6 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     0                    1                  0.1174622    0.0345955    0.2003290
6-9 months     MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BRAZIL                         0                    1                 -0.1030621   -0.2188869    0.0127627
6-9 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          0                    1                 -0.0459391   -0.1174572    0.0255790
6-9 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           0                    1                 -0.0148134   -0.0872621    0.0576354
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0188434   -0.1212643    0.1589510
6-9 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.0333534   -0.0613661   -0.0053407
6-9 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     0                    1                 -0.0469850   -0.1059807    0.0120107
9-12 months    MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BRAZIL                         0                    1                  0.0549126   -0.0662467    0.1760719
9-12 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          0                    1                 -0.0320291   -0.1285351    0.0644769
9-12 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           0                    1                 -0.1111276   -0.2592585    0.0370032
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1008846   -0.3032977    0.1015285
9-12 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     0                    1                 -0.0233990   -0.0504733    0.0036754
9-12 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     0                    1                  0.0414034   -0.0058981    0.0887049
12-15 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BRAZIL                         0                    1                  0.1253495    0.0255608    0.2251383
12-15 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          0                    1                  0.0044227   -0.0586892    0.0675345
12-15 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           0                    1                 -0.0072372   -0.1068816    0.0924072
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1372943   -0.0682722    0.3428608
12-15 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0106329   -0.0319633    0.0106975
12-15 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     0                    1                  0.0118349   -0.0178402    0.0415099
15-18 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BRAZIL                         0                    1                  0.1349056    0.0594795    0.2103316
15-18 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          0                    1                 -0.0496779   -0.1118336    0.0124778
15-18 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           0                    1                 -0.0482465   -0.1705481    0.0740551
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0808780   -0.2187208    0.0569649
15-18 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0013706   -0.0172199    0.0199611
15-18 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     0                    1                  0.0319760   -0.0019031    0.0658551
18-21 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BRAZIL                         0                    1                  0.0485563   -0.0184672    0.1155797
18-21 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          0                    1                  0.0573210   -0.0016666    0.1163086
18-21 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           0                    1                  0.0110374   -0.0508995    0.0729743
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0493502   -0.1974030    0.0987025
18-21 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0159240   -0.0342743    0.0024263
18-21 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     0                    1                 -0.0591420   -0.0949839   -0.0233000
21-24 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BRAZIL                         0                    1                 -0.0586359   -0.1129964   -0.0042754
21-24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          0                    1                  0.0100499   -0.0401565    0.0602562
21-24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           0                    1                 -0.0370914   -0.1137978    0.0396150
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1134036    0.0044402    0.2223670
21-24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0085027   -0.0105752    0.0275806
21-24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     0                    1                  0.0910451    0.0343354    0.1477548


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED       BRAZIL                         1                    NA                -0.1607625   -0.3072609   -0.0142642
0-3 months     MAL-ED       NEPAL                          1                    NA                -0.0222122   -0.0662360    0.0218116
0-3 months     MAL-ED       PERU                           1                    NA                 0.0190040   -0.0125984    0.0506064
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1934488   -0.3617521   -0.0251456
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0116200   -0.0317040    0.0084640
0-3 months     PROVIDE      BANGLADESH                     1                    NA                 0.0592899   -0.0293558    0.1479355
3-6 months     MAL-ED       BRAZIL                         1                    NA                 0.1218111   -0.0612043    0.3048264
3-6 months     MAL-ED       NEPAL                          1                    NA                 0.0189577   -0.0083109    0.0462263
3-6 months     MAL-ED       PERU                           1                    NA                -0.0053003   -0.0316170    0.0210163
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1754472    0.0307753    0.3201191
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0036595   -0.0292995    0.0219805
3-6 months     PROVIDE      BANGLADESH                     1                    NA                 0.1146885    0.0339346    0.1954424
6-9 months     MAL-ED       BRAZIL                         1                    NA                -0.1075921   -0.2087589   -0.0064254
6-9 months     MAL-ED       NEPAL                          1                    NA                 0.0009370   -0.0121369    0.0140108
6-9 months     MAL-ED       PERU                           1                    NA                -0.0051409   -0.0207664    0.0104846
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0160858   -0.1035361    0.1357077
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0073424   -0.0223500    0.0076651
6-9 months     PROVIDE      BANGLADESH                     1                    NA                -0.0458734   -0.1033253    0.0115785
9-12 months    MAL-ED       BRAZIL                         1                    NA                 0.0532354   -0.0551426    0.1616134
9-12 months    MAL-ED       NEPAL                          1                    NA                -0.0073776   -0.0232955    0.0085402
9-12 months    MAL-ED       PERU                           1                    NA                -0.0187382   -0.0422550    0.0047787
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0864725   -0.2603056    0.0873606
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0102647   -0.0264415    0.0059122
9-12 months    PROVIDE      BANGLADESH                     1                    NA                 0.0402726   -0.0058129    0.0863581
12-15 months   MAL-ED       BRAZIL                         1                    NA                 0.1149840    0.0236952    0.2062728
12-15 months   MAL-ED       NEPAL                          1                    NA                 0.0065692   -0.0051245    0.0182629
12-15 months   MAL-ED       PERU                           1                    NA                -0.0083784   -0.0296099    0.0128531
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1176809   -0.0591316    0.2944933
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0018551   -0.0134564    0.0097461
12-15 months   PROVIDE      BANGLADESH                     1                    NA                 0.0117643   -0.0170278    0.0405564
15-18 months   MAL-ED       BRAZIL                         1                    NA                 0.1274849    0.0587833    0.1961864
15-18 months   MAL-ED       NEPAL                          1                    NA                -0.0024850   -0.0115901    0.0066202
15-18 months   MAL-ED       PERU                           1                    NA                -0.0101779   -0.0323129    0.0119571
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0707682   -0.1916725    0.0501360
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0003843   -0.0094863    0.0102550
15-18 months   PROVIDE      BANGLADESH                     1                    NA                 0.0313482   -0.0017174    0.0644139
18-21 months   MAL-ED       BRAZIL                         1                    NA                 0.0427805   -0.0155372    0.1010983
18-21 months   MAL-ED       NEPAL                          1                    NA                 0.0062335   -0.0029486    0.0154156
18-21 months   MAL-ED       PERU                           1                    NA                 0.0021595   -0.0100259    0.0143449
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0428568   -0.1715413    0.0858277
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0074081   -0.0176470    0.0028308
18-21 months   PROVIDE      BANGLADESH                     1                    NA                -0.0578721   -0.0928794   -0.0228649
21-24 months   MAL-ED       BRAZIL                         1                    NA                -0.0490761   -0.0976785   -0.0004736
21-24 months   MAL-ED       NEPAL                          1                    NA                 0.0032916   -0.0049356    0.0115188
21-24 months   MAL-ED       PERU                           1                    NA                -0.0074183   -0.0233736    0.0085371
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0968080    0.0029647    0.1906512
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0049915   -0.0062890    0.0162719
21-24 months   PROVIDE      BANGLADESH                     1                    NA                 0.0900908    0.0346300    0.1455516
