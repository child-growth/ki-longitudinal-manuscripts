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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        nrooms    wast_rec90d   n_cell      n  outcome_variable 
------------  -------------------------  -----------------------------  -------  ------------  -------  -----  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0        3    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        1    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       31    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       62    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0        7    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1        9    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0        2    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        6    121  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0        5     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1       13     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        0     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0        0     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        2     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0        1     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        3     24  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0        3    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        9    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       26    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       38    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       23    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       42    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       14    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   1       20    175  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0       14     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       41     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        4     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       24     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0        1     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        7     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0        0     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        6     97  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  0        4     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  1       14     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0        1     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        2     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           2                   0        0     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           2                   1        4     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           3                   0        1     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          PERU                           3                   1        8     34  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0       13     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       51     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        5     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        0     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        3     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        0     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        8     80  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0        2     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1       16     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        2     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       16     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        5     51  wast_rec90d      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        8     51  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        2    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        4    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       75    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1      124    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       32    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       54    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       11    324  wast_rec90d      
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       22    324  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          4+                  0       11    394  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          4+                  1        9    394  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          1                   0       66    394  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          1                   1       96    394  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          2                   0       70    394  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          2                   1      110    394  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          3                   0       14    394  wast_rec90d      
0-24 months   ki1000108-IRC              INDIA                          3                   1       18    394  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0        4    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1        9    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      102    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1      121    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       11    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       29    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0       12    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1       20    308  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       11    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       24    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       68    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       94    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0       26    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       48    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       12    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       27    310  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      152    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      162    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       18    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       33    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       62    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       55    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       64    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       97    643  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           4+                  0        1      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           4+                  1        2      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           1                   0        0      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           1                   1        2      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           2                   0        1      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           2                   1        2      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           3                   0        0      9  wast_rec90d      
0-24 months   ki1114097-CONTENT          PERU                           3                   1        1      9  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          4+                  0       13   1959  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          4+                  1        4   1959  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          1                   0     1079   1959  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          1                   1      319   1959  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          2                   0      373   1959  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          2                   1      125   1959  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          3                   0       34   1959  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          3                   1       12   1959  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      132   7560  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      131   7560  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2662   7560  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1855   7560  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1181   7560  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      899   7560  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0      391   7560  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      309   7560  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       57   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       33   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      956   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      320   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      379   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      125   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      138   2062  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1       54   2062  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  0        1     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  1        1     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        8     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       36     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   0        2     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   1        5     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   0        1     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   1        6     60  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  0        1     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  1        9     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        0     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   0        0     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   1        2     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   0        0     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   1        3     15  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  0        2     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  1        3     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0        6     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1       22     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   0        5     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   1       20     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   0        9     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   1       13     80  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  0        5     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  1       22     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        2     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1       10     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   0        1     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   1        3     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   0        0     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   1        4     47  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  0        0     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  1        7     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0        0     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        1     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           2                   0        0     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           2                   1        1     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           3                   0        0     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          PERU                           3                   1        1     10  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0        4     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       18     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        0     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        1     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        0     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4     29  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        6     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        0     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        5     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        1     14  wast_rec90d      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        2     14  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        2    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        3    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       38    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       75    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       21    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       37    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        5    201  wast_rec90d      
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       20    201  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          4+                  0        4    239  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          4+                  1        7    239  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          1                   0       42    239  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          1                   1       66    239  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          2                   0       30    239  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          2                   1       70    239  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          3                   0       10    239  wast_rec90d      
0-6 months    ki1000108-IRC              INDIA                          3                   1       10    239  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  0        1    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  1        7    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       32    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1      101    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0        4    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       22    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   0        3    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   1       15    185  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0        3    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       23    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       12    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       84    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   0        4    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       43    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   0        2    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       26    197  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  0       55    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  1       77    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0        8    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       10    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       22    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       22    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   0       19    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   1       50    263  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           4+                  0        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           4+                  1        2      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           1                   0        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           1                   1        1      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           2                   0        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           2                   1        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           3                   0        0      4  wast_rec90d      
0-6 months    ki1114097-CONTENT          PERU                           3                   1        1      4  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          4+                  0       10   1287  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          4+                  1        4   1287  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      568   1287  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      319   1287  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          2                   0      227   1287  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          2                   1      125   1287  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          3                   0       22   1287  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          3                   1       12   1287  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  0       50   4729  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      131   4729  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0      984   4729  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1855   4729  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0      373   4729  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      899   4729  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   0      128   4729  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      309   4729  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       11    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       21    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0      144    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      177    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   0       61    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   1       71    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   0       26    548  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   1       37    548  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0        2     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        0     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       23     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       26     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0        5     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1        4     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0        1     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        0     61  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0        4      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1        4      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0        1      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        0      9  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0        1     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        6     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       20     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       16     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       18     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       22     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   0        5     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   1        7     95  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0        9     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       19     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        2     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       14     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0        0     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        4     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0        0     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        2     50  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  0        4     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  1        7     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0        1     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           2                   0        0     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           2                   1        3     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           3                   0        1     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          PERU                           3                   1        7     24  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0        9     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       33     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        3     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        0     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        2     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        0     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4     51  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0        2     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1       10     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        2     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       11     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        4     37  wast_rec90d      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        6     37  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        0    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        1    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       37    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       49    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       11    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       17    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        6    123  wast_rec90d      
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        2    123  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          4+                  0        7    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          4+                  1        2    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          1                   0       24    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          1                   1       30    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          2                   0       40    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          2                   1       40    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          3                   0        4    155  wast_rec90d      
6-24 months   ki1000108-IRC              INDIA                          3                   1        8    155  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0        3    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1        2    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       70    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       20    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0        7    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1        7    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0        9    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1        5    123  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0        8    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1        1    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       56    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       10    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0       22    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1        5    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       10    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1        1    113  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0       97    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1       85    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       10    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       23    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       40    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       33    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       45    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       47    380  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           4+                  0        1      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           4+                  1        0      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           1                   0        0      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           1                   1        1      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           2                   0        1      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           2                   1        2      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           3                   0        0      5  wast_rec90d      
6-24 months   ki1114097-CONTENT          PERU                           3                   1        0      5  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          4+                  0        3    672  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          4+                  1        0    672  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          1                   0      511    672  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0    672  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          2                   0      146    672  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          2                   1        0    672  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          3                   0       12    672  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          3                   1        0    672  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0       82   2831  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1        0   2831  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1678   2831  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0   2831  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0      808   2831  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1        0   2831  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0      263   2831  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1        0   2831  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       46   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       12   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      812   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      143   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      318   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1       54   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      112   1514  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1       17   1514  wast_rec90d      


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/0a9eed51-d00b-433e-9611-fe55d40fd953/d57301de-68ff-4054-930a-eba567bbc8b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0a9eed51-d00b-433e-9611-fe55d40fd953/d57301de-68ff-4054-930a-eba567bbc8b4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0a9eed51-d00b-433e-9611-fe55d40fd953/d57301de-68ff-4054-930a-eba567bbc8b4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0a9eed51-d00b-433e-9611-fe55d40fd953/d57301de-68ff-4054-930a-eba567bbc8b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                0.4500000   0.2471890   0.6528110
0-24 months   ki1000108-IRC           INDIA        1                    NA                0.5925926   0.5081592   0.6770260
0-24 months   ki1000108-IRC           INDIA        2                    NA                0.6111111   0.5401543   0.6820679
0-24 months   ki1000108-IRC           INDIA        3                    NA                0.5625000   0.3398407   0.7851593
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.6857143   0.5209342   0.8504944
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.5802469   0.5049956   0.6554982
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.6486486   0.5382188   0.7590785
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.6923077   0.5453040   0.8393114
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.5159236   0.4561954   0.5756518
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.6470588   0.5229282   0.7711895
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4700855   0.3697893   0.5703817
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.6024845   0.5143128   0.6906561
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.4980989   0.4376678   0.5585299
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4106708   0.3963098   0.4250318
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.4322115   0.4110522   0.4533709
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.4414286   0.4044585   0.4783986
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.3666667   0.2567234   0.4766099
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2507837   0.2270319   0.2745355
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.2480159   0.2088977   0.2871340
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.2812500   0.2120372   0.3504628
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.5833333   0.4981147   0.6685520
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.5555556   0.3318457   0.7792654
0-6 months    ki1113344-GMS-Nepal     NEPAL        2                    NA                0.5000000   0.3491063   0.6508937
0-6 months    ki1113344-GMS-Nepal     NEPAL        3                    NA                0.7246377   0.6194642   0.8298111
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.7237569   0.6585820   0.7889318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.6533991   0.6358917   0.6709065
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.7067610   0.6817298   0.7317922
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.7070938   0.6645307   0.7496569
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.6562500   0.4915378   0.8209622
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.5514019   0.4969447   0.6058590
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.5378788   0.4527497   0.6230079
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.5873016   0.4656210   0.7089822
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.4670330   0.3913393   0.5427267
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.6969697   0.5201686   0.8737708
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4520548   0.3254929   0.5786167
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.5108696   0.3944329   0.6273063
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.2068966   0.0939355   0.3198576
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1497382   0.1283680   0.1711084
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.1451613   0.1085956   0.1817269
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.1317829   0.0692086   0.1943573


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
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    4+                0.8461934   0.6440264   1.1118230
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    4+                0.9459459   0.7046622   1.2698478
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    4+                1.0096154   0.7326591   1.3912654
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                1.2541757   1.0023703   1.5692372
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                0.9111533   0.7147455   1.1615328
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.1677785   0.9689629   1.4073880
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                0.8244765   0.7266799   0.9354345
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                0.8677224   0.7613121   0.9890058
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                0.8862268   0.7647506   1.0269988
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.6839555   0.4994260   0.9366656
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.6764069   0.4820314   0.9491630
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.7670455   0.5204155   1.1305557
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    4+                0.9523810   0.6205522   1.4616490
0-6 months    ki1113344-GMS-Nepal     NEPAL        2                    4+                0.8571429   0.6129707   1.1985790
0-6 months    ki1113344-GMS-Nepal     NEPAL        3                    4+                1.2422360   1.0110429   1.5262956
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    4+                0.9027880   0.8218313   0.9917196
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    4+                0.9765171   0.8864521   1.0757329
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    4+                0.9769770   0.8766837   1.0887438
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.8402314   0.6415940   1.1003670
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.8196248   0.6091858   1.1027586
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.8949358   0.6463204   1.2391842
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                1.4923351   1.1042417   2.0168267
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                0.9679291   0.7002806   1.3378733
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.0938619   0.8268902   1.4470286
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.7237347   0.4116305   1.2724811
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.7016129   0.3845613   1.2800578
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.6369509   0.3089293   1.3132663


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                 0.1413706   -0.0576416    0.3403827
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                -0.0631336   -0.2179095    0.0916422
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0237343   -0.0195251    0.0669937
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0756121   -0.1349546   -0.0162696
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.1086647   -0.2154256   -0.0019038
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0212294   -0.0381741    0.0806329
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0483498   -0.1123866    0.0156869
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0978558   -0.2581474    0.0624357
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0277039   -0.0289729    0.0843807
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0576231   -0.1675715    0.0523253


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                 0.2390558   -0.1833208    0.5106685
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                -0.1014064   -0.3803220    0.1211500
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0439802   -0.0396218    0.1208594
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.1789691   -0.3282015   -0.0465040
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.4211779   -0.8999044   -0.0630781
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0351153   -0.0684841    0.1286698
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0715862   -0.1707587    0.0191856
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.1752451   -0.5011455    0.0799020
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0559972   -0.0654705    0.1636171
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.3860238   -1.3532606    0.1836595
