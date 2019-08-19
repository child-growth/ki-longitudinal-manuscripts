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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** nrooms

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        nrooms    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0        3    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        1    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       32    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       61    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0        7    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1        9    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0        2    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        6    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0        5     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1       12     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        3     23
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0        3    173
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        9    173
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       27    173
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       38    173
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       23    173
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       41    173
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       14    173
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   1       18    173
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0       14     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       39     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        4     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       23     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0        1     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        5     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0        0     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        6     92
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  0        4     33
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  1       14     33
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0        1     33
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        2     33
0-24 months   ki0047075b-MAL-ED          PERU                           2                   0        0     33
0-24 months   ki0047075b-MAL-ED          PERU                           2                   1        3     33
0-24 months   ki0047075b-MAL-ED          PERU                           3                   0        1     33
0-24 months   ki0047075b-MAL-ED          PERU                           3                   1        8     33
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0       12     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       49     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        5     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        3     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        8     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1       13     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        2     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       16     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        5     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        7     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        2    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        4    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       75    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1      126    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       32    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       54    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       11    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       22    326
0-24 months   ki1000108-IRC              INDIA                          4+                  0       11    394
0-24 months   ki1000108-IRC              INDIA                          4+                  1        9    394
0-24 months   ki1000108-IRC              INDIA                          1                   0       66    394
0-24 months   ki1000108-IRC              INDIA                          1                   1       96    394
0-24 months   ki1000108-IRC              INDIA                          2                   0       70    394
0-24 months   ki1000108-IRC              INDIA                          2                   1      110    394
0-24 months   ki1000108-IRC              INDIA                          3                   0       14    394
0-24 months   ki1000108-IRC              INDIA                          3                   1       18    394
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0        4    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1        9    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      101    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1      121    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       11    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       29    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0       12    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1       20    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       11    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       24    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       68    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       95    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0       26    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       48    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       12    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       27    311
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      136    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      134    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       17    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       28    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       58    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       49    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       57    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       82    561
0-24 months   ki1114097-CONTENT          PERU                           4+                  0        1      9
0-24 months   ki1114097-CONTENT          PERU                           4+                  1        2      9
0-24 months   ki1114097-CONTENT          PERU                           1                   0        0      9
0-24 months   ki1114097-CONTENT          PERU                           1                   1        2      9
0-24 months   ki1114097-CONTENT          PERU                           2                   0        1      9
0-24 months   ki1114097-CONTENT          PERU                           2                   1        2      9
0-24 months   ki1114097-CONTENT          PERU                           3                   0        0      9
0-24 months   ki1114097-CONTENT          PERU                           3                   1        1      9
0-24 months   ki1135781-COHORTS          INDIA                          4+                  0       13   1959
0-24 months   ki1135781-COHORTS          INDIA                          4+                  1        4   1959
0-24 months   ki1135781-COHORTS          INDIA                          1                   0     1079   1959
0-24 months   ki1135781-COHORTS          INDIA                          1                   1      319   1959
0-24 months   ki1135781-COHORTS          INDIA                          2                   0      373   1959
0-24 months   ki1135781-COHORTS          INDIA                          2                   1      125   1959
0-24 months   ki1135781-COHORTS          INDIA                          3                   0       34   1959
0-24 months   ki1135781-COHORTS          INDIA                          3                   1       12   1959
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      132   7564
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      131   7564
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2662   7564
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1858   7564
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1182   7564
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      898   7564
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0      391   7564
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      310   7564
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       57   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       33   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      956   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      320   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      379   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      125   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      138   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1       54   2062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  0        1     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  1        1     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        8     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       35     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   0        2     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   1        5     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   0        1     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   1        6     59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  1        8     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   1        2     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   1        3     14
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  0        2     78
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  1        3     78
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0        6     78
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1       23     78
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   0        5     78
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   1       19     78
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   0        9     78
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   1       11     78
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  0        5     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  1       20     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        2     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        9     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   0        1     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   1        1     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   0        0     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   1        4     42
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  1        7     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        1     10
0-6 months    ki0047075b-MAL-ED          PERU                           2                   0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           2                   1        1     10
0-6 months    ki0047075b-MAL-ED          PERU                           3                   0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           3                   1        1     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0        3     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       17     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        0     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        1     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        0     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4     27
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        4     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        5     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        2     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        2    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        3    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       38    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       77    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       21    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       37    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        5    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       20    203
0-6 months    ki1000108-IRC              INDIA                          4+                  0        4    239
0-6 months    ki1000108-IRC              INDIA                          4+                  1        7    239
0-6 months    ki1000108-IRC              INDIA                          1                   0       42    239
0-6 months    ki1000108-IRC              INDIA                          1                   1       66    239
0-6 months    ki1000108-IRC              INDIA                          2                   0       30    239
0-6 months    ki1000108-IRC              INDIA                          2                   1       70    239
0-6 months    ki1000108-IRC              INDIA                          3                   0       10    239
0-6 months    ki1000108-IRC              INDIA                          3                   1       10    239
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  0        1    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  1        7    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       31    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1      101    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0        4    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       22    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   0        3    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   1       15    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0        3    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       23    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       12    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       85    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   0        4    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       43    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   0        2    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       26    198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  0       39    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  1       49    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0        7    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1        5    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       18    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       16    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   0       11    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   1       35    180
0-6 months    ki1114097-CONTENT          PERU                           4+                  0        0      4
0-6 months    ki1114097-CONTENT          PERU                           4+                  1        2      4
0-6 months    ki1114097-CONTENT          PERU                           1                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           1                   1        1      4
0-6 months    ki1114097-CONTENT          PERU                           2                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           2                   1        0      4
0-6 months    ki1114097-CONTENT          PERU                           3                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           3                   1        1      4
0-6 months    ki1135781-COHORTS          INDIA                          4+                  0       10   1287
0-6 months    ki1135781-COHORTS          INDIA                          4+                  1        4   1287
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      568   1287
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      319   1287
0-6 months    ki1135781-COHORTS          INDIA                          2                   0      227   1287
0-6 months    ki1135781-COHORTS          INDIA                          2                   1      125   1287
0-6 months    ki1135781-COHORTS          INDIA                          3                   0       22   1287
0-6 months    ki1135781-COHORTS          INDIA                          3                   1       12   1287
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  0       50   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      131   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0      984   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1858   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0      374   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      898   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   0      128   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      310   4733
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       11    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       21    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0      144    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      177    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   0       61    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   1       71    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   0       26    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   1       37    548
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       24     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       26     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0        5     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1        4     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        0     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0        1     95
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       21     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       15     95
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       18     95
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       22     95
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   0        5     95
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   1        7     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0        9     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       19     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        2     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       14     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        4     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        2     50
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  0        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  1        7     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           2                   0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           2                   1        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           3                   0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           3                   1        7     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0        9     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       32     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        3     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        9     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        2     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       11     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        4     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        5     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        0    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        1    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       37    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       49    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       11    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       17    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        6    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        2    123
6-24 months   ki1000108-IRC              INDIA                          4+                  0        7    155
6-24 months   ki1000108-IRC              INDIA                          4+                  1        2    155
6-24 months   ki1000108-IRC              INDIA                          1                   0       24    155
6-24 months   ki1000108-IRC              INDIA                          1                   1       30    155
6-24 months   ki1000108-IRC              INDIA                          2                   0       40    155
6-24 months   ki1000108-IRC              INDIA                          2                   1       40    155
6-24 months   ki1000108-IRC              INDIA                          3                   0        4    155
6-24 months   ki1000108-IRC              INDIA                          3                   1        8    155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0        3    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1        2    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       70    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       20    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0        7    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1        7    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0        9    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1        5    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0        8    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1        1    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       56    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       10    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0       22    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1        5    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       10    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1        1    113
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0       97    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1       85    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       10    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       23    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       40    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       33    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       46    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       47    381
6-24 months   ki1114097-CONTENT          PERU                           4+                  0        1      5
6-24 months   ki1114097-CONTENT          PERU                           4+                  1        0      5
6-24 months   ki1114097-CONTENT          PERU                           1                   0        0      5
6-24 months   ki1114097-CONTENT          PERU                           1                   1        1      5
6-24 months   ki1114097-CONTENT          PERU                           2                   0        1      5
6-24 months   ki1114097-CONTENT          PERU                           2                   1        2      5
6-24 months   ki1114097-CONTENT          PERU                           3                   0        0      5
6-24 months   ki1114097-CONTENT          PERU                           3                   1        0      5
6-24 months   ki1135781-COHORTS          INDIA                          4+                  0        3    672
6-24 months   ki1135781-COHORTS          INDIA                          4+                  1        0    672
6-24 months   ki1135781-COHORTS          INDIA                          1                   0      511    672
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0    672
6-24 months   ki1135781-COHORTS          INDIA                          2                   0      146    672
6-24 months   ki1135781-COHORTS          INDIA                          2                   1        0    672
6-24 months   ki1135781-COHORTS          INDIA                          3                   0       12    672
6-24 months   ki1135781-COHORTS          INDIA                          3                   1        0    672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0       82   2831
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1        0   2831
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1678   2831
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0   2831
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0      808   2831
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1        0   2831
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0      263   2831
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1        0   2831
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       46   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       12   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      812   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      143   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      318   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1       54   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      112   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1       17   1514


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/92d79f65-271c-49a7-884c-a5201870c6bd/4f543270-e3bb-483a-b1c2-3c4b64878cf3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/92d79f65-271c-49a7-884c-a5201870c6bd/4f543270-e3bb-483a-b1c2-3c4b64878cf3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/92d79f65-271c-49a7-884c-a5201870c6bd/4f543270-e3bb-483a-b1c2-3c4b64878cf3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/92d79f65-271c-49a7-884c-a5201870c6bd/4f543270-e3bb-483a-b1c2-3c4b64878cf3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                0.4500000   0.2471890   0.6528110
0-24 months   ki1000108-IRC           INDIA        1                    NA                0.5925926   0.5081592   0.6770260
0-24 months   ki1000108-IRC           INDIA        2                    NA                0.6111111   0.5401543   0.6820679
0-24 months   ki1000108-IRC           INDIA        3                    NA                0.5625000   0.3398407   0.7851593
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.6842611   0.5195188   0.8490033
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.5786917   0.5036516   0.6537317
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.6588431   0.5460659   0.7716204
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.6927871   0.5449231   0.8406511
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.4944795   0.4307008   0.5582583
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.5973746   0.4514345   0.7433147
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4417714   0.3374804   0.5460623
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.5837510   0.4898827   0.6776192
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.4743551   0.4231987   0.5255115
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4104887   0.3954630   0.4255145
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.4351190   0.4111084   0.4591296
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.4080900   0.3652031   0.4509768
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.3792442   0.2680558   0.4904326
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2510089   0.2272423   0.2747755
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.2491464   0.2099307   0.2883622
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.2848536   0.2155968   0.3541103
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.5568182   0.4527929   0.6608435
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4166667   0.1509081   0.6824252
0-6 months    ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4705882   0.3004500   0.6407264
0-6 months    ki1113344-GMS-Nepal     NEPAL        3                    NA                0.7608696   0.6358674   0.8858717
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.7108092   0.6483285   0.7732900
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.6515308   0.6334735   0.6695880
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.6987559   0.6698207   0.7276911
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.6782294   0.6261963   0.7302625
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.6461719   0.4906102   0.8017336
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.5517197   0.4968834   0.6065561
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.5390770   0.4512101   0.6269440
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.5913176   0.4633280   0.7193071
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.4649670   0.3887270   0.5412070
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.6796627   0.4901438   0.8691816
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4294119   0.3002175   0.5586062
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.5018237   0.3869497   0.6166977
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.1955971   0.0796289   0.3115652
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1495972   0.1281938   0.1710005
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.1448381   0.1082029   0.1814733
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.1283137   0.0643429   0.1922845


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        NA                   NA                0.5913706   0.5391835   0.6435576
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.4226600   0.4115317   0.4337883
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2580019   0.2386523   0.2773515
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.6754701   0.6621313   0.6888089
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC           INDIA        1                    4+                1.3168724   0.8208567   2.1126135
0-24 months   ki1000108-IRC           INDIA        2                    4+                1.3580247   0.8527213   2.1627595
0-24 months   ki1000108-IRC           INDIA        3                    4+                1.2500000   0.6860395   2.2775656
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    4+                0.8457176   0.6435062   1.1114708
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    4+                0.9628535   0.7170252   1.2929627
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    4+                1.0124602   0.7342939   1.3960018
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                1.2080876   0.9159965   1.5933200
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                0.8934068   0.6828716   1.1688517
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.1805361   0.9602558   1.4513482
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                0.8653617   0.7723129   0.9696211
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                0.9172854   0.8127493   1.0352670
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                0.8603048   0.7400990   1.0000342
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.6618661   0.4863504   0.9007226
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.6569551   0.4710066   0.9163143
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.7511085   0.5131955   1.0993159
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    4+                0.7482993   0.3849793   1.4544986
0-6 months    ki1113344-GMS-Nepal     NEPAL        2                    4+                0.8451381   0.5625841   1.2696027
0-6 months    ki1113344-GMS-Nepal     NEPAL        3                    4+                1.3664596   1.0654962   1.7524342
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    4+                0.9166043   0.8359034   1.0050962
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    4+                0.9830428   0.8919978   1.0833808
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    4+                0.9541652   0.8490606   1.0722806
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.8538281   0.6579658   1.1079946
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.8342626   0.6237126   1.1158891
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.9151088   0.6620052   1.2649810
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                1.4617440   1.0570429   2.0213896
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                0.9235320   0.6560158   1.3001385
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.0792674   0.8136315   1.4316285
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.7648231   0.4156066   1.4074711
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.7404922   0.3886421   1.4108835
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.6560102   0.3023319   1.4234337


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                 0.1413706   -0.0576416    0.3403827
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                -0.0604669   -0.2152230    0.0942893
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0278021   -0.0190342    0.0746384
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0516951   -0.1022155   -0.0011748
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.1212423   -0.2292617   -0.0132229
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0265152   -0.0475959    0.1006262
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0353391   -0.0970893    0.0264111
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0877777   -0.2399060    0.0643505
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0284714   -0.0286139    0.0855566
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0463236   -0.1592507    0.0666035


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                 0.2390558   -0.1833208    0.5106685
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                -0.0969340   -0.3753202    0.1251025
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0532320   -0.0407876    0.1387583
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.1223091   -0.2486725   -0.0087334
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.4699277   -0.9526987   -0.1065135
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0454545   -0.0906256    0.1645556
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0523178   -0.1478904    0.0352974
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.1571967   -0.4654860    0.0862388
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0576999   -0.0650967    0.1663391
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.3103274   -1.3293372    0.2628986
