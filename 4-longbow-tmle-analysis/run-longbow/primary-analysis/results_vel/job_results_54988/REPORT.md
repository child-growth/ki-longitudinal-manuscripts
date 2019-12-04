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

agecat         studyid                    country                        trth2o    n_cell     n  outcome_variable 
-------------  -------------------------  -----------------------------  -------  -------  ----  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1            132   134  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   134  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1             11    82  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             71    82  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          1              2     5  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          0              3     5  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             45    55  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             10    55  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           1             36    45  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           0              9    45  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              1     9  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              8     9  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    38  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             32    38  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             25    25  y_rate_len       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0    25  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          1            118   118  y_rate_len       
0-3 months     ki1000108-IRC              INDIA                          0              0   118  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            626   640  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            402   721  y_rate_len       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            319   721  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1              1     4  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0              3     4  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            130   132  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   132  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          1              3     7  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          0              4     7  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             68    82  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             14    82  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           1             39    49  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           0             10    49  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            101   101  y_rate_len       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0   101  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          1            119   119  y_rate_len       
3-6 months     ki1000108-IRC              INDIA                          0              0   119  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            584   598  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            382   695  y_rate_len       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            313   695  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              1     4  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              3     4  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1            128   130  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   130  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          1              3     8  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          0              5     8  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1             68    82  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0             14    82  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           1             39    49  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           0             10    49  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            104   104  y_rate_len       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0   104  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          1            121   121  y_rate_len       
6-9 months     ki1000108-IRC              INDIA                          0              0   121  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0            551   565  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            374   688  y_rate_len       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            314   688  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1              0     2  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0              2     2  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            129   131  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   131  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          1              4     9  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          0              5     9  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1             68    82  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0             14    82  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           1             39    49  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           0             10    49  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            101   101  y_rate_len       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   101  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          1            119   119  y_rate_len       
9-12 months    ki1000108-IRC              INDIA                          0              0   119  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             14   566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            552   566  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            363   674  y_rate_len       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            311   674  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1              0     2  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0              2     2  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1            127   129  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   129  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          1              4     9  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          0              5     9  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1             69    83  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0             14    83  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           1             38    48  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           0             10    48  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    10  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              8    10  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            105   105  y_rate_len       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   105  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          1            115   115  y_rate_len       
12-15 months   ki1000108-IRC              INDIA                          0              0   115  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0            518   532  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            353   660  y_rate_len       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            307   660  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1            129   131  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   131  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          1              3     8  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          0              5     8  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1             68    81  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0             13    81  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           1             38    48  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           0             10    48  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    10  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              8    10  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              5    40  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    40  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            101   101  y_rate_len       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   101  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          1            112   112  y_rate_len       
15-18 months   ki1000108-IRC              INDIA                          0              0   112  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1             12   528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0            516   528  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            304   604  y_rate_len       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            300   604  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1            130   132  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   132  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          1              3     8  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          0              5     8  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1             68    81  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0             13    81  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           1             37    46  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           0              9    46  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              5    38  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             33    38  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             94    94  y_rate_len       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0    94  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          1            113   113  y_rate_len       
18-21 months   ki1000108-IRC              INDIA                          0              0   113  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1             12   541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0            529   541  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            266   546  y_rate_len       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            280   546  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1              0     3  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0              3     3  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            129   131  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   131  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          1              4     9  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          0              5     9  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           1             36    45  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           0              9    45  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             93    93  y_rate_len       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0    93  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          1            116   116  y_rate_len       
21-24 months   ki1000108-IRC              INDIA                          0              0   116  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             11   471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            460   471  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            225   490  y_rate_len       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            265   490  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1              0     3  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     3  y_rate_len       


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




# Results Detail

## Results Plots
![](/tmp/1376e7bf-9b53-4b9f-9f96-2a8e94ebd3f9/cca79e94-fa53-4304-90de-5e5a42cb6a57/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1376e7bf-9b53-4b9f-9f96-2a8e94ebd3f9/cca79e94-fa53-4304-90de-5e5a42cb6a57/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1376e7bf-9b53-4b9f-9f96-2a8e94ebd3f9/cca79e94-fa53-4304-90de-5e5a42cb6a57/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                4.0293184   3.7945765   4.2640602
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                3.8261875   3.6683757   3.9839993
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                3.5552814   3.3941364   3.7164265
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                3.2668346   2.6081564   3.9255127
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                3.0273565   2.8251714   3.2295415
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                3.2438992   3.0076078   3.4801905
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4897230   3.1171369   3.8623092
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                2.9447033   2.7483050   3.1411017
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                3.2166441   3.0240998   3.4091885
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                3.2584223   3.2207886   3.2960560
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                3.1854191   3.1324198   3.2384184
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                3.0684139   3.0177845   3.1190432
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                2.1404710   1.6759812   2.6049607
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                2.2521094   2.1434144   2.3608044
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.9577375   1.8477642   2.0677109
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                2.2557764   1.9779052   2.5336476
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                2.0109912   1.8377829   2.1841994
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                2.0831419   1.8709579   2.2953260
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4680425   1.1592662   1.7768187
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8739708   1.7296439   2.0182977
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.9526483   1.7499089   2.1553877
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.9712879   1.9369790   2.0055968
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.9685295   1.9194267   2.0176322
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                2.0577736   2.0016179   2.1139293
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                1.6341600   1.3903274   1.8779926
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                1.5387303   1.3989305   1.6785302
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.3179306   1.2362045   1.3996568
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                1.2737468   1.1107048   1.4367889
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                1.2000876   1.0631434   1.3370318
6-9 months     ki0047075b-MAL-ED       PERU                           0                    NA                1.1472026   1.0120541   1.2823512
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2277218   1.1320488   1.3233948
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2689420   0.9561668   1.5817173
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.2904727   1.1269703   1.4539752
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.2791525   1.2536198   1.3046852
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.3651746   1.3218029   1.4085464
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.2705820   1.2299803   1.3111838
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                1.2344387   1.0302610   1.4386165
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                1.2990549   1.1898579   1.4082519
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                1.0968017   1.0200374   1.1735660
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                0.9811398   0.7452983   1.2169814
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                1.1847259   1.0397783   1.3296735
9-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                0.9598249   0.7902954   1.1293543
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0215157   0.6547108   1.3883206
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7767455   0.4773748   1.0761163
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.3047623   1.1655263   1.4439984
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.0538465   1.0264199   1.0812731
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.1241210   1.0859686   1.1622734
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.1192958   1.0821261   1.1564655
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.9342312   0.7567476   1.1117149
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                1.2130384   1.1358676   1.2902092
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                1.0206851   0.9552124   1.0861577
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                1.0627935   0.9039631   1.2216239
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8745209   0.7367968   1.0122450
12-15 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.6482838   0.4408602   0.8557074
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5107923   0.0347245   0.9868601
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8431553   0.7013656   0.9849451
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.9489657   0.8575514   1.0403800
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.9594308   0.9326498   0.9862119
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.9782976   0.9440138   1.0125814
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.9645395   0.9285288   1.0005502
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.8165543   0.6787146   0.9543939
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                1.0382626   0.9465871   1.1299381
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.8904134   0.8212169   0.9596099
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.7968665   0.6601717   0.9335614
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8763747   0.7509634   1.0017860
15-18 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.7319909   0.5213460   0.9426359
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9788727   0.5987851   1.3589604
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7341204   0.5835689   0.8846718
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.8287148   0.7316500   0.9257796
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8575317   0.8329379   0.8821256
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.9144846   0.8824516   0.9465176
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.9234034   0.8888562   0.9579506
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.7372664   0.5817202   0.8928127
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                0.9369676   0.8240047   1.0499306
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.7600145   0.6883346   0.8316943
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.8331632   0.7005191   0.9658072
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8417481   0.7423695   0.9411267
18-21 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.8624349   0.7077387   1.0171312
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7498349   0.3670314   1.1326384
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5921668   0.4327554   0.7515783
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.9921870   0.8935265   1.0908474
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8360878   0.8116608   0.8605149
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.8094608   0.7760619   0.8428597
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.7906428   0.7569119   0.8243737
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.8997567   0.7529881   1.0465253
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                0.7528433   0.7000928   0.8055938
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.7838449   0.7202219   0.8474679
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.8520855   0.7121584   0.9920126
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8262719   0.7180254   0.9345184
21-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.6894750   0.4927435   0.8862064
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4251889   0.0571077   0.7932702
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7518806   0.6116257   0.8921356
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.8766118   0.7257886   1.0274351
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.7664617   0.7407304   0.7921930
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.8019116   0.7628693   0.8409538
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.8058277   0.7708137   0.8408418


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
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.2031309   -0.4869572    0.0806955
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.2884469   -0.9681800    0.3912863
0-3 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0                    1                  0.2165427   -0.0944435    0.5275289
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.5450197   -0.9661999   -0.1238395
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0417782   -0.1542013    0.2377577
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.1170053   -0.1904174   -0.0435931
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.1116385   -0.3655120    0.5887889
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    1                  0.2980389    0.0002993    0.5957784
3-6 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0                    1                  0.0721508   -0.2094568    0.3537584
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.4059284    0.0650868    0.7467700
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0186396   -0.1871151    0.2243943
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0892441    0.0149401    0.1635481
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.0954297   -0.3755714    0.1847121
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0441838   -0.2266297    0.1382621
6-9 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0528849   -0.2457503    0.1399805
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0412202   -0.2858603    0.3683008
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0113202   -0.1768648    0.1542243
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0945926   -0.1540200   -0.0351652
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0646162   -0.1683734    0.2976058
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1156619   -0.3642673    0.1329435
9-12 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           0                    1                 -0.2249011   -0.4497002   -0.0001019
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2447702   -0.7182347    0.2286944
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.2509158   -0.3936657   -0.1081659
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0048252   -0.0581263    0.0484759
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.2788072    0.0836119    0.4740024
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0421084   -0.1302761    0.2144930
12-15 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.2262371   -0.4790182    0.0265440
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.3323631   -0.1643712    0.8290973
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0104651   -0.0849927    0.1059229
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0137581   -0.0634073    0.0358910
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.2217083    0.0560146    0.3874021
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0935469   -0.2468394    0.0597457
15-18 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.1443838   -0.3904221    0.1016546
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2447524   -0.6535706    0.1640659
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0288169   -0.0713933    0.1290272
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0089188   -0.0386574    0.0564949
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.1997012    0.0064060    0.3929963
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0731487   -0.0787622    0.2250595
18-21 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           0                    1                  0.0206868   -0.1631801    0.2045538
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1576681   -0.5723373    0.2570011
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.1560991   -0.2576837   -0.0545145
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0188180   -0.0661256    0.0284896
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.1469134   -0.3030439    0.0092171
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0682406   -0.0854070    0.2218882
21-24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.1367970   -0.3613422    0.0877483
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.3266917   -0.0672058    0.7205892
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.1101502   -0.2632494    0.0429490
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0039162   -0.0490496    0.0568820


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.1700718   -0.4184060    0.0782624
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0526366   -0.1558596    0.0505865
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0433085   -0.0239485    0.1105656
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4589640   -0.8193765   -0.0985514
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0410369   -0.1502821    0.2323559
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0561743   -0.0894544   -0.0228941
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0792421   -0.3440247    0.5025090
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0275635   -0.0272120    0.0823391
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0049723   -0.0596805    0.0497358
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3479386    0.0525710    0.6433063
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0130974   -0.1878392    0.2140340
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0372678    0.0026920    0.0718436
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0922048   -0.3395571    0.1551474
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0063232   -0.0365925    0.0239460
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0061441   -0.0419331    0.0296449
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0351880   -0.2440636    0.3144396
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0080543   -0.1696360    0.1535275
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0369051   -0.0649613   -0.0088490
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0552509   -0.1502681    0.2607699
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0220925   -0.0617870    0.0176019
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0565821   -0.1112798   -0.0018843
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2098030   -0.6164757    0.1968697
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.2547874   -0.3945254   -0.1150493
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0006465   -0.0258684    0.0245753
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.2427299    0.0686225    0.4168373
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0072106   -0.0218170    0.0362381
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0037792   -0.0492534    0.0568119
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2848826   -0.1423753    0.7121405
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0107843   -0.0824503    0.1040189
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0071581   -0.0305892    0.0162729
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.1912489    0.0445059    0.3379919
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0167001   -0.0419260    0.0085258
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0380044   -0.0908837    0.0148749
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2141583   -0.5727752    0.1444586
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0273850   -0.0705986    0.1253685
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0032322   -0.0200838    0.0265481
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.1740803    0.0019007    0.3462600
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0159129   -0.0176368    0.0494627
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0040474   -0.0320064    0.0401012
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1369223   -0.4974390    0.2235944
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1528493   -0.2521586   -0.0535400
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0116853   -0.0364962    0.0131256
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.1275095   -0.2648232    0.0098042
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0077250   -0.0198201    0.0352702
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0273594   -0.0750902    0.0203714
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2788832   -0.0592694    0.6170358
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1134728   -0.2630243    0.0360787
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0025762   -0.0318027    0.0266503
