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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        nrooms    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              0       10     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              1        2     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0      123     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       29     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2               0       43     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2               1        7     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3               0       27     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3               1        1     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+              0      125     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+              1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2               0       20     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2               1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3               0       59     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3               1        0     210
0-24 months   ki0047075b-MAL-ED          INDIA                          4+              0       22     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+              1        3     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1               0       66     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1               1       18     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2               0       54     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2               1       24     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3               0       40     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3               1        8     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+              0      122     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+              1        9     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1               0       43     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1               1        9     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2               0       30     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2               1        1     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3               0       20     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3               1        2     236
0-24 months   ki0047075b-MAL-ED          PERU                           4+              0      132     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+              1        7     272
0-24 months   ki0047075b-MAL-ED          PERU                           1               0       18     272
0-24 months   ki0047075b-MAL-ED          PERU                           1               1        1     272
0-24 months   ki0047075b-MAL-ED          PERU                           2               0       51     272
0-24 months   ki0047075b-MAL-ED          PERU                           2               1        1     272
0-24 months   ki0047075b-MAL-ED          PERU                           3               0       60     272
0-24 months   ki0047075b-MAL-ED          PERU                           3               1        2     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      179     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1       17     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       13     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       21     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        1     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       23     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        2     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0      102     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1        6     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       54     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        9     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       59     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        7     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              0       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0      149     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       53     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               0       83     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               1       23     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               0       43     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               1        8     373
0-24 months   ki1000108-IRC              INDIA                          4+              0       13     408
0-24 months   ki1000108-IRC              INDIA                          4+              1        4     408
0-24 months   ki1000108-IRC              INDIA                          1               0      153     408
0-24 months   ki1000108-IRC              INDIA                          1               1       32     408
0-24 months   ki1000108-IRC              INDIA                          2               0      136     408
0-24 months   ki1000108-IRC              INDIA                          2               1       34     408
0-24 months   ki1000108-IRC              INDIA                          3               0       30     408
0-24 months   ki1000108-IRC              INDIA                          3               1        6     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              0       21     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              1        2     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      436     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       71     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      100     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1        8     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3               0       53     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3               1        9     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       88     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              1        7     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      328     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       40     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               0      173     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               1       18     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               0       98     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               1        6     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+              0      195     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+              1       90     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       25     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       15     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2               0       88     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       40     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3               0      101     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3               1       48     602
0-24 months   ki1114097-CONTENT          PERU                           4+              0       77     215
0-24 months   ki1114097-CONTENT          PERU                           4+              1        1     215
0-24 months   ki1114097-CONTENT          PERU                           1               0       43     215
0-24 months   ki1114097-CONTENT          PERU                           1               1        1     215
0-24 months   ki1114097-CONTENT          PERU                           2               0       52     215
0-24 months   ki1114097-CONTENT          PERU                           2               1        2     215
0-24 months   ki1114097-CONTENT          PERU                           3               0       39     215
0-24 months   ki1114097-CONTENT          PERU                           3               1        0     215
0-24 months   ki1135781-COHORTS          INDIA                          4+              0      105    5364
0-24 months   ki1135781-COHORTS          INDIA                          4+              1        1    5364
0-24 months   ki1135781-COHORTS          INDIA                          1               0     3081    5364
0-24 months   ki1135781-COHORTS          INDIA                          1               1      429    5364
0-24 months   ki1135781-COHORTS          INDIA                          2               0     1465    5364
0-24 months   ki1135781-COHORTS          INDIA                          2               1       88    5364
0-24 months   ki1135781-COHORTS          INDIA                          3               0      188    5364
0-24 months   ki1135781-COHORTS          INDIA                          3               1        7    5364
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              0     1089   26897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              1       46   26897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0    14435   26897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     1489   26897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     6589   26897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      651   26897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               0     2403   26897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               1      195   26897
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              0      257    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              1       29    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     2620    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      571    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               0     1182    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               1      205    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               0      491    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               1       71    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              0       12     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              1        0     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0      145     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        7     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2               0       48     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2               1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3               0       28     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3               1        0     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+              0      127     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+              1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2               0       20     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2               1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3               0       59     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3               1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+              0       25     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+              1        0     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1               0       77     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1               1        7     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2               0       71     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2               1        7     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3               0       45     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3               1        3     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+              0      128     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+              1        3     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1               0       49     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1               1        3     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2               0       31     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2               1        0     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3               0       21     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3               1        1     236
0-6 months    ki0047075b-MAL-ED          PERU                           4+              0      138     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+              1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           1               0       19     272
0-6 months    ki0047075b-MAL-ED          PERU                           1               1        0     272
0-6 months    ki0047075b-MAL-ED          PERU                           2               0       52     272
0-6 months    ki0047075b-MAL-ED          PERU                           2               1        0     272
0-6 months    ki0047075b-MAL-ED          PERU                           3               0       62     272
0-6 months    ki0047075b-MAL-ED          PERU                           3               1        0     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      192     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1        4     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       14     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       22     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        0     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       25     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        0     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0      107     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1        1     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       13     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       61     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        2     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       65     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        1     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+              0       13     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        1     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0      183     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               0       95     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               0       46     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               1        5     368
0-6 months    ki1000108-IRC              INDIA                          4+              0       16     407
0-6 months    ki1000108-IRC              INDIA                          4+              1        1     407
0-6 months    ki1000108-IRC              INDIA                          1               0      170     407
0-6 months    ki1000108-IRC              INDIA                          1               1       14     407
0-6 months    ki1000108-IRC              INDIA                          2               0      161     407
0-6 months    ki1000108-IRC              INDIA                          2               1        9     407
0-6 months    ki1000108-IRC              INDIA                          3               0       35     407
0-6 months    ki1000108-IRC              INDIA                          3               1        1     407
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              0       22     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              1        1     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      483     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       24     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0      106     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1        2     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3               0       59     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3               1        3     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       93     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              1        2     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      359     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        9     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               0      187     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               1        4     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               0      102     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               1        2     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+              0      275     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+              1       10     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               0       39     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      121     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        7     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3               0      143     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3               1        6     602
0-6 months    ki1114097-CONTENT          PERU                           4+              0       78     215
0-6 months    ki1114097-CONTENT          PERU                           4+              1        0     215
0-6 months    ki1114097-CONTENT          PERU                           1               0       44     215
0-6 months    ki1114097-CONTENT          PERU                           1               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2               0       54     215
0-6 months    ki1114097-CONTENT          PERU                           2               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3               0       39     215
0-6 months    ki1114097-CONTENT          PERU                           3               1        0     215
0-6 months    ki1135781-COHORTS          INDIA                          4+              0      100    5159
0-6 months    ki1135781-COHORTS          INDIA                          4+              1        0    5159
0-6 months    ki1135781-COHORTS          INDIA                          1               0     3276    5159
0-6 months    ki1135781-COHORTS          INDIA                          1               1      101    5159
0-6 months    ki1135781-COHORTS          INDIA                          2               0     1457    5159
0-6 months    ki1135781-COHORTS          INDIA                          2               1       37    5159
0-6 months    ki1135781-COHORTS          INDIA                          3               0      185    5159
0-6 months    ki1135781-COHORTS          INDIA                          3               1        3    5159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+              0     1101   26790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+              1       27   26790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0    15221   26790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      652   26790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     6917   26790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1      288   26790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               0     2497   26790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               1       87   26790
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+              0      258    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+              1        8    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     2904    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1       87    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               0     1267    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               1       25    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               0      516    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               1       14    5079
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              0       10     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              1        2     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0      124     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       27     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2               0       43     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2               1        5     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3               0       27     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3               1        1     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+              0      124     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+              1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        4     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2               0       18     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2               1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3               0       59     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3               1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          4+              0       22     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4+              1        3     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1               0       67     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1               1       17     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2               0       57     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2               1       21     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3               0       42     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3               1        6     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+              0      124     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+              1        7     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1               0       44     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1               1        7     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2               0       30     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2               1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3               0       21     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3               1        1     235
6-24 months   ki0047075b-MAL-ED          PERU                           4+              0      132     270
6-24 months   ki0047075b-MAL-ED          PERU                           4+              1        7     270
6-24 months   ki0047075b-MAL-ED          PERU                           1               0       18     270
6-24 months   ki0047075b-MAL-ED          PERU                           1               1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           2               0       49     270
6-24 months   ki0047075b-MAL-ED          PERU                           2               1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           3               0       60     270
6-24 months   ki0047075b-MAL-ED          PERU                           3               1        2     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      180     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1       15     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       13     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       21     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       22     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        2     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0      102     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1        5     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       53     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        8     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       58     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        7     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              0       13     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0      155     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       47     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               0       87     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               1       19     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               0       48     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               1        3     373
6-24 months   ki1000108-IRC              INDIA                          4+              0       13     408
6-24 months   ki1000108-IRC              INDIA                          4+              1        4     408
6-24 months   ki1000108-IRC              INDIA                          1               0      160     408
6-24 months   ki1000108-IRC              INDIA                          1               1       25     408
6-24 months   ki1000108-IRC              INDIA                          2               0      140     408
6-24 months   ki1000108-IRC              INDIA                          2               1       30     408
6-24 months   ki1000108-IRC              INDIA                          3               0       31     408
6-24 months   ki1000108-IRC              INDIA                          3               1        5     408
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              0       20     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              1        2     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      377     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       60     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0       91     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1        6     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3               0       51     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3               1        7     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       86     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              1        5     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      311     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       36     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               0      172     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               1       16     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               0       98     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               1        6     730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+              0      189     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+              1       89     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       25     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       15     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2               0       87     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       40     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3               0       99     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3               1       46     590
6-24 months   ki1114097-CONTENT          PERU                           4+              0       77     215
6-24 months   ki1114097-CONTENT          PERU                           4+              1        1     215
6-24 months   ki1114097-CONTENT          PERU                           1               0       43     215
6-24 months   ki1114097-CONTENT          PERU                           1               1        1     215
6-24 months   ki1114097-CONTENT          PERU                           2               0       52     215
6-24 months   ki1114097-CONTENT          PERU                           2               1        2     215
6-24 months   ki1114097-CONTENT          PERU                           3               0       39     215
6-24 months   ki1114097-CONTENT          PERU                           3               1        0     215
6-24 months   ki1135781-COHORTS          INDIA                          4+              0       93    5014
6-24 months   ki1135781-COHORTS          INDIA                          4+              1        1    5014
6-24 months   ki1135781-COHORTS          INDIA                          1               0     2864    5014
6-24 months   ki1135781-COHORTS          INDIA                          1               1      386    5014
6-24 months   ki1135781-COHORTS          INDIA                          2               0     1414    5014
6-24 months   ki1135781-COHORTS          INDIA                          2               1       72    5014
6-24 months   ki1135781-COHORTS          INDIA                          3               0      178    5014
6-24 months   ki1135781-COHORTS          INDIA                          3               1        6    5014
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              0      741   17268
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              1       21   17268
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     8940   17268
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      941   17268
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     4446   17268
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      423   17268
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               0     1642   17268
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               1      114   17268
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              0      260    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              1       25    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     2669    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      521    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               0     1197    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               1      189    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               0      495    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               1       66    5422


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
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/4cfc5643-9c54-42a2-9182-6f0314031a0a/30d7acaf-49c8-4310-8f84-eab56b2e119e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4cfc5643-9c54-42a2-9182-6f0314031a0a/30d7acaf-49c8-4310-8f84-eab56b2e119e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4cfc5643-9c54-42a2-9182-6f0314031a0a/30d7acaf-49c8-4310-8f84-eab56b2e119e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4cfc5643-9c54-42a2-9182-6f0314031a0a/30d7acaf-49c8-4310-8f84-eab56b2e119e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.0736842    0.0211140   0.1262544
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1086957    0.0768735   0.1405178
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.0942408    0.0527794   0.1357022
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.0576923    0.0128515   0.1025331
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.3190175    0.2653058   0.3727292
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.3770621    0.2229741   0.5311501
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.3062779    0.2255641   0.3869917
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.3270132    0.2510421   0.4029843
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0472487    0.0345121   0.0599852
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0965136    0.0906544   0.1023727
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0848416    0.0766382   0.0930449
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0778306    0.0631385   0.0925228
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.1002978    0.0625149   0.1380808
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1786383    0.1634292   0.1938474
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.1492674    0.1286536   0.1698813
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.1250596    0.0934541   0.1566651
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0272139    0.0168668   0.0375610
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0420895    0.0386007   0.0455783
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0378602    0.0328749   0.0428455
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0331476    0.0253209   0.0409743
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.0300752   -0.0071104   0.0672608
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0290873    0.0219427   0.0362318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.0193498    0.0117793   0.0269204
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.0264151    0.0116483   0.0411818
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.0549451    0.0080942   0.1017960
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1037464    0.0716406   0.1358522
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.0851064    0.0451917   0.1250211
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.0576923    0.0128504   0.1025342
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.3228452    0.2681984   0.3774920
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.3310652    0.1677287   0.4944017
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.3028810    0.2213511   0.3844109
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.3141340    0.2385735   0.3896945
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0339078    0.0197666   0.0480489
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0935404    0.0874977   0.0995832
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0848321    0.0758892   0.0937749
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0652247    0.0523966   0.0780529
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.0907786    0.0553361   0.1262212
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1628341    0.1485639   0.1771044
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.1373818    0.1173244   0.1574392
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.1167830    0.0862863   0.1472796


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3205980   0.2832855   0.3579105
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0885229   0.0846464   0.0923994
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1614449   0.1501252   0.1727646
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0393430   0.0368583   0.0418278
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0263831   0.0210411   0.0317252
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3220339   0.2842988   0.3597690
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0868080   0.0821483   0.0914677
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1477315   0.1371478   0.1583151


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    4+                1.4751553   0.6822075   3.189767
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    4+                1.2789828   0.5531474   2.957254
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    4+                0.7829670   0.2726112   2.248761
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                1.1819481   0.7594734   1.839434
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                0.9600663   0.7028290   1.311453
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.0250636   0.7698295   1.364920
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                2.0426727   1.5501911   2.691611
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                1.7956392   1.3535196   2.382175
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                1.6472559   1.1804557   2.298648
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                1.7810786   1.2099955   2.621696
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                1.4882421   0.9944793   2.227160
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                1.2468825   0.7998033   1.943873
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    4+                1.5466174   1.0526133   2.272463
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    4+                1.3912059   0.9299105   2.081334
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    4+                1.2180380   0.7745574   1.915438
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.9671515   0.2726685   3.430473
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.6433824   0.1753735   2.360339
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.8783019   0.2404209   3.208598
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    4+                1.8881844   0.7622425   4.677305
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    4+                1.5489362   0.5853251   4.098924
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    4+                1.0500000   0.3312144   3.328660
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                1.0254611   0.6084277   1.728341
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                0.9381617   0.6830622   1.288532
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                0.9730174   0.7253370   1.305273
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                2.7586734   1.8096669   4.205348
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                2.5018476   1.6270540   3.846978
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                1.9235922   1.2090481   3.060430
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                1.7937496   1.2017090   2.677468
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                1.5133720   0.9978718   2.295180
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                1.2864587   0.8093589   2.044799


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.0199833   -0.0300336   0.0700003
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0015805   -0.0375619   0.0407229
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0412742    0.0285552   0.0539932
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.0611471    0.0236558   0.0986384
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0121291    0.0019899   0.0222684
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0036920   -0.0391994   0.0318154
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.0313563   -0.0140670   0.0767796
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                -0.0008113   -0.0406400   0.0390174
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0529002    0.0385858   0.0672146
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.0569528    0.0217799   0.0921258


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.2133432   -0.5474483   0.6000972
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0049299   -0.1249607   0.1198231
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.4662548    0.3034379   0.5910143
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.3787489    0.0997969   0.5712602
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.3082911   -0.0039864   0.5234385
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.1399394   -2.6903450   0.6478752
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.3633351   -0.4411875   0.7187443
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                -0.0025193   -0.1341536   0.1138371
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.6093934    0.4092740   0.7417187
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.3855159    0.0974503   0.5816400
