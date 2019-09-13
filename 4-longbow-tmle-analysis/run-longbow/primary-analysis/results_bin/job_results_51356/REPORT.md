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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        nrooms    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0        9     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        3     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       92     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       60     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0       37     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1       13     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0       20     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        8     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0      114     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1       13     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0       18     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0       55     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        4     210
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0       16     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        9     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       43     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       41     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       38     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       40     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       25     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   1       23     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0       95     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       36     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       31     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       21     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0       26     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        5     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0       16     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        6     236
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  0      126     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  1       13     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       16     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        3     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                   0       49     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                   1        3     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                   0       56     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                   1        6     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0      154     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       42     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       10     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        4     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       19     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        3     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       19     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        6     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0       99     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        9     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       51     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       56     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1       10     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       67     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1      135     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       43     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       63     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       25     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       26     373
0-24 months   ki1000108-IRC              INDIA                          4+                  0        5     408
0-24 months   ki1000108-IRC              INDIA                          4+                  1       12     408
0-24 months   ki1000108-IRC              INDIA                          1                   0       69     408
0-24 months   ki1000108-IRC              INDIA                          1                   1      116     408
0-24 months   ki1000108-IRC              INDIA                          2                   0       56     408
0-24 months   ki1000108-IRC              INDIA                          2                   1      114     408
0-24 months   ki1000108-IRC              INDIA                          3                   0       10     408
0-24 months   ki1000108-IRC              INDIA                          3                   1       26     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0       13     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1       10     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      329     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1      178     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       74     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       34     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0       38     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1       24     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       66     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       29     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      241     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1      127     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0      129     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       62     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       71     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       33     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      115     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      170     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       14     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       26     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       59     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       69     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       58     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       91     602
0-24 months   ki1114097-CONTENT          PERU                           4+                  0       75     215
0-24 months   ki1114097-CONTENT          PERU                           4+                  1        3     215
0-24 months   ki1114097-CONTENT          PERU                           1                   0       42     215
0-24 months   ki1114097-CONTENT          PERU                           1                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           2                   0       52     215
0-24 months   ki1114097-CONTENT          PERU                           2                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           3                   0       38     215
0-24 months   ki1114097-CONTENT          PERU                           3                   1        1     215
0-24 months   ki1135781-COHORTS          INDIA                          4+                  0       90    5366
0-24 months   ki1135781-COHORTS          INDIA                          4+                  1       16    5366
0-24 months   ki1135781-COHORTS          INDIA                          1                   0     2235    5366
0-24 months   ki1135781-COHORTS          INDIA                          1                   1     1276    5366
0-24 months   ki1135781-COHORTS          INDIA                          2                   0     1089    5366
0-24 months   ki1135781-COHORTS          INDIA                          2                   1      465    5366
0-24 months   ki1135781-COHORTS          INDIA                          3                   0      152    5366
0-24 months   ki1135781-COHORTS          INDIA                          3                   1       43    5366
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      893   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      242   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    11784   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     4161   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     5353   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1898   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1951   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      648   26930
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0      208    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       78    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2164    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1028    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      970    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      417    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      402    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1      160    5427
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  0       10     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      112     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       40     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   0       43     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   1        7     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   0       21     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   1        7     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  0      118     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  1        9     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   0       18     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   1        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   0       56     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   1        3     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  0       20     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  1        5     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0       57     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1       27     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   0       55     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   1       23     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   0       29     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   1       19     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  0      106     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  1       25     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       41     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1       11     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   0       29     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   1        2     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   0       18     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   1        4     236
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  0      132     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  1        7     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       18     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                   0       51     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                   1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                   0       61     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                   1        1     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0      176     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       20     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       13     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0      105     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        3     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       13     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       58     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        5     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       63     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        3     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        4     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       91     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1      108     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       48     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       56     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       28     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       23     368
0-6 months    ki1000108-IRC              INDIA                          4+                  0        7     408
0-6 months    ki1000108-IRC              INDIA                          4+                  1       10     408
0-6 months    ki1000108-IRC              INDIA                          1                   0       86     408
0-6 months    ki1000108-IRC              INDIA                          1                   1       99     408
0-6 months    ki1000108-IRC              INDIA                          2                   0       76     408
0-6 months    ki1000108-IRC              INDIA                          2                   1       94     408
0-6 months    ki1000108-IRC              INDIA                          3                   0       17     408
0-6 months    ki1000108-IRC              INDIA                          3                   1       19     408
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  0       15     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  1        8     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      378     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1      129     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0       82     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       26     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   0       44     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   1       18     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       71     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       24     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      271     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       97     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   0      144     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       47     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       76     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       28     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  0      198     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  1       87     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       29     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       11     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       94     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       34     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   0      103     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   1       46     602
0-6 months    ki1114097-CONTENT          PERU                           4+                  0       76     215
0-6 months    ki1114097-CONTENT          PERU                           4+                  1        2     215
0-6 months    ki1114097-CONTENT          PERU                           1                   0       43     215
0-6 months    ki1114097-CONTENT          PERU                           1                   1        1     215
0-6 months    ki1114097-CONTENT          PERU                           2                   0       54     215
0-6 months    ki1114097-CONTENT          PERU                           2                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                   0       38     215
0-6 months    ki1114097-CONTENT          PERU                           3                   1        1     215
0-6 months    ki1135781-COHORTS          INDIA                          4+                  0       86    5160
0-6 months    ki1135781-COHORTS          INDIA                          4+                  1       14    5160
0-6 months    ki1135781-COHORTS          INDIA                          1                   0     2491    5160
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      887    5160
0-6 months    ki1135781-COHORTS          INDIA                          2                   0     1142    5160
0-6 months    ki1135781-COHORTS          INDIA                          2                   1      352    5160
0-6 months    ki1135781-COHORTS          INDIA                          3                   0      154    5160
0-6 months    ki1135781-COHORTS          INDIA                          3                   1       34    5160
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      948   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      181   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    13060   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2841   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     5945   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1272   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   0     2149   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      437   26833
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  0      234    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       32    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2672    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      321    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   0     1162    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   1      132    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   0      467    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   1       63    5083
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0       10     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      117     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       34     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0       42     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1        7     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0       27     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        1     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0      121     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1        5     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        4     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0       18     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0       58     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0       21     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       60     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       24     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       51     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       27     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       39     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   1        9     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0      112     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       19     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       39     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       12     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0       28     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        3     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0       20     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        2     235
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  0      131     270
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  1        8     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       17     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        2     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                   0       48     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                   1        2     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                   0       57     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                   1        5     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0      167     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       28     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       11     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        3     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       20     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        2     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       21     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        3     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0       99     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        8     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       52     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        9     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       57     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        8     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0       13     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      133     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       69     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       84     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       22     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       44     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        7     373
6-24 months   ki1000108-IRC              INDIA                          4+                  0        9     408
6-24 months   ki1000108-IRC              INDIA                          4+                  1        8     408
6-24 months   ki1000108-IRC              INDIA                          1                   0      137     408
6-24 months   ki1000108-IRC              INDIA                          1                   1       48     408
6-24 months   ki1000108-IRC              INDIA                          2                   0      110     408
6-24 months   ki1000108-IRC              INDIA                          2                   1       60     408
6-24 months   ki1000108-IRC              INDIA                          3                   0       25     408
6-24 months   ki1000108-IRC              INDIA                          3                   1       11     408
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0       18     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1        4     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      367     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       71     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       84     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       13     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0       47     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1       11     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       83     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1        8     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      294     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       53     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0      163     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       25     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       94     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       10     730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      149     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      129     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       17     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       23     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       71     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       56     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       74     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       71     590
6-24 months   ki1114097-CONTENT          PERU                           4+                  0       77     215
6-24 months   ki1114097-CONTENT          PERU                           4+                  1        1     215
6-24 months   ki1114097-CONTENT          PERU                           1                   0       43     215
6-24 months   ki1114097-CONTENT          PERU                           1                   1        1     215
6-24 months   ki1114097-CONTENT          PERU                           2                   0       52     215
6-24 months   ki1114097-CONTENT          PERU                           2                   1        2     215
6-24 months   ki1114097-CONTENT          PERU                           3                   0       39     215
6-24 months   ki1114097-CONTENT          PERU                           3                   1        0     215
6-24 months   ki1135781-COHORTS          INDIA                          4+                  0       91    5016
6-24 months   ki1135781-COHORTS          INDIA                          4+                  1        3    5016
6-24 months   ki1135781-COHORTS          INDIA                          1                   0     2749    5016
6-24 months   ki1135781-COHORTS          INDIA                          1                   1      502    5016
6-24 months   ki1135781-COHORTS          INDIA                          2                   0     1343    5016
6-24 months   ki1135781-COHORTS          INDIA                          2                   1      144    5016
6-24 months   ki1135781-COHORTS          INDIA                          3                   0      172    5016
6-24 months   ki1135781-COHORTS          INDIA                          3                   1       12    5016
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      680   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1       82   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     8214   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1678   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     4068   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      808   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1493   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      263   17286
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0      232    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       53    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2351    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      840    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0     1054    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      332    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      445    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1      116    5423


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8c706c42-bcfd-4ead-af64-f822600a86ae/0531139e-5b18-4998-bc96-d942064c9118/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8c706c42-bcfd-4ead-af64-f822600a86ae/0531139e-5b18-4998-bc96-d942064c9118/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8c706c42-bcfd-4ead-af64-f822600a86ae/0531139e-5b18-4998-bc96-d942064c9118/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8c706c42-bcfd-4ead-af64-f822600a86ae/0531139e-5b18-4998-bc96-d942064c9118/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   NA                0.3600000   0.1714418   0.5485582
0-24 months   ki0047075b-MAL-ED          INDIA        1                    NA                0.4880952   0.3809726   0.5952179
0-24 months   ki0047075b-MAL-ED          INDIA        2                    NA                0.5128205   0.4016591   0.6239819
0-24 months   ki0047075b-MAL-ED          INDIA        3                    NA                0.4791667   0.3375396   0.6207937
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   NA                0.2748092   0.1982008   0.3514175
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    NA                0.4038462   0.2702003   0.5374921
0-24 months   ki0047075b-MAL-ED          NEPAL        2                    NA                0.1612903   0.0315427   0.2910379
0-24 months   ki0047075b-MAL-ED          NEPAL        3                    NA                0.2727273   0.0862303   0.4592242
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   NA                0.3571429   0.1058123   0.6084734
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6683168   0.6033026   0.7333310
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        2                    NA                0.5943396   0.5007394   0.6879398
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        3                    NA                0.5098039   0.3724211   0.6471867
0-24 months   ki1000108-IRC              INDIA        4+                   NA                0.7058824   0.4890205   0.9227442
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.6270270   0.5572557   0.6967983
0-24 months   ki1000108-IRC              INDIA        2                    NA                0.6705882   0.5998500   0.7413264
0-24 months   ki1000108-IRC              INDIA        3                    NA                0.7222222   0.5757302   0.8687142
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   NA                0.4058284   0.1918413   0.6198154
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3490532   0.3074674   0.3906390
0-24 months   ki1017093b-PROVIDE         BANGLADESH   2                    NA                0.3099069   0.2224703   0.3973434
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3                    NA                0.3896667   0.2695063   0.5098271
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.3008988   0.2095345   0.3922631
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3444864   0.2957074   0.3932653
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.3236978   0.2571076   0.3902879
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.3213766   0.2291095   0.4136437
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.5960562   0.5391276   0.6529848
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.6199339   0.4612468   0.7786209
0-24 months   ki1113344-GMS-Nepal        NEPAL        2                    NA                0.5317390   0.4443902   0.6190879
0-24 months   ki1113344-GMS-Nepal        NEPAL        3                    NA                0.6084020   0.5293221   0.6874819
0-24 months   ki1135781-COHORTS          INDIA        4+                   NA                0.1510238   0.1008220   0.2012257
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.3629822   0.3469896   0.3789748
0-24 months   ki1135781-COHORTS          INDIA        2                    NA                0.2976699   0.2745119   0.3208280
0-24 months   ki1135781-COHORTS          INDIA        3                    NA                0.2164086   0.1604397   0.2723775
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.2213131   0.1954925   0.2471337
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.2654550   0.2564554   0.2744545
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.2568735   0.2440769   0.2696701
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.2413050   0.2206652   0.2619448
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.2612799   0.1855181   0.3370417
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.3214447   0.3023557   0.3405338
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.3011198   0.2749767   0.3272629
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.2827406   0.2382894   0.3271918
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   NA                0.2000000   0.0428682   0.3571318
0-6 months    ki0047075b-MAL-ED          INDIA        1                    NA                0.3214286   0.2213423   0.4215148
0-6 months    ki0047075b-MAL-ED          INDIA        2                    NA                0.2948718   0.1934626   0.3962810
0-6 months    ki0047075b-MAL-ED          INDIA        3                    NA                0.3958333   0.2571935   0.5344732
0-6 months    ki1000108-IRC              INDIA        4+                   NA                0.5882353   0.3539977   0.8224729
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.5351351   0.4631753   0.6070950
0-6 months    ki1000108-IRC              INDIA        2                    NA                0.5529412   0.4781107   0.6277716
0-6 months    ki1000108-IRC              INDIA        3                    NA                0.5277778   0.3644995   0.6910561
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   NA                0.3478261   0.1530402   0.5426119
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2544379   0.2164987   0.2923770
0-6 months    ki1017093b-PROVIDE         BANGLADESH   2                    NA                0.2407407   0.1600513   0.3214301
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3                    NA                0.2903226   0.1772562   0.4033890
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.2521614   0.1649312   0.3393916
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2590822   0.2143635   0.3038009
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.2457412   0.1844879   0.3069945
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.2748315   0.1872103   0.3624528
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.3066153   0.2529539   0.3602767
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2873737   0.1480397   0.4267078
0-6 months    ki1113344-GMS-Nepal        NEPAL        2                    NA                0.2695249   0.1925583   0.3464916
0-6 months    ki1113344-GMS-Nepal        NEPAL        3                    NA                0.3174091   0.2420034   0.3928148
0-6 months    ki1135781-COHORTS          INDIA        4+                   NA                0.1440226   0.0938219   0.1942233
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                0.2611301   0.2462319   0.2760283
0-6 months    ki1135781-COHORTS          INDIA        2                    NA                0.2348782   0.2128624   0.2568940
0-6 months    ki1135781-COHORTS          INDIA        3                    NA                0.1812519   0.1282012   0.2343026
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.1701148   0.1465917   0.1936379
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1822906   0.1740529   0.1905284
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.1753690   0.1643837   0.1863544
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.1638883   0.1457616   0.1820150
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.1145753   0.0634763   0.1656743
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1069714   0.0946195   0.1193233
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.1029602   0.0849370   0.1209834
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.1173700   0.0826237   0.1521164
6-24 months   ki1000108-IRC              INDIA        4+                   NA                0.4705882   0.2330280   0.7081485
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.2594595   0.1962177   0.3227013
6-24 months   ki1000108-IRC              INDIA        2                    NA                0.3529412   0.2810162   0.4248661
6-24 months   ki1000108-IRC              INDIA        3                    NA                0.3055556   0.1548971   0.4562140
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.0879121   0.0296927   0.1461315
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1527378   0.1148618   0.1906137
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.1329787   0.0844082   0.1815492
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.0961538   0.0394569   0.1528508
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.4659571   0.4072606   0.5246536
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.5791739   0.4208335   0.7375143
6-24 months   ki1113344-GMS-Nepal        NEPAL        2                    NA                0.4390203   0.3513515   0.5266891
6-24 months   ki1113344-GMS-Nepal        NEPAL        3                    NA                0.4964579   0.4137153   0.5792004
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.1229790   0.0986884   0.1472697
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1681231   0.1597560   0.1764902
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.1639039   0.1510326   0.1767751
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.1535717   0.1308018   0.1763416
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.1834702   0.1108162   0.2561241
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.2627927   0.2445247   0.2810607
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.2396973   0.2155699   0.2638248
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.2051746   0.1654269   0.2449224


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        NA                   NA                0.4808511   0.4168346   0.5448675
0-24 months   ki0047075b-MAL-ED          NEPAL        NA                   NA                0.2881356   0.2302312   0.3460400
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.6568627   0.6107393   0.7029862
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.3354454   0.3228114   0.3480794
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.2580394   0.2515717   0.2645070
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3101161   0.2957091   0.3245231
0-6 months    ki0047075b-MAL-ED          INDIA        NA                   NA                0.3148936   0.2553821   0.3744051
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.5441176   0.4957312   0.5925041
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.2494186   0.2376119   0.2612253
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1763127   0.1706830   0.1819425
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1078103   0.0979895   0.1176312
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.3112745   0.2662918   0.3562572
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1637742   0.1576516   0.1698967
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2472801   0.2337480   0.2608122


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA        1                    4+                1.3558201   0.7683661   2.3924117
0-24 months   ki0047075b-MAL-ED          INDIA        2                    4+                1.4245014   0.8081293   2.5109898
0-24 months   ki0047075b-MAL-ED          INDIA        3                    4+                1.3310185   0.7294461   2.4287062
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    4+                1.4695513   0.9533794   2.2651853
0-24 months   ki0047075b-MAL-ED          NEPAL        2                    4+                0.5869176   0.2505143   1.3750601
0-24 months   ki0047075b-MAL-ED          NEPAL        3                    4+                0.9924242   0.4742285   2.0768592
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    4+                1.8712871   0.9196234   3.8077711
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        2                    4+                1.6641509   0.8091128   3.4227594
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        3                    4+                1.4274510   0.6718852   3.0326854
0-24 months   ki1000108-IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        1                    4+                0.8882883   0.6406895   1.2315733
0-24 months   ki1000108-IRC              INDIA        2                    4+                0.9500000   0.6865201   1.3146009
0-24 months   ki1000108-IRC              INDIA        3                    4+                1.0231481   0.7080395   1.4784939
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    4+                0.8601005   0.5012021   1.4759970
0-24 months   ki1017093b-PROVIDE         BANGLADESH   2                    4+                0.7636403   0.4199828   1.3885008
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3                    4+                0.9601761   0.5214329   1.7680859
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    4+                1.1448579   0.8189713   1.6004218
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    4+                1.0757695   0.7455942   1.5521581
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    4+                1.0680553   0.7034608   1.6216143
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    4+                1.0400594   0.7912360   1.3671315
0-24 months   ki1113344-GMS-Nepal        NEPAL        2                    4+                0.8920955   0.7378376   1.0786037
0-24 months   ki1113344-GMS-Nepal        NEPAL        3                    4+                1.0207125   0.8687530   1.1992522
0-24 months   ki1135781-COHORTS          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA        1                    4+                2.4034761   1.7186700   3.3611439
0-24 months   ki1135781-COHORTS          INDIA        2                    4+                1.9710129   1.4009676   2.7730064
0-24 months   ki1135781-COHORTS          INDIA        3                    4+                1.4329435   0.9403894   2.1834858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    4+                1.1994546   1.0622296   1.3544071
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    4+                1.1606794   1.0242550   1.3152746
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    4+                1.0903333   0.9476301   1.2545262
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    4+                1.2302695   0.9152632   1.6536915
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    4+                1.1524797   0.8538855   1.5554890
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    4+                1.0821368   0.7792707   1.5027127
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA        1                    4+                1.6071429   0.6902815   3.7418185
0-6 months    ki0047075b-MAL-ED          INDIA        2                    4+                1.4743590   0.6253715   3.4759089
0-6 months    ki0047075b-MAL-ED          INDIA        3                    4+                1.9791667   0.8373458   4.6779963
0-6 months    ki1000108-IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        1                    4+                0.9097297   0.5975582   1.3849835
0-6 months    ki1000108-IRC              INDIA        2                    4+                0.9400000   0.6172707   1.4314628
0-6 months    ki1000108-IRC              INDIA        3                    4+                0.8972222   0.5418807   1.4855810
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    4+                0.7315089   0.4097670   1.3058767
0-6 months    ki1017093b-PROVIDE         BANGLADESH   2                    4+                0.6921296   0.3603676   1.3293188
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3                    4+                0.8346774   0.4219679   1.6510413
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    4+                1.0274460   0.6979588   1.5124753
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   2                    4+                0.9745395   0.6363069   1.4925615
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3                    4+                1.0899034   0.6809285   1.7445141
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    4+                0.9372453   0.5596392   1.5696343
0-6 months    ki1113344-GMS-Nepal        NEPAL        2                    4+                0.8790329   0.6287732   1.2288991
0-6 months    ki1113344-GMS-Nepal        NEPAL        3                    4+                1.0352031   0.7705248   1.3907995
0-6 months    ki1135781-COHORTS          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA        1                    4+                1.8131190   1.2735450   2.5812989
0-6 months    ki1135781-COHORTS          INDIA        2                    4+                1.6308427   1.1367449   2.3397053
0-6 months    ki1135781-COHORTS          INDIA        3                    4+                1.2584963   0.7983143   1.9839467
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    4+                1.0715742   0.9284033   1.2368238
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   2                    4+                1.0308864   0.8860985   1.1993327
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   3                    4+                0.9633981   0.8081470   1.1484741
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    4+                0.9336342   0.5881214   1.4821307
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   2                    4+                0.8986245   0.5570471   1.4496547
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   3                    4+                1.0243922   0.6146783   1.7072007
6-24 months   ki1000108-IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        1                    4+                0.5513514   0.3147542   0.9657958
6-24 months   ki1000108-IRC              INDIA        2                    4+                0.7500000   0.4351437   1.2926765
6-24 months   ki1000108-IRC              INDIA        3                    4+                0.6493056   0.3206169   1.3149578
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    4+                1.7373916   0.8566151   3.5237876
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    4+                1.5126327   0.7100358   3.2224542
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    4+                1.0937499   0.4506349   2.6546738
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    4+                1.2429769   0.9199342   1.6794586
6-24 months   ki1113344-GMS-Nepal        NEPAL        2                    4+                0.9421905   0.7440701   1.1930635
6-24 months   ki1113344-GMS-Nepal        NEPAL        3                    4+                1.0654583   0.8647716   1.3127182
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    4+                1.3670876   1.1113231   1.6817148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    4+                1.3327789   1.0790388   1.6461870
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    4+                1.2487632   0.9741619   1.6007703
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    4+                1.4323457   0.9582892   2.1409134
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    4+                1.3064651   0.8738575   1.9532371
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    4+                1.1182997   0.7196091   1.7378801


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   NA                 0.1208511   -0.0582790   0.2999811
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   NA                 0.0133264   -0.0386961   0.0653490
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   NA                 0.2567982    0.0100740   0.5035224
0-24 months   ki1000108-IRC              INDIA        4+                   NA                -0.0490196   -0.2617104   0.1636712
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   NA                -0.0543998   -0.2646035   0.1558039
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0302357   -0.0555598   0.1160313
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                -0.0046941   -0.0461855   0.0367973
0-24 months   ki1135781-COHORTS          INDIA        4+                   NA                 0.1844216    0.1339596   0.2348835
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.0367263    0.0114713   0.0619813
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                 0.0488361   -0.0241515   0.1218238
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   NA                 0.1148936   -0.0366938   0.2664810
0-6 months    ki1000108-IRC              INDIA        4+                   NA                -0.0441176   -0.2735435   0.1853082
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   NA                -0.0892547   -0.2803091   0.1017998
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0064138   -0.0753583   0.0881860
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   NA                -0.0109342   -0.0496001   0.0277317
0-6 months    ki1135781-COHORTS          INDIA        4+                   NA                 0.1053960    0.0551130   0.1556790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.0061979   -0.0167346   0.0291305
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                -0.0067650   -0.0558571   0.0423272
6-24 months   ki1000108-IRC              INDIA        4+                   NA                -0.1593137   -0.3911659   0.0725384
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0435947   -0.0124970   0.0996865
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                 0.0069243   -0.0358599   0.0497084
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.0407951    0.0163899   0.0652003
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                 0.0638100   -0.0060431   0.1336630


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   NA                 0.2513274   -0.2323288   0.5451615
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   NA                 0.0462506   -0.1524532   0.2106942
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   NA                 0.4182782   -0.1631450   0.7090645
0-24 months   ki1000108-IRC              INDIA        4+                   NA                -0.0746269   -0.4526773   0.2050382
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   NA                -0.1547962   -0.9381659   0.3119504
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0913096   -0.2084258   0.3166992
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                -0.0079377   -0.0806063   0.0598440
0-24 months   ki1135781-COHORTS          INDIA        4+                   NA                 0.5497811    0.3733986   0.6765136
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.1423283    0.0387383   0.2347548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                 0.1574770   -0.1151315   0.3634427
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   NA                 0.3648649   -0.3509078   0.7013885
0-6 months    ki1000108-IRC              INDIA        4+                   NA                -0.0810811   -0.5969182   0.2681301
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   NA                -0.3451838   -1.3297335   0.2232934
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0248045   -0.3487144   0.2948794
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   NA                -0.0369798   -0.1763442   0.0858738
0-6 months    ki1135781-COHORTS          INDIA        4+                   NA                 0.4225667    0.1834186   0.5916767
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.0351531   -0.1040733   0.1568227
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                -0.0627487   -0.6303252   0.3072335
6-24 months   ki1000108-IRC              INDIA        4+                   NA                -0.5118110   -1.4765926   0.0771302
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.3315017   -0.2585388   0.6449137
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                 0.0146427   -0.0801217   0.1010930
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.2490937    0.0855469   0.3833908
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                 0.2580472   -0.0886127   0.4943161
