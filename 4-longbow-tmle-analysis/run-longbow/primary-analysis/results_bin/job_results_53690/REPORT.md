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
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0      113     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1       14     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0       18     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0       55     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        4     210
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0       16     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        9     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       44     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       40     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       37     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       41     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       24     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   1       24     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0       93     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       38     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       30     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       22     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0       24     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        7     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0       16     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        6     236
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  0      126     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  1       13     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       16     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        3     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                   0       48     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                   1        4     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                   0       56     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                   1        6     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0      152     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       44     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       10     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        4     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       19     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        3     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       19     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        6     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0       95     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1       13     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       51     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       56     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1       10     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       68     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1      134     373
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
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      242     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1      126     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0      129     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       62     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       71     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       33     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      116     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      198     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       22     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       27     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       68     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       75     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       75     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1      105     686
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      893   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      242   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    11783   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     4159   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     5352   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1898   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1952   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      647   26926
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
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      111     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       41     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   0       43     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   1        7     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   0       21     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   1        7     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  0      117     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  1       10     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   0       18     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   1        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   0       56     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   1        3     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  0       20     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  1        5     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0       58     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1       26     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   0       54     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   1       24     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   0       27     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   1       21     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  0      104     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  1       27     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       40     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1       12     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   0       27     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   1        4     236
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0      174     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       22     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       13     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0      103     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        5     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       13     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       58     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        5     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       63     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        3     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        4     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       92     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1      107     368
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      272     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       96     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   0      144     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       47     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       76     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       28     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  0      183     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  1      131     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       33     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       16     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       99     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       44     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   0      113     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   1       67     686
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      948   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      181   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    13060   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2838   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     5944   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1272   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   0     2150   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      436   26829
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
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      118     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       33     240
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
6-24 months   ki0047075b-MAL-ED          PERU                           2                   0       47     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                   1        3     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                   0       57     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                   1        5     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0      166     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       29     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       11     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        3     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       20     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        2     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       21     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        3     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0       97     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1       10     245
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
![](/tmp/aa5d75c4-6e15-4614-8e5a-06d93e9ec073/6ed82752-09a6-4b03-bec4-d151d278af78/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aa5d75c4-6e15-4614-8e5a-06d93e9ec073/6ed82752-09a6-4b03-bec4-d151d278af78/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aa5d75c4-6e15-4614-8e5a-06d93e9ec073/6ed82752-09a6-4b03-bec4-d151d278af78/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aa5d75c4-6e15-4614-8e5a-06d93e9ec073/6ed82752-09a6-4b03-bec4-d151d278af78/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   NA                0.3600000   0.1714418   0.5485582
0-24 months   ki0047075b-MAL-ED          INDIA        1                    NA                0.4761905   0.3691590   0.5832219
0-24 months   ki0047075b-MAL-ED          INDIA        2                    NA                0.5256410   0.4145894   0.6366927
0-24 months   ki0047075b-MAL-ED          INDIA        3                    NA                0.5000000   0.3582499   0.6417501
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   NA                0.2900763   0.2122016   0.3679511
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    NA                0.4230769   0.2885104   0.5576435
0-24 months   ki0047075b-MAL-ED          NEPAL        2                    NA                0.2258065   0.0783098   0.3733031
0-24 months   ki0047075b-MAL-ED          NEPAL        3                    NA                0.2727273   0.0862303   0.4592242
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   NA                0.3571429   0.1058123   0.6084734
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6633663   0.5981118   0.7286209
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        2                    NA                0.5943396   0.5007394   0.6879398
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        3                    NA                0.5098039   0.3724211   0.6471867
0-24 months   ki1000108-IRC              INDIA        4+                   NA                0.7058824   0.4890205   0.9227442
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.6270270   0.5572557   0.6967983
0-24 months   ki1000108-IRC              INDIA        2                    NA                0.6705882   0.5998500   0.7413264
0-24 months   ki1000108-IRC              INDIA        3                    NA                0.7222222   0.5757302   0.8687142
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   NA                0.4587278   0.2419793   0.6754763
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3489809   0.3073849   0.3905769
0-24 months   ki1017093b-PROVIDE         BANGLADESH   2                    NA                0.3203275   0.2331120   0.4075431
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3                    NA                0.3976719   0.2771959   0.5181479
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.3073332   0.2132765   0.4013900
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3405210   0.2920938   0.3889482
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.3233933   0.2565727   0.3902139
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.3217921   0.2299096   0.4136745
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.6275816   0.5738442   0.6813191
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.5411874   0.3977237   0.6846512
0-24 months   ki1113344-GMS-Nepal        NEPAL        2                    NA                0.5145875   0.4319907   0.5971843
0-24 months   ki1113344-GMS-Nepal        NEPAL        3                    NA                0.5830241   0.5104117   0.6556365
0-24 months   ki1135781-COHORTS          INDIA        4+                   NA                0.1506643   0.0999743   0.2013543
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.3622803   0.3462935   0.3782671
0-24 months   ki1135781-COHORTS          INDIA        2                    NA                0.2980042   0.2748031   0.3212053
0-24 months   ki1135781-COHORTS          INDIA        3                    NA                0.2143492   0.1584382   0.2702601
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.2220880   0.1967829   0.2473932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.2655638   0.2566418   0.2744858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.2554612   0.2427753   0.2681471
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.2434494   0.2224906   0.2644082
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.2709437   0.1970865   0.3448010
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.3222589   0.3031698   0.3413480
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.3021263   0.2759062   0.3283464
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.2845700   0.2401761   0.3289640
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   NA                0.2000000   0.0428682   0.3571318
0-6 months    ki0047075b-MAL-ED          INDIA        1                    NA                0.3095238   0.2104507   0.4085969
0-6 months    ki0047075b-MAL-ED          INDIA        2                    NA                0.3076923   0.2050480   0.4103366
0-6 months    ki0047075b-MAL-ED          INDIA        3                    NA                0.4375000   0.2968616   0.5781384
0-6 months    ki1000108-IRC              INDIA        4+                   NA                0.5882353   0.3539977   0.8224729
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.5351351   0.4631753   0.6070950
0-6 months    ki1000108-IRC              INDIA        2                    NA                0.5529412   0.4781107   0.6277716
0-6 months    ki1000108-IRC              INDIA        3                    NA                0.5277778   0.3644995   0.6910561
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   NA                0.3478261   0.1530402   0.5426119
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2544379   0.2164987   0.2923770
0-6 months    ki1017093b-PROVIDE         BANGLADESH   2                    NA                0.2407407   0.1600513   0.3214301
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3                    NA                0.2903226   0.1772562   0.4033890
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.2583087   0.1702705   0.3463468
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2567235   0.2120836   0.3013634
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.2458894   0.1850430   0.3067358
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.2789486   0.1904339   0.3674634
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.4154456   0.3605575   0.4703337
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.3154692   0.1765661   0.4543723
0-6 months    ki1113344-GMS-Nepal        NEPAL        2                    NA                0.3067495   0.2303414   0.3831577
0-6 months    ki1113344-GMS-Nepal        NEPAL        3                    NA                0.3703968   0.2991985   0.4415950
0-6 months    ki1135781-COHORTS          INDIA        4+                   NA                0.1392221   0.0898525   0.1885916
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                0.2611591   0.2462834   0.2760348
0-6 months    ki1135781-COHORTS          INDIA        2                    NA                0.2332927   0.2114023   0.2551831
0-6 months    ki1135781-COHORTS          INDIA        3                    NA                0.1778803   0.1245988   0.2311618
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.1676574   0.1443085   0.1910063
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1821992   0.1743099   0.1900886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.1748903   0.1639686   0.1858120
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.1618521   0.1442532   0.1794510
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.1139116   0.0623983   0.1654249
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1071950   0.0948181   0.1195719
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.1037802   0.0854168   0.1221437
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.1179549   0.0835655   0.1523443
6-24 months   ki1000108-IRC              INDIA        4+                   NA                0.4705882   0.2330280   0.7081485
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.2594595   0.1962177   0.3227013
6-24 months   ki1000108-IRC              INDIA        2                    NA                0.3529412   0.2810162   0.4248661
6-24 months   ki1000108-IRC              INDIA        3                    NA                0.3055556   0.1548971   0.4562140
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.0879121   0.0296927   0.1461315
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1527378   0.1148618   0.1906137
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.1329787   0.0844082   0.1815492
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.0961538   0.0394569   0.1528508
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.4632811   0.4046679   0.5218943
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.5609723   0.4090972   0.7128474
6-24 months   ki1113344-GMS-Nepal        NEPAL        2                    NA                0.4289326   0.3417821   0.5160830
6-24 months   ki1113344-GMS-Nepal        NEPAL        3                    NA                0.4818632   0.3992781   0.5644483
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.1163110   0.0929769   0.1396451
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1679583   0.1596304   0.1762862
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.1615776   0.1490459   0.1741093
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.1506385   0.1291170   0.1721601
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.1813912   0.1095063   0.2532761
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.2629828   0.2447592   0.2812065
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.2394314   0.2152958   0.2635670
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.2036996   0.1639297   0.2434694


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        NA                   NA                0.4851064   0.4210714   0.5491414
0-24 months   ki0047075b-MAL-ED          NEPAL        NA                   NA                0.3093220   0.2502261   0.3684179
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6112601   0.5617242   0.6607959
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.6568627   0.6107393   0.7029862
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.5903790   0.5535526   0.6272054
0-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.3354454   0.3228114   0.3480794
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.2579663   0.2514934   0.2644392
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3101161   0.2957091   0.3245231
0-6 months    ki0047075b-MAL-ED          INDIA        NA                   NA                0.3234043   0.2634696   0.3833389
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.5441176   0.4957312   0.5925041
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.3760933   0.3398180   0.4123685
0-6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.2494186   0.2376119   0.2612253
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1761899   0.1705583   0.1818216
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
0-24 months   ki0047075b-MAL-ED          INDIA        1                    4+                1.3227513   0.7480773   2.3388906
0-24 months   ki0047075b-MAL-ED          INDIA        2                    4+                1.4601140   0.8300562   2.5684199
0-24 months   ki0047075b-MAL-ED          INDIA        3                    4+                1.3888889   0.7656184   2.5195482
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    4+                1.4585020   0.9619340   2.2114076
0-24 months   ki0047075b-MAL-ED          NEPAL        2                    4+                0.7784380   0.3841652   1.5773572
0-24 months   ki0047075b-MAL-ED          NEPAL        3                    4+                0.9401914   0.4509926   1.9600320
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    4+                1.8574257   0.9126746   3.7801318
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        2                    4+                1.6641509   0.8091128   3.4227594
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        3                    4+                1.4274510   0.6718852   3.0326854
0-24 months   ki1000108-IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        1                    4+                0.8882883   0.6406895   1.2315733
0-24 months   ki1000108-IRC              INDIA        2                    4+                0.9500000   0.6865201   1.3146009
0-24 months   ki1000108-IRC              INDIA        3                    4+                1.0231481   0.7080395   1.4784939
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    4+                0.7607581   0.4674412   1.2381299
0-24 months   ki1017093b-PROVIDE         BANGLADESH   2                    4+                0.6982955   0.4049757   1.2040638
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3                    4+                0.8669017   0.4949149   1.5184806
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    4+                1.1079863   0.7904992   1.5529854
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    4+                1.0522562   0.7273124   1.5223762
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    4+                1.0470461   0.6889348   1.5913054
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    4+                0.8623379   0.6527081   1.1392944
0-24 months   ki1113344-GMS-Nepal        NEPAL        2                    4+                0.8199531   0.6834296   0.9837489
0-24 months   ki1113344-GMS-Nepal        NEPAL        3                    4+                0.9290012   0.7985623   1.0807463
0-24 months   ki1135781-COHORTS          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA        1                    4+                2.4045526   1.7125830   3.3761127
0-24 months   ki1135781-COHORTS          INDIA        2                    4+                1.9779349   1.4005110   2.7934279
0-24 months   ki1135781-COHORTS          INDIA        3                    4+                1.4226936   0.9294409   2.1777147
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    4+                1.1957594   1.0613087   1.3472428
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    4+                1.1502701   1.0180000   1.2997262
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    4+                1.0961844   0.9544480   1.2589687
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    4+                1.1893940   0.8998542   1.5720972
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    4+                1.1150888   0.8400848   1.4801161
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    4+                1.0502920   0.7681359   1.4360912
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA        1                    4+                1.5476190   0.6625619   3.6149446
0-6 months    ki0047075b-MAL-ED          INDIA        2                    4+                1.5384615   0.6552323   3.6122518
0-6 months    ki0047075b-MAL-ED          INDIA        3                    4+                2.1875000   0.9360186   5.1122448
0-6 months    ki1000108-IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        1                    4+                0.9097297   0.5975582   1.3849835
0-6 months    ki1000108-IRC              INDIA        2                    4+                0.9400000   0.6172707   1.4314628
0-6 months    ki1000108-IRC              INDIA        3                    4+                0.8972222   0.5418807   1.4855810
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    4+                0.7315089   0.4097670   1.3058767
0-6 months    ki1017093b-PROVIDE         BANGLADESH   2                    4+                0.6921296   0.3603676   1.3293188
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3                    4+                0.8346774   0.4219679   1.6510413
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    4+                0.9938633   0.6778509   1.4571999
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   2                    4+                0.9519208   0.6248554   1.4501805
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3                    4+                1.0799042   0.6779417   1.7201968
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    4+                0.7593514   0.4794577   1.2026391
0-6 months    ki1113344-GMS-Nepal        NEPAL        2                    4+                0.7383627   0.5569279   0.9789050
0-6 months    ki1113344-GMS-Nepal        NEPAL        3                    4+                0.8915650   0.7059452   1.1259914
0-6 months    ki1135781-COHORTS          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA        1                    4+                1.8758456   1.3097698   2.6865765
0-6 months    ki1135781-COHORTS          INDIA        2                    4+                1.6756878   1.1611425   2.4182474
0-6 months    ki1135781-COHORTS          INDIA        3                    4+                1.2776735   0.8032103   2.0324064
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    4+                1.0867356   0.9410754   1.2549412
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   2                    4+                1.0431411   0.8970557   1.2130164
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   3                    4+                0.9653740   0.8119604   1.1477740
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    4+                0.9410363   0.5888971   1.5037419
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   2                    4+                0.9110592   0.5614832   1.4782789
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   3                    4+                1.0354948   0.6183325   1.7340985
6-24 months   ki1000108-IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        1                    4+                0.5513514   0.3147542   0.9657958
6-24 months   ki1000108-IRC              INDIA        2                    4+                0.7500000   0.4351437   1.2926765
6-24 months   ki1000108-IRC              INDIA        3                    4+                0.6493056   0.3206169   1.3149578
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    4+                1.7373916   0.8566151   3.5237876
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    4+                1.5126327   0.7100358   3.2224542
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    4+                1.0937499   0.4506349   2.6546738
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    4+                1.2108681   0.8981836   1.6324075
6-24 months   ki1113344-GMS-Nepal        NEPAL        2                    4+                0.9258582   0.7289409   1.1759709
6-24 months   ki1113344-GMS-Nepal        NEPAL        3                    4+                1.0401099   0.8405337   1.2870733
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    4+                1.4440444   1.1708995   1.7809079
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    4+                1.3891857   1.1213922   1.7209294
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    4+                1.2951353   1.0099641   1.6608269
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    4+                1.4498105   0.9696697   2.1676974
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    4+                1.3199729   0.8825492   1.9741999
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    4+                1.1229849   0.7212952   1.7483760


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   NA                 0.1251064   -0.0540303   0.3042430
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   NA                 0.0192457   -0.0338976   0.0723890
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   NA                 0.2541172    0.0073804   0.5008540
0-24 months   ki1000108-IRC              INDIA        4+                   NA                -0.0490196   -0.2617104   0.1636712
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   NA                -0.1072992   -0.3202244   0.1056260
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0224821   -0.0658470   0.1108112
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                -0.0372026   -0.0775074   0.0031022
0-24 months   ki1135781-COHORTS          INDIA        4+                   NA                 0.1847811    0.1338496   0.2357125
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.0358783    0.0110358   0.0607207
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                 0.0391723   -0.0319537   0.1102984
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   NA                 0.1234043   -0.0283498   0.2751583
0-6 months    ki1000108-IRC              INDIA        4+                   NA                -0.0441176   -0.2735435   0.1853082
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   NA                -0.0892547   -0.2803091   0.1017998
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                -0.0010527   -0.0834732   0.0813677
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   NA                -0.0393523   -0.0792222   0.0005176
0-6 months    ki1135781-COHORTS          INDIA        4+                   NA                 0.1101966    0.0607143   0.1596788
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.0085326   -0.0141847   0.0312498
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                -0.0061013   -0.0556654   0.0434628
6-24 months   ki1000108-IRC              INDIA        4+                   NA                -0.1593137   -0.3911659   0.0725384
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0435947   -0.0124970   0.0996865
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                 0.0096003   -0.0331248   0.0523254
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.0474631    0.0239810   0.0709453
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                 0.0658889   -0.0032340   0.1350118


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   NA                 0.2578947   -0.2216217    0.5491892
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   NA                 0.0622190   -0.1262521    0.2191506
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   NA                 0.4157268   -0.1682288    0.7077840
0-24 months   ki1000108-IRC              INDIA        4+                   NA                -0.0746269   -0.4526773    0.2050382
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   NA                -0.3053230   -1.0763324    0.1793856
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0681656   -0.2421007    0.3009300
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                -0.0630148   -0.1337756    0.0033297
0-24 months   ki1135781-COHORTS          INDIA        4+                   NA                 0.5508529    0.3723865    0.6785711
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.1390812    0.0373435    0.2300668
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                 0.1263151   -0.1367568    0.3285060
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   NA                 0.3815789   -0.3160749    0.7094051
0-6 months    ki1000108-IRC              INDIA        4+                   NA                -0.0810811   -0.5969182    0.2681301
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   NA                -0.3451838   -1.3297335    0.2232934
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                -0.0040922   -0.3814903    0.2702076
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   NA                -0.1046344   -0.2160156   -0.0034552
0-6 months    ki1135781-COHORTS          INDIA        4+                   NA                 0.4418137    0.2058688    0.6076568
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.0484283   -0.0896440    0.1690049
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                -0.0565929   -0.6317977    0.3158536
6-24 months   ki1000108-IRC              INDIA        4+                   NA                -0.5118110   -1.4765926    0.0771302
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.3315017   -0.2585388    0.6449137
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                 0.0203016   -0.0743558    0.1066192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.2898084    0.1324806    0.4186043
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                 0.2664546   -0.0767061    0.5002454
