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

agecat        studyid                    country                        nrooms    ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  -------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                    0       12     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                    1        0     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0      113     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       39     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0       38     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1       12     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0       26     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1        2     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                    0      116     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                    1       11     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       18     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       51     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        8     210
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                    0       21     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                    1        4     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       65     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       19     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       53     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     1       25     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       38     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     1       10     235
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       18     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        7     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                    0       51     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                    1       57     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        7     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        6     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       24     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       39     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       34     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1       32     250
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      434     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       73     700
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                    0      241     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                    1       82     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0       37     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       12     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0      111     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1       34     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0      140     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1       41     698
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                    0     1017   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                    1      122   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    13084   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     3039   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     5874   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1446   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0     2203   27197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1      412   27197
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                    0      250    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                    1       36    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2466    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      725    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0     1130    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1      257    5426
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
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                    0      119     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                    1        8     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     0       18     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     1        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     0       53     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     1        6     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                    0       25     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                    1        0     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       77     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        7     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     0       68     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     1       10     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     0       45     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     1        3     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                    0      125     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                    1        6     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0       48     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        4     236
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
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       61     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        5     250
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                    0      294     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                    1       29     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0       43     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1        6     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     0      133     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     1       12     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     0      168     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     1       13     698
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                    0     1029   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                    1      104   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    13700   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2394   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     0     6127   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1173   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     0     2273   27131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     1      331   27131
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




# Results Detail

## Results Plots
![](/tmp/b1479031-98d0-4bf2-9a44-7841226094b1/371f7d60-b787-4d13-9a46-bdce452f8f52/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b1479031-98d0-4bf2-9a44-7841226094b1/371f7d60-b787-4d13-9a46-bdce452f8f52/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b1479031-98d0-4bf2-9a44-7841226094b1/371f7d60-b787-4d13-9a46-bdce452f8f52/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b1479031-98d0-4bf2-9a44-7841226094b1/371f7d60-b787-4d13-9a46-bdce452f8f52/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.2545003   0.2067295   0.3022711
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2467192   0.1268747   0.3665636
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2358905   0.1665616   0.3052194
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.2282779   0.1667706   0.2897851
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.1419250   0.1223437   0.1615063
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1955113   0.1877509   0.2032717
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1790461   0.1685396   0.1895525
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1535966   0.1348089   0.1723842
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.1245817   0.0832446   0.1659187
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2270133   0.2114646   0.2425619
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.1872358   0.1633087   0.2111629
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.1508717   0.1200351   0.1817083
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.1201942   0.1026992   0.1376891
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1564987   0.1495981   0.1633994
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1427981   0.1330822   0.1525139
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1224395   0.1065129   0.1383661
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.0644902   0.0236467   0.1053337
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1114926   0.0995635   0.1234216
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.0893902   0.0720350   0.1067454
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.0925570   0.0674000   0.1177140


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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                0.9694257   0.5758422   1.632020
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                0.9268771   0.6540163   1.313578
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                0.8969650   0.6456734   1.246057
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                1.3775684   1.1961111   1.586554
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                1.2615545   1.0856717   1.465931
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                1.0822379   0.9053631   1.293668
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                1.8222045   1.3021811   2.549898
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                1.5029163   1.0525299   2.146027
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                1.2110266   0.8232837   1.781385
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                1.3020495   1.1223059   1.510580
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                1.1880618   1.0095913   1.398081
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                1.0186813   0.8406010   1.234488
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                1.7288298   0.9080834   3.291386
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                1.3861052   0.7194101   2.670643
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                1.4352104   0.7168305   2.873523


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0082787   -0.0397503   0.0563076
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0082222   -0.0628225   0.0792669
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0074684   -0.2540807   0.2391439
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0358700   -0.0205062   0.0922463
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0123800   -0.0469639   0.0222040
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0426175    0.0233602   0.0618747
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0788831    0.0386202   0.1191461
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0277983   -0.0104018   0.0659985
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0093737   -0.0331466   0.0518939
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0038234   -0.0263078   0.0186610
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0273124    0.0100498   0.0445750
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0369364   -0.0026244   0.0764973


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0381661   -0.2107165   0.2358868
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0153400   -0.1265586   0.1393654
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0117541   -0.4848403   0.3106018
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.2746411   -0.3110170   0.5986738
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0511315   -0.2040491   0.0823652
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.2309358    0.1196052   0.3281881
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.3876992    0.1540217   0.5568299
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                 0.2291258   -0.1495646   0.4830677
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.1511758   -0.9014990   0.6210871
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0444788   -0.3414847   0.1867697
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.1851605    0.0598443   0.2937729
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.3641689   -0.1786093   0.6569846
