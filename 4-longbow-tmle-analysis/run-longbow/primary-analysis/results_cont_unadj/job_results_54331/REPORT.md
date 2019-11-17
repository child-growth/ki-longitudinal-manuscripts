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
![](/tmp/38df4048-b26d-49af-8b7c-773cc295fe0b/6a1c1f24-852a-4af6-9b00-d5ea35577077/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/38df4048-b26d-49af-8b7c-773cc295fe0b/6a1c1f24-852a-4af6-9b00-d5ea35577077/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/38df4048-b26d-49af-8b7c-773cc295fe0b/6a1c1f24-852a-4af6-9b00-d5ea35577077/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.2703280    0.1406068    0.4000492
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.1534405    0.0688958    0.2379851
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0299729   -0.0483735    0.1083192
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.1377199   -0.3574089    0.0819692
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.2775269   -0.3807449   -0.1743088
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.1825068   -0.2881511   -0.0768626
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0521782   -0.2154773    0.1111208
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.2818987   -0.3925793   -0.1712181
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.2456990   -0.3499994   -0.1413986
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.1867507   -0.2043522   -0.1691492
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.2045525   -0.2293944   -0.1797106
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.2649182   -0.2882487   -0.2415877
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0084511   -0.1798343    0.1967364
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.1055408    0.0555535    0.1555281
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0272718   -0.0789435    0.0243998
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0816088   -0.0571807    0.2203982
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0185808   -0.0628798    0.1000414
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                 0.0181999   -0.0741782    0.1105781
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2457527   -0.3985192   -0.0929862
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0410643   -0.1081175    0.0259890
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1456721   -0.2292668   -0.0620773
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0241167   -0.0402124   -0.0080211
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0039791   -0.0180169    0.0259752
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0545940    0.0289837    0.0802043
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0522410   -0.0496252    0.1541071
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.0303046   -0.0298461    0.0904554
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0526312   -0.0877364   -0.0175259
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0590052   -0.1238753    0.0058650
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0833413   -0.1434503   -0.0232322
6-9 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.1023565   -0.1409183   -0.0637946
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0776357   -0.1299187   -0.0253527
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0587924   -0.1887795    0.0711948
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0055374   -0.0701146    0.0590398
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0628464   -0.0738172   -0.0518757
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0109617   -0.0291610    0.0072376
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0556643   -0.0729112   -0.0384174
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0179207   -0.1114137    0.0755723
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.0039864   -0.0410044    0.0489772
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0602252   -0.0913015   -0.0291488
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.1052713   -0.1893668   -0.0211758
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0025339   -0.0627421    0.0576743
9-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                -0.1137265   -0.1766519   -0.0508010
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0643073   -0.2234610    0.0948463
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1651919   -0.2902566   -0.0401272
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1166237   -0.1647064   -0.0685410
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0616882   -0.0728498   -0.0505266
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0329074   -0.0485009   -0.0173140
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0359243   -0.0511171   -0.0207315
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0765848   -0.1454199   -0.0077497
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.0203866   -0.0093226    0.0500958
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0319887   -0.0573041   -0.0066734
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0051897   -0.0687407    0.0583612
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0638092   -0.1172291   -0.0103892
12-15 months   ki0047075b-MAL-ED       PERU                           0                    NA                -0.0811106   -0.1510525   -0.0111686
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2075770   -0.4055752   -0.0095788
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0702827   -0.1255483   -0.0150171
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0332692   -0.0678514    0.0013130
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0411173   -0.0514419   -0.0307927
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0354064   -0.0486570   -0.0221557
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0416946   -0.0552340   -0.0281551
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0752097   -0.1257491   -0.0246703
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                -0.0120252   -0.0446097    0.0205593
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0413742   -0.0663897   -0.0163588
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0604994   -0.1093045   -0.0116942
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0257850   -0.0713072    0.0197371
15-18 months   ki0047075b-MAL-ED       PERU                           0                    NA                -0.0794479   -0.1515985   -0.0072972
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0175680   -0.1090802    0.1442163
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0633099   -0.1177238   -0.0088961
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0595159   -0.0919103   -0.0271215
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0371351   -0.0460604   -0.0282097
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0195101   -0.0310765   -0.0079437
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0142699   -0.0263097   -0.0022301
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0719253   -0.1178969   -0.0259536
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                -0.0168729   -0.0571146    0.0233688
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0529495   -0.0760167   -0.0298823
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0042046   -0.0550810    0.0466719
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0049563   -0.0399845    0.0300720
18-21 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0060811   -0.0449992    0.0571615
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0279937   -0.1658200    0.1098325
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0773440   -0.1314138   -0.0232741
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0441247    0.0115821    0.0766674
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0121890   -0.0204840   -0.0038940
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0255272   -0.0368038   -0.0142505
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0302882   -0.0417105   -0.0188660
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0707503    0.0253017    0.1161990
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                -0.0008549   -0.0214410    0.0197311
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0033044   -0.0180563    0.0246651
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0210193   -0.0237448    0.0657833
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0773191    0.0425925    0.1120457
21-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0402277   -0.0281677    0.1086232
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0994837   -0.1973677   -0.0015996
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0139199   -0.0339523    0.0617922
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0005745   -0.0506709    0.0495219
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                 0.0473536    0.0386041    0.0561030
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0521521    0.0397724    0.0645319
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0643743    0.0534137    0.0753349


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.1691205    0.0933788    0.2448622
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0005167   -0.0779898    0.0769564
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                -0.2585229   -0.3444943   -0.1725514
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.2456271   -0.3460284   -0.1452257
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
3-6 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.0932868    0.0431702    0.1434034
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0086825   -0.0584538    0.0410888
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                 0.0185031   -0.0490183    0.0860244
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0703055   -0.1355760   -0.0050350
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
6-9 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.0330733   -0.0210538    0.0872004
6-9 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0537194   -0.0848710   -0.0225678
6-9 months     ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0872219   -0.1357552   -0.0386886
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0615499   -0.1727971    0.0496973
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
9-12 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.0012215   -0.0398479    0.0422909
9-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0679160   -0.0976463   -0.0381856
9-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0252263   -0.0764321    0.0259796
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1507799   -0.2608943   -0.0406655
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
12-15 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.0081475   -0.0199315    0.0362265
12-15 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0274684   -0.0511861   -0.0037507
12-15 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0674136   -0.1121894   -0.0226379
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0898961   -0.1469951   -0.0327972
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
15-18 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                -0.0199999   -0.0494604    0.0094605
15-18 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0444437   -0.0669103   -0.0219771
15-18 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0369648   -0.0765062    0.0025766
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0532002   -0.1040727   -0.0023277
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
18-21 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                -0.0238213   -0.0596356    0.0119930
18-21 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0451263   -0.0665050   -0.0237475
18-21 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0027968   -0.0327190    0.0271255
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0708505   -0.1214725   -0.0202285
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
21-24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.0081826   -0.0112535    0.0276187
21-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.0062925   -0.0130572    0.0256421
21-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.0699008    0.0386257    0.1011760
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0026757   -0.0477263    0.0423749
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.1168875   -0.2717274    0.0379524
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1676927   -0.4009339    0.0655484
0-3 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0                    1                  0.0950200   -0.0526779    0.2427179
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2297205   -0.4269939   -0.0324471
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0589483   -0.0468269    0.1647235
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0603657   -0.0944454   -0.0262859
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0970898   -0.0977181    0.2918977
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    1                  0.1088806   -0.0392155    0.2569768
3-6 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0003809   -0.1235456    0.1227839
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2046884    0.0378539    0.3715229
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.1215554    0.0364251    0.2066856
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0506149    0.0168552    0.0843745
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.0219363   -0.1402360    0.0963634
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0063740   -0.0801338    0.0673858
6-9 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0190152   -0.0904303    0.0523999
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0188434   -0.1212643    0.1589510
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0573091   -0.1228115    0.0081934
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0447026   -0.0697759   -0.0196293
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0219071   -0.0818480    0.1256622
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0450461   -0.1346999    0.0446076
9-12 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           0                    1                 -0.1111926   -0.1982824   -0.0241028
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1008846   -0.3032977    0.1015285
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0549355    0.0055743    0.1042967
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0030169   -0.0247879    0.0187542
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0969714    0.0219987    0.1719441
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0267990   -0.0416085    0.0952065
12-15 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0173014   -0.1053103    0.0707075
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1372943   -0.0682722    0.3428608
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0078481   -0.0439386    0.0282425
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0062882   -0.0252327    0.0126563
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0631845    0.0030514    0.1233176
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0191251   -0.0739678    0.0357175
15-18 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0536628   -0.1389739    0.0316483
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0808780   -0.2187208    0.0569649
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0223809   -0.0112206    0.0559823
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0052402   -0.0114552    0.0219356
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0550523   -0.0060442    0.1161489
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0487450   -0.0071165    0.1046065
18-21 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           0                    1                  0.0110374   -0.0508995    0.0729743
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0493502   -0.1974030    0.0987025
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0563137   -0.0898969   -0.0227305
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0047611   -0.0208120    0.0112898
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.0716052   -0.1214988   -0.0217117
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0177149   -0.0318845    0.0673143
21-24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0370914   -0.1137978    0.0396150
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1134036    0.0044402    0.2223670
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0479281   -0.0029266    0.0987827
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0122222   -0.0043124    0.0287568


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.1012075   -0.2355565    0.0331416
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0304896   -0.0762715    0.0152923
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0190040   -0.0125984    0.0506064
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1934488   -0.3617521   -0.0251456
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0576588   -0.0454742    0.1607918
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0267082   -0.0419447   -0.0114717
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0848357   -0.0854997    0.2551712
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0185894   -0.0082233    0.0454020
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0000777   -0.0252134    0.0250580
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1754472    0.0307753    0.3201191
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.1187096    0.0356945    0.2017246
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0227949    0.0074759    0.0381139
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0191677   -0.1225460    0.0842107
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0010882   -0.0136922    0.0115157
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0038807   -0.0186155    0.0108542
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0160858   -0.1035361    0.1357077
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0558890   -0.1197582    0.0079801
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0204021   -0.0319659   -0.0088382
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0191421   -0.0715286    0.1098129
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0076908   -0.0234363    0.0080547
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0226924   -0.0445240   -0.0008608
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0864725   -0.2603056    0.0873606
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0535767    0.0054444    0.1017090
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0013921   -0.0114384    0.0086543
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0847323    0.0189248    0.1505398
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0045203   -0.0072210    0.0162616
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0036045   -0.0220494    0.0148404
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1176809   -0.0591316    0.2944933
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0076415   -0.0427825    0.0274994
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0029250   -0.0117403    0.0058904
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0552098    0.0025088    0.1079108
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0030695   -0.0120048    0.0058659
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0111798   -0.0300133    0.0076538
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0707682   -0.1916725    0.0501360
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0218722   -0.0108905    0.0546349
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0026027   -0.0056923    0.0108978
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0481040   -0.0053991    0.1016071
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0078233   -0.0019620    0.0176085
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0021595   -0.0100259    0.0143449
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0428568   -0.1715413    0.0858277
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0550646   -0.0878157   -0.0223135
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0024416   -0.0106752    0.0057921
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0625677   -0.1064076   -0.0187278
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0029881   -0.0055004    0.0114765
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0074183   -0.0233736    0.0085371
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0968080    0.0029647    0.1906512
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0468087   -0.0027789    0.0963964
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0066100   -0.0023485    0.0155684
