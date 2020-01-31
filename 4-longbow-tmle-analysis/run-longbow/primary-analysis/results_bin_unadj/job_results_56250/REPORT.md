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

**Outcome Variable:** ever_sstunted

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

agecat        studyid                    country                        nrooms    ever_sstunted   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  -------  --------------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                    0       12     242  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                    1        0     242  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0      113     242  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       39     242  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0       38     242  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1       12     242  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0       26     242  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1        2     242  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                    0      116     210  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                    1       11     210  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0        4     210  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     210  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       18     210  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        2     210  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       51     210  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        8     210  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                    0       21     235  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                    1        4     235  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       65     235  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       19     235  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       53     235  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     1       25     235  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       38     235  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     1       10     235  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                    0      120     236  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                    1       11     236  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       46     236  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        6     236  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     0       30     236  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     1        1     236  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     0       19     236  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     1        3     236  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           4+                    0      110     272  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           4+                    1       29     272  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0       13     272  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        6     272  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           2                     0       41     272  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           2                     1       11     272  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           3                     0       49     272  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          PERU                           3                     1       13     272  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                    0      140     257  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                    1       56     257  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       10     257  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        4     257  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       19     257  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        3     257  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       18     257  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        7     257  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                    0       51     250  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                    1       57     250  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        7     250  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        6     250  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       24     250  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       39     250  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       34     250  ever_sstunted    
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1       32     250  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                    0        5     373  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                    1        9     373  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       68     373  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      134     373  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     0       40     373  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     1       66     373  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       23     373  ever_sstunted    
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     1       28     373  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          4+                    0       14     408  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          4+                    1        3     408  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          1                     0      138     408  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          1                     1       47     408  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          2                     0      124     408  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          2                     1       46     408  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          3                     0       30     408  ever_sstunted    
0-24 months   ki1000108-IRC              INDIA                          3                     1        6     408  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                    0       21     700  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                    1        2     700  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      434     700  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       73     700  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                     0       96     700  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                     1       12     700  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                     0       54     700  ever_sstunted    
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                     1        8     700  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                    0       86     758  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                    1        9     758  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      318     758  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       50     758  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                     0      162     758  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                     1       29     758  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                     0       93     758  ever_sstunted    
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                     1       11     758  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                    0      241     698  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                    1       82     698  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0       37     698  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       12     698  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0      111     698  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1       34     698  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0      140     698  ever_sstunted    
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1       41     698  ever_sstunted    
0-24 months   ki1114097-CONTENT          PERU                           4+                    0       75     215  ever_sstunted    
0-24 months   ki1114097-CONTENT          PERU                           4+                    1        3     215  ever_sstunted    
0-24 months   ki1114097-CONTENT          PERU                           1                     0       38     215  ever_sstunted    
0-24 months   ki1114097-CONTENT          PERU                           1                     1        6     215  ever_sstunted    
0-24 months   ki1114097-CONTENT          PERU                           2                     0       51     215  ever_sstunted    
0-24 months   ki1114097-CONTENT          PERU                           2                     1        3     215  ever_sstunted    
0-24 months   ki1114097-CONTENT          PERU                           3                     0       36     215  ever_sstunted    
0-24 months   ki1114097-CONTENT          PERU                           3                     1        3     215  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          4+                    0      102    5374  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          4+                    1        4    5374  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          1                     0     2917    5374  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          1                     1      602    5374  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          2                     0     1440    5374  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          2                     1      114    5374  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          3                     0      178    5374  ever_sstunted    
0-24 months   ki1135781-COHORTS          INDIA                          3                     1       17    5374  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                    0     1017   27197  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                    1      122   27197  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    13084   27197  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     3039   27197  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     5874   27197  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1446   27197  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0     2203   27197  ever_sstunted    
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1      412   27197  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                    0      250    5426  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                    1       36    5426  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2466    5426  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      725    5426  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0     1130    5426  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1      257    5426  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      476    5426  ever_sstunted    
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1       86    5426  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                    0       12     242  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                    1        0     242  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0      140     242  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1       12     242  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     0       46     242  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     1        4     242  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     0       28     242  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     1        0     242  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                    0      119     210  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                    1        8     210  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0        4     210  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     210  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     0       18     210  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     1        2     210  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     0       53     210  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     1        6     210  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                    0       25     235  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                    1        0     235  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       77     235  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        7     235  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     0       68     235  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     1       10     235  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     0       45     235  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     1        3     235  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                    0      125     236  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                    1        6     236  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0       48     236  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        4     236  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     0       31     236  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     1        0     236  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     0       22     236  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     1        0     236  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           4+                    0      126     272  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           4+                    1       13     272  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0       14     272  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        5     272  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           2                     0       47     272  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           2                     1        5     272  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           3                     0       52     272  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          PERU                           3                     1       10     272  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                    0      172     257  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                    1       24     257  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       13     257  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        1     257  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       21     257  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        1     257  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       25     257  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        0     257  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                    0       94     250  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                    1       14     250  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       10     250  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        3     250  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       50     250  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       13     250  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       61     250  ever_sstunted    
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        5     250  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                    0       12     368  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                    1        2     368  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      153     368  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       46     368  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     0       74     368  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     1       30     368  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       38     368  ever_sstunted    
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     1       13     368  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          4+                    0       16     408  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          4+                    1        1     408  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          1                     0      158     408  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          1                     1       27     408  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          2                     0      140     408  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          2                     1       30     408  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          3                     0       32     408  ever_sstunted    
0-6 months    ki1000108-IRC              INDIA                          3                     1        4     408  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                    0       23     700  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                    1        0     700  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      485     700  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1       22     700  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                     0      102     700  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                     1        6     700  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                     0       59     700  ever_sstunted    
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                     1        3     700  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                    0       90     758  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                    1        5     758  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      346     758  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       22     758  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                     0      176     758  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                     1       15     758  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                     0       99     758  ever_sstunted    
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                     1        5     758  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                    0      294     698  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                    1       29     698  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0       43     698  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1        6     698  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     0      133     698  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     1       12     698  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     0      168     698  ever_sstunted    
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     1       13     698  ever_sstunted    
0-6 months    ki1114097-CONTENT          PERU                           4+                    0       76     215  ever_sstunted    
0-6 months    ki1114097-CONTENT          PERU                           4+                    1        2     215  ever_sstunted    
0-6 months    ki1114097-CONTENT          PERU                           1                     0       41     215  ever_sstunted    
0-6 months    ki1114097-CONTENT          PERU                           1                     1        3     215  ever_sstunted    
0-6 months    ki1114097-CONTENT          PERU                           2                     0       52     215  ever_sstunted    
0-6 months    ki1114097-CONTENT          PERU                           2                     1        2     215  ever_sstunted    
0-6 months    ki1114097-CONTENT          PERU                           3                     0       37     215  ever_sstunted    
0-6 months    ki1114097-CONTENT          PERU                           3                     1        2     215  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          4+                    0      100    5193  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          4+                    1        1    5193  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          1                     0     3204    5193  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          1                     1      199    5193  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          2                     0     1456    5193  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          2                     1       45    5193  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          3                     0      180    5193  ever_sstunted    
0-6 months    ki1135781-COHORTS          INDIA                          3                     1        8    5193  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                    0     1029   27131  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                    1      104   27131  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    13700   27131  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2394   27131  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     0     6127   27131  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1173   27131  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     0     2273   27131  ever_sstunted    
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     1      331   27131  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                    0      250    5117  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                    1       18    5117  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2682    5117  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1      336    5117  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     0     1184    5117  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     1      116    5117  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     0      482    5117  ever_sstunted    
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     1       49    5117  ever_sstunted    


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/89789468-4908-41ae-975f-18ee31bd3002/eb2ffc4a-7f04-4526-8710-d803f66353fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/89789468-4908-41ae-975f-18ee31bd3002/eb2ffc4a-7f04-4526-8710-d803f66353fe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/89789468-4908-41ae-975f-18ee31bd3002/eb2ffc4a-7f04-4526-8710-d803f66353fe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/89789468-4908-41ae-975f-18ee31bd3002/eb2ffc4a-7f04-4526-8710-d803f66353fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.2086331   0.1409592   0.2763070
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.3157895   0.1063952   0.5251837
0-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.2115385   0.1003317   0.3227452
0-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.2096774   0.1081625   0.3111924
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.5277778   0.4334357   0.6221198
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4615385   0.1900021   0.7330749
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6190476   0.4988916   0.7392036
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.4848485   0.3640346   0.6056624
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.6428571   0.3915266   0.8941877
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6633663   0.5981118   0.7286209
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.6226415   0.5302410   0.7150420
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.5490196   0.4122723   0.6857669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.0947368   0.0358091   0.1536646
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1358696   0.1008378   0.1709013
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.1518325   0.1009063   0.2027587
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1057692   0.0466236   0.1649148
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.2538700   0.2063724   0.3013675
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2448980   0.1244064   0.3653896
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2344828   0.1654733   0.3034922
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.2265193   0.1654958   0.2875429
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.1071115   0.0873880   0.1268350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1884885   0.1815189   0.1954581
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1975410   0.1874609   0.2076210
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1575526   0.1418932   0.1732120
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.1258741   0.0829140   0.1688342
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2272015   0.2116898   0.2427132
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.1852920   0.1616881   0.2088959
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.1530249   0.1220908   0.1839590
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                0.0935252   0.0450318   0.1420186
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.2631579   0.0647922   0.4615236
0-6 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.0961538   0.0158795   0.1764282
0-6 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.1612903   0.0695707   0.2530099
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.0526316   0.0076996   0.0975636
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0597826   0.0355437   0.0840215
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.0785340   0.0403584   0.1167097
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.0480769   0.0069347   0.0892191
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.0897833   0.0585852   0.1209814
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1224490   0.0305998   0.2142981
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0827586   0.0378816   0.1276356
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.0718232   0.0341816   0.1094648
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.0917917   0.0731356   0.1104479
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1487511   0.1426378   0.1548644
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1606849   0.1511226   0.1702473
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1271121   0.1131425   0.1410818
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.0671642   0.0241932   0.1101352
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1113320   0.0994446   0.1232194
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.0892308   0.0720558   0.1064058
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.0922787   0.0670430   0.1175144


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2169118   0.1678424   0.2659811
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5360000   0.4740573   0.5979427
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2421203   0.2103189   0.2739218
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1845424   0.1789365   0.1901483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2034648   0.1916516   0.2152780
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1213235   0.0824503   0.1601967
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0859599   0.0651504   0.1067694
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1475065   0.1424552   0.1525578
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1014266   0.0924810   0.1103722


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    4+                1.5136116   0.7234893   3.166626
0-24 months   ki0047075b-MAL-ED          PERU                           2                    4+                1.0139257   0.5466799   1.880525
0-24 months   ki0047075b-MAL-ED          PERU                           3                    4+                1.0050056   0.5611477   1.799947
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                0.8744939   0.4728415   1.617328
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                1.1729323   0.9008990   1.527108
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                0.9186603   0.6760401   1.248353
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                1.0319032   0.6895341   1.544266
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                0.9685535   0.6375466   1.471415
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                0.8540305   0.5372200   1.357671
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                1.4341787   0.7314377   2.812090
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                1.6026759   0.7905631   3.249039
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                1.1164529   0.4837121   2.576878
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                0.9646590   0.5698625   1.632968
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                0.9236333   0.6516941   1.309047
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                0.8922652   0.6427600   1.238623
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                1.7597409   1.4631941   2.116389
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                1.8442556   1.5235976   2.232400
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                1.4709212   1.2007694   1.801852
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                1.8049897   1.2783422   2.548604
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                1.4720420   1.0223564   2.119523
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                1.2156979   0.8207865   1.800616
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           1                    4+                2.8137652   1.1270690   7.024658
0-6 months    ki0047075b-MAL-ED          PERU                           2                    4+                1.0281065   0.3847940   2.746932
0-6 months    ki0047075b-MAL-ED          PERU                           3                    4+                1.7245658   0.7988469   3.723025
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                1.1358696   0.4414468   2.922661
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                1.4921466   0.5586757   3.985320
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                0.9134615   0.2727256   3.059530
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                1.3638283   0.5966754   3.117319
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                0.9217598   0.4840749   1.755185
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                0.7999619   0.4265575   1.500241
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                1.6205285   1.3243106   1.983004
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                1.7505386   1.4134833   2.167967
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                1.3847888   1.1038466   1.737234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                1.6576099   0.8649336   3.176741
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                1.3285470   0.6860465   2.572766
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                1.3739276   0.6815970   2.769491


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0082787   -0.0397503   0.0563076
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0082222   -0.0628225   0.0792669
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0074684   -0.2540807   0.2391439
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0358700   -0.0205062   0.0922463
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0117496   -0.0460921   0.0225928
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0774309    0.0582475   0.0966143
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0775907    0.0358578   0.1193236
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0277983   -0.0104018   0.0659985
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0093737   -0.0331466   0.0518939
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0038234   -0.0263078   0.0186610
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0557148    0.0376317   0.0737979
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0342624   -0.0073709   0.0758958


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0381661   -0.2107165   0.2358868
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0153400   -0.1265586   0.1393654
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0117541   -0.4848403   0.3106018
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.2746411   -0.3110170   0.5986738
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0485280   -0.2003558   0.0840957
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.4195833    0.3055454   0.5148948
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.3813469    0.1375928   0.5562054
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.2291258   -0.1495646   0.4830677
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.1511758   -0.9014990   0.6210871
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0444788   -0.3414847   0.1867697
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.3777109    0.2417645   0.4892831
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.3378052   -0.2352870   0.6450202
