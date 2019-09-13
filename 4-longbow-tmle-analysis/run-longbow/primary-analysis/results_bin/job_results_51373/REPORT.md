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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        nrooms    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0       11     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        1     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      135     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       17     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       48     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1        2     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       27     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1        1     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0      124     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1        3     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       20     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       58     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        1     210
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0       23     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1        2     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       73     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       11     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       72     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1        6     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       44     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1        4     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0      126     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1        5     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       48     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        4     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       31     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        0     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       22     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        0     236
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   0      138     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   1        1     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       18     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    0       52     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1        0     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    0       61     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1        1     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      187     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1        9     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       20     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        2     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       23     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        2     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0      108     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       13     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       61     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        2     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       61     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        5     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0       11     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      142     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       60     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       83     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       23     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       42     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1        9     373
0-24 months   ki1000108-IRC              INDIA                          4+                   0        9     408
0-24 months   ki1000108-IRC              INDIA                          4+                   1        8     408
0-24 months   ki1000108-IRC              INDIA                          1                    0      121     408
0-24 months   ki1000108-IRC              INDIA                          1                    1       64     408
0-24 months   ki1000108-IRC              INDIA                          2                    0      117     408
0-24 months   ki1000108-IRC              INDIA                          2                    1       53     408
0-24 months   ki1000108-IRC              INDIA                          3                    0       22     408
0-24 months   ki1000108-IRC              INDIA                          3                    1       14     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       22     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        1     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      475     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       32     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      104     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1        4     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       57     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1        5     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       88     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1        7     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      333     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       35     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0      175     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       16     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       96     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1        8     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0      214     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1       71     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       29     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       11     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       92     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       36     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0      111     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       38     602
0-24 months   ki1114097-CONTENT          PERU                           4+                   0       78     215
0-24 months   ki1114097-CONTENT          PERU                           4+                   1        0     215
0-24 months   ki1114097-CONTENT          PERU                           1                    0       44     215
0-24 months   ki1114097-CONTENT          PERU                           1                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                    0       54     215
0-24 months   ki1114097-CONTENT          PERU                           2                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3                    0       39     215
0-24 months   ki1114097-CONTENT          PERU                           3                    1        0     215
0-24 months   ki1135781-COHORTS          INDIA                          4+                   0      100    5366
0-24 months   ki1135781-COHORTS          INDIA                          4+                   1        6    5366
0-24 months   ki1135781-COHORTS          INDIA                          1                    0     3106    5366
0-24 months   ki1135781-COHORTS          INDIA                          1                    1      405    5366
0-24 months   ki1135781-COHORTS          INDIA                          2                    0     1423    5366
0-24 months   ki1135781-COHORTS          INDIA                          2                    1      131    5366
0-24 months   ki1135781-COHORTS          INDIA                          3                    0      184    5366
0-24 months   ki1135781-COHORTS          INDIA                          3                    1       11    5366
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0     1076   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1       59   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    14939   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1006   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     6805   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      446   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0     2468   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1      131   26930
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      269    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1       17    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2988    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      204    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0     1299    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1       88    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      529    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1       33    5427
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   0       12     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   1        0     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0      139     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1       13     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    0       48     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    0       27     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1        1     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   0      126     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    0       20     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    0       58     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1        1     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   0       24     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   1        1     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       74     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1       10     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    0       73     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    1        5     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    0       45     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    1        3     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   0      126     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   1        5     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       50     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        2     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    0       31     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    1        0     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    0       22     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    1        0     236
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   0      138     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       19     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                    0       52     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                    1        0     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                    0       62     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                    1        0     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      194     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1        2     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       24     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        1     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0      108     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       13     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       62     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        1     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       64     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        2     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      157     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       42     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       85     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       19     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       45     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1        6     368
0-6 months    ki1000108-IRC              INDIA                          4+                   0       10     408
0-6 months    ki1000108-IRC              INDIA                          4+                   1        7     408
0-6 months    ki1000108-IRC              INDIA                          1                    0      125     408
0-6 months    ki1000108-IRC              INDIA                          1                    1       60     408
0-6 months    ki1000108-IRC              INDIA                          2                    0      123     408
0-6 months    ki1000108-IRC              INDIA                          2                    1       47     408
0-6 months    ki1000108-IRC              INDIA                          3                    0       25     408
0-6 months    ki1000108-IRC              INDIA                          3                    1       11     408
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   0       22     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   1        1     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      486     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       21     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0      105     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1        3     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    0       58     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1        4     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       90     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1        5     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      342     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       26     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    0      180     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       11     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       96     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1        8     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   0      260     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1       25     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0       36     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1        4     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      111     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       17     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    0      139     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1       10     602
0-6 months    ki1114097-CONTENT          PERU                           4+                   0       78     215
0-6 months    ki1114097-CONTENT          PERU                           4+                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           1                    0       44     215
0-6 months    ki1114097-CONTENT          PERU                           1                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                    0       54     215
0-6 months    ki1114097-CONTENT          PERU                           2                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                    0       39     215
0-6 months    ki1114097-CONTENT          PERU                           3                    1        0     215
0-6 months    ki1135781-COHORTS          INDIA                          4+                   0       95    5160
0-6 months    ki1135781-COHORTS          INDIA                          4+                   1        5    5160
0-6 months    ki1135781-COHORTS          INDIA                          1                    0     3125    5160
0-6 months    ki1135781-COHORTS          INDIA                          1                    1      253    5160
0-6 months    ki1135781-COHORTS          INDIA                          2                    0     1393    5160
0-6 months    ki1135781-COHORTS          INDIA                          2                    1      101    5160
0-6 months    ki1135781-COHORTS          INDIA                          3                    0      180    5160
0-6 months    ki1135781-COHORTS          INDIA                          3                    1        8    5160
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   0     1081   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1       48   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    15222   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      679   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     6926   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1      291   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    0     2495   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1       91   26833
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      257    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1        9    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2933    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       60    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    0     1262    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1       32    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    0      520    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1       10    5083
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0       11     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      147     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       49     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       28     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1        0     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0      124     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       18     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       59     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0       24     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       83     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       76     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1        2     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       47     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0      131     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       49     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       31     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       22     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   0      139     270
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       18     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                    0       50     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                    0       61     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1        1     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      188     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1        7     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       21     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       23     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        1     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0      107     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       12     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       60     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       62     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        3     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0       14     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        0     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      182     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       20     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       99     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1        7     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       48     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1        3     373
6-24 months   ki1000108-IRC              INDIA                          4+                   0       16     408
6-24 months   ki1000108-IRC              INDIA                          4+                   1        1     408
6-24 months   ki1000108-IRC              INDIA                          1                    0      175     408
6-24 months   ki1000108-IRC              INDIA                          1                    1       10     408
6-24 months   ki1000108-IRC              INDIA                          2                    0      158     408
6-24 months   ki1000108-IRC              INDIA                          2                    1       12     408
6-24 months   ki1000108-IRC              INDIA                          3                    0       33     408
6-24 months   ki1000108-IRC              INDIA                          3                    1        3     408
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       22     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        0     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      427     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       11     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       96     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1        1     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       57     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1        1     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       89     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1        2     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      335     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       12     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0      182     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1        6     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0      104     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1        0     730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0      225     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1       53     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       33     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1        7     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0      104     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       23     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0      115     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       30     590
6-24 months   ki1114097-CONTENT          PERU                           4+                   0       78     215
6-24 months   ki1114097-CONTENT          PERU                           4+                   1        0     215
6-24 months   ki1114097-CONTENT          PERU                           1                    0       44     215
6-24 months   ki1114097-CONTENT          PERU                           1                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           2                    0       54     215
6-24 months   ki1114097-CONTENT          PERU                           2                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           3                    0       39     215
6-24 months   ki1114097-CONTENT          PERU                           3                    1        0     215
6-24 months   ki1135781-COHORTS          INDIA                          4+                   0       93    5016
6-24 months   ki1135781-COHORTS          INDIA                          4+                   1        1    5016
6-24 months   ki1135781-COHORTS          INDIA                          1                    0     3094    5016
6-24 months   ki1135781-COHORTS          INDIA                          1                    1      157    5016
6-24 months   ki1135781-COHORTS          INDIA                          2                    0     1456    5016
6-24 months   ki1135781-COHORTS          INDIA                          2                    1       31    5016
6-24 months   ki1135781-COHORTS          INDIA                          3                    0      181    5016
6-24 months   ki1135781-COHORTS          INDIA                          3                    1        3    5016
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      751   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1       11   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     9553   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      339   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     4716   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      160   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1714   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1       42   17286
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      275    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1       10    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3043    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      148    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0     1329    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1       57    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      538    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1       23    5423


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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/d299b4df-f146-44f0-86d2-7ad8d6ce9ca0/f48ae48a-2297-441b-a3e3-52e60fb38296/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d299b4df-f146-44f0-86d2-7ad8d6ce9ca0/f48ae48a-2297-441b-a3e3-52e60fb38296/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d299b4df-f146-44f0-86d2-7ad8d6ce9ca0/f48ae48a-2297-441b-a3e3-52e60fb38296/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d299b4df-f146-44f0-86d2-7ad8d6ce9ca0/f48ae48a-2297-441b-a3e3-52e60fb38296/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                0.4705882   0.2330280   0.7081485
0-24 months   ki1000108-IRC           INDIA        1                    NA                0.3459459   0.2773172   0.4145747
0-24 months   ki1000108-IRC           INDIA        2                    NA                0.3117647   0.2420477   0.3814817
0-24 months   ki1000108-IRC           INDIA        3                    NA                0.3888889   0.2294469   0.5483308
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.0736842   0.0211140   0.1262544
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0951087   0.0651157   0.1251016
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.0837696   0.0444541   0.1230851
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.0769231   0.0256764   0.1281697
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.2514375   0.2009764   0.3018986
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2947161   0.1491014   0.4403307
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.2843301   0.2062262   0.3624340
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.2554862   0.1855851   0.3253872
0-24 months   ki1135781-COHORTS       INDIA        4+                   NA                0.0566038   0.0218405   0.0913670
0-24 months   ki1135781-COHORTS       INDIA        1                    NA                0.1153518   0.1047843   0.1259192
0-24 months   ki1135781-COHORTS       INDIA        2                    NA                0.0842986   0.0704836   0.0981136
0-24 months   ki1135781-COHORTS       INDIA        3                    NA                0.0564103   0.0240254   0.0887951
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0552930   0.0406469   0.0699392
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0628194   0.0580122   0.0676266
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0612674   0.0543014   0.0682334
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0486888   0.0380976   0.0592799
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.0580873   0.0240352   0.0921394
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0638907   0.0551616   0.0726199
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.0639299   0.0491486   0.0787113
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.0583950   0.0366387   0.0801514
0-6 months    ki1000108-IRC           INDIA        4+                   NA                0.4117647   0.1775271   0.6460023
0-6 months    ki1000108-IRC           INDIA        1                    NA                0.3243243   0.2567854   0.3918632
0-6 months    ki1000108-IRC           INDIA        2                    NA                0.2764706   0.2091560   0.3437852
0-6 months    ki1000108-IRC           INDIA        3                    NA                0.3055556   0.1548971   0.4562140
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.0526316   0.0076996   0.0975636
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0706522   0.0444545   0.0968498
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.0575916   0.0245305   0.0906527
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.0769231   0.0256764   0.1281697
0-6 months    ki1135781-COHORTS       INDIA        4+                   NA                0.0500000   0.0168833   0.0831167
0-6 months    ki1135781-COHORTS       INDIA        1                    NA                0.0748964   0.0660190   0.0837738
0-6 months    ki1135781-COHORTS       INDIA        2                    NA                0.0676037   0.0548716   0.0803359
0-6 months    ki1135781-COHORTS       INDIA        3                    NA                0.0425532   0.0136973   0.0714091
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0438434   0.0314484   0.0562383
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0427651   0.0385165   0.0470136
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0414573   0.0354340   0.0474806
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0351113   0.0259024   0.0443202
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.0338346   0.0120568   0.0556124
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0200468   0.0144869   0.0256066
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.0247295   0.0143388   0.0351202
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.0188679   0.0052062   0.0325296
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.1906475   0.1444330   0.2368620
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1750000   0.0571492   0.2928508
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.1811024   0.1140689   0.2481358
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.2068966   0.1409072   0.2728859
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0140067   0.0057936   0.0222198
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0340138   0.0301536   0.0378741
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0325026   0.0267978   0.0382073
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0245366   0.0168589   0.0322142
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.0351829   0.0055332   0.0648327
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0463172   0.0388122   0.0538222
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.0412259   0.0292350   0.0532169
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.0412140   0.0221642   0.0602639


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        NA                   NA                0.3406863   0.2946421   0.3867304
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2591362   0.2241059   0.2941665
0-24 months   ki1135781-COHORTS       INDIA        NA                   NA                0.1030563   0.0949208   0.1111918
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0609729   0.0574989   0.0644469
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0630182   0.0560941   0.0699424
0-6 months    ki1000108-IRC           INDIA        NA                   NA                0.3063725   0.2615869   0.3511582
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1135781-COHORTS       INDIA        NA                   NA                0.0711240   0.0641102   0.0781378
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0413297   0.0383531   0.0443063
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0218375   0.0173809   0.0262941
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1915254   0.1597467   0.2233042
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0319334   0.0290403   0.0348264
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0438871   0.0380629   0.0497114


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC           INDIA        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC           INDIA        1                    4+                0.7351351   0.4273735   1.264523
0-24 months   ki1000108-IRC           INDIA        2                    4+                0.6625000   0.3814169   1.150726
0-24 months   ki1000108-IRC           INDIA        3                    4+                0.8263889   0.4312690   1.583509
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    4+                1.2907609   0.5916685   2.815873
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    4+                1.1368736   0.4839859   2.670494
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    4+                1.0439560   0.3933243   2.770854
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                1.1721245   0.6876112   1.998042
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                1.1308183   0.8045861   1.589327
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.0161021   0.7234268   1.427185
0-24 months   ki1135781-COHORTS       INDIA        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       INDIA        1                    4+                2.0378809   1.0952301   3.791860
0-24 months   ki1135781-COHORTS       INDIA        2                    4+                1.4892750   0.7887145   2.812095
0-24 months   ki1135781-COHORTS       INDIA        3                    4+                0.9965812   0.4299360   2.310051
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                1.1361176   0.8654354   1.491461
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                1.1080493   0.8319857   1.475714
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                0.8805589   0.6278396   1.235003
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                1.0999087   0.5974594   2.024906
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                1.1005836   0.5905490   2.051116
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                1.0052974   0.5031039   2.008775
0-6 months    ki1000108-IRC           INDIA        4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC           INDIA        1                    4+                0.7876448   0.4297768   1.443503
0-6 months    ki1000108-IRC           INDIA        2                    4+                0.6714286   0.3616328   1.246613
0-6 months    ki1000108-IRC           INDIA        3                    4+                0.7420635   0.3495437   1.575363
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    4+                1.3423913   0.5292449   3.404878
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   2                    4+                1.0942408   0.3911333   3.061266
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   3                    4+                1.4615385   0.4949003   4.316212
0-6 months    ki1135781-COHORTS       INDIA        4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS       INDIA        1                    4+                1.4979278   0.7643161   2.935680
0-6 months    ki1135781-COHORTS       INDIA        2                    4+                1.3520750   0.6791251   2.691855
0-6 months    ki1135781-COHORTS       INDIA        3                    4+                0.8510639   0.3298314   2.196000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    4+                0.9754055   0.7264758   1.309632
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    4+                0.9455777   0.6857569   1.303840
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    4+                0.8008344   0.5453552   1.175996
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.5924936   0.2909712   1.206472
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.7308947   0.3365753   1.587184
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.5576520   0.2104715   1.477520
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                0.9179245   0.4487124   1.877785
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                0.9499331   0.6102916   1.478593
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.0852310   0.7270070   1.619965
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                2.4283930   1.3349754   4.417379
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                2.3204972   1.2797172   4.207732
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                1.7517715   0.9050726   3.390560
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                1.3164668   0.5551033   3.122094
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                1.1717593   0.4906036   2.798634
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                1.1714213   0.4446287   3.086233


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                -0.1299020   -0.3619624   0.1021585
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.0133870   -0.0363551   0.0631291
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0076987   -0.0294193   0.0448168
0-24 months   ki1135781-COHORTS       INDIA        4+                   NA                 0.0464525    0.0116065   0.0812985
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0056799   -0.0086486   0.0200083
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.0049309   -0.0281190   0.0379808
0-6 months    ki1000108-IRC           INDIA        4+                   NA                -0.1053922   -0.3340857   0.1233014
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.0133315   -0.0293942   0.0560572
0-6 months    ki1135781-COHORTS       INDIA        4+                   NA                 0.0211240   -0.0119074   0.0541554
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0025137   -0.0147025   0.0096751
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0119971   -0.0332960   0.0093018
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0008779   -0.0327816   0.0345375
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0179266    0.0097239   0.0261293
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.0087042   -0.0198364   0.0372448


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                -0.3812950   -1.2631390   0.1569339
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.1537480   -0.6603715   0.5686854
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0297092   -0.1246015   0.1628463
0-24 months   ki1135781-COHORTS       INDIA        4+                   NA                 0.4507489   -0.0116500   0.7017973
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0931538   -0.1749807   0.3000991
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.0782462   -0.6289928   0.4784323
0-6 months    ki1000108-IRC           INDIA        4+                   NA                -0.3440000   -1.3426548   0.2289363
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.2021053   -0.7922758   0.6447890
0-6 months    ki1135781-COHORTS       INDIA        4+                   NA                 0.2970027   -0.3574646   0.6359351
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0608200   -0.4011540   0.1968484
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.5493802   -1.9189114   0.1775773
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0045839   -0.1876288   0.1656879
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.5613765    0.2189400   0.7536801
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.1983316   -0.8109034   0.6451096
