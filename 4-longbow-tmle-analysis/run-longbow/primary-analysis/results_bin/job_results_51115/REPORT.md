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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        nrooms    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+               0       12     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+               1        0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0      139     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        5     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                0       49     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                1        1     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                0       28     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                1        0     234
Birth       ki0047075b-MAL-ED          BRAZIL                         4+               0       99     174
Birth       ki0047075b-MAL-ED          BRAZIL                         4+               1        3     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        3     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2                0       19     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2                1        0     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3                0       46     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3                1        4     174
Birth       ki0047075b-MAL-ED          INDIA                          4+               0       22     191
Birth       ki0047075b-MAL-ED          INDIA                          4+               1        0     191
Birth       ki0047075b-MAL-ED          INDIA                          1                0       67     191
Birth       ki0047075b-MAL-ED          INDIA                          1                1        2     191
Birth       ki0047075b-MAL-ED          INDIA                          2                0       64     191
Birth       ki0047075b-MAL-ED          INDIA                          2                1        4     191
Birth       ki0047075b-MAL-ED          INDIA                          3                0       31     191
Birth       ki0047075b-MAL-ED          INDIA                          3                1        1     191
Birth       ki0047075b-MAL-ED          NEPAL                          4+               0       94     171
Birth       ki0047075b-MAL-ED          NEPAL                          4+               1        3     171
Birth       ki0047075b-MAL-ED          NEPAL                          1                0       33     171
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        3     171
Birth       ki0047075b-MAL-ED          NEPAL                          2                0       21     171
Birth       ki0047075b-MAL-ED          NEPAL                          2                1        0     171
Birth       ki0047075b-MAL-ED          NEPAL                          3                0       17     171
Birth       ki0047075b-MAL-ED          NEPAL                          3                1        0     171
Birth       ki0047075b-MAL-ED          PERU                           4+               0      127     259
Birth       ki0047075b-MAL-ED          PERU                           4+               1        5     259
Birth       ki0047075b-MAL-ED          PERU                           1                0       17     259
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     259
Birth       ki0047075b-MAL-ED          PERU                           2                0       50     259
Birth       ki0047075b-MAL-ED          PERU                           2                1        1     259
Birth       ki0047075b-MAL-ED          PERU                           3                0       58     259
Birth       ki0047075b-MAL-ED          PERU                           3                1        1     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+               0      159     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+               1        1     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       14     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       21     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       23     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               0       54     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        6     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       22     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        2     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       31     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        2     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+               0        5      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+               1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       36      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                0       28      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                0       18      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                1        1      90
Birth       ki1000108-IRC              INDIA                          4+               0       17     386
Birth       ki1000108-IRC              INDIA                          4+               1        0     386
Birth       ki1000108-IRC              INDIA                          1                0      167     386
Birth       ki1000108-IRC              INDIA                          1                1        8     386
Birth       ki1000108-IRC              INDIA                          2                0      153     386
Birth       ki1000108-IRC              INDIA                          2                1        8     386
Birth       ki1000108-IRC              INDIA                          3                0       33     386
Birth       ki1000108-IRC              INDIA                          3                1        0     386
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+               0        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+               1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3                1        0      27
Birth       ki1114097-CONTENT          PERU                           4+               0        1       2
Birth       ki1114097-CONTENT          PERU                           4+               1        0       2
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1114097-CONTENT          PERU                           2                0        1       2
Birth       ki1114097-CONTENT          PERU                           2                1        0       2
Birth       ki1114097-CONTENT          PERU                           3                0        0       2
Birth       ki1114097-CONTENT          PERU                           3                1        0       2
Birth       ki1135781-COHORTS          INDIA                          4+               0       91    4769
Birth       ki1135781-COHORTS          INDIA                          4+               1        1    4769
Birth       ki1135781-COHORTS          INDIA                          1                0     3021    4769
Birth       ki1135781-COHORTS          INDIA                          1                1      104    4769
Birth       ki1135781-COHORTS          INDIA                          2                0     1356    4769
Birth       ki1135781-COHORTS          INDIA                          2                1       29    4769
Birth       ki1135781-COHORTS          INDIA                          3                0      160    4769
Birth       ki1135781-COHORTS          INDIA                          3                1        7    4769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+               0      545   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+               1       39   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    11058   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     1269   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                0     4534   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                1      583   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                0     1411   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                1      150   19589
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+               0       23     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+               1        3     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      465     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1       41     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                0      193     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                1       14     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                0       77     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                1        6     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+               0       12     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+               1        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0      145     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        5     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                0       47     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                1        3     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                0       28     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                1        0     240
6 months    ki0047075b-MAL-ED          BRAZIL                         4+               0      126     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                0       59     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          4+               0       25     235
6 months    ki0047075b-MAL-ED          INDIA                          4+               1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          1                0       81     235
6 months    ki0047075b-MAL-ED          INDIA                          1                1        3     235
6 months    ki0047075b-MAL-ED          INDIA                          2                0       74     235
6 months    ki0047075b-MAL-ED          INDIA                          2                1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          3                0       46     235
6 months    ki0047075b-MAL-ED          INDIA                          3                1        2     235
6 months    ki0047075b-MAL-ED          NEPAL                          4+               0      131     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       51     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                0       31     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                1        0     236
6 months    ki0047075b-MAL-ED          PERU                           4+               0      133     270
6 months    ki0047075b-MAL-ED          PERU                           4+               1        6     270
6 months    ki0047075b-MAL-ED          PERU                           1                0       17     270
6 months    ki0047075b-MAL-ED          PERU                           1                1        2     270
6 months    ki0047075b-MAL-ED          PERU                           2                0       48     270
6 months    ki0047075b-MAL-ED          PERU                           2                1        2     270
6 months    ki0047075b-MAL-ED          PERU                           3                0       60     270
6 months    ki0047075b-MAL-ED          PERU                           3                1        2     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+               0      185     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+               1        6     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       14     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       21     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       23     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               0      103     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               1        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       11     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       56     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        1     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+               0       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+               1        0     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      179     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       19     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                0       91     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                1       15     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                0       43     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                1        8     369
6 months    ki1000108-IRC              INDIA                          4+               0       16     405
6 months    ki1000108-IRC              INDIA                          4+               1        1     405
6 months    ki1000108-IRC              INDIA                          1                0      172     405
6 months    ki1000108-IRC              INDIA                          1                1       11     405
6 months    ki1000108-IRC              INDIA                          2                0      156     405
6 months    ki1000108-IRC              INDIA                          2                1       14     405
6 months    ki1000108-IRC              INDIA                          3                0       32     405
6 months    ki1000108-IRC              INDIA                          3                1        3     405
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+               0       21     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+               1        0     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      403     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       12     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                0       89     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                1        2     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                0       56     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                1        0     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+               0       90     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+               1        1     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      326     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       13     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                0      178     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                1        6     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                0       98     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                1        3     715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+               0      261     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4+               1        6     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       38     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2                0      108     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        7     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3                0      136     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3                1        5     563
6 months    ki1114097-CONTENT          PERU                           4+               0       76     215
6 months    ki1114097-CONTENT          PERU                           4+               1        2     215
6 months    ki1114097-CONTENT          PERU                           1                0       43     215
6 months    ki1114097-CONTENT          PERU                           1                1        1     215
6 months    ki1114097-CONTENT          PERU                           2                0       53     215
6 months    ki1114097-CONTENT          PERU                           2                1        1     215
6 months    ki1114097-CONTENT          PERU                           3                0       39     215
6 months    ki1114097-CONTENT          PERU                           3                1        0     215
6 months    ki1135781-COHORTS          INDIA                          4+               0       93    4962
6 months    ki1135781-COHORTS          INDIA                          4+               1        0    4962
6 months    ki1135781-COHORTS          INDIA                          1                0     3000    4962
6 months    ki1135781-COHORTS          INDIA                          1                1      213    4962
6 months    ki1135781-COHORTS          INDIA                          2                0     1448    4962
6 months    ki1135781-COHORTS          INDIA                          2                1       26    4962
6 months    ki1135781-COHORTS          INDIA                          3                0      179    4962
6 months    ki1135781-COHORTS          INDIA                          3                1        3    4962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+               0      718   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+               1       26   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     9033   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      592   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0     4427   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1      313   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                0     1603   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                1       88   16800
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+               0      251    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+               1       11    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     2670    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      180    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                0     1166    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                1       59    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                0      468    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                1       20    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+               0       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0      113     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       36     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       26     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        1     212
24 months   ki0047075b-MAL-ED          BRAZIL                         4+               0      104     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       48     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          4+               0       22     227
24 months   ki0047075b-MAL-ED          INDIA                          4+               1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          1                0       73     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1        9     227
24 months   ki0047075b-MAL-ED          INDIA                          2                0       62     227
24 months   ki0047075b-MAL-ED          INDIA                          2                1       12     227
24 months   ki0047075b-MAL-ED          INDIA                          3                0       42     227
24 months   ki0047075b-MAL-ED          INDIA                          3                1        4     227
24 months   ki0047075b-MAL-ED          NEPAL                          4+               0      122     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+               1        5     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       47     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                0       31     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                0       21     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                1        1     228
24 months   ki0047075b-MAL-ED          PERU                           4+               0      100     201
24 months   ki0047075b-MAL-ED          PERU                           4+               1       10     201
24 months   ki0047075b-MAL-ED          PERU                           1                0       13     201
24 months   ki0047075b-MAL-ED          PERU                           1                1        3     201
24 months   ki0047075b-MAL-ED          PERU                           2                0       32     201
24 months   ki0047075b-MAL-ED          PERU                           2                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           3                0       41     201
24 months   ki0047075b-MAL-ED          PERU                           3                1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+               0      165     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+               1       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       20     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        3     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               0       68     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               1       30     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       28     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1       22     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       42     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1       15     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+               0       11     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+               1        3     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      130     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       71     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       72     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       36     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1       15     372
24 months   ki1000108-IRC              INDIA                          4+               0       15     407
24 months   ki1000108-IRC              INDIA                          4+               1        2     407
24 months   ki1000108-IRC              INDIA                          1                0      159     407
24 months   ki1000108-IRC              INDIA                          1                1       25     407
24 months   ki1000108-IRC              INDIA                          2                0      158     407
24 months   ki1000108-IRC              INDIA                          2                1       12     407
24 months   ki1000108-IRC              INDIA                          3                0       34     407
24 months   ki1000108-IRC              INDIA                          3                1        2     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+               0       21     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+               1        1     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      369     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       37     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                0       85     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                1        7     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                0       53     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                1        4     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+               0       80     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+               1        2     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      200     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                0      121     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                1       16     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                0       78     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                1        0     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+               0      215     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4+               1       22     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       30     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        6     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2                0       92     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2                1       16     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3                0      108     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3                1       10     499
24 months   ki1114097-CONTENT          PERU                           4+               0       63     164
24 months   ki1114097-CONTENT          PERU                           4+               1        0     164
24 months   ki1114097-CONTENT          PERU                           1                0       28     164
24 months   ki1114097-CONTENT          PERU                           1                1        2     164
24 months   ki1114097-CONTENT          PERU                           2                0       38     164
24 months   ki1114097-CONTENT          PERU                           2                1        1     164
24 months   ki1114097-CONTENT          PERU                           3                0       32     164
24 months   ki1114097-CONTENT          PERU                           3                1        0     164
24 months   ki1135781-COHORTS          INDIA                          4+               0       73    3749
24 months   ki1135781-COHORTS          INDIA                          4+               1        3    3749
24 months   ki1135781-COHORTS          INDIA                          1                0     1670    3749
24 months   ki1135781-COHORTS          INDIA                          1                1      632    3749
24 months   ki1135781-COHORTS          INDIA                          2                0     1089    3749
24 months   ki1135781-COHORTS          INDIA                          2                1      132    3749
24 months   ki1135781-COHORTS          INDIA                          3                0      140    3749
24 months   ki1135781-COHORTS          INDIA                          3                1       10    3749
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+               0      337    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+               1       30    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4192    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      859    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     2037    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1      363    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0      710    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1       92    8620
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+               0      244    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+               1        7    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2494    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      295    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0     1115    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1      101    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      458    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1       33    4747


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/09cf85b7-34b8-42fa-bab6-9b9e58aa17a7/d7998cd3-2e5d-43f5-866c-a5e74241c3a4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/09cf85b7-34b8-42fa-bab6-9b9e58aa17a7/d7998cd3-2e5d-43f5-866c-a5e74241c3a4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/09cf85b7-34b8-42fa-bab6-9b9e58aa17a7/d7998cd3-2e5d-43f5-866c-a5e74241c3a4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/09cf85b7-34b8-42fa-bab6-9b9e58aa17a7/d7998cd3-2e5d-43f5-866c-a5e74241c3a4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0771439    0.0595493   0.0947384
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1067900    0.1005228   0.1130572
Birth       kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.1045530    0.0943158   0.1147901
Birth       kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0871801    0.0722390   0.1021211
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0489820    0.0316927   0.0662713
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0620781    0.0570590   0.0670972
6 months    kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0612680    0.0536305   0.0689056
6 months    kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0528262    0.0418676   0.0637847
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0403647    0.0043250   0.0764043
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0629466    0.0543273   0.0715658
6 months    kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0482914    0.0354545   0.0611284
6 months    kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0405785    0.0205740   0.0605830
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.0928270    0.0558449   0.1298091
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1666667    0.0448053   0.2885281
24 months   ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1481481    0.0810822   0.2152141
24 months   ki1113344-GMS-Nepal   NEPAL        3                    NA                0.0847458    0.0344452   0.1350463
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.1054338    0.0690753   0.1417923
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1657877    0.1534773   0.1780981
24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.1472085    0.1316754   0.1627415
24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.1170387    0.0950282   0.1390492
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0278884   -0.0089281   0.0647049
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1057727    0.0930611   0.1184843
24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0830592    0.0656273   0.1004911
24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0672098    0.0435944   0.0908252


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1041911   0.0995153   0.1088669
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0606548   0.0568001   0.0645094
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0559585   0.0491999   0.0627172
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1082164   0.0809323   0.1355005
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1559165   0.1471734   0.1646596
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0918475   0.0824775   0.1012175


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   4+                1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    4+                1.384296   1.0990633    1.743554
Birth       kiGH5241-JiVitA-3     BANGLADESH   2                    4+                1.355298   1.0533920    1.743732
Birth       kiGH5241-JiVitA-3     BANGLADESH   3                    4+                1.130097   0.8500390    1.502424
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   4+                1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    4+                1.267365   0.8856092    1.813682
6 months    kiGH5241-JiVitA-3     BANGLADESH   2                    4+                1.250827   0.8640120    1.810818
6 months    kiGH5241-JiVitA-3     BANGLADESH   3                    4+                1.078481   0.7128214    1.631715
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   4+                1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    4+                1.559448   0.6312233    3.852642
6 months    kiGH5241-JiVitA-4     BANGLADESH   2                    4+                1.196379   0.4792812    2.986392
6 months    kiGH5241-JiVitA-4     BANGLADESH   3                    4+                1.005297   0.3692393    2.737041
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   4+                1.000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    4+                1.795454   0.7808242    4.128531
24 months   ki1113344-GMS-Nepal   NEPAL        2                    4+                1.595960   0.8732249    2.916874
24 months   ki1113344-GMS-Nepal   NEPAL        3                    4+                0.912943   0.4466691    1.865956
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   4+                1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    4+                1.572434   1.1095913    2.228342
24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    4+                1.396217   0.9792284    1.990774
24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    4+                1.110068   0.7629265    1.615164
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   4+                1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    4+                3.792706   1.0042061   14.324369
24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    4+                2.978266   0.7831284   11.326454
24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    4+                2.409950   0.6157239    9.432574


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0270472    0.0095693   0.0445252
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0116728   -0.0053264   0.0286719
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0155939   -0.0188006   0.0499884
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.0153894   -0.0131227   0.0439016
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0504827    0.0151708   0.0857946
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0639590    0.0276917   0.1002263


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.2595926    0.0724040   0.4090065
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.1924458   -0.1423255   0.4291086
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.2786686   -0.7052635   0.6948747
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.1422097   -0.1635757   0.3676354
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.3237803    0.0538032   0.5167251
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.6963613   -0.1198072   0.9176676
