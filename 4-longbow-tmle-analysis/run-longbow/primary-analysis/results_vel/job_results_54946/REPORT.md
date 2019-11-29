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

agecat         studyid                    country                        trth2o    n_cell     n  outcome_variable 
-------------  -------------------------  -----------------------------  -------  -------  ----  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1            132   134  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   134  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1             11    82  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             71    82  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          1              2     5  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          0              3     5  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             45    55  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             10    55  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           1             36    45  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           0              9    45  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              1     9  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              8     9  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    38  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             32    38  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             25    25  y_rate_haz       
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0    25  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          1            118   118  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          0              0   118  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            626   640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            402   721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            319   721  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1              1     4  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0              3     4  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            130   132  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   132  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          1              3     7  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          0              4     7  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             68    82  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             14    82  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           1             39    49  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           0             10    49  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            101   101  y_rate_haz       
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0   101  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          1            119   119  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          0              0   119  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            584   598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            382   695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            313   695  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              1     4  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              3     4  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1            128   130  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   130  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          1              3     8  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          0              5     8  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          1             68    82  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          0             14    82  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           1             39    49  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           0             10    49  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            104   104  y_rate_haz       
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0   104  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          1            121   121  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          0              0   121  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0            551   565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            374   688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            314   688  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1              0     2  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0              2     2  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            129   131  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   131  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          1              4     9  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          0              5     9  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          1             68    82  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          0             14    82  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           1             39    49  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           0             10    49  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            101   101  y_rate_haz       
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   101  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          1            119   119  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          0              0   119  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             14   566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            552   566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            363   674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            311   674  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1              0     2  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0              2     2  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1            127   129  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   129  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          1              4     9  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          0              5     9  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          1             69    83  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          0             14    83  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           1             38    48  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           0             10    48  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    10  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              8    10  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            105   105  y_rate_haz       
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   105  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          1            115   115  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          0              0   115  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0            518   532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            353   660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            307   660  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1            129   131  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   131  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          1              3     8  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          0              5     8  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          1             68    81  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          0             13    81  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           1             38    48  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           0             10    48  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    10  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              8    10  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              5    40  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    40  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            101   101  y_rate_haz       
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   101  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          1            112   112  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          0              0   112  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1             12   528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0            516   528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            304   604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            300   604  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1            130   132  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   132  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          1              3     8  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          0              5     8  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          1             68    81  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          0             13    81  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           1             37    46  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           0              9    46  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              5    38  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             33    38  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             94    94  y_rate_haz       
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0    94  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          1            113   113  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          0              0   113  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1             12   541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0            529   541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            266   546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            280   546  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1              0     3  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0              3     3  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            129   131  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   131  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          1              4     9  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          0              5     9  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           1             36    45  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           0              9    45  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             93    93  y_rate_haz       
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0    93  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          1            116   116  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          0              0   116  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             11   471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            460   471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            225   490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            265   490  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1              0     3  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     3  y_rate_haz       


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
![](/tmp/c06039aa-7643-4213-902e-c9e2ab629d3c/984f5673-9024-4689-b684-acf5917a7b2e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c06039aa-7643-4213-902e-c9e2ab629d3c/984f5673-9024-4689-b684-acf5917a7b2e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c06039aa-7643-4213-902e-c9e2ab629d3c/984f5673-9024-4689-b684-acf5917a7b2e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.2765683    0.1219920    0.4311447
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.1522674    0.0671349    0.2373999
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0194586   -0.0583694    0.0972866
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0810501   -0.3571254    0.1950251
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.2775269   -0.3807449   -0.1743088
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.1825068   -0.2881511   -0.0768626
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0521782   -0.2154773    0.1111208
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.2818987   -0.3925793   -0.1712181
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1961591   -0.3170044   -0.0753138
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.1868715   -0.2044802   -0.1692627
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.2108279   -0.2365749   -0.1850809
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.2540194   -0.2801321   -0.2279067
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0618960   -0.2551935    0.1314015
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.1046324    0.0546737    0.1545911
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0232588   -0.0765409    0.0300233
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0758961   -0.0949789    0.2467711
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0135015   -0.0694446    0.0964475
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.0979840   -0.1856241   -0.0103439
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2457527   -0.3985192   -0.0929862
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0410643   -0.1081175    0.0259890
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1995008   -0.2907202   -0.1082814
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0241691   -0.0402643   -0.0080740
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0069447   -0.0159542    0.0298436
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0525671    0.0267590    0.0783751
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0914373    0.0129727    0.1699019
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.0332263   -0.0273026    0.0937552
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0538054   -0.0891773   -0.0184334
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0567154   -0.1318813    0.0184505
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0827969   -0.1436592   -0.0219346
6-9 months     ki0047075b-MAL-ED       PERU                           0                    NA                -0.1245032   -0.1706462   -0.0783602
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0776357   -0.1299187   -0.0253527
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0587924   -0.1887795    0.0711948
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0302288   -0.0340256    0.0944831
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0628178   -0.0738012   -0.0518343
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0113902   -0.0296763    0.0068959
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0568257   -0.0744136   -0.0392379
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0078395   -0.1062303    0.1219092
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.0037161   -0.0415429    0.0489751
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0613053   -0.0927201   -0.0298906
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.1420144   -0.2292326   -0.0547963
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0014245   -0.0632066    0.0603576
9-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                -0.1396191   -0.1934716   -0.0857666
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0643073   -0.2234610    0.0948463
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1651919   -0.2902566   -0.0401272
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1810760   -0.2268614   -0.1352907
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0617569   -0.0729317   -0.0505822
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0327130   -0.0487370   -0.0166890
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0366482   -0.0523260   -0.0209704
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0597723   -0.1293250    0.0097804
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.0210917   -0.0086252    0.0508087
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0322832   -0.0575828   -0.0069837
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0074595   -0.0701754    0.0552564
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0671793   -0.1216375   -0.0127212
12-15 months   ki0047075b-MAL-ED       PERU                           0                    NA                -0.0835385   -0.1715851    0.0045080
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2075770   -0.4055752   -0.0095788
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0702827   -0.1255483   -0.0150171
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0030515   -0.0356395    0.0295366
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0410810   -0.0514141   -0.0307480
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0362046   -0.0496527   -0.0227565
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0423522   -0.0568403   -0.0278641
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0374211   -0.0891611    0.0143188
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                -0.0115135   -0.0442377    0.0212108
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0429298   -0.0680890   -0.0177705
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.1011805   -0.1477228   -0.0546383
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0208209   -0.0663797    0.0247379
15-18 months   ki0047075b-MAL-ED       PERU                           0                    NA                -0.0139621   -0.0937741    0.0658498
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0175680   -0.1090802    0.1442163
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0633099   -0.1177238   -0.0088961
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0616980   -0.0978916   -0.0255044
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0371402   -0.0460672   -0.0282131
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0180606   -0.0298752   -0.0062461
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0155885   -0.0284392   -0.0027378
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0590829   -0.1126630   -0.0055028
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                -0.0169742   -0.0573433    0.0233948
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0536270   -0.0767647   -0.0304893
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0322914   -0.0181277    0.0827106
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0049563   -0.0399845    0.0300720
18-21 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0060811   -0.0449992    0.0571615
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0279937   -0.1658200    0.1098325
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0773440   -0.1314138   -0.0232741
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0366631    0.0052828    0.0680433
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0121155   -0.0204099   -0.0038211
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0237317   -0.0352254   -0.0122380
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0315059   -0.0432334   -0.0197784
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0786925    0.0303722    0.1270128
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                -0.0009606   -0.0216645    0.0197434
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0047190   -0.0167525    0.0261905
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0104601   -0.0343208    0.0552410
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0773191    0.0425925    0.1120457
21-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0402277   -0.0281677    0.1086232
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0994837   -0.1973677   -0.0015996
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0139199   -0.0339523    0.0617922
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0428869   -0.0967237    0.0109499
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                 0.0472770    0.0385257    0.0560283
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0536696    0.0408547    0.0664845
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0637916    0.0525321    0.0750512


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
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.1243009   -0.3014419    0.0528400
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1005087   -0.3869977    0.1859803
0-3 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0                    1                  0.0950200   -0.0526779    0.2427179
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2297205   -0.4269939   -0.0324471
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0092876   -0.1128532    0.1314285
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0431915   -0.0798595   -0.0065234
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.1665283   -0.0338594    0.3669161
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0991549   -0.0791533    0.2774630
3-6 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.1114854   -0.2353420    0.0123711
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2046884    0.0378539    0.3715229
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.1753317    0.0825893    0.2680740
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0456223    0.0110421    0.0802025
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.0582110   -0.1565399    0.0401180
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0029100   -0.0870653    0.0812453
6-9 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0417063   -0.1186688    0.0352562
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0188434   -0.1212643    0.1589510
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0930465   -0.1582313   -0.0278618
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0454355   -0.0709206   -0.0199504
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.0041234   -0.1270616    0.1188149
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0807091   -0.1741126    0.0126944
9-12 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           0                    1                 -0.1381946   -0.2234710   -0.0529182
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1008846   -0.3032977    0.1015285
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.1193191    0.0721884    0.1664498
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0039352   -0.0265915    0.0187211
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0808640    0.0052968    0.1564313
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0248237   -0.0429753    0.0926227
12-15 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0163592   -0.1190721    0.0863537
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1372943   -0.0682722    0.3428608
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0380296   -0.0722325   -0.0038267
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0061476   -0.0261501    0.0138549
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0259077   -0.0358007    0.0876161
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0582508   -0.1120737   -0.0044278
15-18 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           0                    1                  0.0068588   -0.0887426    0.1024602
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0808780   -0.2187208    0.0569649
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0245578   -0.0127275    0.0618432
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0024721   -0.0151726    0.0201169
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0421086   -0.0240077    0.1082250
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0859185    0.0314212    0.1404157
18-21 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           0                    1                  0.0110374   -0.0508995    0.0729743
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0493502   -0.1974030    0.0987025
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0487785   -0.0811241   -0.0164330
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0077742   -0.0241985    0.0086501
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.0796530   -0.1320203   -0.0272857
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0057411   -0.0435536    0.0550359
21-24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0370914   -0.1137978    0.0396150
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1134036    0.0044402    0.2223670
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0901639    0.0355716    0.1447562
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0101220   -0.0069585    0.0272026


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.1074478   -0.2638560    0.0489604
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0199753   -0.0652865    0.0253359
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0190040   -0.0125984    0.0506064
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1934488   -0.3617521   -0.0251456
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0081189   -0.1114605    0.1276983
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0204329   -0.0369559   -0.0039098
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.1551828   -0.0215425    0.3319080
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0145763   -0.0131703    0.0423230
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                 0.0050016   -0.0233510    0.0333542
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1754472    0.0307753    0.3201191
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.1725383    0.0818709    0.2632057
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0198293    0.0035343    0.0361243
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0583640   -0.1432611    0.0265331
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0000860   -0.0133425    0.0135145
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0044250   -0.0198167    0.0109667
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0160858   -0.1035361    0.1357077
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0916551   -0.1552428   -0.0280675
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0199736   -0.0317944   -0.0081528
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0066180   -0.1164551    0.1032190
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0066106   -0.0226312    0.0094100
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0238018   -0.0500747    0.0024712
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0864725   -0.2603056    0.0873606
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.1180290    0.0720341    0.1640240
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0015865   -0.0123489    0.0091759
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0679198    0.0014515    0.1343881
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0048148   -0.0071504    0.0167800
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0002343   -0.0186239    0.0181554
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1176809   -0.0591316    0.2944933
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0378593   -0.0711640   -0.0045546
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0021267   -0.0113894    0.0071360
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0174212   -0.0372479    0.0720902
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0015139   -0.0106648    0.0076369
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0161439   -0.0371164    0.0048287
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0707682   -0.1916725    0.0501360
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0240543   -0.0123876    0.0604962
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0011533   -0.0075562    0.0098628
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0352616   -0.0237841    0.0943073
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0085008   -0.0010138    0.0180153
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0021595   -0.0100259    0.0143449
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0428568   -0.1715413    0.0858277
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0476029   -0.0792201   -0.0159858
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0042371   -0.0128843    0.0044101
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0705098   -0.1171046   -0.0239151
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0015735   -0.0068374    0.0099843
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0074183   -0.0233736    0.0085371
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0968080    0.0029647    0.1906512
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0891211    0.0357542    0.1424880
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0050925   -0.0043562    0.0145411
