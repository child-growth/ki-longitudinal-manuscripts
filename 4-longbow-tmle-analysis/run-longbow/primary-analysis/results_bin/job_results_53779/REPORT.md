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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        nrooms    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                0        9     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                1        3     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      145     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        7     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                 0       48     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                 1        2     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                 0       27     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                 1        1     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                0      125     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                 0       20     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                 1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                 0       59     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                 1        0     210
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                0       23     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                1        2     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 0       78     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        6     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                 0       72     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                 1        6     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                 0       42     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                 1        6     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                0      129     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                1        2     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       51     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        1     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                 0       31     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                 1        0     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                 0       22     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                 1        0     236
0-24 months   ki0047075b-MAL-ED          PERU                           4+                0      139     271
0-24 months   ki0047075b-MAL-ED          PERU                           4+                1        0     271
0-24 months   ki0047075b-MAL-ED          PERU                           1                 0       18     271
0-24 months   ki0047075b-MAL-ED          PERU                           1                 1        1     271
0-24 months   ki0047075b-MAL-ED          PERU                           2                 0       51     271
0-24 months   ki0047075b-MAL-ED          PERU                           2                 1        0     271
0-24 months   ki0047075b-MAL-ED          PERU                           3                 0       62     271
0-24 months   ki0047075b-MAL-ED          PERU                           3                 1        0     271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                0      193     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                1        2     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       14     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                 0       22     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                 1        0     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                 0       25     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                 1        0     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                0      108     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       13     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 0       63     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 0       66     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 1        0     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                0       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                1        0     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      189     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       13     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                 0       97     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                 1        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                 0       50     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                 1        1     373
0-24 months   ki1000108-IRC              INDIA                          4+                0       15     408
0-24 months   ki1000108-IRC              INDIA                          4+                1        2     408
0-24 months   ki1000108-IRC              INDIA                          1                 0      167     408
0-24 months   ki1000108-IRC              INDIA                          1                 1       18     408
0-24 months   ki1000108-IRC              INDIA                          2                 0      149     408
0-24 months   ki1000108-IRC              INDIA                          2                 1       21     408
0-24 months   ki1000108-IRC              INDIA                          3                 0       30     408
0-24 months   ki1000108-IRC              INDIA                          3                 1        6     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                0       22     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                1        0     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      447     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0       98     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        3     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                 0       59     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                 1        0     641
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                0       88     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                1        3     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      329     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       18     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 0      183     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 1        5     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                 0      104     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                 1        0     730
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                0      246     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                1       35     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       34     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        6     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      108     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       20     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                 0      129     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                 1       19     597
0-24 months   ki1114097-CONTENT          PERU                           4+                0       78     215
0-24 months   ki1114097-CONTENT          PERU                           4+                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           1                 0       44     215
0-24 months   ki1114097-CONTENT          PERU                           1                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                 0       54     215
0-24 months   ki1114097-CONTENT          PERU                           2                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3                 0       39     215
0-24 months   ki1114097-CONTENT          PERU                           3                 1        0     215
0-24 months   ki1135781-COHORTS          INDIA                          4+                0       75    4119
0-24 months   ki1135781-COHORTS          INDIA                          4+                1        2    4119
0-24 months   ki1135781-COHORTS          INDIA                          1                 0     2328    4119
0-24 months   ki1135781-COHORTS          INDIA                          1                 1      310    4119
0-24 months   ki1135781-COHORTS          INDIA                          2                 0     1162    4119
0-24 months   ki1135781-COHORTS          INDIA                          2                 1       93    4119
0-24 months   ki1135781-COHORTS          INDIA                          3                 0      142    4119
0-24 months   ki1135781-COHORTS          INDIA                          3                 1        7    4119
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                0      645   15793
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                1       28   15793
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8598   15793
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      529   15793
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     4143   15793
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      271   15793
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                 0     1511   15793
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                 1       68   15793
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                0      263    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                1       13    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2833    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      274    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                 0     1239    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                 1      107    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                 0      518    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                 1       32    5279
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                0       12     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                1        0     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      148     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        4     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                 0       48     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                 1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                 0       27     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                 1        1     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                0      126     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                 0       20     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                 1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                 0       59     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                 1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                0       23     234
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                1        2     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 0       78     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 1        6     234
0-6 months    ki0047075b-MAL-ED          INDIA                          2                 0       73     234
0-6 months    ki0047075b-MAL-ED          INDIA                          2                 1        5     234
0-6 months    ki0047075b-MAL-ED          INDIA                          3                 0       42     234
0-6 months    ki0047075b-MAL-ED          INDIA                          3                 1        5     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                0      126     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                1        5     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       51     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        1     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                 0       31     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                 1        0     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                 0       22     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                 1        0     236
0-6 months    ki0047075b-MAL-ED          PERU                           4+                0      139     271
0-6 months    ki0047075b-MAL-ED          PERU                           4+                1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                 0       19     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           2                 0       51     271
0-6 months    ki0047075b-MAL-ED          PERU                           2                 1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           3                 0       62     271
0-6 months    ki0047075b-MAL-ED          PERU                           3                 1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                0      192     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                1        2     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       14     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                 0       22     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                 1        0     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                 0       25     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                 1        0     255
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                0      108     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       13     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 0       63     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 0       66     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 1        0     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                0       13     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                1        1     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      164     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       28     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                 0       85     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                 1       16     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                 0       46     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                 1        5     358
0-6 months    ki1000108-IRC              INDIA                          4+                0       13     400
0-6 months    ki1000108-IRC              INDIA                          4+                1        3     400
0-6 months    ki1000108-IRC              INDIA                          1                 0      150     400
0-6 months    ki1000108-IRC              INDIA                          1                 1       30     400
0-6 months    ki1000108-IRC              INDIA                          2                 0      145     400
0-6 months    ki1000108-IRC              INDIA                          2                 1       23     400
0-6 months    ki1000108-IRC              INDIA                          3                 0       29     400
0-6 months    ki1000108-IRC              INDIA                          3                 1        7     400
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                0       21     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                1        1     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      446     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       10     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 0       98     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 1        3     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                 0       59     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                 1        0     638
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                0        9     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                1        0     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      149     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                 0       59     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                 1        1     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                 0       28     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                 1        0     250
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                0      237     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                1       31     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       34     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1        5     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 0      103     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 1       16     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                 0      131     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                 1       10     567
0-6 months    ki1114097-CONTENT          PERU                           4+                0       78     215
0-6 months    ki1114097-CONTENT          PERU                           4+                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           1                 0       44     215
0-6 months    ki1114097-CONTENT          PERU                           1                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                 0       54     215
0-6 months    ki1114097-CONTENT          PERU                           2                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                 0       39     215
0-6 months    ki1114097-CONTENT          PERU                           3                 1        0     215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                0        3      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                1        0      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0       27      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1        1      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 0       14      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 1        0      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                 0        4      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                 1        1      50
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                0        9     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                1        3     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      145     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        7     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                 0       48     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                 1        2     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                 0       27     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                 1        1     242
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                0      125     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                1        2     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0        4     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                 0       20     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                 1        0     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                 0       59     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                 1        0     210
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                0       23     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                1        2     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 0       78     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        6     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                 0       72     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                 1        6     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                 0       42     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                 1        6     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                0      129     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                1        2     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       51     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        1     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                 0       31     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                 1        0     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                 0       22     236
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                 1        0     236
6-24 months   ki0047075b-MAL-ED          PERU                           4+                0      139     271
6-24 months   ki0047075b-MAL-ED          PERU                           4+                1        0     271
6-24 months   ki0047075b-MAL-ED          PERU                           1                 0       18     271
6-24 months   ki0047075b-MAL-ED          PERU                           1                 1        1     271
6-24 months   ki0047075b-MAL-ED          PERU                           2                 0       51     271
6-24 months   ki0047075b-MAL-ED          PERU                           2                 1        0     271
6-24 months   ki0047075b-MAL-ED          PERU                           3                 0       62     271
6-24 months   ki0047075b-MAL-ED          PERU                           3                 1        0     271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                0      193     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                1        2     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       14     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                 0       22     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                 1        0     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                 0       25     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                 1        0     256
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                0      108     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                1        0     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       13     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 0       63     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 1        0     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 0       66     250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 1        0     250
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                0       14     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                1        0     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      189     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       13     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                 0       97     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                 1        9     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                 0       50     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                 1        1     373
6-24 months   ki1000108-IRC              INDIA                          4+                0       15     408
6-24 months   ki1000108-IRC              INDIA                          4+                1        2     408
6-24 months   ki1000108-IRC              INDIA                          1                 0      167     408
6-24 months   ki1000108-IRC              INDIA                          1                 1       18     408
6-24 months   ki1000108-IRC              INDIA                          2                 0      149     408
6-24 months   ki1000108-IRC              INDIA                          2                 1       21     408
6-24 months   ki1000108-IRC              INDIA                          3                 0       30     408
6-24 months   ki1000108-IRC              INDIA                          3                 1        6     408
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                0       22     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                1        0     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      447     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0       98     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        3     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                 0       59     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                 1        0     641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                0       88     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                1        3     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      329     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       18     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 0      183     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 1        5     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                 0      104     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                 1        0     730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                0      246     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                1       35     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       34     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        6     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      108     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       20     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                 0      129     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                 1       19     597
6-24 months   ki1114097-CONTENT          PERU                           4+                0       78     215
6-24 months   ki1114097-CONTENT          PERU                           4+                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           1                 0       44     215
6-24 months   ki1114097-CONTENT          PERU                           1                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           2                 0       54     215
6-24 months   ki1114097-CONTENT          PERU                           2                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           3                 0       39     215
6-24 months   ki1114097-CONTENT          PERU                           3                 1        0     215
6-24 months   ki1135781-COHORTS          INDIA                          4+                0       75    4119
6-24 months   ki1135781-COHORTS          INDIA                          4+                1        2    4119
6-24 months   ki1135781-COHORTS          INDIA                          1                 0     2328    4119
6-24 months   ki1135781-COHORTS          INDIA                          1                 1      310    4119
6-24 months   ki1135781-COHORTS          INDIA                          2                 0     1162    4119
6-24 months   ki1135781-COHORTS          INDIA                          2                 1       93    4119
6-24 months   ki1135781-COHORTS          INDIA                          3                 0      142    4119
6-24 months   ki1135781-COHORTS          INDIA                          3                 1        7    4119
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                0      645   15793
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                1       28   15793
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8598   15793
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      529   15793
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     4143   15793
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      271   15793
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                 0     1511   15793
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                 1       68   15793
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                0      263    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                1       13    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2833    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      274    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                 0     1239    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                 1      107    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                 0      518    5279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                 1       32    5279


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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/38a43d15-212f-4c8d-a531-4d7d32f675cc/663dfc08-5d3c-4fb7-939f-4bd8660cd3c2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/38a43d15-212f-4c8d-a531-4d7d32f675cc/663dfc08-5d3c-4fb7-939f-4bd8660cd3c2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/38a43d15-212f-4c8d-a531-4d7d32f675cc/663dfc08-5d3c-4fb7-939f-4bd8660cd3c2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/38a43d15-212f-4c8d-a531-4d7d32f675cc/663dfc08-5d3c-4fb7-939f-4bd8660cd3c2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.1245552   0.0859136   0.1631967
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1500000   0.0392517   0.2607483
0-24 months   ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1562500   0.0932959   0.2192041
0-24 months   ki1113344-GMS-Nepal   NEPAL        3                    NA                0.1283784   0.0744408   0.1823159
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0415006   0.0238435   0.0591577
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0576874   0.0524887   0.0628861
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0620350   0.0536866   0.0703834
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0438649   0.0315810   0.0561488
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0440180   0.0060286   0.0820075
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0882871   0.0761698   0.1004043
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0799730   0.0641522   0.0957937
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0581744   0.0343268   0.0820220
0-6 months    ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.1156716   0.0773465   0.1539968
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1282051   0.0231883   0.2332220
0-6 months    ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1344538   0.0731073   0.1958002
0-6 months    ki1113344-GMS-Nepal   NEPAL        3                    NA                0.0709220   0.0285149   0.1133291
6-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.1245552   0.0859136   0.1631967
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1500000   0.0392517   0.2607483
6-24 months   ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1562500   0.0932959   0.2192041
6-24 months   ki1113344-GMS-Nepal   NEPAL        3                    NA                0.1283784   0.0744408   0.1823159
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0440577   0.0262197   0.0618956
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0577738   0.0525690   0.0629785
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0620238   0.0536388   0.0704088
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0426693   0.0310304   0.0543083
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0447895   0.0054958   0.0840832
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0882427   0.0761175   0.1003680
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0797396   0.0639013   0.0955779
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0586010   0.0345286   0.0826734


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1340034   0.1066544   0.1613523
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0567340   0.0526176   0.0608504
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0806971   0.0720842   0.0893100
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1093474   0.0836377   0.1350572
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1340034   0.1066544   0.1613523
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0567340   0.0526176   0.0608504
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0806971   0.0720842   0.0893100


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    4+                1.2042857   0.5406588   2.682476
0-24 months   ki1113344-GMS-Nepal   NEPAL        2                    4+                1.2544643   0.7544253   2.085933
0-24 months   ki1113344-GMS-Nepal   NEPAL        3                    4+                1.0306950   0.6113785   1.737602
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    4+                1.3900384   0.8942390   2.160728
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    4+                1.4947996   0.9518722   2.347401
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    4+                1.0569710   0.6260591   1.784477
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    4+                2.0057025   0.8339994   4.823556
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    4+                1.8168236   0.7536199   4.379990
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    4+                1.3216044   0.5102077   3.423387
0-6 months    ki1113344-GMS-Nepal   NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    4+                1.1083540   0.4580729   2.681775
0-6 months    ki1113344-GMS-Nepal   NEPAL        2                    4+                1.1623746   0.6613911   2.042838
0-6 months    ki1113344-GMS-Nepal   NEPAL        3                    4+                0.6131320   0.3095066   1.214613
6-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    4+                1.2042857   0.5406588   2.682476
6-24 months   ki1113344-GMS-Nepal   NEPAL        2                    4+                1.2544643   0.7544253   2.085933
6-24 months   ki1113344-GMS-Nepal   NEPAL        3                    4+                1.0306950   0.6113785   1.737602
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    4+                1.3113217   0.8609517   1.997283
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    4+                1.4077871   0.9142268   2.167804
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    4+                0.9684889   0.5861991   1.600089
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    4+                1.9701667   0.8078668   4.804699
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    4+                1.7803198   0.7279992   4.353767
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    4+                1.3083655   0.4986814   3.432693


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                 0.0094482   -0.0194569   0.0383533
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.0152334   -0.0025124   0.0329793
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.0366791   -0.0002567   0.0736148
0-6 months    ki1113344-GMS-Nepal   NEPAL        4+                   NA                -0.0063242   -0.0335510   0.0209026
6-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                 0.0094482   -0.0194569   0.0383533
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.0126763   -0.0052279   0.0305806
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.0359076   -0.0022935   0.0741087


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                 0.0705071   -0.1718485   0.2627400
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.2685064   -0.1186207   0.5216583
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.4545278   -0.2691714   0.7655637
0-6 months    ki1113344-GMS-Nepal   NEPAL        4+                   NA                -0.0578358   -0.3382265   0.1638063
6-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                 0.0705071   -0.1718485   0.2627400
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.2234347   -0.1633492   0.4816229
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.4449679   -0.3097171   0.7647884
