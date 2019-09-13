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

agecat      studyid                    country                        nrooms    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+              0       12     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+              1        0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0      116     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1       28     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               0       42     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               1        8     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               0       26     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               1        2     234
Birth       ki0047075b-MAL-ED          BRAZIL                         4+              0       93     174
Birth       ki0047075b-MAL-ED          BRAZIL                         4+              1        9     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        3     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2               0       18     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2               1        1     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3               0       43     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3               1        7     174
Birth       ki0047075b-MAL-ED          INDIA                          4+              0       20     191
Birth       ki0047075b-MAL-ED          INDIA                          4+              1        2     191
Birth       ki0047075b-MAL-ED          INDIA                          1               0       63     191
Birth       ki0047075b-MAL-ED          INDIA                          1               1        6     191
Birth       ki0047075b-MAL-ED          INDIA                          2               0       51     191
Birth       ki0047075b-MAL-ED          INDIA                          2               1       17     191
Birth       ki0047075b-MAL-ED          INDIA                          3               0       27     191
Birth       ki0047075b-MAL-ED          INDIA                          3               1        5     191
Birth       ki0047075b-MAL-ED          NEPAL                          4+              0       87     171
Birth       ki0047075b-MAL-ED          NEPAL                          4+              1       10     171
Birth       ki0047075b-MAL-ED          NEPAL                          1               0       33     171
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        3     171
Birth       ki0047075b-MAL-ED          NEPAL                          2               0       20     171
Birth       ki0047075b-MAL-ED          NEPAL                          2               1        1     171
Birth       ki0047075b-MAL-ED          NEPAL                          3               0       13     171
Birth       ki0047075b-MAL-ED          NEPAL                          3               1        4     171
Birth       ki0047075b-MAL-ED          PERU                           4+              0      111     259
Birth       ki0047075b-MAL-ED          PERU                           4+              1       21     259
Birth       ki0047075b-MAL-ED          PERU                           1               0       16     259
Birth       ki0047075b-MAL-ED          PERU                           1               1        1     259
Birth       ki0047075b-MAL-ED          PERU                           2               0       47     259
Birth       ki0047075b-MAL-ED          PERU                           2               1        4     259
Birth       ki0047075b-MAL-ED          PERU                           3               0       54     259
Birth       ki0047075b-MAL-ED          PERU                           3               1        5     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      142     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1       18     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       14     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       19     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        2     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       21     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        2     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       48     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       19     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        5     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       29     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        4     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+              0        4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       32      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        6      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               0       22      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1        6      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               0       16      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               1        3      90
Birth       ki1000108-IRC              INDIA                          4+              0       16     386
Birth       ki1000108-IRC              INDIA                          4+              1        1     386
Birth       ki1000108-IRC              INDIA                          1               0      156     386
Birth       ki1000108-IRC              INDIA                          1               1       19     386
Birth       ki1000108-IRC              INDIA                          2               0      141     386
Birth       ki1000108-IRC              INDIA                          2               1       20     386
Birth       ki1000108-IRC              INDIA                          3               0       28     386
Birth       ki1000108-IRC              INDIA                          3               1        5     386
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+              0        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+              1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2               0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2               1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3               0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3               1        0      27
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+              0      450   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+              1      134   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     8323   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     4004   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     3377   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1     1740   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               0     1104   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               1      457   19589
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+              0       12     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+              1       14     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0      354     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1      152     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               0      147     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               1       60     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               0       62     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               1       21     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              0       11     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0      120     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1       30     240
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
6 months    ki0047075b-MAL-ED          INDIA                          1               0       64     235
6 months    ki0047075b-MAL-ED          INDIA                          1               1       20     235
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       54     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1       10     247
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              0       17     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              1        4     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      346     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       69     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0       77     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1       14     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               0       49     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               1        7     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       76     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              1       15     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      261     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       78     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               0      141     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               1       43     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               0       87     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               1       14     715
6 months    ki1113344-GMS-Nepal        NEPAL                          4+              0      215     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4+              1       52     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0       28     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       12     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0       90     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1       25     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0      111     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3               1       30     563
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               0      929    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               1      296    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               0      376    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               1      112    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              0        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              1        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       70     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       64     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               0       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               1       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               1       11     212
24 months   ki0047075b-MAL-ED          BRAZIL                         4+              0      100     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+              1        4     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               0       47     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          4+              0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          4+              1       11     227
24 months   ki0047075b-MAL-ED          INDIA                          1               0       56     227
24 months   ki0047075b-MAL-ED          INDIA                          1               1       26     227
24 months   ki0047075b-MAL-ED          INDIA                          2               0       33     227
24 months   ki0047075b-MAL-ED          INDIA                          2               1       41     227
24 months   ki0047075b-MAL-ED          INDIA                          3               0       29     227
24 months   ki0047075b-MAL-ED          INDIA                          3               1       17     227
24 months   ki0047075b-MAL-ED          NEPAL                          4+              0      101     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+              1       26     228
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
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       29     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1       69     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        5     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1       43     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1       36     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              0        6     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        8     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       46     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1      155     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               0       35     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               1       71     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               0       19     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               1       32     372
24 months   ki1000108-IRC              INDIA                          4+              0        9     407
24 months   ki1000108-IRC              INDIA                          4+              1        8     407
24 months   ki1000108-IRC              INDIA                          1               0      102     407
24 months   ki1000108-IRC              INDIA                          1               1       82     407
24 months   ki1000108-IRC              INDIA                          2               0      109     407
24 months   ki1000108-IRC              INDIA                          2               1       61     407
24 months   ki1000108-IRC              INDIA                          3               0       18     407
24 months   ki1000108-IRC              INDIA                          3               1       18     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              0       17     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              1        5     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      262     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1      144     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0       65     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       27     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               0       43     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               1       14     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       69     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              1       13     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      150     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       67     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               0       94     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               1       43     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               0       69     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               1        9     514
24 months   ki1113344-GMS-Nepal        NEPAL                          4+              0      139     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4+              1       98     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       16     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       20     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0       56     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       52     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0       65     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3               1       53     499
24 months   ki1114097-CONTENT          PERU                           4+              0       58     164
24 months   ki1114097-CONTENT          PERU                           4+              1        5     164
24 months   ki1114097-CONTENT          PERU                           1               0       23     164
24 months   ki1114097-CONTENT          PERU                           1               1        7     164
24 months   ki1114097-CONTENT          PERU                           2               0       32     164
24 months   ki1114097-CONTENT          PERU                           2               1        7     164
24 months   ki1114097-CONTENT          PERU                           3               0       30     164
24 months   ki1114097-CONTENT          PERU                           3               1        2     164
24 months   ki1135781-COHORTS          INDIA                          4+              0       63    3749
24 months   ki1135781-COHORTS          INDIA                          4+              1       13    3749
24 months   ki1135781-COHORTS          INDIA                          1               0      943    3749
24 months   ki1135781-COHORTS          INDIA                          1               1     1359    3749
24 months   ki1135781-COHORTS          INDIA                          2               0      796    3749
24 months   ki1135781-COHORTS          INDIA                          2               1      425    3749
24 months   ki1135781-COHORTS          INDIA                          3               0       97    3749
24 months   ki1135781-COHORTS          INDIA                          3               1       53    3749
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              0      261    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              1      106    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     2419    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     2632    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     1239    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1     1161    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               0      470    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               1      332    8620
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              0      183    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              1       68    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     1585    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1     1204    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               0      766    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               1      450    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               0      351    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               1      140    4747


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




# Results Detail

## Results Plots
![](/tmp/b089c5af-3bcf-40f7-84f3-9a640151c49d/acaaf32d-8d0d-471a-af90-1a99e8a89b73/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b089c5af-3bcf-40f7-84f3-9a640151c49d/acaaf32d-8d0d-471a-af90-1a99e8a89b73/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b089c5af-3bcf-40f7-84f3-9a640151c49d/acaaf32d-8d0d-471a-af90-1a99e8a89b73/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b089c5af-3bcf-40f7-84f3-9a640151c49d/acaaf32d-8d0d-471a-af90-1a99e8a89b73/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA          4+                   NA                0.0869565   0.0425224   0.1313907
Birth       ki1135781-COHORTS          INDIA          1                    NA                0.1344000   0.1224401   0.1463599
Birth       ki1135781-COHORTS          INDIA          2                    NA                0.0880866   0.0731587   0.1030146
Birth       ki1135781-COHORTS          INDIA          3                    NA                0.0898204   0.0464507   0.1331901
Birth       kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                0.2339812   0.2053465   0.2626159
Birth       kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.3374639   0.3276687   0.3472591
Birth       kiGH5241-JiVitA-3          BANGLADESH     2                    NA                0.3129518   0.2971312   0.3287723
Birth       kiGH5241-JiVitA-3          BANGLADESH     3                    NA                0.2893849   0.2592076   0.3195622
Birth       kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                0.5176616   0.2564345   0.7788886
Birth       kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.3007129   0.2573370   0.3440889
Birth       kiGH5241-JiVitA-4          BANGLADESH     2                    NA                0.2882448   0.2135086   0.3629811
Birth       kiGH5241-JiVitA-4          BANGLADESH     3                    NA                0.2582011   0.1421243   0.3742779
6 months    ki0047075b-MAL-ED          PERU           4+                   NA                0.2589928   0.1860300   0.3319556
6 months    ki0047075b-MAL-ED          PERU           1                    NA                0.3684211   0.1511194   0.5857227
6 months    ki0047075b-MAL-ED          PERU           2                    NA                0.1800000   0.0733129   0.2866871
6 months    ki0047075b-MAL-ED          PERU           3                    NA                0.1290323   0.0454319   0.2126326
6 months    ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                0.1799263   0.1036352   0.2562174
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                0.2234023   0.1788469   0.2679578
6 months    ki1017093c-NIH-Crypto      BANGLADESH     2                    NA                0.2269066   0.1670988   0.2867144
6 months    ki1017093c-NIH-Crypto      BANGLADESH     3                    NA                0.1481167   0.0786806   0.2175528
6 months    ki1113344-GMS-Nepal        NEPAL          4+                   NA                0.1930548   0.1453009   0.2408087
6 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                0.2921291   0.1502113   0.4340469
6 months    ki1113344-GMS-Nepal        NEPAL          2                    NA                0.2115858   0.1351557   0.2880159
6 months    ki1113344-GMS-Nepal        NEPAL          3                    NA                0.2129718   0.1456648   0.2802787
6 months    ki1135781-COHORTS          INDIA          4+                   NA                0.0645161   0.0270802   0.1019521
6 months    ki1135781-COHORTS          INDIA          1                    NA                0.2380952   0.2233666   0.2528239
6 months    ki1135781-COHORTS          INDIA          2                    NA                0.1221167   0.1054000   0.1388333
6 months    ki1135781-COHORTS          INDIA          3                    NA                0.1043956   0.0599677   0.1488235
6 months    kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                0.1820166   0.1549098   0.2091235
6 months    kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.2610903   0.2500012   0.2721795
6 months    kiGH5241-JiVitA-3          BANGLADESH     2                    NA                0.2521669   0.2375664   0.2667673
6 months    kiGH5241-JiVitA-3          BANGLADESH     3                    NA                0.2112928   0.1864651   0.2361206
6 months    kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                0.1751825   0.1055506   0.2448145
6 months    kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.2666963   0.2485039   0.2848888
6 months    kiGH5241-JiVitA-4          BANGLADESH     2                    NA                0.2403698   0.2138575   0.2668822
6 months    kiGH5241-JiVitA-4          BANGLADESH     3                    NA                0.2284966   0.1870414   0.2699519
24 months   ki0047075b-MAL-ED          INDIA          4+                   NA                0.4421994   0.2348887   0.6495101
24 months   ki0047075b-MAL-ED          INDIA          1                    NA                0.3180267   0.2181818   0.4178717
24 months   ki0047075b-MAL-ED          INDIA          2                    NA                0.5468400   0.4357870   0.6578931
24 months   ki0047075b-MAL-ED          INDIA          3                    NA                0.4012909   0.2553255   0.5472563
24 months   ki0047075b-MAL-ED          NEPAL          4+                   NA                0.2047244   0.1343938   0.2750550
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA          4+                   NA                0.5714286   0.3118546   0.8310026
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.7711443   0.7129898   0.8292988
24 months   ki1000108-CMC-V-BCS-2002   INDIA          2                    NA                0.6698113   0.5801641   0.7594586
24 months   ki1000108-CMC-V-BCS-2002   INDIA          3                    NA                0.6274510   0.4945803   0.7603217
24 months   ki1000108-IRC              INDIA          4+                   NA                0.4705882   0.2330272   0.7081492
24 months   ki1000108-IRC              INDIA          1                    NA                0.4456522   0.3737466   0.5175577
24 months   ki1000108-IRC              INDIA          2                    NA                0.3588235   0.2866319   0.4310152
24 months   ki1000108-IRC              INDIA          3                    NA                0.5000000   0.3364686   0.6635314
24 months   ki1017093b-PROVIDE         BANGLADESH     4+                   NA                0.2272727   0.0520057   0.4025397
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    NA                0.3546798   0.3081032   0.4012564
24 months   ki1017093b-PROVIDE         BANGLADESH     2                    NA                0.2934783   0.2003500   0.3866065
24 months   ki1017093b-PROVIDE         BANGLADESH     3                    NA                0.2456140   0.1337705   0.3574575
24 months   ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                0.1585366   0.0794056   0.2376675
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                0.3087558   0.2472290   0.3702826
24 months   ki1017093c-NIH-Crypto      BANGLADESH     2                    NA                0.3138686   0.2360850   0.3916523
24 months   ki1017093c-NIH-Crypto      BANGLADESH     3                    NA                0.1153846   0.0444146   0.1863546
24 months   ki1113344-GMS-Nepal        NEPAL          4+                   NA                0.4109704   0.3481260   0.4738148
24 months   ki1113344-GMS-Nepal        NEPAL          1                    NA                0.5450455   0.3869298   0.7031613
24 months   ki1113344-GMS-Nepal        NEPAL          2                    NA                0.4732068   0.3772795   0.5691340
24 months   ki1113344-GMS-Nepal        NEPAL          3                    NA                0.4458776   0.3552203   0.5365349
24 months   ki1135781-COHORTS          INDIA          4+                   NA                0.1834391   0.1191349   0.2477433
24 months   ki1135781-COHORTS          INDIA          1                    NA                0.5871129   0.5669910   0.6072347
24 months   ki1135781-COHORTS          INDIA          2                    NA                0.3471680   0.3201302   0.3742057
24 months   ki1135781-COHORTS          INDIA          3                    NA                0.3717705   0.2957298   0.4478113
24 months   kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                0.3404429   0.2909911   0.3898947
24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.5209045   0.5037933   0.5380156
24 months   kiGH5241-JiVitA-3          BANGLADESH     2                    NA                0.4724166   0.4476261   0.4972072
24 months   kiGH5241-JiVitA-3          BANGLADESH     3                    NA                0.4473635   0.4072282   0.4874988
24 months   kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                0.2684706   0.2044091   0.3325320
24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.4313223   0.4096681   0.4529764
24 months   kiGH5241-JiVitA-4          BANGLADESH     2                    NA                0.3701646   0.3383849   0.4019443
24 months   kiGH5241-JiVitA-4          BANGLADESH     3                    NA                0.2840390   0.2388007   0.3292774


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA          NA                   NA                0.1184735   0.1093005   0.1276464
Birth       kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.3233958   0.3157274   0.3310641
Birth       kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED          PERU           NA                   NA                0.2222222   0.1725409   0.2719036
6 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1954857   0.1844503   0.2065211
6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2514286   0.2432985   0.2595587
6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2522280   0.2381653   0.2662906
24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED          NEPAL          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA          NA                   NA                0.4152334   0.3673018   0.4631651
24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.4934649   0.4774590   0.5094709
24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.4908353   0.4776984   0.5039721
24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3922477   0.3752571   0.4092384


### Parameter: RR


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA          4+                   4+                1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA          1                    4+                1.5456000   0.9201016   2.5963213
Birth       ki1135781-COHORTS          INDIA          2                    4+                1.0129964   0.5912897   1.7354635
Birth       ki1135781-COHORTS          INDIA          3                    4+                1.0329341   0.5113859   2.0863949
Birth       kiGH5241-JiVitA-3          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH     1                    4+                1.4422692   1.2700961   1.6377820
Birth       kiGH5241-JiVitA-3          BANGLADESH     2                    4+                1.3375080   1.1746859   1.5228988
Birth       kiGH5241-JiVitA-3          BANGLADESH     3                    4+                1.2367867   1.0515566   1.4546447
Birth       kiGH5241-JiVitA-4          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH     1                    4+                0.5809065   0.3422161   0.9860794
Birth       kiGH5241-JiVitA-4          BANGLADESH     2                    4+                0.5568210   0.3171031   0.9777565
Birth       kiGH5241-JiVitA-4          BANGLADESH     3                    4+                0.4987836   0.2532817   0.9822464
6 months    ki0047075b-MAL-ED          PERU           4+                   4+                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU           1                    4+                1.4225146   0.7399163   2.7348335
6 months    ki0047075b-MAL-ED          PERU           2                    4+                0.6950000   0.3605609   1.3396490
6 months    ki0047075b-MAL-ED          PERU           3                    4+                0.4982079   0.2457997   1.0098104
6 months    ki1017093c-NIH-Crypto      BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    4+                1.2416323   0.7778980   1.9818162
6 months    ki1017093c-NIH-Crypto      BANGLADESH     2                    4+                1.2611087   0.7664969   2.0748880
6 months    ki1017093c-NIH-Crypto      BANGLADESH     3                    4+                0.8232077   0.4376075   1.5485815
6 months    ki1113344-GMS-Nepal        NEPAL          4+                   4+                1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL          1                    4+                1.5131924   0.8767489   2.6116387
6 months    ki1113344-GMS-Nepal        NEPAL          2                    4+                1.0959883   0.7070074   1.6989786
6 months    ki1113344-GMS-Nepal        NEPAL          3                    4+                1.1031673   0.7386932   1.6474744
6 months    ki1135781-COHORTS          INDIA          4+                   4+                1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA          1                    4+                3.6904762   2.0589789   6.6147422
6 months    ki1135781-COHORTS          INDIA          2                    4+                1.8928087   1.0427652   3.4357925
6 months    ki1135781-COHORTS          INDIA          3                    4+                1.6181319   0.7879522   3.3229819
6 months    kiGH5241-JiVitA-3          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     1                    4+                1.4344312   1.2308510   1.6716832
6 months    kiGH5241-JiVitA-3          BANGLADESH     2                    4+                1.3854055   1.1832687   1.6220732
6 months    kiGH5241-JiVitA-3          BANGLADESH     3                    4+                1.1608434   0.9579499   1.4067097
6 months    kiGH5241-JiVitA-4          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     1                    4+                1.5223911   1.0184949   2.2755877
6 months    kiGH5241-JiVitA-4          BANGLADESH     2                    4+                1.3721105   0.9087563   2.0717184
6 months    kiGH5241-JiVitA-4          BANGLADESH     3                    4+                1.3043343   0.8375005   2.0313875
24 months   ki0047075b-MAL-ED          INDIA          4+                   4+                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA          1                    4+                0.7191930   0.4092768   1.2637866
24 months   ki0047075b-MAL-ED          INDIA          2                    4+                1.2366367   0.7434747   2.0569230
24 months   ki0047075b-MAL-ED          INDIA          3                    4+                0.9074885   0.5019978   1.6405161
24 months   ki0047075b-MAL-ED          NEPAL          4+                   4+                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL          1                    4+                1.0176282   0.5308510   1.9507679
24 months   ki0047075b-MAL-ED          NEPAL          2                    4+                0.9454094   0.4256999   2.0995988
24 months   ki0047075b-MAL-ED          NEPAL          3                    4+                1.5541958   0.7696838   3.1383337
24 months   ki0047075b-MAL-ED          PERU           4+                   4+                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU           1                    4+                1.5865385   0.9607811   2.6198521
24 months   ki0047075b-MAL-ED          PERU           2                    4+                1.0576923   0.6321278   1.7697577
24 months   ki0047075b-MAL-ED          PERU           3                    4+                0.9183065   0.5570516   1.5138398
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   4+                   4+                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    4+                1.1172161   0.5451169   2.2897323
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   2                    4+                0.7644110   0.3503542   1.6678098
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   3                    4+                1.3892340   0.8662267   2.2280207
24 months   ki1000108-CMC-V-BCS-2002   INDIA          4+                   4+                1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    4+                1.3495025   0.8515170   2.1387206
24 months   ki1000108-CMC-V-BCS-2002   INDIA          2                    4+                1.1721698   0.7300045   1.8821556
24 months   ki1000108-CMC-V-BCS-2002   INDIA          3                    4+                1.0980392   0.6652030   1.8125146
24 months   ki1000108-IRC              INDIA          4+                   4+                1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA          1                    4+                0.9470109   0.5574291   1.6088677
24 months   ki1000108-IRC              INDIA          2                    4+                0.7625000   0.4428234   1.3129528
24 months   ki1000108-IRC              INDIA          3                    4+                1.0625000   0.5822344   1.9389205
24 months   ki1017093b-PROVIDE         BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    4+                1.5605911   0.7137580   3.4121433
24 months   ki1017093b-PROVIDE         BANGLADESH     2                    4+                1.2913043   0.5608748   2.9729751
24 months   ki1017093b-PROVIDE         BANGLADESH     3                    4+                1.0807018   0.4413263   2.6463781
24 months   ki1017093c-NIH-Crypto      BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    4+                1.9475363   1.1378298   3.3334493
24 months   ki1017093c-NIH-Crypto      BANGLADESH     2                    4+                1.9797866   1.1339631   3.4565104
24 months   ki1017093c-NIH-Crypto      BANGLADESH     3                    4+                0.7278107   0.3296145   1.6070544
24 months   ki1113344-GMS-Nepal        NEPAL          4+                   4+                1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL          1                    4+                1.3262404   0.9555195   1.8407930
24 months   ki1113344-GMS-Nepal        NEPAL          2                    4+                1.1514376   0.8930508   1.4845836
24 months   ki1113344-GMS-Nepal        NEPAL          3                    4+                1.0849385   0.8412739   1.3991776
24 months   ki1135781-COHORTS          INDIA          4+                   4+                1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA          1                    4+                3.2005878   2.2504970   4.5517777
24 months   ki1135781-COHORTS          INDIA          2                    4+                1.8925519   1.3217642   2.7098271
24 months   ki1135781-COHORTS          INDIA          3                    4+                2.0266703   1.3507081   3.0409179
24 months   kiGH5241-JiVitA-3          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    4+                1.5300788   1.3216323   1.7714014
24 months   kiGH5241-JiVitA-3          BANGLADESH     2                    4+                1.3876532   1.1930183   1.6140418
24 months   kiGH5241-JiVitA-3          BANGLADESH     3                    4+                1.3140633   1.1103695   1.5551242
24 months   kiGH5241-JiVitA-4          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    4+                1.6065906   1.2625130   2.0444410
24 months   kiGH5241-JiVitA-4          BANGLADESH     2                    4+                1.3787902   1.0716163   1.7740141
24 months   kiGH5241-JiVitA-4          BANGLADESH     3                    4+                1.0579896   0.7934734   1.4106861


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA          4+                   NA                 0.0315170   -0.0127529   0.0757868
Birth       kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                 0.0894146    0.0606495   0.1181796
Birth       kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                -0.2171750   -0.4728173   0.0384674
6 months    ki0047075b-MAL-ED          PERU           4+                   NA                -0.0367706   -0.0848383   0.0112971
6 months    ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                 0.0298639   -0.0425077   0.1022355
6 months    ki1113344-GMS-Nepal        NEPAL          4+                   NA                 0.0183128   -0.0173396   0.0539653
6 months    ki1135781-COHORTS          INDIA          4+                   NA                 0.1309696    0.0928493   0.1690899
6 months    kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                 0.0694119    0.0425945   0.0962294
6 months    kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                 0.0770454    0.0098835   0.1442074
24 months   ki0047075b-MAL-ED          INDIA          4+                   NA                -0.0236972   -0.2184888   0.1710943
24 months   ki0047075b-MAL-ED          NEPAL          4+                   NA                 0.0101879   -0.0376789   0.0580546
24 months   ki0047075b-MAL-ED          PERU           4+                   NA                 0.0136137   -0.0472857   0.0745132
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   4+                   NA                 0.0086789   -0.0251192   0.0424769
24 months   ki1000108-CMC-V-BCS-2002   INDIA          4+                   NA                 0.1436252   -0.1101796   0.3974300
24 months   ki1000108-IRC              INDIA          4+                   NA                -0.0553548   -0.2877729   0.1770633
24 months   ki1017093b-PROVIDE         BANGLADESH     4+                   NA                 0.1020167   -0.0707519   0.2747853
24 months   ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                 0.0982728    0.0228208   0.1737247
24 months   ki1113344-GMS-Nepal        NEPAL          4+                   NA                 0.0359234   -0.0100932   0.0819400
24 months   ki1135781-COHORTS          INDIA          4+                   NA                 0.3100258    0.2454563   0.3745954
24 months   kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                 0.1503924    0.1019902   0.1987946
24 months   kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                 0.1237772    0.0619680   0.1855863


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          INDIA          4+                   NA                 0.2660254   -0.2191932    0.5581351
Birth       kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                 0.2764865    0.1826847    0.3595227
Birth       kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                -0.7227442   -1.8174281   -0.0533889
6 months    ki0047075b-MAL-ED          PERU           4+                   NA                -0.1654676   -0.4018717    0.0310705
6 months    ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                 0.1423513   -0.2810383    0.4258085
6 months    ki1113344-GMS-Nepal        NEPAL          4+                   NA                 0.0866398   -0.0983981    0.2405059
6 months    ki1135781-COHORTS          INDIA          4+                   NA                 0.6699701    0.4116068    0.8148861
6 months    kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                 0.2760702    0.1619188    0.3746735
6 months    kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                 0.3054595   -0.0217043    0.5278609
24 months   ki0047075b-MAL-ED          INDIA          4+                   NA                -0.0566239   -0.6411001    0.3196917
24 months   ki0047075b-MAL-ED          NEPAL          4+                   NA                 0.0474048   -0.2033251    0.2458916
24 months   ki0047075b-MAL-ED          PERU           4+                   NA                 0.0369779   -0.1435142    0.1889812
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   4+                   NA                 0.0245902   -0.0760360    0.1158062
24 months   ki1000108-CMC-V-BCS-2002   INDIA          4+                   NA                 0.2008593   -0.2471023    0.4879122
24 months   ki1000108-IRC              INDIA          4+                   NA                -0.1333101   -0.8573392    0.3084775
24 months   ki1017093b-PROVIDE         BANGLADESH     4+                   NA                 0.3098086   -0.4752316    0.6770920
24 months   ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                 0.3826681    0.0113978    0.6145076
24 months   ki1113344-GMS-Nepal        NEPAL          4+                   NA                 0.0803846   -0.0287429    0.1779361
24 months   ki1135781-COHORTS          INDIA          4+                   NA                 0.6282632    0.4732474    0.7376601
24 months   kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                 0.3064009    0.2005610    0.3982284
24 months   kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                 0.3155587    0.1376638    0.4567549
