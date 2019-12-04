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

agecat      studyid                    country                        nrooms    wasted   n_cell       n
----------  -------------------------  -----------------------------  -------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+             0       11     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+             1        1     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0       94     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              1       27     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              0       40     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              1        3     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              0       21     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              1        4     201
Birth       ki0047075b-MAL-ED          BRAZIL                         4+             0       28      57
Birth       ki0047075b-MAL-ED          BRAZIL                         4+             1        1      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0        0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1              1        0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         2              0        9      57
Birth       ki0047075b-MAL-ED          BRAZIL                         2              1        1      57
Birth       ki0047075b-MAL-ED          BRAZIL                         3              0       18      57
Birth       ki0047075b-MAL-ED          BRAZIL                         3              1        0      57
Birth       ki0047075b-MAL-ED          INDIA                          4+             0        2      39
Birth       ki0047075b-MAL-ED          INDIA                          4+             1        0      39
Birth       ki0047075b-MAL-ED          INDIA                          1              0       14      39
Birth       ki0047075b-MAL-ED          INDIA                          1              1        3      39
Birth       ki0047075b-MAL-ED          INDIA                          2              0       14      39
Birth       ki0047075b-MAL-ED          INDIA                          2              1        2      39
Birth       ki0047075b-MAL-ED          INDIA                          3              0        4      39
Birth       ki0047075b-MAL-ED          INDIA                          3              1        0      39
Birth       ki0047075b-MAL-ED          NEPAL                          4+             0       14      25
Birth       ki0047075b-MAL-ED          NEPAL                          4+             1        1      25
Birth       ki0047075b-MAL-ED          NEPAL                          1              0        6      25
Birth       ki0047075b-MAL-ED          NEPAL                          1              1        0      25
Birth       ki0047075b-MAL-ED          NEPAL                          2              0        2      25
Birth       ki0047075b-MAL-ED          NEPAL                          2              1        0      25
Birth       ki0047075b-MAL-ED          NEPAL                          3              0        1      25
Birth       ki0047075b-MAL-ED          NEPAL                          3              1        1      25
Birth       ki0047075b-MAL-ED          PERU                           4+             0      101     210
Birth       ki0047075b-MAL-ED          PERU                           4+             1        2     210
Birth       ki0047075b-MAL-ED          PERU                           1              0       12     210
Birth       ki0047075b-MAL-ED          PERU                           1              1        1     210
Birth       ki0047075b-MAL-ED          PERU                           2              0       44     210
Birth       ki0047075b-MAL-ED          PERU                           2              1        1     210
Birth       ki0047075b-MAL-ED          PERU                           3              0       48     210
Birth       ki0047075b-MAL-ED          PERU                           3              1        1     210
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+             0       59      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+             1        7      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              0        4      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        1      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       12      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       10      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        2      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             0       44     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             1        1     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        9     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       28     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       30     112
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        0     112
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             0        5      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0       31      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1        4      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              0       21      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              1        6      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              0       18      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              1        1      86
Birth       ki1000108-IRC              INDIA                          4+             0        9     341
Birth       ki1000108-IRC              INDIA                          4+             1        5     341
Birth       ki1000108-IRC              INDIA                          1              0      111     341
Birth       ki1000108-IRC              INDIA                          1              1       45     341
Birth       ki1000108-IRC              INDIA                          2              0      105     341
Birth       ki1000108-IRC              INDIA                          2              1       35     341
Birth       ki1000108-IRC              INDIA                          3              0       25     341
Birth       ki1000108-IRC              INDIA                          3              1        6     341
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+             0       14     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+             1        4     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              0      306     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              1       82     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2              0       58     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2              1       21     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     3              0       37     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     3              1       10     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             0       70     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             1       20     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              0      255     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              1       83     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              0      138     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              1       43     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              0       72     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              1       26     707
Birth       ki1113344-GMS-Nepal        NEPAL                          4+             0      228     641
Birth       ki1113344-GMS-Nepal        NEPAL                          4+             1       69     641
Birth       ki1113344-GMS-Nepal        NEPAL                          1              0       33     641
Birth       ki1113344-GMS-Nepal        NEPAL                          1              1        9     641
Birth       ki1113344-GMS-Nepal        NEPAL                          2              0      112     641
Birth       ki1113344-GMS-Nepal        NEPAL                          2              1       23     641
Birth       ki1113344-GMS-Nepal        NEPAL                          3              0      136     641
Birth       ki1113344-GMS-Nepal        NEPAL                          3              1       31     641
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+             0      593   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+             1       69   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0     9971   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1     1199   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              0     4078   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              1      531   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              0     1375   17989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              1      173   17989
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+             0       96    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+             1       15    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              0     1291    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1      139    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              0      554    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              1       56    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              0      215    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              1       28    2394
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
6 months    ki0047075b-MAL-ED          INDIA                          1              0       77     235
6 months    ki0047075b-MAL-ED          INDIA                          1              1        7     235
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+             0       19     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+             1        2     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              0      410     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              1       20     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              0       92     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              1        2     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     3              0       57     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     3              1        1     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+             0       89     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+             1        2     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              0      325     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              1       14     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2              0      180     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2              1        4     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3              0      100     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3              1        1     715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+             0      245     564
6 months    ki1113344-GMS-Nepal        NEPAL                          4+             1       23     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0       36     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1        4     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2              0      104     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2              1       11     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3              0      128     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3              1       13     564
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
24 months   ki0047075b-MAL-ED          PERU                           4+             0      108     201
24 months   ki0047075b-MAL-ED          PERU                           4+             1        2     201
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+             0       19     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+             1        3     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              0      364     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              1       44     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              0       85     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              1        7     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     3              0       49     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     3              1        8     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+             0       75     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+             1        7     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              0      193     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              1       24     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2              0      126     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2              1       11     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3              0       75     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3              1        3     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+             0      184     487
24 months   ki1113344-GMS-Nepal        NEPAL                          4+             1       47     487
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0       31     487
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1        4     487
24 months   ki1113344-GMS-Nepal        NEPAL                          2              0       85     487
24 months   ki1113344-GMS-Nepal        NEPAL                          2              1       21     487
24 months   ki1113344-GMS-Nepal        NEPAL                          3              0       96     487
24 months   ki1113344-GMS-Nepal        NEPAL                          3              1       19     487
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/602ca44b-4ca8-4c51-8b9b-ae4b87df4388/7c7ffe0f-f5df-4030-8c1d-03c1a73977b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/602ca44b-4ca8-4c51-8b9b-ae4b87df4388/7c7ffe0f-f5df-4030-8c1d-03c1a73977b8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/602ca44b-4ca8-4c51-8b9b-ae4b87df4388/7c7ffe0f-f5df-4030-8c1d-03c1a73977b8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/602ca44b-4ca8-4c51-8b9b-ae4b87df4388/7c7ffe0f-f5df-4030-8c1d-03c1a73977b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC           INDIA        4+                   NA                0.3571429    0.1057806   0.6085051
Birth       ki1000108-IRC           INDIA        1                    NA                0.2884615    0.2172637   0.3596594
Birth       ki1000108-IRC           INDIA        2                    NA                0.2500000    0.1781673   0.3218327
Birth       ki1000108-IRC           INDIA        3                    NA                0.1935484    0.0542683   0.3328284
Birth       ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.2282009    0.1414406   0.3149613
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2424249    0.1967322   0.2881175
Birth       ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.2399195    0.1774864   0.3023526
Birth       ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.2679267    0.1793949   0.3564585
Birth       ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.2323232    0.1842565   0.2803899
Birth       ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2142857    0.0900943   0.3384771
Birth       ki1113344-GMS-Nepal     NEPAL        2                    NA                0.1703704    0.1069017   0.2338390
Birth       ki1113344-GMS-Nepal     NEPAL        3                    NA                0.1856287    0.1266137   0.2446438
Birth       ki1135781-COHORTS       INDIA        4+                   NA                0.0666667    0.0250085   0.1083249
Birth       ki1135781-COHORTS       INDIA        1                    NA                0.1896492    0.1753277   0.2039707
Birth       ki1135781-COHORTS       INDIA        2                    NA                0.1558735    0.1363621   0.1753849
Birth       ki1135781-COHORTS       INDIA        3                    NA                0.1019108    0.0545830   0.1492387
Birth       kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.1168580    0.0931857   0.1405304
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1119704    0.1046175   0.1193233
Birth       kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.1103022    0.0998381   0.1207662
Birth       kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.1006701    0.0823328   0.1190075
Birth       kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.1231334    0.0452421   0.2010247
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0974826    0.0770110   0.1179543
Birth       kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.0928368    0.0693785   0.1162952
Birth       kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.1143283    0.0621128   0.1665437
6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0459426    0.0304775   0.0614076
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0872658    0.0810137   0.0935180
6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0837850    0.0748107   0.0927592
6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0809803    0.0658112   0.0961494
6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.0530104   -0.0127073   0.1187281
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0621425    0.0502207   0.0740642
6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.0534141    0.0401416   0.0666867
6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.0371675    0.0192582   0.0550768
24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.1612563    0.1243314   0.1981813
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.2230975    0.2097000   0.2364950
24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.2324258    0.2127577   0.2520938
24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.1824770    0.1487944   0.2161596
24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.1971403    0.1205596   0.2737210
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1986668    0.1813763   0.2159573
24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.1939388    0.1690077   0.2188699
24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.1694685    0.1318420   0.2070951


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        NA                   NA                0.2668622   0.2198462   0.3138781
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2059282   0.1745993   0.2372572
Birth       ki1135781-COHORTS       INDIA        NA                   NA                0.1740009   0.1628660   0.1851358
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1096225   0.1044939   0.1147512
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0994152   0.0840401   0.1147903
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0844810   0.0796719   0.0892901
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0569712   0.0481278   0.0658146
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2179025   0.2080266   0.2277783
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1945032   0.1812962   0.2077102


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC           INDIA        4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC           INDIA        1                    4+                0.8076923   0.3831181   1.702783
Birth       ki1000108-IRC           INDIA        2                    4+                0.7000000   0.3272990   1.497102
Birth       ki1000108-IRC           INDIA        3                    4+                0.5419355   0.1980599   1.482855
Birth       ki1017093c-NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    4+                1.0623308   0.6950514   1.623688
Birth       ki1017093c-NIH-Crypto   BANGLADESH   2                    4+                1.0513521   0.6633614   1.666273
Birth       ki1017093c-NIH-Crypto   BANGLADESH   3                    4+                1.1740824   0.7096895   1.942356
Birth       ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal     NEPAL        1                    4+                0.9223602   0.4984751   1.706702
Birth       ki1113344-GMS-Nepal     NEPAL        2                    4+                0.7333333   0.4788895   1.122968
Birth       ki1113344-GMS-Nepal     NEPAL        3                    4+                0.7990107   0.5467877   1.167579
Birth       ki1135781-COHORTS       INDIA        4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       INDIA        1                    4+                2.8447378   1.5159635   5.338211
Birth       ki1135781-COHORTS       INDIA        2                    4+                2.3381024   1.2362126   4.422154
Birth       ki1135781-COHORTS       INDIA        3                    4+                1.5286624   0.7017657   3.329899
Birth       kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    4+                0.9581746   0.7746076   1.185243
Birth       kiGH5241-JiVitA-3       BANGLADESH   2                    4+                0.9438987   0.7550995   1.179904
Birth       kiGH5241-JiVitA-3       BANGLADESH   3                    4+                0.8614735   0.6565991   1.130273
Birth       kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    4+                0.7916833   0.4082089   1.535396
Birth       kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.7539532   0.3817388   1.489095
Birth       kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.9284911   0.4300938   2.004437
6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    4+                1.8994552   1.3437074   2.685056
6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    4+                1.8236895   1.2835255   2.591178
6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    4+                1.7626427   1.1938366   2.602458
6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    4+                1.1722698   0.3343895   4.109628
6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    4+                1.0076167   0.2846518   3.566783
6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.7011361   0.1848197   2.659846
24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                1.3834961   1.0925998   1.751841
24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                1.4413435   1.1237863   1.848635
24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                1.1315960   0.8379764   1.528097
24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    4+                1.0077432   0.6757849   1.502766
24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    4+                0.9837602   0.6539400   1.479928
24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    4+                0.8596341   0.5523362   1.337900


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC           INDIA        4+                   NA                -0.0902807   -0.3356486   0.1550872
Birth       ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.0150806   -0.0663839   0.0965451
Birth       ki1113344-GMS-Nepal     NEPAL        4+                   NA                -0.0263950   -0.0603201   0.0075301
Birth       ki1135781-COHORTS       INDIA        4+                   NA                 0.1073342    0.0652317   0.1494368
Birth       kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0072355   -0.0306735   0.0162025
Birth       kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0237182   -0.0986793   0.0512429
6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0385385    0.0230255   0.0540514
6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.0039608   -0.0585315   0.0664532
24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0566461    0.0195668   0.0937255
24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0026371   -0.0763076   0.0710334


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC           INDIA        4+                   NA                -0.3383046   -1.6601876   0.3267170
Birth       ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.0619881   -0.3403249   0.3435425
Birth       ki1113344-GMS-Nepal     NEPAL        4+                   NA                -0.1281757   -0.3049988   0.0246885
Birth       ki1135781-COHORTS       INDIA        4+                   NA                 0.6168602    0.2862315   0.7943365
Birth       kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                -0.0660038   -0.3030270   0.1279044
Birth       kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.2385771   -1.2721697   0.3248422
6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.4561789    0.2411917   0.6102555
6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                 0.0695232   -2.0355173   0.7147811
24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.2599609    0.0703401   0.4109052
24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                -0.0135582   -0.4726175   0.3023984
