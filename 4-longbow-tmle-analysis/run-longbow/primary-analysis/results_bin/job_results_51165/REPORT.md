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

agecat        studyid                    country                        nrooms    ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  -------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                    0       12     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                    1        0     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0      113     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       39     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0       39     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1       11     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0       26     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1        2     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                    0      118     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                    1        9     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       18     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       53     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        6     210
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                    0       21     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                    1        4     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       67     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       17     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       53     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     1       25     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       39     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     1        9     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                    0      120     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                    1       11     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       46     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        6     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     0       30     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     1        1     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     0       19     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     1        3     236
0-24 months   ki0047075b-MAL-ED          PERU                           4+                    0      110     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                    1       29     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0       13     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        6     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                     0       41     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                     1       11     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                     0       49     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                     1       13     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                    0      140     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                    1       56     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       10     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        4     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       19     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        3     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       19     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        6     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                    0       51     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                    1       57     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        7     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        6     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       24     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       39     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       36     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1       30     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                    0        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                    1        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       68     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      134     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     0       40     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     1       66     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       23     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     1       28     373
0-24 months   ki1000108-IRC              INDIA                          4+                    0       14     408
0-24 months   ki1000108-IRC              INDIA                          4+                    1        3     408
0-24 months   ki1000108-IRC              INDIA                          1                     0      138     408
0-24 months   ki1000108-IRC              INDIA                          1                     1       47     408
0-24 months   ki1000108-IRC              INDIA                          2                     0      124     408
0-24 months   ki1000108-IRC              INDIA                          2                     1       46     408
0-24 months   ki1000108-IRC              INDIA                          3                     0       30     408
0-24 months   ki1000108-IRC              INDIA                          3                     1        6     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                    0       21     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                    1        2     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      435     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       72     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                     0       96     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                     1       12     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                     0       54     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                     1        8     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                    0       86     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                    1        9     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      318     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       50     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                     0      162     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                     1       29     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                     0       93     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                     1       11     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                    0      214     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                    1       71     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0       30     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       10     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0       95     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1       33     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0      109     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1       40     602
0-24 months   ki1114097-CONTENT          PERU                           4+                    0       75     215
0-24 months   ki1114097-CONTENT          PERU                           4+                    1        3     215
0-24 months   ki1114097-CONTENT          PERU                           1                     0       38     215
0-24 months   ki1114097-CONTENT          PERU                           1                     1        6     215
0-24 months   ki1114097-CONTENT          PERU                           2                     0       51     215
0-24 months   ki1114097-CONTENT          PERU                           2                     1        3     215
0-24 months   ki1114097-CONTENT          PERU                           3                     0       36     215
0-24 months   ki1114097-CONTENT          PERU                           3                     1        3     215
0-24 months   ki1135781-COHORTS          INDIA                          4+                    0      102    5374
0-24 months   ki1135781-COHORTS          INDIA                          4+                    1        4    5374
0-24 months   ki1135781-COHORTS          INDIA                          1                     0     2917    5374
0-24 months   ki1135781-COHORTS          INDIA                          1                     1      602    5374
0-24 months   ki1135781-COHORTS          INDIA                          2                     0     1440    5374
0-24 months   ki1135781-COHORTS          INDIA                          2                     1      114    5374
0-24 months   ki1135781-COHORTS          INDIA                          3                     0      178    5374
0-24 months   ki1135781-COHORTS          INDIA                          3                     1       17    5374
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                    0     1017   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                    1      122   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    13101   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     3029   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     5883   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1439   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0     2204   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1      411   27206
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                    0      250    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                    1       36    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2466    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      725    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0     1131    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1      256    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      476    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1       86    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                    0       12     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                    1        0     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0      140     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1       12     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     0       46     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     1        4     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     0       28     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     1        0     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                    0      120     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                    1        7     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     0       18     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     1        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     0       54     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     1        5     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                    0       25     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                    1        0     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       77     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        7     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     0       68     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     1       10     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     0       46     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     1        2     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                    0      125     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                    1        6     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0       49     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        3     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     0       31     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     1        0     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     0       22     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     1        0     236
0-6 months    ki0047075b-MAL-ED          PERU                           4+                    0      126     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                    1       13     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0       14     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        5     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                     0       47     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                     1        5     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                     0       52     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                     1       10     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                    0      172     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                    1       24     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       13     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       25     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        0     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                    0       94     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                    1       14     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       10     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        3     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       50     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       13     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       62     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        4     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                    0       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                    1        2     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      153     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       46     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     0       74     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     1       30     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       38     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     1       13     368
0-6 months    ki1000108-IRC              INDIA                          4+                    0       16     408
0-6 months    ki1000108-IRC              INDIA                          4+                    1        1     408
0-6 months    ki1000108-IRC              INDIA                          1                     0      158     408
0-6 months    ki1000108-IRC              INDIA                          1                     1       27     408
0-6 months    ki1000108-IRC              INDIA                          2                     0      140     408
0-6 months    ki1000108-IRC              INDIA                          2                     1       30     408
0-6 months    ki1000108-IRC              INDIA                          3                     0       32     408
0-6 months    ki1000108-IRC              INDIA                          3                     1        4     408
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                    0       23     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                    1        0     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      485     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1       22     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                     0      102     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                     1        6     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                     0       59     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                     1        3     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                    0       90     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                    1        5     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      346     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       22     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                     0      176     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                     1       15     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                     0       99     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                     1        5     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                    0      267     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                    1       18     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0       37     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1        3     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     0      118     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     1       10     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     0      138     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     1       11     602
0-6 months    ki1114097-CONTENT          PERU                           4+                    0       76     215
0-6 months    ki1114097-CONTENT          PERU                           4+                    1        2     215
0-6 months    ki1114097-CONTENT          PERU                           1                     0       41     215
0-6 months    ki1114097-CONTENT          PERU                           1                     1        3     215
0-6 months    ki1114097-CONTENT          PERU                           2                     0       52     215
0-6 months    ki1114097-CONTENT          PERU                           2                     1        2     215
0-6 months    ki1114097-CONTENT          PERU                           3                     0       37     215
0-6 months    ki1114097-CONTENT          PERU                           3                     1        2     215
0-6 months    ki1135781-COHORTS          INDIA                          4+                    0      100    5193
0-6 months    ki1135781-COHORTS          INDIA                          4+                    1        1    5193
0-6 months    ki1135781-COHORTS          INDIA                          1                     0     3204    5193
0-6 months    ki1135781-COHORTS          INDIA                          1                     1      199    5193
0-6 months    ki1135781-COHORTS          INDIA                          2                     0     1456    5193
0-6 months    ki1135781-COHORTS          INDIA                          2                     1       45    5193
0-6 months    ki1135781-COHORTS          INDIA                          3                     0      180    5193
0-6 months    ki1135781-COHORTS          INDIA                          3                     1        8    5193
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                    0     1029   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                    1      104   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    13716   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2385   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     0     6138   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1164   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     0     2274   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     1      330   27140
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                    0      250    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                    1       18    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2682    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1      336    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     0     1184    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     1      116    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     0      482    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     1       49    5117


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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/7e991743-302d-4e9d-a113-fa99d3d700e1/6799aa0c-d5fa-4786-b7ad-42eaf57601ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e991743-302d-4e9d-a113-fa99d3d700e1/6799aa0c-d5fa-4786-b7ad-42eaf57601ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e991743-302d-4e9d-a113-fa99d3d700e1/6799aa0c-d5fa-4786-b7ad-42eaf57601ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e991743-302d-4e9d-a113-fa99d3d700e1/6799aa0c-d5fa-4786-b7ad-42eaf57601ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.4545455   0.3341765   0.5749144
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.6428571   0.3915266   0.8941877
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6633663   0.5981118   0.7286209
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.6226415   0.5302410   0.7150420
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.5490196   0.4122723   0.6857669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.0947368   0.0358091   0.1536646
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1358696   0.1008378   0.1709013
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.1518325   0.1009063   0.2027587
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1057692   0.0466236   0.1649148
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.2484422   0.1980888   0.2987957
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2446049   0.1068647   0.3823452
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2559983   0.1797497   0.3322469
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.2684584   0.1969199   0.3399969
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.1409361   0.1213625   0.1605097
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1953601   0.1876274   0.2030928
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1791503   0.1685533   0.1897472
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1526465   0.1342453   0.1710477
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.1249128   0.0820522   0.1677734
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2270397   0.2115176   0.2425618
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.1851221   0.1616547   0.2085896
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.1519782   0.1208130   0.1831433
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                0.0935252   0.0450318   0.1420186
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.2631579   0.0647922   0.4615236
0-6 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.0961538   0.0158795   0.1764282
0-6 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.1612903   0.0695707   0.2530099
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.0526316   0.0076996   0.0975636
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0597826   0.0355437   0.0840215
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.0785340   0.0403584   0.1167097
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.0480769   0.0069347   0.0892191
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.1191936   0.1011930   0.1371942
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1553038   0.1485045   0.1621030
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1402075   0.1305715   0.1498435
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1211877   0.1051012   0.1372741
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.0656541   0.0230470   0.1082612
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1114224   0.0994823   0.1233625
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.0890332   0.0716845   0.1063819
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.0928998   0.0677145   0.1180851


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2169118   0.1678424   0.2659811
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5280000   0.4659936   0.5900064
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2558140   0.2209310   0.2906969
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1838197   0.1782426   0.1893969
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2032805   0.1914625   0.2150985
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1213235   0.0824503   0.1601967
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1467576   0.1417437   0.1517714
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
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                0.8612440   0.6257065   1.185446
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                1.0319032   0.6895341   1.544266
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                0.9685535   0.6375466   1.471415
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                0.8540305   0.5372200   1.357671
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                1.4341787   0.7314377   2.812090
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                1.6026759   0.7905631   3.249039
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                1.1164529   0.4837121   2.576878
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                0.9845545   0.5411289   1.791343
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                1.0304136   0.7186443   1.477438
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                1.0805667   0.7730766   1.510361
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                1.3861605   1.2019326   1.598626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                1.2711450   1.0937140   1.477360
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                1.0830899   0.9060802   1.294680
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                1.8175852   1.2846221   2.571664
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                1.4820107   1.0276515   2.137257
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                1.2166738   0.8183470   1.808884
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           1                    4+                2.8137652   1.1270690   7.024658
0-6 months    ki0047075b-MAL-ED          PERU                           2                    4+                1.0281065   0.3847940   2.746932
0-6 months    ki0047075b-MAL-ED          PERU                           3                    4+                1.7245658   0.7988469   3.723025
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                1.1358696   0.4414468   2.922661
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                1.4921466   0.5586757   3.985320
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                0.9134615   0.2727256   3.059530
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                1.3029534   1.1167546   1.520198
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                1.1763001   0.9957562   1.389579
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                1.0167292   0.8333575   1.240450
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                1.6971120   0.8775647   3.282025
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                1.3560950   0.6929565   2.653837
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                1.4149888   0.6966488   2.874035


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0082787   -0.0397503   0.0563076
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0002222   -0.0708780   0.0713225
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0074684   -0.2540807   0.2391439
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0358700   -0.0205062   0.0922463
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0073717   -0.0294726   0.0442160
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0428836    0.0235444   0.0622228
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0783677    0.0366554   0.1200800
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0277983   -0.0104018   0.0659985
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0093737   -0.0331466   0.0518939
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0275639    0.0098309   0.0452969
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0357725   -0.0055390   0.0770840


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0381661   -0.2107165   0.2358868
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0004209   -0.1437306   0.1264040
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0117541   -0.4848403   0.3106018
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.2746411   -0.3110170   0.5986738
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0288167   -0.1264322   0.1626686
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.2332916    0.1210796   0.3311775
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.3855150    0.1415459   0.5601491
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.2291258   -0.1495646   0.4830677
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.1511758   -0.9014990   0.6210871
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.1878194    0.0579913   0.2997544
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.3526935   -0.2189433   0.6562549
