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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        nrooms    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+              0       12     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+              1        0     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0      103     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1       27     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               0       38     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               1        8     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               0       23     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               1        2     213
Birth       ki0047075b-MAL-ED          BRAZIL                         4+              0       24      60
Birth       ki0047075b-MAL-ED          BRAZIL                         4+              1        6      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        0      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0      60
Birth       ki0047075b-MAL-ED          BRAZIL                         2               0       10      60
Birth       ki0047075b-MAL-ED          BRAZIL                         2               1        0      60
Birth       ki0047075b-MAL-ED          BRAZIL                         3               0       17      60
Birth       ki0047075b-MAL-ED          BRAZIL                         3               1        3      60
Birth       ki0047075b-MAL-ED          INDIA                          4+              0        2      41
Birth       ki0047075b-MAL-ED          INDIA                          4+              1        0      41
Birth       ki0047075b-MAL-ED          INDIA                          1               0       16      41
Birth       ki0047075b-MAL-ED          INDIA                          1               1        2      41
Birth       ki0047075b-MAL-ED          INDIA                          2               0       11      41
Birth       ki0047075b-MAL-ED          INDIA                          2               1        6      41
Birth       ki0047075b-MAL-ED          INDIA                          3               0        4      41
Birth       ki0047075b-MAL-ED          INDIA                          3               1        0      41
Birth       ki0047075b-MAL-ED          NEPAL                          4+              0       15      26
Birth       ki0047075b-MAL-ED          NEPAL                          4+              1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        6      26
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          2               0        2      26
Birth       ki0047075b-MAL-ED          NEPAL                          2               1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          3               0        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          3               1        1      26
Birth       ki0047075b-MAL-ED          PERU                           4+              0       89     215
Birth       ki0047075b-MAL-ED          PERU                           4+              1       18     215
Birth       ki0047075b-MAL-ED          PERU                           1               0       12     215
Birth       ki0047075b-MAL-ED          PERU                           1               1        1     215
Birth       ki0047075b-MAL-ED          PERU                           2               0       42     215
Birth       ki0047075b-MAL-ED          PERU                           2               1        3     215
Birth       ki0047075b-MAL-ED          PERU                           3               0       46     215
Birth       ki0047075b-MAL-ED          PERU                           3               1        4     215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0       62      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1        5      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        5      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       10      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        2      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       11      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        1      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       37     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1       12     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       27     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        4     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       26     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        5     120
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+              0        4      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        1      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       32      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        6      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               0       22      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1        7      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               0       17      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               1        3      92
Birth       ki1000108-IRC              INDIA                          4+              0       16     386
Birth       ki1000108-IRC              INDIA                          4+              1        1     386
Birth       ki1000108-IRC              INDIA                          1               0      156     386
Birth       ki1000108-IRC              INDIA                          1               1       19     386
Birth       ki1000108-IRC              INDIA                          2               0      141     386
Birth       ki1000108-IRC              INDIA                          2               1       20     386
Birth       ki1000108-IRC              INDIA                          3               0       28     386
Birth       ki1000108-IRC              INDIA                          3               1        5     386
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+              0       16     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     4+              1        3     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0      360     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1       30     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2               0       72     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2               1       11     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     3               0       43     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     3               1        4     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       82     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+              1       11     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0      299     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1       54     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2               0      160     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2               1       27     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3               0       90     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3               1        9     732
Birth       ki1113344-GMS-Nepal        NEPAL                          4+              0      276     696
Birth       ki1113344-GMS-Nepal        NEPAL                          4+              1       45     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0       42     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1               1        7     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2               0      113     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2               1       32     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3               0      143     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3               1       38     696
Birth       ki1114097-CONTENT          PERU                           4+              0        1       2
Birth       ki1114097-CONTENT          PERU                           4+              1        0       2
Birth       ki1114097-CONTENT          PERU                           1               0        0       2
Birth       ki1114097-CONTENT          PERU                           1               1        0       2
Birth       ki1114097-CONTENT          PERU                           2               0        1       2
Birth       ki1114097-CONTENT          PERU                           2               1        0       2
Birth       ki1114097-CONTENT          PERU                           3               0        0       2
Birth       ki1114097-CONTENT          PERU                           3               1        0       2
Birth       ki1135781-COHORTS          INDIA                          4+              0       84    4769
Birth       ki1135781-COHORTS          INDIA                          4+              1        8    4769
Birth       ki1135781-COHORTS          INDIA                          1               0     2705    4769
Birth       ki1135781-COHORTS          INDIA                          1               1      420    4769
Birth       ki1135781-COHORTS          INDIA                          2               0     1263    4769
Birth       ki1135781-COHORTS          INDIA                          2               1      122    4769
Birth       ki1135781-COHORTS          INDIA                          3               0      152    4769
Birth       ki1135781-COHORTS          INDIA                          3               1       15    4769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+              0      586   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+              1      169   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     9300   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     4642   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     3832   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1     2014   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               0     1328   22429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               1      558   22429
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+              0       81    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+              1       47    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     1157    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1      548    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               0      517    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               1      192    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               0      209    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               1       69    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              0       11     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0      121     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1       29     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               0       40     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               1       10     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               0       24     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               1        4     240
6 months    ki0047075b-MAL-ED          BRAZIL                         4+              0      121     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+              1        5     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               0       58     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          4+              0       24     235
6 months    ki0047075b-MAL-ED          INDIA                          4+              1        1     235
6 months    ki0047075b-MAL-ED          INDIA                          1               0       65     235
6 months    ki0047075b-MAL-ED          INDIA                          1               1       19     235
6 months    ki0047075b-MAL-ED          INDIA                          2               0       59     235
6 months    ki0047075b-MAL-ED          INDIA                          2               1       19     235
6 months    ki0047075b-MAL-ED          INDIA                          3               0       43     235
6 months    ki0047075b-MAL-ED          INDIA                          3               1        5     235
6 months    ki0047075b-MAL-ED          NEPAL                          4+              0      123     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+              1        8     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       49     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               0       31     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               1        1     236
6 months    ki0047075b-MAL-ED          PERU                           4+              0      103     270
6 months    ki0047075b-MAL-ED          PERU                           4+              1       36     270
6 months    ki0047075b-MAL-ED          PERU                           1               0       12     270
6 months    ki0047075b-MAL-ED          PERU                           1               1        7     270
6 months    ki0047075b-MAL-ED          PERU                           2               0       41     270
6 months    ki0047075b-MAL-ED          PERU                           2               1        9     270
6 months    ki0047075b-MAL-ED          PERU                           3               0       54     270
6 months    ki0047075b-MAL-ED          PERU                           3               1        8     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      151     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1       40     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       10     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       19     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        2     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        3     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       84     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1       24     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       42     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       53     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1       11     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+              0       10     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        4     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0      143     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       55     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               0       70     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               1       36     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               0       35     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               1       16     369
6 months    ki1000108-IRC              INDIA                          4+              0       13     405
6 months    ki1000108-IRC              INDIA                          4+              1        4     405
6 months    ki1000108-IRC              INDIA                          1               0      140     405
6 months    ki1000108-IRC              INDIA                          1               1       43     405
6 months    ki1000108-IRC              INDIA                          2               0      123     405
6 months    ki1000108-IRC              INDIA                          2               1       47     405
6 months    ki1000108-IRC              INDIA                          3               0       29     405
6 months    ki1000108-IRC              INDIA                          3               1        6     405
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              0       17     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              1        4     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      360     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       71     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0       80     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1       14     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               0       51     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               1        7     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       76     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              1       15     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      261     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       78     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               0      141     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               1       43     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               0       87     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               1       14     715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+              0      213     564
6 months    ki1113344-GMS-Nepal        NEPAL                          4+              1       55     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0       28     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       12     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0       90     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1       25     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0      111     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3               1       30     564
6 months    ki1114097-CONTENT          PERU                           4+              0       74     215
6 months    ki1114097-CONTENT          PERU                           4+              1        4     215
6 months    ki1114097-CONTENT          PERU                           1               0       36     215
6 months    ki1114097-CONTENT          PERU                           1               1        8     215
6 months    ki1114097-CONTENT          PERU                           2               0       50     215
6 months    ki1114097-CONTENT          PERU                           2               1        4     215
6 months    ki1114097-CONTENT          PERU                           3               0       36     215
6 months    ki1114097-CONTENT          PERU                           3               1        3     215
6 months    ki1135781-COHORTS          INDIA                          4+              0       87    4962
6 months    ki1135781-COHORTS          INDIA                          4+              1        6    4962
6 months    ki1135781-COHORTS          INDIA                          1               0     2448    4962
6 months    ki1135781-COHORTS          INDIA                          1               1      765    4962
6 months    ki1135781-COHORTS          INDIA                          2               0     1294    4962
6 months    ki1135781-COHORTS          INDIA                          2               1      180    4962
6 months    ki1135781-COHORTS          INDIA                          3               0      163    4962
6 months    ki1135781-COHORTS          INDIA                          3               1       19    4962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+              0      638   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+              1      106   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     7125   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1     2500   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     3473   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1     1267   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               0     1340   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               1      351   16800
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+              0      214    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+              1       48    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     2089    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      761    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               0      928    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               1      297    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               0      376    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               1      112    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              0        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              1        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       69     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       65     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               0       20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               1       20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               0       15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               1       12     212
24 months   ki0047075b-MAL-ED          BRAZIL                         4+              0       99     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+              1        5     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               0       47     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          4+              0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          4+              1       11     227
24 months   ki0047075b-MAL-ED          INDIA                          1               0       55     227
24 months   ki0047075b-MAL-ED          INDIA                          1               1       27     227
24 months   ki0047075b-MAL-ED          INDIA                          2               0       33     227
24 months   ki0047075b-MAL-ED          INDIA                          2               1       41     227
24 months   ki0047075b-MAL-ED          INDIA                          3               0       28     227
24 months   ki0047075b-MAL-ED          INDIA                          3               1       18     227
24 months   ki0047075b-MAL-ED          NEPAL                          4+              0      100     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+              1       27     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1       10     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               0       25     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               1        6     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               1        7     228
24 months   ki0047075b-MAL-ED          PERU                           4+              0       71     201
24 months   ki0047075b-MAL-ED          PERU                           4+              1       39     201
24 months   ki0047075b-MAL-ED          PERU                           1               0        7     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        9     201
24 months   ki0047075b-MAL-ED          PERU                           2               0       20     201
24 months   ki0047075b-MAL-ED          PERU                           2               1       12     201
24 months   ki0047075b-MAL-ED          PERU                           3               0       29     201
24 months   ki0047075b-MAL-ED          PERU                           3               1       14     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1       63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               1       11     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       28     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1       70     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        5     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1       44     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1       36     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              0        6     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        8     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       45     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1      156     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               0       35     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               1       70     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               0       19     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               1       32     371
24 months   ki1000108-IRC              INDIA                          4+              0        9     407
24 months   ki1000108-IRC              INDIA                          4+              1        8     407
24 months   ki1000108-IRC              INDIA                          1               0      101     407
24 months   ki1000108-IRC              INDIA                          1               1       83     407
24 months   ki1000108-IRC              INDIA                          2               0      108     407
24 months   ki1000108-IRC              INDIA                          2               1       62     407
24 months   ki1000108-IRC              INDIA                          3               0       18     407
24 months   ki1000108-IRC              INDIA                          3               1       18     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              0       17     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              1        5     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      263     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1      144     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0       65     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       27     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               0       43     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               1       14     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       69     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              1       13     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      150     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       67     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               0       94     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               1       43     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               0       69     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               1        9     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+              0      136     488
24 months   ki1113344-GMS-Nepal        NEPAL                          4+              1       95     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       15     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       20     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0       54     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       52     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0       64     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3               1       52     488
24 months   ki1114097-CONTENT          PERU                           4+              0       58     164
24 months   ki1114097-CONTENT          PERU                           4+              1        5     164
24 months   ki1114097-CONTENT          PERU                           1               0       23     164
24 months   ki1114097-CONTENT          PERU                           1               1        7     164
24 months   ki1114097-CONTENT          PERU                           2               0       32     164
24 months   ki1114097-CONTENT          PERU                           2               1        7     164
24 months   ki1114097-CONTENT          PERU                           3               0       30     164
24 months   ki1114097-CONTENT          PERU                           3               1        2     164
24 months   ki1135781-COHORTS          INDIA                          4+              0       57    3746
24 months   ki1135781-COHORTS          INDIA                          4+              1       19    3746
24 months   ki1135781-COHORTS          INDIA                          1               0      769    3746
24 months   ki1135781-COHORTS          INDIA                          1               1     1530    3746
24 months   ki1135781-COHORTS          INDIA                          2               0      708    3746
24 months   ki1135781-COHORTS          INDIA                          2               1      513    3746
24 months   ki1135781-COHORTS          INDIA                          3               0       88    3746
24 months   ki1135781-COHORTS          INDIA                          3               1       62    3746
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              0      261    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              1      106    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     2417    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     2634    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     1238    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1     1162    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               0      470    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               1      332    8620
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              0      182    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              1       69    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     1559    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1     1230    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               0      755    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               1      461    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               0      348    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               1      143    4747


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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/9ae7f375-8fef-46c1-b479-061d385e1b3a/a4f07740-f79e-4b83-b306-8e7cfafe5ec7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9ae7f375-8fef-46c1-b479-061d385e1b3a/a4f07740-f79e-4b83-b306-8e7cfafe5ec7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9ae7f375-8fef-46c1-b479-061d385e1b3a/a4f07740-f79e-4b83-b306-8e7cfafe5ec7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9ae7f375-8fef-46c1-b479-061d385e1b3a/a4f07740-f79e-4b83-b306-8e7cfafe5ec7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                0.1182796   0.0526010   0.1839582
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                0.1529745   0.1153981   0.1905509
Birth       ki1017093c-NIH-Crypto      BANGLADESH     2                    NA                0.1443850   0.0939741   0.1947959
Birth       ki1017093c-NIH-Crypto      BANGLADESH     3                    NA                0.0909091   0.0342415   0.1475767
Birth       ki1113344-GMS-Nepal        NEPAL          4+                   NA                0.1401869   0.1021799   0.1781939
Birth       ki1113344-GMS-Nepal        NEPAL          1                    NA                0.1428571   0.0448089   0.2409054
Birth       ki1113344-GMS-Nepal        NEPAL          2                    NA                0.2206897   0.1531401   0.2882392
Birth       ki1113344-GMS-Nepal        NEPAL          3                    NA                0.2099448   0.1505699   0.2693196
Birth       ki1135781-COHORTS          INDIA          4+                   NA                0.0869565   0.0425224   0.1313907
Birth       ki1135781-COHORTS          INDIA          1                    NA                0.1344000   0.1224401   0.1463599
Birth       ki1135781-COHORTS          INDIA          2                    NA                0.0880866   0.0731587   0.1030146
Birth       ki1135781-COHORTS          INDIA          3                    NA                0.0898204   0.0464507   0.1331901
Birth       kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                0.2346600   0.2095243   0.2597957
Birth       kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.3441145   0.3347516   0.3534774
Birth       kiGH5241-JiVitA-3          BANGLADESH     2                    NA                0.3201181   0.3053621   0.3348742
Birth       kiGH5241-JiVitA-3          BANGLADESH     3                    NA                0.3011901   0.2735938   0.3287863
Birth       kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                0.3439078   0.2470951   0.4407205
Birth       kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.3215009   0.2957837   0.3472182
Birth       kiGH5241-JiVitA-4          BANGLADESH     2                    NA                0.2713678   0.2320146   0.3107210
Birth       kiGH5241-JiVitA-4          BANGLADESH     3                    NA                0.2524673   0.1836501   0.3212845
6 months    ki0047075b-MAL-ED          PERU           4+                   NA                0.2589928   0.1860300   0.3319556
6 months    ki0047075b-MAL-ED          PERU           1                    NA                0.3684211   0.1511194   0.5857227
6 months    ki0047075b-MAL-ED          PERU           2                    NA                0.1800000   0.0733129   0.2866871
6 months    ki0047075b-MAL-ED          PERU           3                    NA                0.1290323   0.0454319   0.2126326
6 months    ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                0.1904446   0.1129220   0.2679672
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                0.2215451   0.1770368   0.2660534
6 months    ki1017093c-NIH-Crypto      BANGLADESH     2                    NA                0.2291662   0.1691994   0.2891330
6 months    ki1017093c-NIH-Crypto      BANGLADESH     3                    NA                0.1454543   0.0748962   0.2160123
6 months    ki1113344-GMS-Nepal        NEPAL          4+                   NA                0.2038910   0.1553335   0.2524485
6 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                0.2549803   0.1057081   0.4042525
6 months    ki1113344-GMS-Nepal        NEPAL          2                    NA                0.2146951   0.1388904   0.2904998
6 months    ki1113344-GMS-Nepal        NEPAL          3                    NA                0.2045214   0.1360848   0.2729580
6 months    ki1135781-COHORTS          INDIA          4+                   NA                0.0645161   0.0270802   0.1019521
6 months    ki1135781-COHORTS          INDIA          1                    NA                0.2380952   0.2233666   0.2528239
6 months    ki1135781-COHORTS          INDIA          2                    NA                0.1221167   0.1054000   0.1388333
6 months    ki1135781-COHORTS          INDIA          3                    NA                0.1043956   0.0599677   0.1488235
6 months    kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                0.1832366   0.1554263   0.2110469
6 months    kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.2606903   0.2496521   0.2717285
6 months    kiGH5241-JiVitA-3          BANGLADESH     2                    NA                0.2506916   0.2362991   0.2650841
6 months    kiGH5241-JiVitA-3          BANGLADESH     3                    NA                0.2133166   0.1892655   0.2373678
6 months    kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                0.1822311   0.1123282   0.2521341
6 months    kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.2667876   0.2486056   0.2849695
6 months    kiGH5241-JiVitA-4          BANGLADESH     2                    NA                0.2425233   0.2158581   0.2691885
6 months    kiGH5241-JiVitA-4          BANGLADESH     3                    NA                0.2305593   0.1891603   0.2719582
24 months   ki0047075b-MAL-ED          INDIA          4+                   NA                0.4797392   0.2703332   0.6891451
24 months   ki0047075b-MAL-ED          INDIA          1                    NA                0.3385196   0.2365816   0.4404576
24 months   ki0047075b-MAL-ED          INDIA          2                    NA                0.5548550   0.4438962   0.6658138
24 months   ki0047075b-MAL-ED          INDIA          3                    NA                0.4259491   0.2801136   0.5717846
24 months   ki0047075b-MAL-ED          NEPAL          4+                   NA                0.2125984   0.1412838   0.2839131
24 months   ki0047075b-MAL-ED          NEPAL          1                    NA                0.2083333   0.0931917   0.3234750
24 months   ki0047075b-MAL-ED          NEPAL          2                    NA                0.1935484   0.0541667   0.3329301
24 months   ki0047075b-MAL-ED          NEPAL          3                    NA                0.3181818   0.1231241   0.5132396
24 months   ki0047075b-MAL-ED          PERU           4+                   NA                0.3545455   0.2649257   0.4441652
24 months   ki0047075b-MAL-ED          PERU           1                    NA                0.5625000   0.3188191   0.8061809
24 months   ki0047075b-MAL-ED          PERU           2                    NA                0.3750000   0.2068442   0.5431558
24 months   ki0047075b-MAL-ED          PERU           3                    NA                0.3255814   0.1851735   0.4659893
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   4+                   NA                0.3442623   0.2752786   0.4132460
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                0.3846154   0.1195962   0.6496346
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   2                    NA                0.2631579   0.0647399   0.4615759
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   3                    NA                0.4782609   0.2736835   0.6828382
24 months   ki1000108-CMC-V-BCS-2002   INDIA          4+                   NA                0.5714286   0.3118536   0.8310035
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.7761194   0.7184150   0.8338238
24 months   ki1000108-CMC-V-BCS-2002   INDIA          2                    NA                0.6666667   0.5763780   0.7569553
24 months   ki1000108-CMC-V-BCS-2002   INDIA          3                    NA                0.6274510   0.4945798   0.7603221
24 months   ki1000108-IRC              INDIA          4+                   NA                0.4705882   0.2330272   0.7081492
24 months   ki1000108-IRC              INDIA          1                    NA                0.4510870   0.3790998   0.5230742
24 months   ki1000108-IRC              INDIA          2                    NA                0.3647059   0.2922595   0.4371523
24 months   ki1000108-IRC              INDIA          3                    NA                0.5000000   0.3364686   0.6635314
24 months   ki1017093b-PROVIDE         BANGLADESH     4+                   NA                0.2272727   0.0520060   0.4025395
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    NA                0.3538084   0.3073149   0.4003018
24 months   ki1017093b-PROVIDE         BANGLADESH     2                    NA                0.2934783   0.2003501   0.3866064
24 months   ki1017093b-PROVIDE         BANGLADESH     3                    NA                0.2456140   0.1337707   0.3574574
24 months   ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                0.1585366   0.0794056   0.2376675
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                0.3087558   0.2472290   0.3702826
24 months   ki1017093c-NIH-Crypto      BANGLADESH     2                    NA                0.3138686   0.2360850   0.3916523
24 months   ki1017093c-NIH-Crypto      BANGLADESH     3                    NA                0.1153846   0.0444146   0.1863546
24 months   ki1113344-GMS-Nepal        NEPAL          4+                   NA                0.4075356   0.3438111   0.4712601
24 months   ki1113344-GMS-Nepal        NEPAL          1                    NA                0.5187481   0.3530380   0.6844582
24 months   ki1113344-GMS-Nepal        NEPAL          2                    NA                0.4914383   0.3954997   0.5873769
24 months   ki1113344-GMS-Nepal        NEPAL          3                    NA                0.4438256   0.3523081   0.5353430
24 months   ki1135781-COHORTS          INDIA          4+                   NA                0.2757776   0.1999396   0.3516156
24 months   ki1135781-COHORTS          INDIA          1                    NA                0.6617308   0.6424309   0.6810307
24 months   ki1135781-COHORTS          INDIA          2                    NA                0.4216059   0.3937562   0.4494556
24 months   ki1135781-COHORTS          INDIA          3                    NA                0.4260315   0.3489277   0.5031353
24 months   kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                0.3561965   0.3055401   0.4068529
24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.5180961   0.5010598   0.5351324
24 months   kiGH5241-JiVitA-3          BANGLADESH     2                    NA                0.4749925   0.4508672   0.4991179
24 months   kiGH5241-JiVitA-3          BANGLADESH     3                    NA                0.4548306   0.4094421   0.5002190
24 months   kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                0.2809922   0.2167166   0.3452677
24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.4407959   0.4191339   0.4624580
24 months   kiGH5241-JiVitA-4          BANGLADESH     2                    NA                0.3803571   0.3486353   0.4120789
24 months   kiGH5241-JiVitA-4          BANGLADESH     3                    NA                0.2912013   0.2462453   0.3361573


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       ki1135781-COHORTS          INDIA          NA                   NA                0.1184735   0.1093005   0.1276464
Birth       kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.3291721   0.3217884   0.3365557
Birth       kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3035461   0.2835868   0.3235054
6 months    ki0047075b-MAL-ED          PERU           NA                   NA                0.2222222   0.1725409   0.2719036
6 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1954857   0.1844503   0.2065211
6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2514286   0.2432985   0.2595587
6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2524352   0.2383740   0.2664965
24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   ki0047075b-MAL-ED          NEPAL          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   ki1000108-IRC              INDIA          NA                   NA                0.4201474   0.3721360   0.4681589
24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.5670048   0.5511355   0.5828741
24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.4911833   0.4780660   0.5043006
24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.4008848   0.3839144   0.4178552


### Parameter: RR


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093c-NIH-Crypto      BANGLADESH     4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                    4+                1.2933299   0.7047110   2.373600
Birth       ki1017093c-NIH-Crypto      BANGLADESH     2                    4+                1.2207098   0.6335011   2.352218
Birth       ki1017093c-NIH-Crypto      BANGLADESH     3                    4+                0.7685951   0.3335396   1.771119
Birth       ki1113344-GMS-Nepal        NEPAL          4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal        NEPAL          1                    4+                1.0190476   0.4872017   2.131475
Birth       ki1113344-GMS-Nepal        NEPAL          2                    4+                1.5742529   1.0459129   2.369482
Birth       ki1113344-GMS-Nepal        NEPAL          3                    4+                1.4976059   1.0121675   2.215862
Birth       ki1135781-COHORTS          INDIA          4+                   4+                1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA          1                    4+                1.5456000   0.9201016   2.596321
Birth       ki1135781-COHORTS          INDIA          2                    4+                1.0129964   0.5912897   1.735464
Birth       ki1135781-COHORTS          INDIA          3                    4+                1.0329341   0.5113859   2.086395
Birth       kiGH5241-JiVitA-3          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH     1                    4+                1.4664385   1.3117185   1.639408
Birth       kiGH5241-JiVitA-3          BANGLADESH     2                    4+                1.3641783   1.2164859   1.529802
Birth       kiGH5241-JiVitA-3          BANGLADESH     3                    4+                1.2835167   1.1141994   1.478564
Birth       kiGH5241-JiVitA-4          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH     1                    4+                0.9348463   0.6975488   1.252869
Birth       kiGH5241-JiVitA-4          BANGLADESH     2                    4+                0.7890714   0.5764216   1.080170
Birth       kiGH5241-JiVitA-4          BANGLADESH     3                    4+                0.7341134   0.4942631   1.090355
6 months    ki0047075b-MAL-ED          PERU           4+                   4+                1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU           1                    4+                1.4225146   0.7399163   2.734834
6 months    ki0047075b-MAL-ED          PERU           2                    4+                0.6950000   0.3605609   1.339649
6 months    ki0047075b-MAL-ED          PERU           3                    4+                0.4982079   0.2457997   1.009810
6 months    ki1017093c-NIH-Crypto      BANGLADESH     4+                   4+                1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    4+                1.1633046   0.7396756   1.829555
6 months    ki1017093c-NIH-Crypto      BANGLADESH     2                    4+                1.2033218   0.7427927   1.949377
6 months    ki1017093c-NIH-Crypto      BANGLADESH     3                    4+                0.7637615   0.4053382   1.439123
6 months    ki1113344-GMS-Nepal        NEPAL          4+                   4+                1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL          1                    4+                1.2505718   0.6643208   2.354179
6 months    ki1113344-GMS-Nepal        NEPAL          2                    4+                1.0529897   0.6878722   1.611909
6 months    ki1113344-GMS-Nepal        NEPAL          3                    4+                1.0030921   0.6646836   1.513794
6 months    ki1135781-COHORTS          INDIA          4+                   4+                1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA          1                    4+                3.6904762   2.0589789   6.614742
6 months    ki1135781-COHORTS          INDIA          2                    4+                1.8928087   1.0427652   3.435792
6 months    ki1135781-COHORTS          INDIA          3                    4+                1.6181319   0.7879522   3.322982
6 months    kiGH5241-JiVitA-3          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     1                    4+                1.4226978   1.2170618   1.663078
6 months    kiGH5241-JiVitA-3          BANGLADESH     2                    4+                1.3681304   1.1652582   1.606323
6 months    kiGH5241-JiVitA-3          BANGLADESH     3                    4+                1.1641594   0.9637451   1.406251
6 months    kiGH5241-JiVitA-4          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     1                    4+                1.4640064   0.9931328   2.158135
6 months    kiGH5241-JiVitA-4          BANGLADESH     2                    4+                1.3308553   0.8930181   1.983359
6 months    kiGH5241-JiVitA-4          BANGLADESH     3                    4+                1.2652023   0.8240798   1.942454
24 months   ki0047075b-MAL-ED          INDIA          4+                   4+                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA          1                    4+                0.7056326   0.4151326   1.199418
24 months   ki0047075b-MAL-ED          INDIA          2                    4+                1.1565764   0.7177811   1.863617
24 months   ki0047075b-MAL-ED          INDIA          3                    4+                0.8878765   0.5103541   1.544662
24 months   ki0047075b-MAL-ED          NEPAL          4+                   4+                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          NEPAL          1                    4+                0.9799383   0.5133603   1.870575
24 months   ki0047075b-MAL-ED          NEPAL          2                    4+                0.9103943   0.4113507   2.014869
24 months   ki0047075b-MAL-ED          NEPAL          3                    4+                1.4966330   0.7440893   3.010271
24 months   ki0047075b-MAL-ED          PERU           4+                   4+                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU           1                    4+                1.5865385   0.9607811   2.619852
24 months   ki0047075b-MAL-ED          PERU           2                    4+                1.0576923   0.6321278   1.769758
24 months   ki0047075b-MAL-ED          PERU           3                    4+                0.9183065   0.5570516   1.513840
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   4+                   4+                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    4+                1.1172161   0.5451169   2.289732
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   2                    4+                0.7644110   0.3503542   1.667810
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   3                    4+                1.3892340   0.8662267   2.228021
24 months   ki1000108-CMC-V-BCS-2002   INDIA          4+                   4+                1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    4+                1.3582090   0.8571575   2.152150
24 months   ki1000108-CMC-V-BCS-2002   INDIA          2                    4+                1.1666667   0.7262472   1.874171
24 months   ki1000108-CMC-V-BCS-2002   INDIA          3                    4+                1.0980392   0.6652018   1.812518
24 months   ki1000108-IRC              INDIA          4+                   4+                1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA          1                    4+                0.9585598   0.5645284   1.627619
24 months   ki1000108-IRC              INDIA          2                    4+                0.7750000   0.4505050   1.333226
24 months   ki1000108-IRC              INDIA          3                    4+                1.0625000   0.5822344   1.938921
24 months   ki1017093b-PROVIDE         BANGLADESH     4+                   4+                1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    4+                1.5567568   0.7119946   3.403806
24 months   ki1017093b-PROVIDE         BANGLADESH     2                    4+                1.2913043   0.5608755   2.972971
24 months   ki1017093b-PROVIDE         BANGLADESH     3                    4+                1.0807018   0.4413269   2.646375
24 months   ki1017093c-NIH-Crypto      BANGLADESH     4+                   4+                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    4+                1.9475363   1.1378298   3.333449
24 months   ki1017093c-NIH-Crypto      BANGLADESH     2                    4+                1.9797866   1.1339631   3.456510
24 months   ki1017093c-NIH-Crypto      BANGLADESH     3                    4+                0.7278107   0.3296145   1.607054
24 months   ki1113344-GMS-Nepal        NEPAL          4+                   4+                1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL          1                    4+                1.2728903   0.8919329   1.816560
24 months   ki1113344-GMS-Nepal        NEPAL          2                    4+                1.2058782   0.9385033   1.549427
24 months   ki1113344-GMS-Nepal        NEPAL          3                    4+                1.0890473   0.8408738   1.410466
24 months   ki1135781-COHORTS          INDIA          4+                   4+                1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA          1                    4+                2.3995088   1.8198796   3.163749
24 months   ki1135781-COHORTS          INDIA          2                    4+                1.5287893   1.1522732   2.028335
24 months   ki1135781-COHORTS          INDIA          3                    4+                1.5448372   1.1116586   2.146812
24 months   kiGH5241-JiVitA-3          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    4+                1.4545233   1.2600547   1.679005
24 months   kiGH5241-JiVitA-3          BANGLADESH     2                    4+                1.3335126   1.1505172   1.545614
24 months   kiGH5241-JiVitA-3          BANGLADESH     3                    4+                1.2769091   1.0777830   1.512825
24 months   kiGH5241-JiVitA-4          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    4+                1.5687126   1.2438503   1.978421
24 months   kiGH5241-JiVitA-4          BANGLADESH     2                    4+                1.3536219   1.0624177   1.724644
24 months   kiGH5241-JiVitA-4          BANGLADESH     3                    4+                1.0363324   0.7848224   1.368443


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                 0.0196986   -0.0422903   0.0816874
Birth       ki1113344-GMS-Nepal        NEPAL          4+                   NA                 0.0351004    0.0049159   0.0652850
Birth       ki1135781-COHORTS          INDIA          4+                   NA                 0.0315170   -0.0127529   0.0757868
Birth       kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                 0.0945120    0.0692970   0.1197271
Birth       kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                -0.0403617   -0.1347218   0.0539984
6 months    ki0047075b-MAL-ED          PERU           4+                   NA                -0.0367706   -0.0848383   0.0112971
6 months    ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                 0.0193456   -0.0540305   0.0927216
6 months    ki1113344-GMS-Nepal        NEPAL          4+                   NA                 0.0124211   -0.0234385   0.0482807
6 months    ki1135781-COHORTS          INDIA          4+                   NA                 0.1309696    0.0928493   0.1690899
6 months    kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                 0.0681919    0.0406656   0.0957183
6 months    kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                 0.0702041    0.0028645   0.1375436
24 months   ki0047075b-MAL-ED          INDIA          4+                   NA                -0.0524264   -0.2494570   0.1446042
24 months   ki0047075b-MAL-ED          NEPAL          4+                   NA                 0.0066998   -0.0414388   0.0548384
24 months   ki0047075b-MAL-ED          PERU           4+                   NA                 0.0136137   -0.0472857   0.0745132
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   4+                   NA                 0.0086789   -0.0251192   0.0424769
24 months   ki1000108-CMC-V-BCS-2002   INDIA          4+                   NA                 0.1455526   -0.1082204   0.3993255
24 months   ki1000108-IRC              INDIA          4+                   NA                -0.0504408   -0.2828754   0.1819938
24 months   ki1017093b-PROVIDE         BANGLADESH     4+                   NA                 0.1014470   -0.0713219   0.2742159
24 months   ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                 0.0982728    0.0228208   0.1737247
24 months   ki1113344-GMS-Nepal        NEPAL          4+                   NA                 0.0412349   -0.0056111   0.0880809
24 months   ki1135781-COHORTS          INDIA          4+                   NA                 0.2912272    0.2157364   0.3667179
24 months   kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                 0.1349868    0.0853514   0.1846222
24 months   kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                 0.1198926    0.0576446   0.1821406


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                 0.1427659   -0.4468845   0.4921154
Birth       ki1113344-GMS-Nepal        NEPAL          4+                   NA                 0.2002451    0.0105904   0.3535460
Birth       ki1135781-COHORTS          INDIA          4+                   NA                 0.2660254   -0.2191932   0.5581351
Birth       kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                 0.2871204    0.2070810   0.3590805
Birth       kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                -0.1329672   -0.4906024   0.1388617
6 months    ki0047075b-MAL-ED          PERU           4+                   NA                -0.1654676   -0.4018717   0.0310705
6 months    ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                 0.0922139   -0.3336695   0.3820991
6 months    ki1113344-GMS-Nepal        NEPAL          4+                   NA                 0.0574221   -0.1237458   0.2093825
6 months    ki1135781-COHORTS          INDIA          4+                   NA                 0.6699701    0.4116068   0.8148861
6 months    kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                 0.2712180    0.1538282   0.3723222
6 months    kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                 0.2781073   -0.0470859   0.5023054
24 months   ki0047075b-MAL-ED          INDIA          4+                   NA                -0.1226886   -0.6924823   0.2552775
24 months   ki0047075b-MAL-ED          NEPAL          4+                   NA                 0.0305512   -0.2157265   0.2269388
24 months   ki0047075b-MAL-ED          PERU           4+                   NA                 0.0369779   -0.1435142   0.1889812
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   4+                   NA                 0.0245902   -0.0760360   0.1158062
24 months   ki1000108-CMC-V-BCS-2002   INDIA          4+                   NA                 0.2030075   -0.2437129   0.4892736
24 months   ki1000108-IRC              INDIA          4+                   NA                -0.1200550   -0.8356451   0.3165763
24 months   ki1017093b-PROVIDE         BANGLADESH     4+                   NA                 0.3086124   -0.4777979   0.6765344
24 months   ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                 0.3826681    0.0113978   0.6145076
24 months   ki1113344-GMS-Nepal        NEPAL          4+                   NA                 0.0918841   -0.0189705   0.1906788
24 months   ki1135781-COHORTS          INDIA          4+                   NA                 0.5136238    0.3610310   0.6297758
24 months   kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                 0.2748196    0.1665324   0.3690377
24 months   kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                 0.2990700    0.1248422   0.4386123
