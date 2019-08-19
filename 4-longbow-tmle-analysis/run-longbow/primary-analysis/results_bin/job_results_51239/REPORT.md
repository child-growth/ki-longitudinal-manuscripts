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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        nrooms    wasted   n_cell       n
----------  -------------------------  -----------------------------  -------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+             0       11     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+             1        1     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0      106     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              1       29     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              0       43     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              1        4     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              0       24     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              1        4     222
Birth       ki0047075b-MAL-ED          BRAZIL                         4+             0       95     167
Birth       ki0047075b-MAL-ED          BRAZIL                         4+             1        4     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0        3     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1              1        0     167
Birth       ki0047075b-MAL-ED          BRAZIL                         2              0       17     167
Birth       ki0047075b-MAL-ED          BRAZIL                         2              1        2     167
Birth       ki0047075b-MAL-ED          BRAZIL                         3              0       46     167
Birth       ki0047075b-MAL-ED          BRAZIL                         3              1        0     167
Birth       ki0047075b-MAL-ED          INDIA                          4+             0       19     188
Birth       ki0047075b-MAL-ED          INDIA                          4+             1        3     188
Birth       ki0047075b-MAL-ED          INDIA                          1              0       57     188
Birth       ki0047075b-MAL-ED          INDIA                          1              1       11     188
Birth       ki0047075b-MAL-ED          INDIA                          2              0       57     188
Birth       ki0047075b-MAL-ED          INDIA                          2              1        9     188
Birth       ki0047075b-MAL-ED          INDIA                          3              0       25     188
Birth       ki0047075b-MAL-ED          INDIA                          3              1        7     188
Birth       ki0047075b-MAL-ED          NEPAL                          4+             0       79     166
Birth       ki0047075b-MAL-ED          NEPAL                          4+             1       15     166
Birth       ki0047075b-MAL-ED          NEPAL                          1              0       31     166
Birth       ki0047075b-MAL-ED          NEPAL                          1              1        3     166
Birth       ki0047075b-MAL-ED          NEPAL                          2              0       21     166
Birth       ki0047075b-MAL-ED          NEPAL                          2              1        0     166
Birth       ki0047075b-MAL-ED          NEPAL                          3              0       15     166
Birth       ki0047075b-MAL-ED          NEPAL                          3              1        2     166
Birth       ki0047075b-MAL-ED          PERU                           4+             0      125     252
Birth       ki0047075b-MAL-ED          PERU                           4+             1        2     252
Birth       ki0047075b-MAL-ED          PERU                           1              0       16     252
Birth       ki0047075b-MAL-ED          PERU                           1              1        1     252
Birth       ki0047075b-MAL-ED          PERU                           2              0       50     252
Birth       ki0047075b-MAL-ED          PERU                           2              1        1     252
Birth       ki0047075b-MAL-ED          PERU                           3              0       56     252
Birth       ki0047075b-MAL-ED          PERU                           3              1        1     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+             0      149     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+             1       10     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       13     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        1     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       20     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       20     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        3     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             0       53     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             1        1     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        6     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       23     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       30     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        1     114
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             0        5      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0       31      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              0       21      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              1        5      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              0       17      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              1        1      88
Birth       ki1000108-IRC              INDIA                          4+             0        9     341
Birth       ki1000108-IRC              INDIA                          4+             1        5     341
Birth       ki1000108-IRC              INDIA                          1              0      111     341
Birth       ki1000108-IRC              INDIA                          1              1       45     341
Birth       ki1000108-IRC              INDIA                          2              0      105     341
Birth       ki1000108-IRC              INDIA                          2              1       35     341
Birth       ki1000108-IRC              INDIA                          3              0       25     341
Birth       ki1000108-IRC              INDIA                          3              1        6     341
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             0        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              0       13      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              1        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              0        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              1        0      23
Birth       ki1114097-CONTENT          PERU                           4+             0        1       2
Birth       ki1114097-CONTENT          PERU                           4+             1        0       2
Birth       ki1114097-CONTENT          PERU                           1              0        0       2
Birth       ki1114097-CONTENT          PERU                           1              1        0       2
Birth       ki1114097-CONTENT          PERU                           2              0        1       2
Birth       ki1114097-CONTENT          PERU                           2              1        0       2
Birth       ki1114097-CONTENT          PERU                           3              0        0       2
Birth       ki1114097-CONTENT          PERU                           3              1        0       2
Birth       ki1135781-COHORTS          INDIA                          4+             0       84    4454
Birth       ki1135781-COHORTS          INDIA                          4+             1        6    4454
Birth       ki1135781-COHORTS          INDIA                          1              0     2333    4454
Birth       ki1135781-COHORTS          INDIA                          1              1      546    4454
Birth       ki1135781-COHORTS          INDIA                          2              0     1121    4454
Birth       ki1135781-COHORTS          INDIA                          2              1      207    4454
Birth       ki1135781-COHORTS          INDIA                          3              0      141    4454
Birth       ki1135781-COHORTS          INDIA                          3              1       16    4454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+             0      462   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+             1       43   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0     8931   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1      959   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              0     3627   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              1      400   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              0     1161   15686
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              1      103   15686
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+             0       19     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+             1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              0      402     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1       24     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              0      162     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              1        8     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              0       64     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              1        4     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+             0       11     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+             1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0      145     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              1        5     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              0       49     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              0       27     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              1        1     240
6 months    ki0047075b-MAL-ED          BRAZIL                         4+             0      125     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+             1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              0        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2              0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3              0       59     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3              1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          4+             0       24     235
6 months    ki0047075b-MAL-ED          INDIA                          4+             1        1     235
6 months    ki0047075b-MAL-ED          INDIA                          1              0       78     235
6 months    ki0047075b-MAL-ED          INDIA                          1              1        6     235
6 months    ki0047075b-MAL-ED          INDIA                          2              0       74     235
6 months    ki0047075b-MAL-ED          INDIA                          2              1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          3              0       41     235
6 months    ki0047075b-MAL-ED          INDIA                          3              1        7     235
6 months    ki0047075b-MAL-ED          NEPAL                          4+             0      128     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+             1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              0       51     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          2              0       31     236
6 months    ki0047075b-MAL-ED          NEPAL                          2              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3              0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          3              1        0     236
6 months    ki0047075b-MAL-ED          PERU                           4+             0      139     270
6 months    ki0047075b-MAL-ED          PERU                           4+             1        0     270
6 months    ki0047075b-MAL-ED          PERU                           1              0       19     270
6 months    ki0047075b-MAL-ED          PERU                           1              1        0     270
6 months    ki0047075b-MAL-ED          PERU                           2              0       50     270
6 months    ki0047075b-MAL-ED          PERU                           2              1        0     270
6 months    ki0047075b-MAL-ED          PERU                           3              0       62     270
6 months    ki0047075b-MAL-ED          PERU                           3              1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+             0      186     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+             1        5     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       14     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       22     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        1     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             0      108     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       62     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        1     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+             0       12     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+             1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0      171     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1       26     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              0       91     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              1       15     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              0       48     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              1        3     368
6 months    ki1000108-IRC              INDIA                          4+             0       13     406
6 months    ki1000108-IRC              INDIA                          4+             1        4     406
6 months    ki1000108-IRC              INDIA                          1              0      163     406
6 months    ki1000108-IRC              INDIA                          1              1       20     406
6 months    ki1000108-IRC              INDIA                          2              0      149     406
6 months    ki1000108-IRC              INDIA                          2              1       21     406
6 months    ki1000108-IRC              INDIA                          3              0       28     406
6 months    ki1000108-IRC              INDIA                          3              1        8     406
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+             0       19     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+             1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              0      395     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              1       19     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              0       89     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3              0       55     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3              1        1     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+             0       89     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+             1        2     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              0      325     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              1       14     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2              0      180     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2              1        4     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3              0      100     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3              1        1     715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+             0      244     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4+             1       23     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0       36     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1        4     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2              0      104     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2              1       11     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3              0      128     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3              1       13     563
6 months    ki1114097-CONTENT          PERU                           4+             0       78     215
6 months    ki1114097-CONTENT          PERU                           4+             1        0     215
6 months    ki1114097-CONTENT          PERU                           1              0       44     215
6 months    ki1114097-CONTENT          PERU                           1              1        0     215
6 months    ki1114097-CONTENT          PERU                           2              0       54     215
6 months    ki1114097-CONTENT          PERU                           2              1        0     215
6 months    ki1114097-CONTENT          PERU                           3              0       39     215
6 months    ki1114097-CONTENT          PERU                           3              1        0     215
6 months    ki1135781-COHORTS          INDIA                          4+             0       89    4955
6 months    ki1135781-COHORTS          INDIA                          4+             1        4    4955
6 months    ki1135781-COHORTS          INDIA                          1              0     2732    4955
6 months    ki1135781-COHORTS          INDIA                          1              1      474    4955
6 months    ki1135781-COHORTS          INDIA                          2              0     1313    4955
6 months    ki1135781-COHORTS          INDIA                          2              1      161    4955
6 months    ki1135781-COHORTS          INDIA                          3              0      171    4955
6 months    ki1135781-COHORTS          INDIA                          3              1       11    4955
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+             0      709   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+             1       33   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0     8762   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1      849   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              0     4332   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              1      400   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              0     1553   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              1      135   16773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+             0      247    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+             1       15    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0     2674    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1      177    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              0     1161    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              1       65    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              0      470    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              1       18    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+             0        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+             1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0      120     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              0       37     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              0       25     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              1        2     212
24 months   ki0047075b-MAL-ED          BRAZIL                         4+             0      101     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+             1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2              0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3              0       49     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3              1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          4+             0       24     227
24 months   ki0047075b-MAL-ED          INDIA                          4+             1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          1              0       75     227
24 months   ki0047075b-MAL-ED          INDIA                          1              1        7     227
24 months   ki0047075b-MAL-ED          INDIA                          2              0       62     227
24 months   ki0047075b-MAL-ED          INDIA                          2              1       12     227
24 months   ki0047075b-MAL-ED          INDIA                          3              0       39     227
24 months   ki0047075b-MAL-ED          INDIA                          3              1        7     227
24 months   ki0047075b-MAL-ED          NEPAL                          4+             0      125     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+             1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              0       45     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          2              0       31     228
24 months   ki0047075b-MAL-ED          NEPAL                          2              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          3              0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          3              1        0     228
24 months   ki0047075b-MAL-ED          PERU                           4+             0      109     201
24 months   ki0047075b-MAL-ED          PERU                           4+             1        1     201
24 months   ki0047075b-MAL-ED          PERU                           1              0       15     201
24 months   ki0047075b-MAL-ED          PERU                           1              1        1     201
24 months   ki0047075b-MAL-ED          PERU                           2              0       32     201
24 months   ki0047075b-MAL-ED          PERU                           2              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           3              0       42     201
24 months   ki0047075b-MAL-ED          PERU                           3              1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+             0      182     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+             1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       13     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             0       98     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       50     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       53     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        4     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+             0       14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+             1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0      186     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              0       99     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              1        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              0       50     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              1        1     372
24 months   ki1000108-IRC              INDIA                          4+             0       16     407
24 months   ki1000108-IRC              INDIA                          4+             1        1     407
24 months   ki1000108-IRC              INDIA                          1              0      174     407
24 months   ki1000108-IRC              INDIA                          1              1       10     407
24 months   ki1000108-IRC              INDIA                          2              0      154     407
24 months   ki1000108-IRC              INDIA                          2              1       16     407
24 months   ki1000108-IRC              INDIA                          3              0       33     407
24 months   ki1000108-IRC              INDIA                          3              1        3     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+             0       19     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+             1        3     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              0      361     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              1       46     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              0       84     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              1        8     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3              0       49     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3              1        8     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+             0       75     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+             1        7     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              0      193     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              1       24     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2              0      126     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2              1       11     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3              0       75     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3              1        3     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+             0      190     498
24 months   ki1113344-GMS-Nepal        NEPAL                          4+             1       47     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0       32     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1        4     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2              0       88     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2              1       20     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3              0       97     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3              1       20     498
24 months   ki1114097-CONTENT          PERU                           4+             0       63     164
24 months   ki1114097-CONTENT          PERU                           4+             1        0     164
24 months   ki1114097-CONTENT          PERU                           1              0       30     164
24 months   ki1114097-CONTENT          PERU                           1              1        0     164
24 months   ki1114097-CONTENT          PERU                           2              0       39     164
24 months   ki1114097-CONTENT          PERU                           2              1        0     164
24 months   ki1114097-CONTENT          PERU                           3              0       32     164
24 months   ki1114097-CONTENT          PERU                           3              1        0     164
24 months   ki1135781-COHORTS          INDIA                          4+             0       73    3719
24 months   ki1135781-COHORTS          INDIA                          4+             1        2    3719
24 months   ki1135781-COHORTS          INDIA                          1              0     2021    3719
24 months   ki1135781-COHORTS          INDIA                          1              1      266    3719
24 months   ki1135781-COHORTS          INDIA                          2              0     1123    3719
24 months   ki1135781-COHORTS          INDIA                          2              1       84    3719
24 months   ki1135781-COHORTS          INDIA                          3              0      146    3719
24 months   ki1135781-COHORTS          INDIA                          3              1        4    3719
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+             0      310    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+             1       55    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0     3917    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1     1119    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              0     1834    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              1      560    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              0      658    8591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              1      138    8591
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+             0      201    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+             1       50    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0     2228    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1      553    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              0      975    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              1      233    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              0      406    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              1       84    4730


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/bba04fdb-31f8-47bc-98a6-fea6b42e7ff1/fd473969-474f-434e-af0a-e73506d31be1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bba04fdb-31f8-47bc-98a6-fea6b42e7ff1/fd473969-474f-434e-af0a-e73506d31be1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bba04fdb-31f8-47bc-98a6-fea6b42e7ff1/fd473969-474f-434e-af0a-e73506d31be1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bba04fdb-31f8-47bc-98a6-fea6b42e7ff1/fd473969-474f-434e-af0a-e73506d31be1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC       INDIA        4+                   NA                0.3571429    0.1057806   0.6085051
Birth       ki1000108-IRC       INDIA        1                    NA                0.2884615    0.2172637   0.3596594
Birth       ki1000108-IRC       INDIA        2                    NA                0.2500000    0.1781673   0.3218327
Birth       ki1000108-IRC       INDIA        3                    NA                0.1935484    0.0542683   0.3328284
Birth       ki1135781-COHORTS   INDIA        4+                   NA                0.0666667    0.0250085   0.1083249
Birth       ki1135781-COHORTS   INDIA        1                    NA                0.1896492    0.1753277   0.2039707
Birth       ki1135781-COHORTS   INDIA        2                    NA                0.1558735    0.1363621   0.1753849
Birth       ki1135781-COHORTS   INDIA        3                    NA                0.1019108    0.0545830   0.1492387
Birth       kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                0.0914932    0.0674157   0.1155708
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.1012239    0.0938731   0.1085746
Birth       kiGH5241-JiVitA-3   BANGLADESH   2                    NA                0.0948019    0.0840562   0.1055477
Birth       kiGH5241-JiVitA-3   BANGLADESH   3                    NA                0.0736033    0.0555820   0.0916246
6 months    kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                0.0458065    0.0272619   0.0643511
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0881191    0.0817288   0.0945094
6 months    kiGH5241-JiVitA-3   BANGLADESH   2                    NA                0.0860678    0.0762105   0.0959250
6 months    kiGH5241-JiVitA-3   BANGLADESH   3                    NA                0.0772416    0.0623096   0.0921736
6 months    kiGH5241-JiVitA-4   BANGLADESH   4+                   NA                0.0554665   -0.0143338   0.1252667
6 months    kiGH5241-JiVitA-4   BANGLADESH   1                    NA                0.0620216    0.0501106   0.0739327
6 months    kiGH5241-JiVitA-4   BANGLADESH   2                    NA                0.0534966    0.0402228   0.0667705
6 months    kiGH5241-JiVitA-4   BANGLADESH   3                    NA                0.0366568    0.0187440   0.0545695
24 months   kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                0.1521933    0.1158749   0.1885117
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.2227964    0.2091457   0.2364471
24 months   kiGH5241-JiVitA-3   BANGLADESH   2                    NA                0.2294557    0.2084554   0.2504560
24 months   kiGH5241-JiVitA-3   BANGLADESH   3                    NA                0.1821125    0.1480096   0.2162154
24 months   kiGH5241-JiVitA-4   BANGLADESH   4+                   NA                0.1963966    0.1198630   0.2729302
24 months   kiGH5241-JiVitA-4   BANGLADESH   1                    NA                0.1982434    0.1809663   0.2155204
24 months   kiGH5241-JiVitA-4   BANGLADESH   2                    NA                0.1944878    0.1696569   0.2193187
24 months   kiGH5241-JiVitA-4   BANGLADESH   3                    NA                0.1708506    0.1330937   0.2086074


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA        NA                   NA                0.2668622   0.2198462   0.3138781
Birth       ki1135781-COHORTS   INDIA        NA                   NA                0.1740009   0.1628660   0.1851358
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0959454   0.0907405   0.1011503
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0844810   0.0796719   0.0892901
6 months    kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0569712   0.0481278   0.0658146
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.2179025   0.2080266   0.2277783
24 months   kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.1945032   0.1812962   0.2077102


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC       INDIA        4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC       INDIA        1                    4+                0.8076923   0.3831181   1.702783
Birth       ki1000108-IRC       INDIA        2                    4+                0.7000000   0.3272990   1.497102
Birth       ki1000108-IRC       INDIA        3                    4+                0.5419355   0.1980599   1.482855
Birth       ki1135781-COHORTS   INDIA        4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   INDIA        1                    4+                2.8447378   1.5159635   5.338211
Birth       ki1135781-COHORTS   INDIA        2                    4+                2.3381024   1.2362126   4.422154
Birth       ki1135781-COHORTS   INDIA        3                    4+                1.5286624   0.7017657   3.329899
Birth       kiGH5241-JiVitA-3   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    4+                1.1063536   0.8422877   1.453207
Birth       kiGH5241-JiVitA-3   BANGLADESH   2                    4+                1.0361632   0.7810767   1.374557
Birth       kiGH5241-JiVitA-3   BANGLADESH   3                    4+                0.8044673   0.5640079   1.147444
6 months    kiGH5241-JiVitA-3   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    4+                1.9237242   1.2725574   2.908093
6 months    kiGH5241-JiVitA-3   BANGLADESH   2                    4+                1.8789422   1.2383509   2.850907
6 months    kiGH5241-JiVitA-3   BANGLADESH   3                    4+                1.6862590   1.0701935   2.656967
6 months    kiGH5241-JiVitA-4   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4   BANGLADESH   1                    4+                1.1181827   0.3131123   3.993239
6 months    kiGH5241-JiVitA-4   BANGLADESH   2                    4+                0.9644858   0.2673572   3.479364
6 months    kiGH5241-JiVitA-4   BANGLADESH   3                    4+                0.6608819   0.1709358   2.555140
24 months   kiGH5241-JiVitA-3   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    4+                1.4639042   1.1443516   1.872690
24 months   kiGH5241-JiVitA-3   BANGLADESH   2                    4+                1.5076596   1.1637618   1.953181
24 months   kiGH5241-JiVitA-3   BANGLADESH   3                    4+                1.1965868   0.8803668   1.626390
24 months   kiGH5241-JiVitA-4   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4   BANGLADESH   1                    4+                1.0094031   0.6760911   1.507038
24 months   kiGH5241-JiVitA-4   BANGLADESH   2                    4+                0.9902808   0.6573929   1.491735
24 months   kiGH5241-JiVitA-4   BANGLADESH   3                    4+                0.8699261   0.5590271   1.353730


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA        4+                   NA                -0.0902807   -0.3356486   0.1550872
Birth       ki1135781-COHORTS   INDIA        4+                   NA                 0.1073342    0.0652317   0.1494368
Birth       kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                 0.0044522   -0.0192597   0.0281641
6 months    kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                 0.0386745    0.0202634   0.0570856
6 months    kiGH5241-JiVitA-4   BANGLADESH   4+                   NA                 0.0015047   -0.0650410   0.0680505
24 months   kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                 0.0657092    0.0287632   0.1026551
24 months   kiGH5241-JiVitA-4   BANGLADESH   4+                   NA                -0.0018935   -0.0755143   0.0717274


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA        4+                   NA                -0.3383046   -1.6601876   0.3267170
Birth       ki1135781-COHORTS   INDIA        4+                   NA                 0.6168602    0.2862315   0.7943365
Birth       kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                 0.0464034   -0.2356055   0.2640480
6 months    kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                 0.4577895    0.1912286   0.6364953
6 months    kiGH5241-JiVitA-4   BANGLADESH   4+                   NA                 0.0264123   -2.2358603   0.7070724
24 months   kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                 0.3015531    0.1123861   0.4504051
24 months   kiGH5241-JiVitA-4   BANGLADESH   4+                   NA                -0.0097349   -0.4688180   0.3058606
