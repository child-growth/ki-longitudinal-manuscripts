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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        trth2o    n_cell     n
-------------  -------------------------  -----------------------------  -------  -------  ----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1            132   134
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   134
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1             11    82
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             71    82
0-3 months     ki0047075b-MAL-ED          INDIA                          1              2     5
0-3 months     ki0047075b-MAL-ED          INDIA                          0              3     5
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             45    55
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             10    55
0-3 months     ki0047075b-MAL-ED          PERU                           1             36    45
0-3 months     ki0047075b-MAL-ED          PERU                           0              9    45
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              1     9
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              8     9
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    38
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             32    38
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             25    25
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0    25
0-3 months     ki1000108-IRC              INDIA                          1            118   118
0-3 months     ki1000108-IRC              INDIA                          0              0   118
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            626   640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            402   721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            319   721
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1              1     4
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0              3     4
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            130   132
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   132
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1             13   103
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             90   103
3-6 months     ki0047075b-MAL-ED          INDIA                          1              3     7
3-6 months     ki0047075b-MAL-ED          INDIA                          0              4     7
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             68    82
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             14    82
3-6 months     ki0047075b-MAL-ED          PERU                           1             39    49
3-6 months     ki0047075b-MAL-ED          PERU                           0             10    49
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            101   101
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0   101
3-6 months     ki1000108-IRC              INDIA                          1            119   119
3-6 months     ki1000108-IRC              INDIA                          0              0   119
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            584   598
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            382   695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            313   695
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              1     4
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              3     4
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1            128   130
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   130
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1             13   103
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0             90   103
6-9 months     ki0047075b-MAL-ED          INDIA                          1              3     8
6-9 months     ki0047075b-MAL-ED          INDIA                          0              5     8
6-9 months     ki0047075b-MAL-ED          NEPAL                          1             68    82
6-9 months     ki0047075b-MAL-ED          NEPAL                          0             14    82
6-9 months     ki0047075b-MAL-ED          PERU                           1             39    49
6-9 months     ki0047075b-MAL-ED          PERU                           0             10    49
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            104   104
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0   104
6-9 months     ki1000108-IRC              INDIA                          1            121   121
6-9 months     ki1000108-IRC              INDIA                          0              0   121
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0            551   565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            374   688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            314   688
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1              0     2
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0              2     2
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            129   131
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   131
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103
9-12 months    ki0047075b-MAL-ED          INDIA                          1              4     9
9-12 months    ki0047075b-MAL-ED          INDIA                          0              5     9
9-12 months    ki0047075b-MAL-ED          NEPAL                          1             68    82
9-12 months    ki0047075b-MAL-ED          NEPAL                          0             14    82
9-12 months    ki0047075b-MAL-ED          PERU                           1             39    49
9-12 months    ki0047075b-MAL-ED          PERU                           0             10    49
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            101   101
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   101
9-12 months    ki1000108-IRC              INDIA                          1            119   119
9-12 months    ki1000108-IRC              INDIA                          0              0   119
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             14   566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            552   566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            363   674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            311   674
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1              0     2
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0              2     2
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1            127   129
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   129
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
12-15 months   ki0047075b-MAL-ED          INDIA                          1              4     9
12-15 months   ki0047075b-MAL-ED          INDIA                          0              5     9
12-15 months   ki0047075b-MAL-ED          NEPAL                          1             69    83
12-15 months   ki0047075b-MAL-ED          NEPAL                          0             14    83
12-15 months   ki0047075b-MAL-ED          PERU                           1             38    48
12-15 months   ki0047075b-MAL-ED          PERU                           0             10    48
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    10
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              8    10
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            105   105
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   105
12-15 months   ki1000108-IRC              INDIA                          1            115   115
12-15 months   ki1000108-IRC              INDIA                          0              0   115
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0            518   532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            353   660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            307   660
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1            129   131
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   131
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
15-18 months   ki0047075b-MAL-ED          INDIA                          1              3     8
15-18 months   ki0047075b-MAL-ED          INDIA                          0              5     8
15-18 months   ki0047075b-MAL-ED          NEPAL                          1             68    81
15-18 months   ki0047075b-MAL-ED          NEPAL                          0             13    81
15-18 months   ki0047075b-MAL-ED          PERU                           1             38    48
15-18 months   ki0047075b-MAL-ED          PERU                           0             10    48
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    10
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              8    10
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              5    40
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    40
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            101   101
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   101
15-18 months   ki1000108-IRC              INDIA                          1            112   112
15-18 months   ki1000108-IRC              INDIA                          0              0   112
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1             12   528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0            516   528
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            304   604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            300   604
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1            130   132
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   132
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
18-21 months   ki0047075b-MAL-ED          INDIA                          1              3     8
18-21 months   ki0047075b-MAL-ED          INDIA                          0              5     8
18-21 months   ki0047075b-MAL-ED          NEPAL                          1             68    81
18-21 months   ki0047075b-MAL-ED          NEPAL                          0             13    81
18-21 months   ki0047075b-MAL-ED          PERU                           1             37    46
18-21 months   ki0047075b-MAL-ED          PERU                           0              9    46
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              5    38
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             33    38
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             94    94
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0    94
18-21 months   ki1000108-IRC              INDIA                          1            113   113
18-21 months   ki1000108-IRC              INDIA                          0              0   113
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1             12   541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0            529   541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            266   546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            280   546
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1              0     3
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0              3     3
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            129   131
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   131
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
21-24 months   ki0047075b-MAL-ED          INDIA                          1              4     9
21-24 months   ki0047075b-MAL-ED          INDIA                          0              5     9
21-24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83
21-24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83
21-24 months   ki0047075b-MAL-ED          PERU                           1             36    45
21-24 months   ki0047075b-MAL-ED          PERU                           0              9    45
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             93    93
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0    93
21-24 months   ki1000108-IRC              INDIA                          1            116   116
21-24 months   ki1000108-IRC              INDIA                          0              0   116
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             11   471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            460   471
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            225   490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            265   490
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1              0     3
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     3


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/a4272c08-1e14-4429-8f96-c4e33934a262/e03de33d-74df-4685-b4ab-2cb227e989f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a4272c08-1e14-4429-8f96-c4e33934a262/e03de33d-74df-4685-b4ab-2cb227e989f3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a4272c08-1e14-4429-8f96-c4e33934a262/e03de33d-74df-4685-b4ab-2cb227e989f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                4.0693006   3.8500599   4.2885413
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                3.8267030   3.6694220   3.9839840
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                3.5461154   3.3899160   3.7023149
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                3.3070274   2.8443464   3.7697084
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                3.0273565   2.8251714   3.2295415
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                3.2438992   3.0076078   3.4801905
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4897230   3.1171369   3.8623092
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                2.9447033   2.7483050   3.1411017
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                3.2297251   3.0416641   3.4177860
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                3.2583062   3.2206632   3.2959493
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                3.1845792   3.1324408   3.2367176
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                3.0595132   3.0110960   3.1079303
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                2.0298802   1.6110471   2.4487134
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                2.2471334   2.1384226   2.3558442
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.9448105   1.8354455   2.0541755
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                2.1819697   1.8940305   2.4699088
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                2.0066900   1.8345203   2.1788597
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                2.0034011   1.8105150   2.1962872
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4680425   1.1592662   1.7768187
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8739708   1.7296439   2.0182977
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.7408717   1.5523521   1.9293914
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.9711365   1.9368454   2.0054277
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.9608276   1.9133116   2.0083436
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                2.0606804   2.0049186   2.1164422
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                1.5738760   1.3371394   1.8106127
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                1.5373444   1.3975267   1.6771621
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.3167701   1.2358588   1.3976814
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                1.2865314   1.1364401   1.4366227
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                1.2022743   1.0669043   1.3376443
6-9 months     ki0047075b-MAL-ED       PERU                           0                    NA                1.1614531   1.0656045   1.2573018
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2277218   1.1320488   1.3233948
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2689420   0.9561668   1.5817173
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.4111844   1.2541683   1.5682005
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.2791468   1.2536381   1.3046554
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.3721228   1.3299285   1.4143171
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.2760366   1.2363655   1.3157076
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                1.2255906   1.0158686   1.4353127
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                1.2989484   1.1892753   1.4086215
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                1.0981549   1.0216646   1.1746451
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                0.9608302   0.7635996   1.1580608
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                1.1833849   1.0397957   1.3269740
9-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                0.9127039   0.7521636   1.0732442
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0215157   0.6547108   1.3883206
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7767455   0.4773748   1.0761163
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.9178785   0.7930082   1.0427488
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.0533253   1.0259156   1.0807350
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.1257802   1.0882907   1.1632697
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.1207832   1.0844414   1.1571250
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.9319883   0.7608474   1.1031293
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                1.2123461   1.1360022   1.2886900
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                1.0217910   0.9566334   1.0869485
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                1.0579828   0.9050526   1.2109131
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8915342   0.7550702   1.0279983
12-15 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.8280106   0.6497316   1.0062897
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5107923   0.0347245   0.9868601
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8431553   0.7013656   0.9849451
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.9675301   0.8864336   1.0486266
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.9595398   0.9327624   0.9863172
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.9767010   0.9427103   1.0106917
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.9647446   0.9292606   1.0002285
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.8176856   0.6938471   0.9415240
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                1.0352646   0.9437567   1.1267725
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.8875022   0.8186622   0.9563423
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.8015868   0.6697869   0.9333867
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8703982   0.7485706   0.9922258
15-18 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.7166642   0.5313376   0.9019908
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9788727   0.5987851   1.3589604
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7341204   0.5835689   0.8846718
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.7994979   0.7120290   0.8869669
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8574161   0.8328269   0.8820054
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.9102477   0.8780058   0.9424896
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.9252854   0.8926313   0.9579395
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.7219488   0.5861716   0.8577259
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                0.9387043   0.8240154   1.0533932
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.7589911   0.6893218   0.8286603
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.8645174   0.7006013   1.0284335
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8417481   0.7423695   0.9411267
18-21 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.8624349   0.7077387   1.0171312
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7498349   0.3670314   1.1326384
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5921668   0.4327554   0.7515783
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.9937605   0.9002744   1.0872467
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8358347   0.8114303   0.8602392
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.8032010   0.7705947   0.8358072
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.7926214   0.7592865   0.8259563
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.8998253   0.7593098   1.0403408
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                0.7538192   0.7012530   0.8063854
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.7850236   0.7214698   0.8485773
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.8238343   0.6826684   0.9650003
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8262719   0.7180254   0.9345184
21-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.6894750   0.4927435   0.8862064
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4251889   0.0571077   0.7932702
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7518806   0.6116257   0.8921356
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.6307595   0.4888000   0.7727191
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.7663046   0.7405853   0.7920240
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.7987679   0.7613972   0.8361386
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.7998171   0.7673987   0.8322356


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                3.8592466   3.7187660   3.9997272
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                3.5026449   3.3476789   3.6576109
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                3.0706650   2.9002220   3.2411079
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.0307591   2.8439041   3.2176140
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
3-6 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                2.2197131   2.1101066   2.3293196
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.9853011   1.8803268   2.0902754
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                2.0060188   1.8634433   2.1485943
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8159811   1.6776334   1.9543288
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
6-9 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                1.5419552   1.4161616   1.6677488
6-9 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.3116074   1.2397407   1.3834741
6-9 months     ki0047075b-MAL-ED       PERU                           NA                   NA                1.1939434   1.0843398   1.3035471
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.2629098   0.9955016   1.5303180
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
9-12 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                1.2896896   1.1901580   1.3892213
9-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.0747092   1.0020180   1.1474004
9-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                1.1281439   1.0053147   1.2509730
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8117127   0.5485045   1.0749209
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
12-15 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                1.1769612   1.1045524   1.2493699
12-15 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.0278956   0.9678283   1.0879630
12-15 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8783001   0.7638220   0.9927782
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7956749   0.6519279   0.9394219
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
15-18 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                1.0078031   0.9251335   1.0904728
15-18 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8737133   0.8117853   0.9356414
15-18 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8383703   0.7329602   0.9437805
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7647144   0.6223905   0.9070384
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
18-21 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                0.9113468   0.8087233   1.0139703
18-21 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.7759274   0.7112362   0.8406186
18-21 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8457955   0.7602887   0.9313023
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6129126   0.4646003   0.7612249
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
21-24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                0.7722472   0.7221195   0.8223749
21-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.7915700   0.7335331   0.8496069
21-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.7989125   0.7024314   0.8953937
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7040721   0.5679942   0.8401499
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.2425976   -0.5124194    0.0272242
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.2390880   -0.7274239    0.2492479
0-3 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0                    1                  0.2165427   -0.0944435    0.5275289
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.5450197   -0.9661999   -0.1238395
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0285811   -0.1632102    0.2203725
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.1250661   -0.1962182   -0.0539139
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.2172532   -0.2154583    0.6499647
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    1                  0.2371592   -0.0708500    0.5451684
3-6 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0032889   -0.2618377    0.2552599
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.4059284    0.0650868    0.7467700
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.2302648    0.0386518    0.4218778
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0998528    0.0265920    0.1731136
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.0365316   -0.3114739    0.2384106
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0302387   -0.2007498    0.1402724
6-9 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0408212   -0.2066886    0.1250463
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0412202   -0.2858603    0.3683008
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.1320376   -0.2911123    0.0270371
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0960863   -0.1540013   -0.0381712
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0733577   -0.1633098    0.3100253
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1373247   -0.3488682    0.0742189
9-12 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           0                    1                 -0.2706810   -0.4860668   -0.0552952
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2447702   -0.7182347    0.2286944
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.1354468    0.0076036    0.2632900
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0049970   -0.0572099    0.0472159
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.2803578    0.0929608    0.4677548
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0361919   -0.1300404    0.2024241
12-15 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0635236   -0.2880361    0.1609889
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.3323631   -0.1643712    0.8290973
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0079903   -0.0933933    0.0774127
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0119565   -0.0610938    0.0371809
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.2175790    0.0635996    0.3715584
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0859154   -0.2346103    0.0627794
15-18 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.1537340   -0.3755175    0.0680495
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2447524   -0.6535706    0.1640659
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0579182   -0.0329413    0.1487777
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0150377   -0.0308516    0.0609271
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.2167555    0.0390226    0.3944884
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.1055263   -0.0725812    0.2836339
18-21 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           0                    1                  0.0206868   -0.1631801    0.2045538
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1576681   -0.5723373    0.2570011
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.1579258   -0.2545449   -0.0613068
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0105796   -0.0572099    0.0360507
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.1460061   -0.2960321    0.0040200
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0388107   -0.1160017    0.1936232
21-24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.1367970   -0.3613422    0.0877483
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.3266917   -0.0672058    0.7205892
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.1355451   -0.0087255    0.2798157
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0010492   -0.0484233    0.0505217


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.2100540   -0.4443730    0.0242650
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0434706   -0.1356025    0.0486614
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0433085   -0.0239485    0.1105656
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4589640   -0.8193765   -0.0985514
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0279559   -0.1590409    0.2149528
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0553344   -0.0871403   -0.0235284
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.1898329   -0.1885237    0.5681894
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0404906   -0.0155723    0.0965535
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0006712   -0.0534376    0.0520952
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3479386    0.0525710    0.6433063
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.2248740    0.0380305    0.4117176
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0449697    0.0117696    0.0781698
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0319209   -0.2721732    0.2083315
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0051627   -0.0343796    0.0240542
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0083309   -0.0424998    0.0258381
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0351880   -0.2440636    0.3144396
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1287659   -0.2838729    0.0263412
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0438533   -0.0705267   -0.0171800
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0640990   -0.1427519    0.2709499
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0234457   -0.0612752    0.0143839
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0552410   -0.1089496   -0.0015325
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2098030   -0.6164757    0.1968697
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.1320965    0.0074373    0.2567557
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0023058   -0.0263988    0.0217873
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.2449728    0.0802340    0.4097116
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0061047   -0.0220875    0.0342969
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0132341   -0.0605854    0.0341173
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2848826   -0.1423753    0.7121405
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0077801   -0.0909357    0.0753756
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0055616   -0.0284224    0.0172993
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.1901176    0.0548437    0.3253914
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0137889   -0.0386339    0.0110561
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0320279   -0.0815606    0.0175048
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2141583   -0.5727752    0.1444586
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0566019   -0.0319892    0.1451930
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0074691   -0.0153315    0.0302697
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.1893980    0.0334704    0.3453256
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0169363   -0.0128824    0.0467551
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0040474   -0.0320064    0.0401012
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1369223   -0.4974390    0.2235944
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1544229   -0.2486469   -0.0601988
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0054254   -0.0293425    0.0184917
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.1275781   -0.2590061    0.0038499
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0065464   -0.0197553    0.0328481
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0273594   -0.0750902    0.0203714
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2788832   -0.0592694    0.6170358
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.1323795   -0.0082965    0.2730555
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0005674   -0.0261881    0.0273230
