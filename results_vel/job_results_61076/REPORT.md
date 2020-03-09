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

**Outcome Variable:** y_rate_len

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
![](/tmp/e5f25c30-0ae2-4feb-898f-05fa43719243/b8879e57-4f26-492d-abf0-8d565ff52468/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e5f25c30-0ae2-4feb-898f-05fa43719243/b8879e57-4f26-492d-abf0-8d565ff52468/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e5f25c30-0ae2-4feb-898f-05fa43719243/b8879e57-4f26-492d-abf0-8d565ff52468/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     MAL-ED       BRAZIL                         1                    NA                4.0012388   3.7710096   4.2314680
0-3 months     MAL-ED       BRAZIL                         0                    NA                3.8262903   3.6682723   3.9843084
0-3 months     MAL-ED       NEPAL                          1                    NA                3.5385726   3.3765899   3.7005553
0-3 months     MAL-ED       NEPAL                          0                    NA                3.3148613   2.7809329   3.8487898
0-3 months     MAL-ED       PERU                           1                    NA                3.0273565   2.8251714   3.2295415
0-3 months     MAL-ED       PERU                           0                    NA                3.2438992   3.0076078   3.4801905
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4897230   3.1171369   3.8623092
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                2.9447033   2.7483050   3.1411017
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                3.1420570   3.0848719   3.1992420
0-3 months     NIH-Crypto   BANGLADESH                     0                    NA                3.1143138   3.0473414   3.1812862
0-3 months     PROVIDE      BANGLADESH                     1                    NA                3.2493667   3.0405248   3.4582085
0-3 months     PROVIDE      BANGLADESH                     0                    NA                3.2581891   3.2205459   3.2958323
3-6 months     MAL-ED       BRAZIL                         1                    NA                1.8252644   1.4018015   2.2487274
3-6 months     MAL-ED       BRAZIL                         0                    NA                2.2444780   2.1353350   2.3536210
3-6 months     MAL-ED       NEPAL                          1                    NA                1.9513702   1.8417423   2.0609982
3-6 months     MAL-ED       NEPAL                          0                    NA                2.1592878   1.8654537   2.4531220
3-6 months     MAL-ED       PERU                           1                    NA                2.0290268   1.8501439   2.2079096
3-6 months     MAL-ED       PERU                           0                    NA                1.9866015   1.7191126   2.2540904
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4680424   1.1592662   1.7768187
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8739708   1.7296439   2.0182977
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                1.9987745   1.9292958   2.0682532
3-6 months     NIH-Crypto   BANGLADESH                     0                    NA                2.0288290   1.9694274   2.0882306
3-6 months     PROVIDE      BANGLADESH                     1                    NA                1.8795950   1.6784831   2.0807069
3-6 months     PROVIDE      BANGLADESH                     0                    NA                1.9712019   1.9369053   2.0054985
6-9 months     MAL-ED       BRAZIL                         1                    NA                1.6573573   1.4372895   1.8774251
6-9 months     MAL-ED       BRAZIL                         0                    NA                1.5424843   1.4023976   1.6825710
6-9 months     MAL-ED       NEPAL                          1                    NA                1.3199104   1.2372481   1.4025727
6-9 months     MAL-ED       NEPAL                          0                    NA                1.2830528   1.0940327   1.4720729
6-9 months     MAL-ED       PERU                           1                    NA                1.1954387   1.0586810   1.3321964
6-9 months     MAL-ED       PERU                           0                    NA                1.0437360   0.9417670   1.1457050
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2277218   1.1320488   1.3233948
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2689420   0.9561668   1.5817173
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                1.3417818   1.2936067   1.3899569
6-9 months     NIH-Crypto   BANGLADESH                     0                    NA                1.2734278   1.2284270   1.3184285
6-9 months     PROVIDE      BANGLADESH                     1                    NA                1.6151084   1.4499657   1.7802510
6-9 months     PROVIDE      BANGLADESH                     0                    NA                1.2795965   1.2540700   1.3051229
9-12 months    MAL-ED       BRAZIL                         1                    NA                1.2617777   1.0423491   1.4812064
9-12 months    MAL-ED       BRAZIL                         0                    NA                1.3006753   1.1907300   1.4106205
9-12 months    MAL-ED       NEPAL                          1                    NA                1.0975954   1.0207681   1.1744226
9-12 months    MAL-ED       NEPAL                          0                    NA                0.9828067   0.7438566   1.2217567
9-12 months    MAL-ED       PERU                           1                    NA                1.1802647   1.0359771   1.3245523
9-12 months    MAL-ED       PERU                           0                    NA                0.8396812   0.6612202   1.0181421
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0215157   0.6547108   1.3883206
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7767455   0.4773748   1.0761163
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                1.1389194   1.0933590   1.1844797
9-12 months    NIH-Crypto   BANGLADESH                     0                    NA                1.1032082   1.0603163   1.1461000
9-12 months    PROVIDE      BANGLADESH                     1                    NA                1.0750171   0.9568060   1.1932283
9-12 months    PROVIDE      BANGLADESH                     0                    NA                1.0537807   1.0263389   1.0812225
12-15 months   MAL-ED       BRAZIL                         1                    NA                0.8837493   0.6785671   1.0889314
12-15 months   MAL-ED       BRAZIL                         0                    NA                1.2113853   1.1349601   1.2878106
12-15 months   MAL-ED       NEPAL                          1                    NA                1.0211124   0.9560006   1.0862242
12-15 months   MAL-ED       NEPAL                          0                    NA                1.0610735   0.8898021   1.2323449
12-15 months   MAL-ED       PERU                           1                    NA                0.8872685   0.7510214   1.0235157
12-15 months   MAL-ED       PERU                           0                    NA                0.7987358   0.6027754   0.9946962
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5107923   0.0347245   0.9868601
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8431553   0.7013656   0.9849451
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                0.9715897   0.9332261   1.0099532
12-15 months   NIH-Crypto   BANGLADESH                     0                    NA                0.9570255   0.9164439   0.9976072
12-15 months   PROVIDE      BANGLADESH                     1                    NA                1.0057200   0.9192725   1.0921674
12-15 months   PROVIDE      BANGLADESH                     0                    NA                0.9594855   0.9326777   0.9862933
15-18 months   MAL-ED       BRAZIL                         1                    NA                0.8354984   0.6938134   0.9771833
15-18 months   MAL-ED       BRAZIL                         0                    NA                1.0342040   0.9426412   1.1257667
15-18 months   MAL-ED       NEPAL                          1                    NA                0.8880734   0.8188149   0.9573319
15-18 months   MAL-ED       NEPAL                          0                    NA                0.8144045   0.6695706   0.9592385
15-18 months   MAL-ED       PERU                           1                    NA                0.8579939   0.7310066   0.9849813
15-18 months   MAL-ED       PERU                           0                    NA                0.5508041   0.3263056   0.7753025
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9788727   0.5987851   1.3589604
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7341204   0.5835689   0.8846718
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                0.9135960   0.8750328   0.9521592
15-18 months   NIH-Crypto   BANGLADESH                     0                    NA                0.9220377   0.8836745   0.9604010
15-18 months   PROVIDE      BANGLADESH                     1                    NA                0.8720740   0.7820943   0.9620536
15-18 months   PROVIDE      BANGLADESH                     0                    NA                0.8574985   0.8329038   0.8820931
18-21 months   MAL-ED       BRAZIL                         1                    NA                0.5791769   0.4076098   0.7507440
18-21 months   MAL-ED       BRAZIL                         0                    NA                0.9364328   0.8205607   1.0523049
18-21 months   MAL-ED       NEPAL                          1                    NA                0.7609650   0.6899183   0.8320117
18-21 months   MAL-ED       NEPAL                          0                    NA                0.8199820   0.6962521   0.9437120
18-21 months   MAL-ED       PERU                           1                    NA                0.8417481   0.7423695   0.9411267
18-21 months   MAL-ED       PERU                           0                    NA                0.8624349   0.7077387   1.0171312
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7498349   0.3670314   1.1326384
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5921668   0.4327554   0.7515783
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                0.8145113   0.7788930   0.8501295
18-21 months   NIH-Crypto   BANGLADESH                     0                    NA                0.7733255   0.7369420   0.8097089
18-21 months   PROVIDE      BANGLADESH                     1                    NA                0.9918602   0.8970648   1.0866555
18-21 months   PROVIDE      BANGLADESH                     0                    NA                0.8358851   0.8114814   0.8602888
21-24 months   MAL-ED       BRAZIL                         1                    NA                0.8983674   0.7436325   1.0531022
21-24 months   MAL-ED       BRAZIL                         0                    NA                0.7531683   0.7003097   0.8060269
21-24 months   MAL-ED       NEPAL                          1                    NA                0.7847660   0.7201447   0.8493873
21-24 months   MAL-ED       NEPAL                          0                    NA                0.8369125   0.6887614   0.9850636
21-24 months   MAL-ED       PERU                           1                    NA                0.8262719   0.7180254   0.9345184
21-24 months   MAL-ED       PERU                           0                    NA                0.6894750   0.4927435   0.8862064
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4251889   0.0571077   0.7932702
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7518806   0.6116257   0.8921356
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                0.7981601   0.7545886   0.8417316
21-24 months   NIH-Crypto   BANGLADESH                     0                    NA                0.7957144   0.7569374   0.8344914
21-24 months   PROVIDE      BANGLADESH                     1                    NA                0.6103397   0.4663770   0.7543023
21-24 months   PROVIDE      BANGLADESH                     0                    NA                0.7663363   0.7406060   0.7920667


### Parameter: E(Y)


agecat         studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     MAL-ED       BRAZIL                         NA                   NA                3.8592466   3.7187660   3.9997272
0-3 months     MAL-ED       NEPAL                          NA                   NA                3.5026449   3.3476789   3.6576109
0-3 months     MAL-ED       PERU                           NA                   NA                3.0706650   2.9002220   3.2411079
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.0307591   2.8439041   3.2176140
0-3 months     NIH-Crypto   BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROVIDE      BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
3-6 months     MAL-ED       BRAZIL                         NA                   NA                2.2197131   2.1101066   2.3293196
3-6 months     MAL-ED       NEPAL                          NA                   NA                1.9853011   1.8803268   2.0902754
3-6 months     MAL-ED       PERU                           NA                   NA                2.0060188   1.8634433   2.1485943
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8159811   1.6776334   1.9543288
3-6 months     NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROVIDE      BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
6-9 months     MAL-ED       BRAZIL                         NA                   NA                1.5419552   1.4161616   1.6677488
6-9 months     MAL-ED       NEPAL                          NA                   NA                1.3116074   1.2397407   1.3834741
6-9 months     MAL-ED       PERU                           NA                   NA                1.1939434   1.0843398   1.3035471
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.2629098   0.9955016   1.5303180
6-9 months     NIH-Crypto   BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROVIDE      BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
9-12 months    MAL-ED       BRAZIL                         NA                   NA                1.2896896   1.1901580   1.3892213
9-12 months    MAL-ED       NEPAL                          NA                   NA                1.0747092   1.0020180   1.1474004
9-12 months    MAL-ED       PERU                           NA                   NA                1.1281439   1.0053147   1.2509730
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8117127   0.5485045   1.0749209
9-12 months    NIH-Crypto   BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROVIDE      BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
12-15 months   MAL-ED       BRAZIL                         NA                   NA                1.1769612   1.1045524   1.2493699
12-15 months   MAL-ED       NEPAL                          NA                   NA                1.0278956   0.9678283   1.0879630
12-15 months   MAL-ED       PERU                           NA                   NA                0.8783001   0.7638220   0.9927782
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7956749   0.6519279   0.9394219
12-15 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE      BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
15-18 months   MAL-ED       BRAZIL                         NA                   NA                1.0078031   0.9251335   1.0904728
15-18 months   MAL-ED       NEPAL                          NA                   NA                0.8737133   0.8117853   0.9356414
15-18 months   MAL-ED       PERU                           NA                   NA                0.8383703   0.7329602   0.9437805
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7647144   0.6223905   0.9070384
15-18 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE      BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
18-21 months   MAL-ED       BRAZIL                         NA                   NA                0.9113468   0.8087233   1.0139703
18-21 months   MAL-ED       NEPAL                          NA                   NA                0.7759274   0.7112362   0.8406186
18-21 months   MAL-ED       PERU                           NA                   NA                0.8457955   0.7602887   0.9313023
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6129126   0.4646003   0.7612249
18-21 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE      BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   MAL-ED       BRAZIL                         NA                   NA                0.7722472   0.7221195   0.8223749
21-24 months   MAL-ED       NEPAL                          NA                   NA                0.7915700   0.7335331   0.8496069
21-24 months   MAL-ED       PERU                           NA                   NA                0.7989125   0.7024314   0.8953937
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7040721   0.5679942   0.8401499
21-24 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE      BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BRAZIL                         0                    1                 -0.1749485   -0.4567765    0.1068795
0-3 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          0                    1                 -0.2237113   -0.7806062    0.3331837
0-3 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           0                    1                  0.2165427   -0.0944435    0.5275289
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.5450197   -0.9661999   -0.1238395
0-3 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.0277432   -0.1159794    0.0604930
0-3 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     0                    1                  0.0088224   -0.2036909    0.2213357
3-6 months     MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BRAZIL                         0                    1                  0.4192135   -0.0199040    0.8583311
3-6 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          0                    1                  0.2079176   -0.1042293    0.5200645
3-6 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           0                    1                 -0.0424253   -0.3703218    0.2854712
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.4059284    0.0650868    0.7467700
3-6 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0300545   -0.0612150    0.1213240
3-6 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     0                    1                  0.0916069   -0.1126127    0.2958264
6-9 months     MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BRAZIL                         0                    1                 -0.1148730   -0.3744196    0.1446737
6-9 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          0                    1                 -0.0368576   -0.2442068    0.1704915
6-9 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           0                    1                 -0.1517027   -0.3279627    0.0245573
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0412202   -0.2858603    0.3683008
6-9 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.0683540   -0.1342093   -0.0024987
6-9 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     0                    1                 -0.3355119   -0.5028908   -0.1681330
9-12 months    MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BRAZIL                         0                    1                  0.0388975   -0.2076385    0.2854335
9-12 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          0                    1                 -0.1147887   -0.3669849    0.1374075
9-12 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           0                    1                 -0.3405835   -0.5736789   -0.1074882
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2447702   -0.7182347    0.2286944
9-12 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     0                    1                 -0.0357112   -0.0985525    0.0271301
9-12 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     0                    1                 -0.0212365   -0.1428424    0.1003695
12-15 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BRAZIL                         0                    1                  0.3276361    0.1063989    0.5488732
12-15 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          0                    1                  0.0399611   -0.1441754    0.2240976
12-15 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           0                    1                 -0.0885328   -0.3275550    0.1504895
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.3323631   -0.1643712    0.8290973
12-15 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0145641   -0.0703595    0.0412312
12-15 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     0                    1                 -0.0462345   -0.1370250    0.0445561
15-18 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BRAZIL                         0                    1                  0.1987056    0.0293299    0.3680813
15-18 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          0                    1                 -0.0736688   -0.2334240    0.0860863
15-18 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           0                    1                 -0.3071899   -0.5759910   -0.0383888
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2447524   -0.6535706    0.1640659
15-18 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0084417   -0.0460606    0.0629440
15-18 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     0                    1                 -0.0145755   -0.1079123    0.0787613
18-21 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BRAZIL                         0                    1                  0.3572559    0.1459724    0.5685393
18-21 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          0                    1                  0.0590171   -0.0836705    0.2017047
18-21 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           0                    1                  0.0206868   -0.1631801    0.2045538
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1576681   -0.5723373    0.2570011
18-21 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0411858   -0.0919620    0.0095904
18-21 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     0                    1                 -0.1559750   -0.2538096   -0.0581405
21-24 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BRAZIL                         0                    1                 -0.1451990   -0.3092032    0.0188051
21-24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          0                    1                  0.0521465   -0.1104466    0.2147396
21-24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           0                    1                 -0.1367970   -0.3613422    0.0877483
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.3266917   -0.0672058    0.7205892
21-24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0024457   -0.0608673    0.0559760
21-24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     0                    1                  0.1559967    0.0097675    0.3022258


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     MAL-ED       BRAZIL                         1                    NA                -0.1419922   -0.3882893    0.1043049
0-3 months     MAL-ED       NEPAL                          1                    NA                -0.0359277   -0.1341110    0.0622555
0-3 months     MAL-ED       PERU                           1                    NA                 0.0433085   -0.0239485    0.1105656
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4589640   -0.8193765   -0.0985514
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0128121   -0.0531903    0.0275661
0-3 months     PROVIDE      BANGLADESH                     1                    NA                 0.0083143   -0.1990483    0.2156770
3-6 months     MAL-ED       BRAZIL                         1                    NA                 0.3944486    0.0061513    0.7827460
3-6 months     MAL-ED       NEPAL                          1                    NA                 0.0339309   -0.0200687    0.0879305
3-6 months     MAL-ED       PERU                           1                    NA                -0.0230080   -0.0866467    0.0406308
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3479386    0.0525710    0.6433063
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0070228   -0.0485057    0.0625513
3-6 months     PROVIDE      BANGLADESH                     1                    NA                 0.0861507   -0.1133359    0.2856373
6-9 months     MAL-ED       BRAZIL                         1                    NA                -0.1154021   -0.3428910    0.1120868
6-9 months     MAL-ED       NEPAL                          1                    NA                -0.0083030   -0.0395836    0.0229776
6-9 months     MAL-ED       PERU                           1                    NA                -0.0014953   -0.0372648    0.0342743
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0351880   -0.2440636    0.3144396
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0135123   -0.0491476    0.0221231
6-9 months     PROVIDE      BANGLADESH                     1                    NA                -0.3326899   -0.4964606   -0.1689191
9-12 months    MAL-ED       BRAZIL                         1                    NA                 0.0279119   -0.1889426    0.2447664
9-12 months    MAL-ED       NEPAL                          1                    NA                -0.0228862   -0.0630600    0.0172877
9-12 months    MAL-ED       PERU                           1                    NA                -0.0521208   -0.1044961    0.0002545
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2098030   -0.6164757    0.1968697
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0154449   -0.0503883    0.0194985
9-12 months    PROVIDE      BANGLADESH                     1                    NA                -0.0250422   -0.1435963    0.0935120
12-15 months   MAL-ED       BRAZIL                         1                    NA                 0.2932119    0.0931831    0.4932406
12-15 months   MAL-ED       NEPAL                          1                    NA                 0.0067832   -0.0223038    0.0358703
12-15 months   MAL-ED       PERU                           1                    NA                -0.0089684   -0.0584200    0.0404832
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2848826   -0.1423753    0.7121405
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0004502   -0.0303399    0.0294395
12-15 months   PROVIDE      BANGLADESH                     1                    NA                -0.0459699   -0.1343723    0.0424325
15-18 months   MAL-ED       BRAZIL                         1                    NA                 0.1723048    0.0217041    0.3229055
15-18 months   MAL-ED       NEPAL                          1                    NA                -0.0143600   -0.0388747    0.0101546
15-18 months   MAL-ED       PERU                           1                    NA                -0.0196236   -0.0767770    0.0375297
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2141583   -0.5727752    0.1444586
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0041207   -0.0263674    0.0346089
15-18 months   PROVIDE      BANGLADESH                     1                    NA                -0.0159741   -0.1070414    0.0750931
18-21 months   MAL-ED       BRAZIL                         1                    NA                 0.3321699    0.1416402    0.5226996
18-21 months   MAL-ED       NEPAL                          1                    NA                 0.0149624   -0.0186204    0.0485452
18-21 months   MAL-ED       PERU                           1                    NA                 0.0040474   -0.0320064    0.0401012
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1369223   -0.4974390    0.2235944
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0167357   -0.0453515    0.0118800
18-21 months   PROVIDE      BANGLADESH                     1                    NA                -0.1525225   -0.2479955   -0.0570494
21-24 months   MAL-ED       BRAZIL                         1                    NA                -0.1261202   -0.2711304    0.0188901
21-24 months   MAL-ED       NEPAL                          1                    NA                 0.0068040   -0.0211375    0.0347454
21-24 months   MAL-ED       PERU                           1                    NA                -0.0273594   -0.0750902    0.0203714
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2788832   -0.0592694    0.6170358
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0011753   -0.0337525    0.0361030
21-24 months   PROVIDE      BANGLADESH                     1                    NA                 0.1527994    0.0101421    0.2954566
