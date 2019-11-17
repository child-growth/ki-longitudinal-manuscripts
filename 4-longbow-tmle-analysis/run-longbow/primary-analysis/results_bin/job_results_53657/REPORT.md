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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       31    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       62    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0        7    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1        9    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0        2    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        6    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0        5     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1       13     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        2     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        3     24
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0        3    175
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        9    175
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       26    175
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       38    175
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       23    175
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       42    175
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       14    175
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   1       20    175
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0       14     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       41     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        4     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       24     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0        1     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        7     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0        0     97
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        6     97
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  0        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  1       14     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           2                   0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           2                   1        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           3                   0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           3                   1        8     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0       13     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       51     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        5     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        3     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        8     80
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0        2     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1       16     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        2     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       16     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        5     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        8     51
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        2    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        4    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       75    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1      124    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       32    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       54    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       11    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       22    324
0-24 months   ki1000108-IRC              INDIA                          4+                  0       11    394
0-24 months   ki1000108-IRC              INDIA                          4+                  1        9    394
0-24 months   ki1000108-IRC              INDIA                          1                   0       66    394
0-24 months   ki1000108-IRC              INDIA                          1                   1       96    394
0-24 months   ki1000108-IRC              INDIA                          2                   0       70    394
0-24 months   ki1000108-IRC              INDIA                          2                   1      110    394
0-24 months   ki1000108-IRC              INDIA                          3                   0       14    394
0-24 months   ki1000108-IRC              INDIA                          3                   1       18    394
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0        4    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1        9    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      102    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1      121    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       11    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       29    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0       12    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1       20    308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       11    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       24    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       68    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       94    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0       26    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       48    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       12    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       27    310
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      152    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      162    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       18    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       33    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       62    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       55    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       64    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       97    643
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      132   7560
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      131   7560
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2662   7560
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1855   7560
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1181   7560
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      899   7560
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0      391   7560
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      309   7560
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       57   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       33   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      956   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      320   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      379   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      125   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      138   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1       54   2062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  0        1     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  1        1     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        8     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       36     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   0        2     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   1        5     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   0        1     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   1        6     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  1        9     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   1        2     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   1        3     15
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  0        2     80
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  1        3     80
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0        6     80
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1       22     80
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   0        5     80
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   1       20     80
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   0        9     80
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   1       13     80
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  0        5     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  1       22     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        2     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1       10     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   0        1     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   1        3     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   0        0     47
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   1        4     47
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  1        7     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        1     10
0-6 months    ki0047075b-MAL-ED          PERU                           2                   0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           2                   1        1     10
0-6 months    ki0047075b-MAL-ED          PERU                           3                   0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           3                   1        1     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0        4     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       18     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        0     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        1     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        0     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4     29
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        6     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        5     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        2     14
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        2    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        3    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       38    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       75    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       21    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       37    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        5    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       20    201
0-6 months    ki1000108-IRC              INDIA                          4+                  0        4    239
0-6 months    ki1000108-IRC              INDIA                          4+                  1        7    239
0-6 months    ki1000108-IRC              INDIA                          1                   0       42    239
0-6 months    ki1000108-IRC              INDIA                          1                   1       66    239
0-6 months    ki1000108-IRC              INDIA                          2                   0       30    239
0-6 months    ki1000108-IRC              INDIA                          2                   1       70    239
0-6 months    ki1000108-IRC              INDIA                          3                   0       10    239
0-6 months    ki1000108-IRC              INDIA                          3                   1       10    239
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  0        1    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  1        7    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       32    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1      101    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0        4    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       22    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   0        3    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   1       15    185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0        3    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       23    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       12    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       84    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   0        4    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       43    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   0        2    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       26    197
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  0       55    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  1       77    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0        8    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       10    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       22    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       22    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   0       19    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   1       50    263
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  0       50   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      131   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0      984   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1855   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0      373   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      899   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   0      128   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      309   4729
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       11    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       21    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0      144    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      177    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   0       61    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   1       71    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   0       26    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   1       37    548
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0        2     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        0     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       23     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       26     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0        5     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1        4     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0        1     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        0     61
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
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       20     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       16     95
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
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  0        4     24
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  1        7     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           2                   0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           2                   1        3     24
6-24 months   ki0047075b-MAL-ED          PERU                           3                   0        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           3                   1        7     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0        9     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       33     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        3     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        2     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0        2     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1       10     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        2     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       11     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        4     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        6     37
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0       97    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1       85    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       10    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       23    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       40    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       33    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       45    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       47    380
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
![](/tmp/7c5195b4-683d-4482-89f8-6c402f332bee/7301c80e-00ae-47ec-9c28-048db1c28d23/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c5195b4-683d-4482-89f8-6c402f332bee/7301c80e-00ae-47ec-9c28-048db1c28d23/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c5195b4-683d-4482-89f8-6c402f332bee/7301c80e-00ae-47ec-9c28-048db1c28d23/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c5195b4-683d-4482-89f8-6c402f332bee/7301c80e-00ae-47ec-9c28-048db1c28d23/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                0.4500000   0.2471890   0.6528110
0-24 months   ki1000108-IRC           INDIA        1                    NA                0.5925926   0.5081592   0.6770260
0-24 months   ki1000108-IRC           INDIA        2                    NA                0.6111111   0.5401543   0.6820679
0-24 months   ki1000108-IRC           INDIA        3                    NA                0.5625000   0.3398407   0.7851593
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.6798448   0.5084217   0.8512679
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.5882640   0.5131030   0.6634250
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.6573160   0.5441854   0.7704466
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.6864583   0.5355308   0.8373858
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.5172060   0.4572544   0.5771575
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.6469349   0.5178390   0.7760308
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4695379   0.3678563   0.5712194
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.6033381   0.5135868   0.6930894
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.4710146   0.4180642   0.5239651
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4113127   0.3963626   0.4262628
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.4393017   0.4151329   0.4634705
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.4071212   0.3641412   0.4501011
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.3667671   0.2565735   0.4769608
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2511219   0.2273468   0.2748971
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.2484081   0.2092223   0.2875938
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.2853728   0.2148405   0.3559051
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.5833333   0.4981147   0.6685520
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.5555556   0.3318457   0.7792654
0-6 months    ki1113344-GMS-Nepal     NEPAL        2                    NA                0.5000000   0.3491063   0.6508937
0-6 months    ki1113344-GMS-Nepal     NEPAL        3                    NA                0.7246377   0.6194642   0.8298111
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.7028748   0.6354936   0.7702560
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.6567034   0.6390921   0.6743147
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.7011992   0.6748664   0.7275321
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.7064522   0.6617912   0.7511133
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.6437492   0.4890277   0.7984708
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.5504917   0.4955851   0.6053983
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.5430885   0.4553226   0.6308545
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.5912561   0.4667789   0.7157332
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.4641923   0.3878089   0.5405757
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.6968539   0.5086942   0.8850136
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4435206   0.3135184   0.5735229
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.5188215   0.4024773   0.6351658
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.2095555   0.0950420   0.3240690
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1498994   0.1285006   0.1712982
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.1454688   0.1087064   0.1822312
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.1331093   0.0699874   0.1962312


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        NA                   NA                0.5913706   0.5391835   0.6435576
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5396579   0.4973524   0.5819633
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.4224868   0.4113573   0.4336163
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2580019   0.2386523   0.2773515
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.6754071   0.6620619   0.6887522
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4947368   0.4401559   0.5493178
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC           INDIA        1                    4+                1.3168724   0.8208567   2.1126135
0-24 months   ki1000108-IRC           INDIA        2                    4+                1.3580247   0.8527213   2.1627595
0-24 months   ki1000108-IRC           INDIA        3                    4+                1.2500000   0.6860395   2.2775656
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    4+                0.8652916   0.6522721   1.1478792
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    4+                0.9668619   0.7125358   1.3119648
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    4+                1.0097280   0.7222492   1.4116327
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                1.2508265   0.9928566   1.5758236
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                0.9078354   0.7100649   1.1606898
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.1665336   0.9659715   1.4087377
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                0.8732482   0.7760288   0.9826470
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                0.9326710   0.8230550   1.0568858
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                0.8643493   0.7408956   1.0083738
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.6846904   0.4996833   0.9381961
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.6772910   0.4823837   0.9509508
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.7780762   0.5273248   1.1480640
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    4+                0.9523810   0.6205522   1.4616490
0-6 months    ki1113344-GMS-Nepal     NEPAL        2                    4+                0.8571429   0.6129707   1.1985790
0-6 months    ki1113344-GMS-Nepal     NEPAL        3                    4+                1.2422360   1.0110429   1.5262956
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    4+                0.9343107   0.8457849   1.0321021
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    4+                0.9976162   0.9000161   1.1058002
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    4+                1.0050898   0.8960506   1.1273977
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.8551338   0.6591866   1.1093276
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.8436337   0.6315007   1.1270262
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.9184571   0.6672819   1.2641787
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                1.5012182   1.0934582   2.0610354
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                0.9554675   0.6828040   1.3370136
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.1176867   0.8458962   1.4768048
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.7153208   0.4066208   1.2583810
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.6941780   0.3801711   1.2675424
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.6351985   0.3080687   1.3096986


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                 0.1413706   -0.0576416    0.3403827
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                -0.0572641   -0.2182547    0.1037264
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0224519   -0.0210160    0.0659198
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0485279   -0.1008048    0.0037490
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.1087652   -0.2157763   -0.0017541
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0212294   -0.0381741    0.0806329
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0274677   -0.0937573    0.0388219
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0853551   -0.2365054    0.0657953
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0305446   -0.0266949    0.0877840
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0602821   -0.1717761    0.0512120


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                 0.2390558   -0.1833208    0.5106685
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                -0.0919787   -0.3835921    0.1381727
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0416039   -0.0424146    0.1188506
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.1148625   -0.2459217    0.0024106
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.4215673   -0.9015574   -0.0627361
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0351153   -0.0684841    0.1286698
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0406684   -0.1436130    0.0530094
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.1528581   -0.4589984    0.0890451
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0617390   -0.0611009    0.1703582
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.4038365   -1.3848102    0.1736210
