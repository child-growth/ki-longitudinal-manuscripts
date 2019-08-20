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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       19     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1       31     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       11     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1       17     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0       99     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1       28     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       16     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       42     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1       17     210
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0        9     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1       16     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       39     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       45     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       21     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1       57     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       22     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       26     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0       88     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1       43     236
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0       80     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1      116     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        5     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        9     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        8     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1       14     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        8     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1       17     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       96     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        5     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        8     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        8     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       55     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       10     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       56     250
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      279     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      228     700
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0       92     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1      193     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       11     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       29     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       40     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       88     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0       53     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       96     602
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      771   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      368   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7881   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     8249   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     3630   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3692   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1486   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1     1129   27206
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
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       96     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1       56     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    0       33     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1       17     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    0       22     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1        6     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   0      104     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   1       23     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    0       16     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    0       46     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1       13     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   0       18     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   1        7     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       58     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1       26     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    0       45     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    1       33     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    0       34     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    1       14     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   0      109     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   1       22     236
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      120     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1       76     257
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
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       45     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       21     250
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      382     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1      125     700
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   0      215     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1       70     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0       25     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       15     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0       91     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       37     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    0      104     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1       45     602
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      829   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      304   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     9268   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     6833   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     4208   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3094   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1683   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1      921   27140
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      189    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1       79    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1901    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1117    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    0      878    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1      422    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    0      371    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1      160    5117
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0        8     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        2     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       55     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       40     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       18     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1       14     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       11     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1       11     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0       98     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1        5     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       15     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       42     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        4     168
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0        9     155
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1        9     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       39     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       19     155
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       21     155
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1       24     155
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       22     155
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       12     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0       88     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1       21     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       32     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       10     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       22     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        6     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       12     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        4     195
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   0       47     149
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   1       32     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        4     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        3     149
6-24 months   ki0047075b-MAL-ED          PERU                           2                    0       14     149
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1       12     149
6-24 months   ki0047075b-MAL-ED          PERU                           3                    0       25     149
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1       12     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0       80     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1       40     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        5     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        4     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        8     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        6     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        7     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        6     156
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       12     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       52     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        4     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        7     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       23     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0        9     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       35     145
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       15     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        3     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      218     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      103     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       55     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       20     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       32     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1       11     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       52     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1       12     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      157     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       80     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0       96     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       30     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       68     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       11     506
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0       86     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1      123     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       11     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       14     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       40     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       51     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0       50     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       51     426
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      504   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1       64   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4488   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1416   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     2302   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      598   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0      939   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1      208   10519
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
![](/tmp/448cfb14-a9eb-4db3-8923-721ee2d926cb/77d1bd7b-0573-4137-8886-b50b17ca4482/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/448cfb14-a9eb-4db3-8923-721ee2d926cb/77d1bd7b-0573-4137-8886-b50b17ca4482/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/448cfb14-a9eb-4db3-8923-721ee2d926cb/77d1bd7b-0573-4137-8886-b50b17ca4482/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/448cfb14-a9eb-4db3-8923-721ee2d926cb/77d1bd7b-0573-4137-8886-b50b17ca4482/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.6400000   0.4514418   0.8285582
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.5357143   0.4288350   0.6425936
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.7307692   0.6321233   0.8294152
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.5416667   0.4004096   0.6829238
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.3282443   0.2476621   0.4088264
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3653846   0.2342254   0.4965439
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.2903226   0.1301972   0.4504480
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.4545455   0.2460355   0.6630554
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.5918367   0.5228946   0.6607788
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6428571   0.3913740   0.8943403
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.6363636   0.4349589   0.8377684
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.6800000   0.4967879   0.8632121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8888889   0.8294995   0.9482783
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6153846   0.3503922   0.8803770
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8730159   0.7906336   0.9553982
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8484848   0.7618093   0.9351604
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.3043478   0.1161668   0.4925288
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4497041   0.4063714   0.4930369
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3981481   0.3057605   0.4905358
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.4193548   0.2964387   0.5422710
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.4668365   0.3700835   0.5635895
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5081491   0.4581244   0.5581739
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.4875745   0.4178374   0.5573115
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.3435931   0.2464954   0.4406909
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.6767905   0.6222387   0.7313423
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7232391   0.5833739   0.8631044
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6854116   0.6046915   0.7661316
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.6436175   0.5658935   0.7213415
0-24 months   ki1114097-CONTENT          PERU                           4+                   NA                0.3361105   0.2319559   0.4402651
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.3547852   0.2187264   0.4908440
0-24 months   ki1114097-CONTENT          PERU                           2                    NA                0.2612905   0.1451288   0.3774522
0-24 months   ki1114097-CONTENT          PERU                           3                    NA                0.3222794   0.1814866   0.4630721
0-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.1952393   0.1391805   0.2512982
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4457215   0.4292611   0.4621818
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2819335   0.2591680   0.3046990
0-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.2804867   0.2194725   0.3415009
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.3822971   0.3542065   0.4103877
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5187959   0.5088660   0.5287258
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4785592   0.4644743   0.4926441
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4368589   0.4125106   0.4612072
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.5007470   0.4292779   0.5722161
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6074782   0.5872632   0.6276932
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.5597621   0.5272763   0.5922479
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.5327878   0.4849166   0.5806591
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                0.2800000   0.1036200   0.4563800
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.3095238   0.2104507   0.4085969
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                0.4230769   0.3132028   0.5329510
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                0.2916667   0.1628074   0.4205260
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                0.4316547   0.3491621   0.5141473
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.6315789   0.4142802   0.8488777
0-6 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.4807692   0.3447204   0.6168180
0-6 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.4032258   0.2808963   0.5255553
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.3877551   0.3194099   0.4561003
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3571429   0.1056597   0.6086260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.3636364   0.1622316   0.5650411
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.4400000   0.2450402   0.6349598
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.4074074   0.3145537   0.5002611
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3846154   0.1196230   0.6496078
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5079365   0.3842383   0.6316347
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3181818   0.2055870   0.4307766
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.5000000   0.2377322   0.7622678
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5326633   0.4632482   0.6020784
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.5096154   0.4134072   0.6058236
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.4313726   0.2952613   0.5674838
0-6 months    ki1000108-IRC              INDIA                          4+                   NA                0.6470588   0.4196122   0.8745055
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.4162162   0.3450980   0.4873344
0-6 months    ki1000108-IRC              INDIA                          2                    NA                0.4294118   0.3549120   0.5039115
0-6 months    ki1000108-IRC              INDIA                          3                    NA                0.3611111   0.2040159   0.5182063
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.3028503   0.2118297   0.3938708
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3023452   0.2553926   0.3492978
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.3309510   0.2645825   0.3973195
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.2485909   0.1639607   0.3332212
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.2449451   0.1947528   0.2951373
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3736017   0.2198425   0.5273608
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2879121   0.2089140   0.3669103
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.3033200   0.2290114   0.3776286
0-6 months    ki1114097-CONTENT          PERU                           4+                   NA                0.2435897   0.1481078   0.3390717
0-6 months    ki1114097-CONTENT          PERU                           1                    NA                0.2954545   0.1603301   0.4305790
0-6 months    ki1114097-CONTENT          PERU                           2                    NA                0.1481481   0.0531766   0.2431197
0-6 months    ki1114097-CONTENT          PERU                           3                    NA                0.2051282   0.0781032   0.3321533
0-6 months    ki1135781-COHORTS          INDIA                          4+                   NA                0.1057025   0.0622096   0.1491953
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2188903   0.2049436   0.2328370
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1373077   0.1195534   0.1550620
0-6 months    ki1135781-COHORTS          INDIA                          3                    NA                0.1391903   0.0914852   0.1868954
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.3065253   0.2813964   0.3316542
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4360937   0.4262787   0.4459087
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3958487   0.3821480   0.4095494
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.3545493   0.3304488   0.3786498
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.2885632   0.2242759   0.3528504
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3704002   0.3499126   0.3908878
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3242937   0.2950785   0.3535089
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3036825   0.2601026   0.3472624
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.5000000   0.2682673   0.7317327
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3275862   0.2064091   0.4487633
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.5333333   0.3870988   0.6795679
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.3529412   0.1917886   0.5140937
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1954629   0.0991223   0.2918035
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3327445   0.2724510   0.3930381
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.2357915   0.1603269   0.3112562
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1430368   0.0649617   0.2211119
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.5896796   0.5226034   0.6567559
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5669048   0.3690641   0.7647454
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5621062   0.4598411   0.6643714
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.5093323   0.4099809   0.6086838
6-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.1046512   0.0504701   0.1588323
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3221660   0.3040863   0.3402456
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1790698   0.1581445   0.1999950
6-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.1696970   0.1124155   0.2269785
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.1573599   0.1192698   0.1954501
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2279515   0.2150073   0.2408958
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2143201   0.1953205   0.2333197
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1962467   0.1684694   0.2240240
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.3099799   0.2355599   0.3844000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3956234   0.3709523   0.4202946
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3701307   0.3327031   0.4075584
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3455293   0.2903934   0.4006652


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6127660   0.5503531   0.6751788
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3432203   0.2825173   0.4039234
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6070039   0.5471740   0.6668337
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8600000   0.8169015   0.9030985
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2930233   0.2320422   0.3540043
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3879792   0.3749497   0.4010086
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4939352   0.4860896   0.5017807
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5818282   0.5658219   0.5978346
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3404255   0.2797123   0.4011387
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4485294   0.3893160   0.5077428
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3891051   0.3293816   0.4488285
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4080000   0.3469565   0.4690435
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4264706   0.3784228   0.4745184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2232558   0.1674626   0.2790491
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1906412   0.1799566   0.2013259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4109064   0.4034556   0.4183572
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3474692   0.3322601   0.3626783
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2665531   0.2530304   0.2800757
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2173210   0.2079509   0.2266911
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3784303   0.3598372   0.3970234


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                0.8370536   0.5864405   1.1947652
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                1.1418269   0.8257651   1.5788615
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                0.8463542   0.5710515   1.2543797
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                1.1131485   0.7205875   1.7195683
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                0.8844711   0.4836099   1.6176036
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                1.3847780   0.8230469   2.3298916
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                1.0862069   0.7221809   1.6337256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                1.0752351   0.7674281   1.5065002
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                1.1489655   0.8566967   1.5409442
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                0.6923077   0.4477636   1.0704085
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                0.9821429   0.8749033   1.1025271
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                0.9545455   0.8448614   1.0784692
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                1.4775993   0.7902914   2.7626517
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                1.3082011   0.6758638   2.5321522
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                1.3778802   0.6950869   2.7313908
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                1.0884950   0.8669919   1.3665886
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                1.0444224   0.8135066   1.3408843
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                0.7360032   0.5185740   1.0445967
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                1.0686307   0.8667217   1.3175759
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                1.0127381   0.8781855   1.1679064
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                0.9509847   0.8225690   1.0994482
0-24 months   ki1114097-CONTENT          PERU                           4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           1                    4+                1.0555613   0.6458457   1.7251947
0-24 months   ki1114097-CONTENT          PERU                           2                    4+                0.7773945   0.4511910   1.3394376
0-24 months   ki1114097-CONTENT          PERU                           3                    4+                0.9588494   0.5609230   1.6390703
0-24 months   ki1135781-COHORTS          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          1                    4+                2.2829493   1.7091002   3.0494745
0-24 months   ki1135781-COHORTS          INDIA                          2                    4+                1.4440407   1.0716145   1.9458991
0-24 months   ki1135781-COHORTS          INDIA                          3                    4+                1.4366301   1.0020947   2.0595919
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                1.3570489   1.2575538   1.4644158
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                1.2517991   1.1576718   1.3535797
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                1.1427208   1.0414998   1.2537794
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                1.2131439   1.0478342   1.4045335
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                1.1178541   0.9591920   1.3027609
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                1.0639861   0.9027890   1.2539656
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    4+                1.1054422   0.5453432   2.2407950
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    4+                1.5109890   0.7644501   2.9865752
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    4+                1.0416667   0.4825873   2.2484418
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           1                    4+                1.4631579   0.9871114   2.1687837
0-6 months    ki0047075b-MAL-ED          PERU                           2                    4+                1.1137821   0.7915937   1.5671050
0-6 months    ki0047075b-MAL-ED          PERU                           3                    4+                0.9341398   0.6526713   1.3369934
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                0.9210526   0.4456971   1.9033957
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                0.9377990   0.5244253   1.6770109
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                1.1347368   0.7043640   1.8280715
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                0.9440559   0.4569102   1.9505837
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                1.2467532   0.8931492   1.7403516
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                0.7809917   0.5126796   1.1897257
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                1.0653266   0.6205185   1.8289880
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                1.0192308   0.5836661   1.7798384
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                0.8627451   0.4677782   1.5912011
0-6 months    ki1000108-IRC              INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    4+                0.6432432   0.4351475   0.9508542
0-6 months    ki1000108-IRC              INDIA                          2                    4+                0.6636364   0.4484253   0.9821328
0-6 months    ki1000108-IRC              INDIA                          3                    4+                0.5580808   0.3190054   0.9763289
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                0.9983324   0.7125162   1.3987999
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                1.0927876   0.7619584   1.5672572
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                0.8208378   0.5213084   1.2924683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                1.5252468   0.9631331   2.4154269
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                1.1754151   0.8341895   1.6562193
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                1.2383185   0.8998557   1.7040872
0-6 months    ki1114097-CONTENT          PERU                           4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CONTENT          PERU                           1                    4+                1.2129187   0.6641094   2.2152550
0-6 months    ki1114097-CONTENT          PERU                           2                    4+                0.6081871   0.2868852   1.2893368
0-6 months    ki1114097-CONTENT          PERU                           3                    4+                0.8421053   0.4046507   1.7524775
0-6 months    ki1135781-COHORTS          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          1                    4+                2.0708157   1.3656447   3.1401122
0-6 months    ki1135781-COHORTS          INDIA                          2                    4+                1.2990020   0.8439869   1.9993275
0-6 months    ki1135781-COHORTS          INDIA                          3                    4+                1.3168124   0.7709341   2.2492129
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                1.4227005   1.3071545   1.5484602
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                1.2914064   1.1815964   1.4114214
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                1.1566723   1.0409621   1.2852445
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                1.2836019   1.0208910   1.6139174
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                1.1238224   0.8841532   1.4284592
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                1.0523953   0.8047872   1.3761848
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                0.6551724   0.3620969   1.1854585
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                1.0666667   0.6225324   1.8276604
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                0.7058824   0.3682812   1.3529605
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                1.7023409   1.0075818   2.8761579
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                1.2063236   0.6703624   2.1707910
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                0.7317849   0.3509214   1.5260089
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                0.9613776   0.6662255   1.3872884
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                0.9532401   0.7691367   1.1814111
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                0.8637442   0.6891419   1.0825840
6-24 months   ki1135781-COHORTS          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          1                    4+                3.0784746   1.8288201   5.1820330
6-24 months   ki1135781-COHORTS          INDIA                          2                    4+                1.7111111   1.0064091   2.9092556
6-24 months   ki1135781-COHORTS          INDIA                          3                    4+                1.6215488   0.8740056   3.0084711
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                1.4485995   1.1289347   1.8587794
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                1.3619738   1.0573127   1.7544221
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                1.2471198   0.9414813   1.6519794
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                1.2762873   0.9976875   1.6326847
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                1.1940474   0.9190269   1.5513684
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                1.1146829   0.8393677   1.4803023


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0272340   -0.2057973   0.1513292
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0149761   -0.0395168   0.0694690
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0151672   -0.0177402   0.0480745
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0288889   -0.0772331   0.0194553
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.1299379   -0.0556293   0.3155051
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0107361   -0.0795698   0.1010420
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0023719   -0.0419583   0.0372145
0-24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0430873   -0.1253703   0.0391957
0-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                 0.1927398    0.1365980   0.2488817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.1116380    0.0836271   0.1396490
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0810812    0.0123317   0.1498307
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0604255   -0.1074341   0.2282852
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0168747   -0.0410573   0.0748067
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0013500   -0.0320149   0.0347149
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0005926   -0.0693994   0.0705845
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0108696   -0.2463587   0.2680978
0-6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.2205882   -0.4435895   0.0024130
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0007394   -0.0859749   0.0844961
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0324636   -0.0052924   0.0702196
0-6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0203339   -0.0952653   0.0545974
0-6 months    ki1135781-COHORTS          INDIA                          4+                   NA                 0.0849388    0.0412555   0.1286220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.1043811    0.0793795   0.1293828
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0589061   -0.0035916   0.1214037
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0870968   -0.3045242   0.1303307
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0673829   -0.0243318   0.1590977
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0286468   -0.0768798   0.0195863
6-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                 0.1619019    0.1073888   0.2164150
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0599611    0.0224129   0.0975093
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0684504   -0.0032027   0.1401035


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0444444   -0.3806685    0.2099014
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0436340   -0.1290749    0.1899244
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0249869   -0.0308802    0.0778264
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0335917   -0.0916733    0.0213996
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.2991991   -0.2895208    0.6191439
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0224806   -0.1861309    0.1944023
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0035170   -0.0639647    0.0534964
0-24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.1470438   -0.4659393    0.1024802
0-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                 0.4967788    0.3305685    0.6217215
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.2260176    0.1675591    0.2803708
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.1393559    0.0123780    0.2500084
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.1775000   -0.4976624    0.5482919
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0376224   -0.1006676    0.1585373
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0034694   -0.0860762    0.0856320
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0014524   -0.1857138    0.1590743
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0212766   -0.6371469    0.4148970
0-6 months    ki1000108-IRC              INDIA                          4+                   NA                -0.5172414   -1.1472988   -0.0720545
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0024476   -0.3282888    0.2434619
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.1170244   -0.0298829    0.2429762
0-6 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0910791   -0.4836663    0.1976272
0-6 months    ki1135781-COHORTS          INDIA                          4+                   NA                 0.4455425    0.1650402    0.6318109
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.2540265    0.1911025    0.3120556
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.1695289   -0.0314686    0.3313589
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.2109375   -0.8722092    0.2167704
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.2563591   -0.1869673    0.5341052
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0510607   -0.1408172    0.0316339
6-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                 0.6073909    0.3428302    0.7654458
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.2759102    0.0812620    0.4293193
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.1808797   -0.0326433    0.3502519
