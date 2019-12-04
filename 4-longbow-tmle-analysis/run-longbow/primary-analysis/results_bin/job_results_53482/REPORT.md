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

**Outcome Variable:** ever_stunted

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
* delta_sex
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

agecat        studyid                    country                        nrooms    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0        8     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        4     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       56     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       96     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       18     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1       32     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       11     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1       17     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0       97     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1       30     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       16     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       37     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1       22     210
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0        9     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1       16     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       38     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       46     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       21     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1       57     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       21     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       27     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0       87     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1       44     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       33     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       19     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       22     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        9     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       12     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1       10     236
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   0       47     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   1       92     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        4     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1       15     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    0       15     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1       37     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    0       25     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1       37     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0       78     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1      118     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        5     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        9     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        8     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1       14     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        7     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1       18     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       96     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        5     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        8     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        8     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       55     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0        9     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       57     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       11     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      191     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       98     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       44     373
0-24 months   ki1000108-IRC              INDIA                          4+                   0        4     408
0-24 months   ki1000108-IRC              INDIA                          4+                   1       13     408
0-24 months   ki1000108-IRC              INDIA                          1                    0       65     408
0-24 months   ki1000108-IRC              INDIA                          1                    1      120     408
0-24 months   ki1000108-IRC              INDIA                          2                    0       66     408
0-24 months   ki1000108-IRC              INDIA                          2                    1      104     408
0-24 months   ki1000108-IRC              INDIA                          3                    0       10     408
0-24 months   ki1000108-IRC              INDIA                          3                    1       26     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       16     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        7     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      278     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      229     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       65     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       43     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       36     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1       26     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       56     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1       39     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      174     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      194     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0       98     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       93     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       68     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       36     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0      113     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1      210     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       20     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       29     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       49     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       96     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0       70     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1      111     698
0-24 months   ki1114097-CONTENT          PERU                           4+                   0       53     215
0-24 months   ki1114097-CONTENT          PERU                           4+                   1       25     215
0-24 months   ki1114097-CONTENT          PERU                           1                    0       29     215
0-24 months   ki1114097-CONTENT          PERU                           1                    1       15     215
0-24 months   ki1114097-CONTENT          PERU                           2                    0       41     215
0-24 months   ki1114097-CONTENT          PERU                           2                    1       13     215
0-24 months   ki1114097-CONTENT          PERU                           3                    0       29     215
0-24 months   ki1114097-CONTENT          PERU                           3                    1       10     215
0-24 months   ki1135781-COHORTS          INDIA                          4+                   0       87    5374
0-24 months   ki1135781-COHORTS          INDIA                          4+                   1       19    5374
0-24 months   ki1135781-COHORTS          INDIA                          1                    0     1943    5374
0-24 months   ki1135781-COHORTS          INDIA                          1                    1     1576    5374
0-24 months   ki1135781-COHORTS          INDIA                          2                    0     1116    5374
0-24 months   ki1135781-COHORTS          INDIA                          2                    1      438    5374
0-24 months   ki1135781-COHORTS          INDIA                          3                    0      143    5374
0-24 months   ki1135781-COHORTS          INDIA                          3                    1       52    5374
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      769   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      370   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7848   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     8275   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     3624   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3696   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1481   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1     1134   27197
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      143    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1      143    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1253    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1938    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      610    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1      777    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      263    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1      299    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   0       10     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       95     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1       57     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    0       33     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1       17     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    0       22     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1        6     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   0      103     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   1       24     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    0       16     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    0       42     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1       17     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   0       18     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   1        7     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       58     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1       26     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    0       45     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    1       33     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    0       33     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    1       15     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   0      108     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   1       23     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       43     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        9     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    0       28     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    1        3     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    0       16     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    1        6     236
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   0       79     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   1       60     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0        7     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1       12     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                    0       27     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                    1       25     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                    0       37     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                    1       25     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      119     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1       77     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        9     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       14     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        8     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       14     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1       11     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       64     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       44     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        8     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        5     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       31     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       32     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       44     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       22     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       93     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      106     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       51     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       53     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       29     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       22     368
0-6 months    ki1000108-IRC              INDIA                          4+                   0        6     408
0-6 months    ki1000108-IRC              INDIA                          4+                   1       11     408
0-6 months    ki1000108-IRC              INDIA                          1                    0      108     408
0-6 months    ki1000108-IRC              INDIA                          1                    1       77     408
0-6 months    ki1000108-IRC              INDIA                          2                    0       97     408
0-6 months    ki1000108-IRC              INDIA                          2                    1       73     408
0-6 months    ki1000108-IRC              INDIA                          3                    0       23     408
0-6 months    ki1000108-IRC              INDIA                          3                    1       13     408
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   0       19     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   1        4     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      381     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1      126     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0       85     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1       23     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    0       47     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1       15     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       68     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1       27     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      254     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      114     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    0      128     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       63     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       79     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       25     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   0      227     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1       96     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0       34     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       15     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0       97     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       48     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    0      118     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1       63     698
0-6 months    ki1114097-CONTENT          PERU                           4+                   0       59     215
0-6 months    ki1114097-CONTENT          PERU                           4+                   1       19     215
0-6 months    ki1114097-CONTENT          PERU                           1                    0       31     215
0-6 months    ki1114097-CONTENT          PERU                           1                    1       13     215
0-6 months    ki1114097-CONTENT          PERU                           2                    0       46     215
0-6 months    ki1114097-CONTENT          PERU                           2                    1        8     215
0-6 months    ki1114097-CONTENT          PERU                           3                    0       31     215
0-6 months    ki1114097-CONTENT          PERU                           3                    1        8     215
0-6 months    ki1135781-COHORTS          INDIA                          4+                   0       91    5193
0-6 months    ki1135781-COHORTS          INDIA                          4+                   1       10    5193
0-6 months    ki1135781-COHORTS          INDIA                          1                    0     2654    5193
0-6 months    ki1135781-COHORTS          INDIA                          1                    1      749    5193
0-6 months    ki1135781-COHORTS          INDIA                          2                    0     1294    5193
0-6 months    ki1135781-COHORTS          INDIA                          2                    1      207    5193
0-6 months    ki1135781-COHORTS          INDIA                          3                    0      164    5193
0-6 months    ki1135781-COHORTS          INDIA                          3                    1       24    5193
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      826   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      307   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     9222   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     6872   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     4198   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3102   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1677   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1      927   27131
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      189    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1       79    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1901    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1117    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    0      878    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1      422    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    0      371    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1      160    5117
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0        8     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        2     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       55     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       39     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       17     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1       15     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       11     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1       11     158
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0       96     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1        6     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       15     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        0     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       37     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        5     163
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0        9     154
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1        9     154
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       38     154
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       20     154
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       21     154
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1       24     154
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       21     154
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       12     154
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0       87     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1       21     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       32     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       10     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       22     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        6     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       12     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        4     194
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   0       47     149
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   1       32     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        4     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        3     149
6-24 months   ki0047075b-MAL-ED          PERU                           2                    0       14     149
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1       12     149
6-24 months   ki0047075b-MAL-ED          PERU                           3                    0       25     149
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1       12     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0       78     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1       41     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        5     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        4     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        8     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        6     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        6     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        7     155
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       12     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       52     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        4     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        7     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       23     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0        8     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       35     144
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0        2     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        5     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       11     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       85     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        8     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       45     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0        7     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       22     185
6-24 months   ki1000108-IRC              INDIA                          4+                   0        4     234
6-24 months   ki1000108-IRC              INDIA                          4+                   1        2     234
6-24 months   ki1000108-IRC              INDIA                          1                    0       65     234
6-24 months   ki1000108-IRC              INDIA                          1                    1       43     234
6-24 months   ki1000108-IRC              INDIA                          2                    0       66     234
6-24 months   ki1000108-IRC              INDIA                          2                    1       31     234
6-24 months   ki1000108-IRC              INDIA                          3                    0       10     234
6-24 months   ki1000108-IRC              INDIA                          3                    1       13     234
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       15     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        3     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      217     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      103     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       55     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       20     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       32     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1       11     456
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       52     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1       12     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      157     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       80     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0       96     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       30     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       68     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       11     506
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0       82     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1      114     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       11     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       14     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       36     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       48     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0       44     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       48     397
6-24 months   ki1114097-CONTENT          PERU                           4+                   0       53     167
6-24 months   ki1114097-CONTENT          PERU                           4+                   1        6     167
6-24 months   ki1114097-CONTENT          PERU                           1                    0       29     167
6-24 months   ki1114097-CONTENT          PERU                           1                    1        2     167
6-24 months   ki1114097-CONTENT          PERU                           2                    0       41     167
6-24 months   ki1114097-CONTENT          PERU                           2                    1        5     167
6-24 months   ki1114097-CONTENT          PERU                           3                    0       29     167
6-24 months   ki1114097-CONTENT          PERU                           3                    1        2     167
6-24 months   ki1135781-COHORTS          INDIA                          4+                   0       77    4108
6-24 months   ki1135781-COHORTS          INDIA                          4+                   1        9    4108
6-24 months   ki1135781-COHORTS          INDIA                          1                    0     1740    4108
6-24 months   ki1135781-COHORTS          INDIA                          1                    1      827    4108
6-24 months   ki1135781-COHORTS          INDIA                          2                    0     1059    4108
6-24 months   ki1135781-COHORTS          INDIA                          2                    1      231    4108
6-24 months   ki1135781-COHORTS          INDIA                          3                    0      137    4108
6-24 months   ki1135781-COHORTS          INDIA                          3                    1       28    4108
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      503   10486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1       63   10486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4479   10486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1403   10486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     2301   10486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      594   10486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0      936   10486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1      207   10486
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      142    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1       64    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1252    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      821    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      609    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1      355    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      262    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1      139    3644


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/3da2706f-de2d-404a-beec-ab90d359e4e6/58df4ff7-43dc-4236-8e7d-5f1c15c5f01e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3da2706f-de2d-404a-beec-ab90d359e4e6/58df4ff7-43dc-4236-8e7d-5f1c15c5f01e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3da2706f-de2d-404a-beec-ab90d359e4e6/58df4ff7-43dc-4236-8e7d-5f1c15c5f01e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3da2706f-de2d-404a-beec-ab90d359e4e6/58df4ff7-43dc-4236-8e7d-5f1c15c5f01e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.6400000   0.4514418   0.8285582
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.5476190   0.4409531   0.6542850
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.7307692   0.6321233   0.8294152
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.5625000   0.4218616   0.7031384
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.3358779   0.2548286   0.4169271
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3653846   0.2342254   0.4965439
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.2903226   0.1301972   0.4504480
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.4545455   0.2460355   0.6630554
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.6020408   0.5333816   0.6707000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6428571   0.3913740   0.8943403
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.6363636   0.4349589   0.8377684
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.7200000   0.5436522   0.8963478
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8888889   0.8294995   0.9482783
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6153846   0.3503922   0.8803770
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8730159   0.7906336   0.9553982
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8636364   0.7806778   0.9465949
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.3043478   0.1161668   0.4925288
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4516765   0.4083268   0.4950263
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3981481   0.3057605   0.4905358
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.4193548   0.2964387   0.5422710
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.4731123   0.3765255   0.5696991
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5062220   0.4561893   0.5562546
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.4793387   0.4073998   0.5512777
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.3508516   0.2603279   0.4413753
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.6497551   0.5976163   0.7018938
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5864885   0.4445601   0.7284170
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6585740   0.5817412   0.7354067
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.6130275   0.5413132   0.6847419
0-24 months   ki1114097-CONTENT          PERU                           4+                   NA                0.3289300   0.2222435   0.4356165
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.3558187   0.2144887   0.4971487
0-24 months   ki1114097-CONTENT          PERU                           2                    NA                0.2449594   0.1296046   0.3603141
0-24 months   ki1114097-CONTENT          PERU                           3                    NA                0.2788327   0.1399456   0.4177198
0-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.1827896   0.1291010   0.2364781
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4457162   0.4292423   0.4621900
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2834004   0.2605591   0.3062418
0-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.2808807   0.2201673   0.3415941
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.3804919   0.3533147   0.4076691
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5196086   0.5097444   0.5294728
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4806073   0.4664862   0.4947284
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4396000   0.4150388   0.4641612
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.4963560   0.4249309   0.5677811
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6076239   0.5874578   0.6277900
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.5599719   0.5275162   0.5924275
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.5332238   0.4857104   0.5807373
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                0.2800000   0.1036200   0.4563800
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.3095238   0.2104507   0.4085969
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                0.4230769   0.3132028   0.5329510
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                0.3125000   0.1810941   0.4439059
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                0.4316547   0.3491621   0.5141473
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.6315789   0.4142802   0.8488777
0-6 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.4807692   0.3447204   0.6168180
0-6 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.4032258   0.2808963   0.5255553
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.3928571   0.3243510   0.4613633
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3571429   0.1056597   0.6086260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.3636364   0.1622316   0.5650411
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.4400000   0.2450402   0.6349598
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.4074074   0.3145537   0.5002611
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3846154   0.1196230   0.6496078
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5079365   0.3842383   0.6316347
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3333333   0.2193765   0.4472901
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.5000000   0.2377322   0.7622678
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5326633   0.4632482   0.6020784
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.5096154   0.4134072   0.6058236
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.4313726   0.2952613   0.5674838
0-6 months    ki1000108-IRC              INDIA                          4+                   NA                0.6470588   0.4196122   0.8745055
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.4162162   0.3450980   0.4873344
0-6 months    ki1000108-IRC              INDIA                          2                    NA                0.4294118   0.3549120   0.5039115
0-6 months    ki1000108-IRC              INDIA                          3                    NA                0.3611111   0.2040159   0.5182063
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.3333410   0.2396062   0.4270759
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2962272   0.2493823   0.3430720
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.3232126   0.2556578   0.3907673
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.2593087   0.1743603   0.3442572
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.2958797   0.2458965   0.3458629
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3009466   0.1677290   0.4341642
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.3348658   0.2570662   0.4126654
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.3433912   0.2740176   0.4127649
0-6 months    ki1114097-CONTENT          PERU                           4+                   NA                0.2435897   0.1481078   0.3390717
0-6 months    ki1114097-CONTENT          PERU                           1                    NA                0.2954545   0.1603301   0.4305790
0-6 months    ki1114097-CONTENT          PERU                           2                    NA                0.1481481   0.0531766   0.2431197
0-6 months    ki1114097-CONTENT          PERU                           3                    NA                0.2051282   0.0781032   0.3321533
0-6 months    ki1135781-COHORTS          INDIA                          4+                   NA                0.1031326   0.0595559   0.1467092
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2184959   0.2045438   0.2324479
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1375413   0.1198030   0.1552797
0-6 months    ki1135781-COHORTS          INDIA                          3                    NA                0.1387701   0.0904542   0.1870859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.3098987   0.2846818   0.3351155
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4361075   0.4263556   0.4458595
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3986763   0.3850909   0.4122616
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.3580504   0.3335475   0.3825533
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.2898886   0.2253796   0.3543977
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3702090   0.3497132   0.3907047
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3239620   0.2947746   0.3531494
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3058975   0.2623483   0.3494467
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.5000000   0.2682624   0.7317376
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3448276   0.2221041   0.4675510
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.5333333   0.3870957   0.6795710
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.3636364   0.1989749   0.5282979
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1974531   0.0980142   0.2968919
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3325690   0.2722462   0.3928918
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.2362570   0.1606327   0.3118813
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1403568   0.0617115   0.2190020
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.5761709   0.5063303   0.6460115
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5372664   0.3365719   0.7379608
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5535367   0.4456486   0.6614248
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.5151416   0.4113791   0.6189040
6-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.1046512   0.0504701   0.1588323
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3221660   0.3040863   0.3402456
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1790698   0.1581445   0.1999950
6-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.1696970   0.1124155   0.2269785
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.1526540   0.1150470   0.1902610
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2278512   0.2150398   0.2406626
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2139523   0.1944846   0.2334199
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2023881   0.1744303   0.2303460
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.3127217   0.2329021   0.3925413
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3961382   0.3714865   0.4207898
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3689843   0.3322192   0.4057494
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3467310   0.2922084   0.4012535


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6212766   0.5591262   0.6834270
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3474576   0.2865784   0.4083369
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6186770   0.5591785   0.6781756
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8640000   0.8214230   0.9065770
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6389685   0.6033115   0.6746254
0-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2930233   0.2320422   0.3540043
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3879792   0.3749497   0.4010086
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4954591   0.4876236   0.5032945
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5818282   0.5658219   0.5978346
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3446809   0.2837868   0.4055749
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4485294   0.3893160   0.5077428
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3929961   0.3331663   0.4528260
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4120000   0.3508656   0.4731344
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4264706   0.3784228   0.4745184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3180516   0.2834770   0.3526261
0-6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2232558   0.1674626   0.2790491
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1906412   0.1799566   0.2013259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4131068   0.4056579   0.4205556
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3474692   0.3322601   0.3626783
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2665531   0.2530304   0.2800757
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2161930   0.2068189   0.2255671
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3784303   0.3598372   0.3970234


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                0.8556548   0.6010503   1.2181094
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                1.1418269   0.8257651   1.5788615
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                0.8789063   0.5972086   1.2934780
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                1.0878497   0.7058679   1.6765416
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                0.8643695   0.4734187   1.5781688
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                1.3533058   0.8059220   2.2724738
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                1.0677966   0.7104312   1.6049262
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                1.0570108   0.7550521   1.4797280
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                1.1959322   0.9127887   1.5669057
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                0.6923077   0.4477636   1.0704085
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                0.9821429   0.8749033   1.1025271
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                0.9715909   0.8643055   1.0921935
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                1.4840800   0.7938043   2.7746052
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                1.3082011   0.6758638   2.5321522
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                1.3778802   0.6950869   2.7313908
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                1.0699826   0.8542848   1.3401419
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                1.0131605   0.7874064   1.3036398
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                0.7415821   0.5339359   1.0299814
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                0.9026302   0.6995311   1.1646962
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                1.0135726   0.8798975   1.1675558
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                0.9434747   0.8186348   1.0873525
0-24 months   ki1114097-CONTENT          PERU                           4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           1                    4+                1.0817459   0.6493784   1.8019910
0-24 months   ki1114097-CONTENT          PERU                           2                    4+                0.7447158   0.4204962   1.3189217
0-24 months   ki1114097-CONTENT          PERU                           3                    4+                0.8476961   0.4687131   1.5331098
0-24 months   ki1135781-COHORTS          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          1                    4+                2.4384114   1.8136096   3.2784620
0-24 months   ki1135781-COHORTS          INDIA                          2                    4+                1.5504189   1.1433254   2.1024626
0-24 months   ki1135781-COHORTS          INDIA                          3                    4+                1.5366342   1.0672023   2.2125559
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                1.3656232   1.2681225   1.4706203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                1.2631210   1.1706490   1.3628975
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                1.1553464   1.0552903   1.2648893
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                1.2241696   1.0560292   1.4190813
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                1.1281658   0.9669877   1.3162093
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                1.0742770   0.9107624   1.2671485
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    4+                1.1054422   0.5453432   2.2407950
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    4+                1.5109890   0.7644501   2.9865752
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    4+                1.1160714   0.5233168   2.3802323
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           1                    4+                1.4631579   0.9871114   2.1687837
0-6 months    ki0047075b-MAL-ED          PERU                           2                    4+                1.1137821   0.7915937   1.5671050
0-6 months    ki0047075b-MAL-ED          PERU                           3                    4+                0.9341398   0.6526713   1.3369934
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                0.9090909   0.4401086   1.8778234
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                0.9256198   0.5179083   1.6542930
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                1.1200000   0.6956973   1.8030830
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                0.9440559   0.4569102   1.9505837
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                1.2467532   0.8931492   1.7403516
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                0.8181818   0.5425106   1.2339326
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                1.0653266   0.6205185   1.8289880
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                1.0192308   0.5836661   1.7798384
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                0.8627451   0.4677782   1.5912011
0-6 months    ki1000108-IRC              INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    4+                0.6432432   0.4351475   0.9508542
0-6 months    ki1000108-IRC              INDIA                          2                    4+                0.6636364   0.4484253   0.9821328
0-6 months    ki1000108-IRC              INDIA                          3                    4+                0.5580808   0.3190054   0.9763289
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                0.8886609   0.6444650   1.2253858
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                0.9696153   0.6837238   1.3750493
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                0.7779083   0.5051373   1.1979738
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                1.0171249   0.6333391   1.6334744
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                1.1317635   0.8489119   1.5088592
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                1.1605772   0.8926126   1.5089856
0-6 months    ki1114097-CONTENT          PERU                           4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CONTENT          PERU                           1                    4+                1.2129187   0.6641094   2.2152550
0-6 months    ki1114097-CONTENT          PERU                           2                    4+                0.6081871   0.2868852   1.2893368
0-6 months    ki1114097-CONTENT          PERU                           3                    4+                0.8421053   0.4046507   1.7524775
0-6 months    ki1135781-COHORTS          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          1                    4+                2.1185917   1.3819008   3.2480122
0-6 months    ki1135781-COHORTS          INDIA                          2                    4+                1.3336360   0.8574494   2.0742740
0-6 months    ki1135781-COHORTS          INDIA                          3                    4+                1.3455501   0.7783510   2.3260780
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                1.4072585   1.2935975   1.5309063
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                1.2864730   1.1783712   1.4044919
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                1.1553789   1.0391754   1.2845766
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                1.2770730   1.0158632   1.6054480
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                1.1175395   0.8793484   1.4202500
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                1.0552242   0.8069304   1.3799184
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                0.6896552   0.3844582   1.2371286
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                1.0666667   0.6225253   1.8276811
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                0.7272727   0.3804443   1.3902840
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                1.6842941   0.9866346   2.8752756
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                1.1965223   0.6589749   2.1725649
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                0.7108361   0.3347293   1.5095419
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                0.9324775   0.6296661   1.3809132
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                0.9607162   0.7635098   1.2088587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                0.8940778   0.7066850   1.1311617
6-24 months   ki1135781-COHORTS          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          1                    4+                3.0784746   1.8288201   5.1820330
6-24 months   ki1135781-COHORTS          INDIA                          2                    4+                1.7111111   1.0064091   2.9092556
6-24 months   ki1135781-COHORTS          INDIA                          3                    4+                1.6215488   0.8740056   3.0084711
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                1.4925989   1.1589671   1.9222733
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                1.4015502   1.0819398   1.8155751
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                1.3257962   0.9983628   1.7606181
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                1.2667436   0.9758204   1.6444002
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                1.1799129   0.8959529   1.5538701
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                1.1087526   0.8268930   1.4866885


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0187234   -0.1971951   0.1597482
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0115798   -0.0430333   0.0661928
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0166362   -0.0159799   0.0492523
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0248889   -0.0727688   0.0229910
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.1313665   -0.0542035   0.3169364
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0044602   -0.0859676   0.0948880
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0107866   -0.0492217   0.0276485
0-24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0359068   -0.1195571   0.0477436
0-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                 0.2051896    0.1513472   0.2590319
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.1149672    0.0878776   0.1420567
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0854723    0.0167252   0.1542194
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0646809   -0.1032443   0.2326060
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0168747   -0.0410573   0.0748067
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0001390   -0.0332432   0.0335212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0045926   -0.0654787   0.0746638
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0108696   -0.2463587   0.2680978
0-6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.2205882   -0.4435895   0.0024130
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0312302   -0.1190945   0.0566341
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0221719   -0.0150406   0.0593843
0-6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0203339   -0.0952653   0.0545974
0-6 months    ki1135781-COHORTS          INDIA                          4+                   NA                 0.0875087    0.0437392   0.1312781
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.1032081    0.0781025   0.1283137
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0575806   -0.0051440   0.1203052
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0779221   -0.2953456   0.1395014
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0653928   -0.0292283   0.1600138
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0119391   -0.0619991   0.0381209
6-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                 0.1619019    0.1073888   0.2164150
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0635390    0.0264490   0.1006290
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0657086   -0.0111023   0.1425196


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0301370   -0.3615044    0.2205812
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0333271   -0.1373558    0.1783957
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0268900   -0.0274276    0.0783359
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0288066   -0.0859740    0.0253514
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.3014968   -0.2853100    0.6203976
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0093394   -0.1993016    0.1816834
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0168813   -0.0788666    0.0415427
0-24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.1225389   -0.4469167    0.1291181
0-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                 0.5288676    0.3691340    0.6481570
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.2320417    0.1757675    0.2844738
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.1469029    0.0198417    0.2574928
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.1876543   -0.4794960    0.5539660
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0376224   -0.1006676    0.1585373
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0003536   -0.0883025    0.0817876
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0111471   -0.1744343    0.1674033
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0212766   -0.6371469    0.4148970
0-6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.5172414   -1.1472988   -0.0720545
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.1033734   -0.4364300    0.1524593
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0697116   -0.0549706    0.1796582
0-6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0910791   -0.4836663    0.1976272
0-6 months    ki1135781-COHORTS          INDIA                          4+                   NA                 0.4590227    0.1763364    0.6446893
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.2498340    0.1870039    0.3078085
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.1657142   -0.0359830    0.3281426
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1846154   -0.8311894    0.2336600
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.2487876   -0.2116617    0.5342594
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0211600   -0.1138769    0.0638394
6-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                 0.6073909    0.3428302    0.7654458
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.2938994    0.1002504    0.4458702
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.1736347   -0.0571455    0.3540344
