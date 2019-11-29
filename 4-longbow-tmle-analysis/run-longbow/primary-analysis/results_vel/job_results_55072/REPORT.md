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

agecat         studyid                    country                        trth2o    n_cell     n  outcome_variable 
-------------  -------------------------  -----------------------------  -------  -------  ----  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1            132   134  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   134  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          1              4     8  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          0              4     8  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             67    81  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             14    81  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           1             39    49  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           0             10    49  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            107   107  y_rate_wtkg      
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0   107  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          1            120   120  y_rate_wtkg      
0-3 months     ki1000108-IRC              INDIA                          0              0   120  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            626   640  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            405   725  y_rate_wtkg      
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            320   725  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1              1     4  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0              3     4  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            130   132  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   132  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          1              3     7  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          0              4     7  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             68    82  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             14    82  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           1             39    49  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           0             10    49  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            104   104  y_rate_wtkg      
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0   104  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          1            120   120  y_rate_wtkg      
3-6 months     ki1000108-IRC              INDIA                          0              0   120  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            587   601  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            388   702  y_rate_wtkg      
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            314   702  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              1     4  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              3     4  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1            128   130  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0              2   130  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          1              3     8  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          0              5     8  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          1             68    82  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          0             14    82  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           1             39    49  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           0             10    49  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            106   106  y_rate_wtkg      
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              0   106  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          1            122   122  y_rate_wtkg      
6-9 months     ki1000108-IRC              INDIA                          0              0   122  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1             14   576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0            562   576  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            379   693  y_rate_wtkg      
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            314   693  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1              0     2  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0              2     2  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            129   131  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   131  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          1              4     9  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          0              5     9  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          1             68    82  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          0             14    82  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           1             39    49  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           0             10    49  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            104   104  y_rate_wtkg      
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   104  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          1            120   120  y_rate_wtkg      
9-12 months    ki1000108-IRC              INDIA                          0              0   120  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             14   569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            555   569  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            371   683  y_rate_wtkg      
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            312   683  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1              0     2  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0              2     2  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1            127   129  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   129  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          1              4     9  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          0              5     9  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          1             69    83  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          0             14    83  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           1             38    48  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           0             10    48  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    10  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              8    10  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            108   108  y_rate_wtkg      
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   108  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          1            115   115  y_rate_wtkg      
12-15 months   ki1000108-IRC              INDIA                          0              0   115  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0            523   537  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            358   666  y_rate_wtkg      
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            308   666  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1            129   131  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   131  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          1              3     8  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          0              5     8  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          1             68    81  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          0             13    81  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           1             38    48  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           0             10    48  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    10  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              8    10  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              5    41  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    41  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            104   104  y_rate_wtkg      
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   104  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          1            112   112  y_rate_wtkg      
15-18 months   ki1000108-IRC              INDIA                          0              0   112  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1             12   533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0            521   533  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            305   605  y_rate_wtkg      
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            300   605  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1            130   132  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   132  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          1              3     8  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          0              5     8  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          1             68    81  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          0             13    81  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           1             37    46  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           0              9    46  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              5    39  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             34    39  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             97    97  y_rate_wtkg      
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0    97  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          1            113   113  y_rate_wtkg      
18-21 months   ki1000108-IRC              INDIA                          0              0   113  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1             12   542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0            530   542  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            267   547  y_rate_wtkg      
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            280   547  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1              0     3  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0              3     3  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            129   131  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   131  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          1              4     9  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          0              5     9  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           1             36    45  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           0              9    45  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    41  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             35    41  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             95    95  y_rate_wtkg      
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0    95  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          1            116   116  y_rate_wtkg      
21-24 months   ki1000108-IRC              INDIA                          0              0   116  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             12   485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            473   485  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            227   493  y_rate_wtkg      
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            266   493  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1              0     3  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     3  y_rate_wtkg      


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




# Results Detail

## Results Plots
![](/tmp/e832c3ab-bfc8-439e-94f4-067f080a250c/1b19a3f0-c9e2-4367-878e-e9bcf029df82/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e832c3ab-bfc8-439e-94f4-067f080a250c/1b19a3f0-c9e2-4367-878e-e9bcf029df82/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e832c3ab-bfc8-439e-94f4-067f080a250c/1b19a3f0-c9e2-4367-878e-e9bcf029df82/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                1.0571119    0.9639544   1.1502693
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                1.0892091    1.0319559   1.1464624
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                0.9394013    0.8891243   0.9896784
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                1.0166734    0.8660202   1.1673266
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                0.9350193    0.8795364   0.9905021
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                0.9353978    0.7881984   1.0825973
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0002689    0.8901714   1.1103664
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8836569    0.8111346   0.9561791
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.0407492    0.9522132   1.1292852
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8987855    0.8838571   0.9137140
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.8786528    0.8586186   0.8986870
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.8959765    0.8734148   0.9185383
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.5989080    0.4058939   0.7919221
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                0.5992296    0.5483680   0.6500913
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                0.5140043    0.4763972   0.5516114
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                0.5272786    0.4028040   0.6517532
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                0.5212478    0.4630299   0.5794657
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                0.4466945    0.3713533   0.5220356
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5378113    0.3002548   0.7753678
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4362014    0.3434105   0.5289923
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.5236738    0.4564325   0.5909152
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.4885744    0.4752666   0.5018821
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.4933350    0.4780550   0.5086149
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.5006712    0.4843156   0.5170268
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.4059320    0.2791846   0.5326793
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0                    NA                0.4033841    0.3613252   0.4454430
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                0.2703081    0.2412994   0.2993169
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                0.2627762    0.1771564   0.3483961
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                0.2642970    0.2287653   0.2998286
6-9 months     ki0047075b-MAL-ED       PERU                           0                    NA                0.2038537    0.1437150   0.2639924
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2693904    0.0734898   0.4652910
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2177891    0.1207225   0.3148556
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.2526580    0.2055754   0.2997406
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.2497312    0.2374037   0.2620586
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.2643789    0.2506135   0.2781444
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.2717280    0.2543952   0.2890608
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.2739532    0.1938824   0.3540241
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                0.2864748    0.2428860   0.3300636
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1888186    0.1589233   0.2187139
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                0.1741812    0.0938079   0.2545544
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                0.2006043    0.1575837   0.2436248
9-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                0.1536699    0.0937757   0.2135640
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0241990   -0.1593722   0.2077701
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1516294    0.1035343   0.1997246
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.1714953    0.1026145   0.2403760
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.1777415    0.1683082   0.1871747
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1967313    0.1821786   0.2112841
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.1999363    0.1848062   0.2150663
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.1422194    0.0776009   0.2068380
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                0.2099530    0.1752182   0.2446879
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1338278    0.1014051   0.1662505
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.2501112    0.1484727   0.3517497
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.1398442    0.0933319   0.1863565
12-15 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.2619816    0.1754946   0.3484686
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2525513    0.0901522   0.4149504
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1959041    0.1382578   0.2535504
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.2141027    0.1623011   0.2659044
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.1794651    0.1675183   0.1914119
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1688316    0.1544864   0.1831768
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.1603730    0.1438657   0.1768804
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.1953897    0.1122420   0.2785374
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                0.2158959    0.1713747   0.2604171
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1805965    0.1554620   0.2057310
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.1382851    0.1025741   0.1739961
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.1346594    0.0852373   0.1840816
15-18 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.1095881    0.0110476   0.2081287
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0683943   -0.0550421   0.1918307
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1144884    0.0560508   0.1729261
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.1058367    0.0473093   0.1643641
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.1569574    0.1449732   0.1689416
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1507229    0.1359897   0.1654561
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.1700803    0.1539210   0.1862396
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.1970446    0.1369435   0.2571456
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                0.1592611    0.1233165   0.1952057
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1827517    0.1564235   0.2090800
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.1817637    0.1266718   0.2368556
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.1882611    0.1464396   0.2300826
18-21 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.2332536    0.1412045   0.3253027
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1943418   -0.0010683   0.3897519
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1719850    0.1106525   0.2333175
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.1380956    0.0914157   0.1847756
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.1324306    0.1206801   0.1441810
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1484809    0.1338202   0.1631417
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.1377579    0.1221342   0.1533816
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                0.1540181    0.0830005   0.2250356
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                0.1513477    0.1170848   0.1856106
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1648259    0.1355839   0.1940678
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.1689956    0.1228498   0.2151415
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.1668218    0.1249154   0.2087283
21-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.2094552    0.1244041   0.2945064
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0283903   -0.2696805   0.3264611
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1347015    0.0691909   0.2002121
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.0972038    0.0446353   0.1497723
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.1424801    0.1307984   0.1541617
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1601001    0.1398391   0.1803611
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.1839723    0.1662398   0.2017047


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                1.0785291   1.0272897   1.1297685
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.9493726   0.9004043   0.9983408
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                0.9326347   0.8810468   0.9842227
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9007220   0.8354879   0.9659562
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
3-6 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                0.5934783   0.5435445   0.6434121
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.5160486   0.4804683   0.5516290
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                0.5026377   0.4533571   0.5519182
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4507171   0.3635622   0.5378720
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
6-9 months     ki0047075b-MAL-ED       BRAZIL                         NA                   NA                0.4002611   0.3612162   0.4393059
6-9 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2683270   0.2401434   0.2965106
6-9 months     ki0047075b-MAL-ED       PERU                           NA                   NA                0.2520055   0.2213895   0.2826214
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2253405   0.1374776   0.3132034
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
9-12 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                0.2831198   0.2443371   0.3219026
9-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1905809   0.1625784   0.2185835
9-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                0.1997749   0.1642326   0.2353171
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1329811   0.0819697   0.1839925
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
12-15 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                0.2016949   0.1703194   0.2330704
12-15 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1416418   0.1110034   0.1722801
12-15 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1424940   0.1030357   0.1819523
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2041939   0.1491943   0.2591935
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
15-18 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                0.2121519   0.1722209   0.2520830
15-18 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1744053   0.1523126   0.1964979
15-18 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1396329   0.0961677   0.1830980
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1088672   0.0551896   0.1625448
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
18-21 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                0.1613623   0.1290425   0.1936822
18-21 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1854094   0.1617682   0.2090505
18-21 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1970640   0.1585526   0.2355754
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1748513   0.1157560   0.2339466
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
21-24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                0.1492836   0.1183710   0.1801961
21-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1643936   0.1387769   0.1900103
21-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1753485   0.1374186   0.2132784
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1191438   0.0472705   0.1910171
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0320972   -0.0787242    0.1429187
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0772721   -0.0820552    0.2365994
0-3 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0                    1                  0.0003786   -0.1569451    0.1577023
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1166120   -0.2484488    0.0152248
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.1419637   -0.2319665   -0.0519609
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0173237   -0.0126213    0.0472688
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0003216   -0.2000203    0.2006636
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0132744   -0.1167438    0.1432925
3-6 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0745533   -0.1709070    0.0218004
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1016099   -0.3566457    0.1534259
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0350994   -0.1037790    0.0335801
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0073362   -0.0149934    0.0296659
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.0025479   -0.1380207    0.1329249
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0075319   -0.0979432    0.0828794
6-9 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0604433   -0.1306932    0.0098067
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0516013   -0.2702311    0.1670284
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0029269   -0.0515946    0.0457409
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0073491   -0.0148676    0.0295657
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0125216   -0.0786879    0.1037310
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0146374   -0.1004177    0.0711428
9-12 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           0                    1                 -0.0469344   -0.1201515    0.0262828
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1274305   -0.0623365    0.3171975
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0062462   -0.0632650    0.0757574
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0032049   -0.0177786    0.0241884
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0677336   -0.0060963    0.1415636
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.1162834    0.0077210    0.2248459
12-15 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           0                    1                  0.1221374    0.0194448    0.2248300
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0566472   -0.2289741    0.1156797
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0346377   -0.0878008    0.0185255
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0084585   -0.0304332    0.0135161
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0205062   -0.0740615    0.1150739
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0423114   -0.0853109    0.0006880
15-18 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0250713   -0.1375057    0.0873632
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0460942   -0.0904763    0.1826647
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0511207   -0.0087130    0.1109545
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0193574   -0.0025876    0.0413024
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.0377834   -0.1074839    0.0319170
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0009880   -0.0622901    0.0603141
18-21 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           0                    1                  0.0449925   -0.0561117    0.1460968
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0223568   -0.2271659    0.1824524
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0056651   -0.0539364    0.0426063
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0107231   -0.0321563    0.0107101
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.0026704   -0.0811473    0.0758066
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0041698   -0.0513469    0.0596865
21-24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           0                    1                  0.0426334   -0.0521814    0.1374482
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1063112   -0.1988738    0.4114962
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0452763   -0.0086459    0.0991985
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0238722   -0.0032095    0.0509538


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0214172   -0.0763216    0.1191560
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0099713   -0.0178778    0.0378203
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0023845   -0.0322093    0.0274403
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0995468   -0.2128129    0.0137193
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1391020   -0.2268869   -0.0513172
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0058691   -0.0079463    0.0196846
3-6 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0054297   -0.1819199    0.1710605
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0020443   -0.0175378    0.0216265
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0186101   -0.0394695    0.0022492
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0870942   -0.3059671    0.1317786
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0346127   -0.1016756    0.0324502
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0047194   -0.0057131    0.0151519
6-9 months     ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0056709   -0.1255541    0.1142122
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0019811   -0.0175220    0.0135597
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0122915   -0.0267257    0.0021427
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0440499   -0.2307706    0.1426708
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0034927   -0.0510025    0.0440171
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0031307   -0.0069900    0.0132515
9-12 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0091666   -0.0719509    0.0902842
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0017623   -0.0133960    0.0169206
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0008294   -0.0160615    0.0144027
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1087821   -0.0538143    0.2713786
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0060363   -0.0618434    0.0739160
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0011136   -0.0087392    0.0109663
12-15 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0594755   -0.0057183    0.1246692
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0078140   -0.0083206    0.0239486
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0026498   -0.0146525    0.0199521
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0483574   -0.1955965    0.0988818
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0340704   -0.0859176    0.0177769
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0047713   -0.0150925    0.0055498
15-18 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.0167622   -0.0672008    0.1007253
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0061912   -0.0132051    0.0008226
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0049735   -0.0184942    0.0284411
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0404729   -0.0795337    0.1604795
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0505147   -0.0078526    0.1088821
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0104744   -0.0005338    0.0214825
18-21 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0356822   -0.0964637    0.0250993
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0026577   -0.0076567    0.0129720
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0088029   -0.0116542    0.0292600
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0194905   -0.1980579    0.1590769
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0056075   -0.0526123    0.0413974
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0058200   -0.0168228    0.0051828
21-24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0047345   -0.0740528    0.0645838
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0004322   -0.0123950    0.0115306
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0085267   -0.0110943    0.0281477
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0907535   -0.1700304    0.3515373
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0447667   -0.0079738    0.0975072
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0149499   -0.0003314    0.0302312
