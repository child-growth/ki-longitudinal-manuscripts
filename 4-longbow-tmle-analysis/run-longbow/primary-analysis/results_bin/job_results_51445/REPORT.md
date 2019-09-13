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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                0       22     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                1        0     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      446     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0       98     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        3     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                 0       59     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                 1        0     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                0       88     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                1        3     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      329     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       18     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 0      183     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 1        5     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                 0      104     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                 1        0     730
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                0      239     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                1       39     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       34     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        6     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      108     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       20     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                 0      126     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                 1       20     592
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                0      633   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                1       28   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8554   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      528   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     4099   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      270   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                 0     1487   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                 1       70   15669
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
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                0      126     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                1        4     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       52     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                 0       31     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                 1        0     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                 0       22     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                 1        0     235
0-6 months    ki0047075b-MAL-ED          PERU                           4+                0      139     271
0-6 months    ki0047075b-MAL-ED          PERU                           4+                1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                 0       19     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           2                 0       51     271
0-6 months    ki0047075b-MAL-ED          PERU                           2                 1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           3                 0       62     271
0-6 months    ki0047075b-MAL-ED          PERU                           3                 1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                0      191     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                1        2     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       14     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                 0       22     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                 1        0     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                 0       25     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                 1        0     254
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                0       21     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                1        1     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      445     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       10     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 0       98     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 1        3     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                 0       59     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                 1        0     637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                0        9     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                1        0     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      149     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                 0       59     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                 1        1     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                 0       28     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                 1        0     250
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                0      220     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                1       33     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       33     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1        5     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 0      100     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 1       15     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                 0      124     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                 1       12     542
0-6 months    ki1114097-CONTENT          PERU                           4+                0       78     215
0-6 months    ki1114097-CONTENT          PERU                           4+                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           1                 0       44     215
0-6 months    ki1114097-CONTENT          PERU                           1                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                 0       54     215
0-6 months    ki1114097-CONTENT          PERU                           2                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                 0       39     215
0-6 months    ki1114097-CONTENT          PERU                           3                 1        0     215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                0        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0       28      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 0       11      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                 0        4      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                 1        1      46
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                0       22     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                1        0     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      446     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0       98     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        3     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                 0       59     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                 1        0     640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                0       88     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                1        3     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      329     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       18     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 0      183     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 1        5     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                 0      104     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                 1        0     730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                0      239     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                1       39     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       34     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        6     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      108     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       20     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                 0      126     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                 1       20     592
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                0      633   15669
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                1       28   15669
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8554   15669
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      528   15669
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     4099   15669
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      270   15669
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                 0     1487   15669
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                 1       70   15669
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
![](/tmp/4a0f82f4-990b-41e2-b8b6-8fc21ec1e25a/d7bcf548-8325-49e8-aa3f-dde584f2ea8f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a0f82f4-990b-41e2-b8b6-8fc21ec1e25a/d7bcf548-8325-49e8-aa3f-dde584f2ea8f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a0f82f4-990b-41e2-b8b6-8fc21ec1e25a/d7bcf548-8325-49e8-aa3f-dde584f2ea8f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a0f82f4-990b-41e2-b8b6-8fc21ec1e25a/d7bcf548-8325-49e8-aa3f-dde584f2ea8f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.1402878   0.0994296   0.1811460
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1500000   0.0392509   0.2607491
0-24 months   ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1562500   0.0932954   0.2192046
0-24 months   ki1113344-GMS-Nepal   NEPAL        3                    NA                0.1369863   0.0811668   0.1928058
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0421855   0.0250933   0.0592777
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0579814   0.0527697   0.0631932
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0627754   0.0543889   0.0711620
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0461863   0.0337265   0.0586461
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0449715   0.0067210   0.0832220
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0882303   0.0761145   0.1003461
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0795667   0.0638358   0.0952977
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0588461   0.0348522   0.0828401
0-6 months    ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.1304348   0.0888976   0.1719719
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1315789   0.0240029   0.2391550
0-6 months    ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1304348   0.0688252   0.1920443
0-6 months    ki1113344-GMS-Nepal   NEPAL        3                    NA                0.0882353   0.0405217   0.1359489
6-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.1402878   0.0994296   0.1811460
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1500000   0.0392509   0.2607491
6-24 months   ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1562500   0.0932954   0.2192046
6-24 months   ki1113344-GMS-Nepal   NEPAL        3                    NA                0.1369863   0.0811668   0.1928058
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0432550   0.0258476   0.0606625
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0579415   0.0527386   0.0631444
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0630368   0.0545454   0.0715282
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0459258   0.0336300   0.0582216
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0441937   0.0071614   0.0812260
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0883470   0.0762331   0.1004608
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0795921   0.0637983   0.0953858
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0585840   0.0345189   0.0826491


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0571830   0.0530902   0.0612758
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0806971   0.0720842   0.0893100
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1199262   0.0925504   0.1473020
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1435811   0.1153098   0.1718524
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0571830   0.0530902   0.0612758
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0806971   0.0720842   0.0893100


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    4+                1.0692308   0.4834751   2.364660
0-24 months   ki1113344-GMS-Nepal   NEPAL        2                    4+                1.1137821   0.6774699   1.831093
0-24 months   ki1113344-GMS-Nepal   NEPAL        3                    4+                0.9764665   0.5917446   1.611315
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    4+                1.3744414   0.9030321   2.091940
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    4+                1.4880823   0.9651267   2.294402
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    4+                1.0948396   0.6640330   1.805142
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    4+                1.9619140   0.8258237   4.660930
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    4+                1.7692690   0.7428933   4.213678
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    4+                1.3085199   0.5113392   3.348510
0-6 months    ki1113344-GMS-Nepal   NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    4+                1.0087719   0.4195072   2.425753
0-6 months    ki1113344-GMS-Nepal   NEPAL        2                    4+                1.0000000   0.5657159   1.767672
0-6 months    ki1113344-GMS-Nepal   NEPAL        3                    4+                0.6764706   0.3611643   1.267048
6-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    4+                1.0692308   0.4834751   2.364660
6-24 months   ki1113344-GMS-Nepal   NEPAL        2                    4+                1.1137821   0.6774699   1.831093
6-24 months   ki1113344-GMS-Nepal   NEPAL        3                    4+                0.9764665   0.5917446   1.611315
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    4+                1.3395313   0.8825319   2.033178
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    4+                1.4573282   0.9473759   2.241777
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    4+                1.0617444   0.6464210   1.743912
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    4+                1.9990837   0.8520823   4.690082
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    4+                1.8009818   0.7654995   4.237149
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    4+                1.3256176   0.5239600   3.353809


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                 0.0032933   -0.0267198   0.0333064
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.0149975   -0.0021424   0.0321374
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.0357256   -0.0014623   0.0729134
0-6 months    ki1113344-GMS-Nepal   NEPAL        4+                   NA                -0.0105086   -0.0399030   0.0188858
6-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                 0.0032933   -0.0267198   0.0333064
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.0139279   -0.0035150   0.0313708
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.0365034    0.0005116   0.0724951


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                 0.0229369   -0.2100984   0.2110954
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.2622724   -0.1046993   0.5073392
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.4427119   -0.2806520   0.7574907
0-6 months    ki1113344-GMS-Nepal   NEPAL        4+                   NA                -0.0876254   -0.3618242   0.1313643
6-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                 0.0229369   -0.2100984   0.2110954
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                 0.2435677   -0.1295998   0.4934580
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                 0.4523505   -0.2427186   0.7586582
