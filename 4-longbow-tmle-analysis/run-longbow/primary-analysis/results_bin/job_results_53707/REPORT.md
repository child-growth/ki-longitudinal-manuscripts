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
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       43     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1        5     235
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
0-24 months   ki0047075b-MAL-ED          PERU                           2                    0       51     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1        1     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    0       61     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1        1     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      185     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1       11     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       20     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        2     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       23     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        2     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0      106     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1        2     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       13     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       61     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        2     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       61     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        5     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0       11     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      145     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       57     373
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0      234     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1       80     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       38     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       11     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0      104     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       39     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0      133     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       47     686
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0     1076   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1       59   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    14935   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1007   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     6803   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      447   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0     2468   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1      131   26926
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
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   0      125     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   1        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    0       20     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    0       58     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1        1     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   0       24     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   1        1     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       75     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        9     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    0       73     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    1        5     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    0       44     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    1        4     235
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      193     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1        3     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       24     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        1     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0      107     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1        1     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       13     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       62     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        1     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       64     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        2     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      160     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       39     368
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   0      278     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1       36     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0       45     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1        4     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      123     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       20     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    0      161     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1       19     686
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   0     1081   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1       48   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    15218   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      680   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     6924   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1      292   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    0     2495   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1       91   26829
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
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0      125     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       18     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       59     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0       24     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       82     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        2     235
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
6-24 months   ki0047075b-MAL-ED          PERU                           2                    0       49     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                    0       61     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1        1     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      187     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1        8     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       21     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       23     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        1     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0      106     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1        1     245
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0      226     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1       52     590
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
![](/tmp/fb9b5afb-3e3b-47a2-9724-1e2c89f4830b/81ee9939-084f-4eea-8fd6-5d0d7b0eff88/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fb9b5afb-3e3b-47a2-9724-1e2c89f4830b/81ee9939-084f-4eea-8fd6-5d0d7b0eff88/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fb9b5afb-3e3b-47a2-9724-1e2c89f4830b/81ee9939-084f-4eea-8fd6-5d0d7b0eff88/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fb9b5afb-3e3b-47a2-9724-1e2c89f4830b/81ee9939-084f-4eea-8fd6-5d0d7b0eff88/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.2570255   0.2085018   0.3055491
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2354620   0.1151484   0.3557756
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.2736819   0.2011781   0.3461857
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.2624245   0.1980243   0.3268246
0-24 months   ki1135781-COHORTS       INDIA        4+                   NA                0.0566038   0.0218405   0.0913670
0-24 months   ki1135781-COHORTS       INDIA        1                    NA                0.1153518   0.1047843   0.1259192
0-24 months   ki1135781-COHORTS       INDIA        2                    NA                0.0842986   0.0704836   0.0981136
0-24 months   ki1135781-COHORTS       INDIA        3                    NA                0.0564103   0.0240254   0.0887951
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0535533   0.0380606   0.0690460
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0635114   0.0588191   0.0682036
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0614111   0.0547196   0.0681026
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0523765   0.0428221   0.0619309
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.0578039   0.0240692   0.0915387
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0638695   0.0551545   0.0725846
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.0637931   0.0490084   0.0785779
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.0586085   0.0369123   0.0803047
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
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0409510   0.0285139   0.0533880
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0428255   0.0388005   0.0468506
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0417831   0.0361756   0.0473907
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0378199   0.0292696   0.0463702
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.0338346   0.0120568   0.0556124
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0200468   0.0144869   0.0256066
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.0247295   0.0143388   0.0351202
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.0188679   0.0052062   0.0325296
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.1870504   0.1411723   0.2329284
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1750000   0.0571492   0.2928508
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.1811024   0.1140689   0.2481358
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.2068966   0.1409072   0.2728859
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0127230   0.0051815   0.0202645
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0340127   0.0301517   0.0378737
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0326283   0.0269423   0.0383143
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0245102   0.0169966   0.0320237
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.0341186   0.0045775   0.0636596
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0463334   0.0388287   0.0538381
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.0414361   0.0292819   0.0535903
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.0410084   0.0221136   0.0599032


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        NA                   NA                0.3406863   0.2946421   0.3867304
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2580175   0.2252514   0.2907836
0-24 months   ki1135781-COHORTS       INDIA        NA                   NA                0.1030563   0.0949208   0.1111918
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0610562   0.0575753   0.0645372
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0630182   0.0560941   0.0699424
0-6 months    ki1000108-IRC           INDIA        NA                   NA                0.3063725   0.2615869   0.3511582
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1135781-COHORTS       INDIA        NA                   NA                0.0711240   0.0641102   0.0781378
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0414104   0.0384280   0.0443929
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0218375   0.0173809   0.0262941
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1898305   0.1581595   0.2215015
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
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                0.9161035   0.5312941   1.579625
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                1.0648044   0.7690834   1.474233
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.0210056   0.7490432   1.391712
0-24 months   ki1135781-COHORTS       INDIA        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       INDIA        1                    4+                2.0378809   1.0952301   3.791860
0-24 months   ki1135781-COHORTS       INDIA        2                    4+                1.4892750   0.7887145   2.812095
0-24 months   ki1135781-COHORTS       INDIA        3                    4+                0.9965812   0.4299360   2.310051
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                1.1859478   0.8828580   1.593090
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                1.1467295   0.8417449   1.562217
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                0.9780257   0.6968790   1.372597
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                1.1049343   0.6014284   2.029967
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                1.1036120   0.5931878   2.053244
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                1.0139185   0.5084247   2.021992
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
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    4+                1.0457762   0.7650652   1.429483
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    4+                1.0203214   0.7292528   1.427565
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    4+                0.9235407   0.6332778   1.346846
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.5924936   0.2909712   1.206472
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.7308947   0.3365753   1.587184
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.5576520   0.2104715   1.477520
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                0.9355769   0.4568959   1.915763
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                0.9682011   0.6210490   1.509403
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.1061008   0.7397006   1.653992
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                2.6733149   1.4603651   4.893716
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                2.5645057   1.4059865   4.677633
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                1.9264399   0.9951277   3.729341
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                1.3580114   0.5597000   3.294970
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                1.2144750   0.4965381   2.970466
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                1.2019383   0.4466005   3.234783


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                -0.1299020   -0.3619624   0.1021585
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.0133870   -0.0363551   0.0631291
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0009920   -0.0349127   0.0368968
0-24 months   ki1135781-COHORTS       INDIA        4+                   NA                 0.0464525    0.0116065   0.0812985
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0075030   -0.0076589   0.0226649
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.0052143   -0.0275542   0.0379828
0-6 months    ki1000108-IRC           INDIA        4+                   NA                -0.1053922   -0.3340857   0.1233014
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.0133315   -0.0293942   0.0560572
0-6 months    ki1135781-COHORTS       INDIA        4+                   NA                 0.0211240   -0.0119074   0.0541554
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0004594   -0.0117231   0.0126420
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0119971   -0.0332960   0.0093018
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0027801   -0.0307511   0.0363114
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0192103    0.0116351   0.0267855
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.0097686   -0.0186856   0.0382228


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                -0.3812950   -1.2631390   0.1569339
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.1537480   -0.6603715   0.5686854
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0038447   -0.1454990   0.1337179
0-24 months   ki1135781-COHORTS       INDIA        4+                   NA                 0.4507489   -0.0116500   0.7017973
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.1228862   -0.1641166   0.3391310
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.0827429   -0.6176366   0.4798828
0-6 months    ki1000108-IRC           INDIA        4+                   NA                -0.3440000   -1.3426548   0.2289363
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.2021053   -0.7922758   0.6447890
0-6 months    ki1135781-COHORTS       INDIA        4+                   NA                 0.2970027   -0.3574646   0.6359351
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0110950   -0.3315008   0.2655408
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.5493802   -1.9189114   0.1775773
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0146454   -0.1788038   0.1763484
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.6015754    0.2860659   0.7776515
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.2225844   -0.7974930   0.6637678
