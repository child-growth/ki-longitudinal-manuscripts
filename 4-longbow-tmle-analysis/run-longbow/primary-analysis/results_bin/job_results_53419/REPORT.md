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

**Intervention Variable:** impfloor

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
* W_nrooms
* W_nchldlt5
* W_parity
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        impfloor    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0      161     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       35     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       15     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        2     213
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       49      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        9      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0        2      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0      60
Birth       ki0047075b-MAL-ED          INDIA                          1                 0       27      41
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        8      41
Birth       ki0047075b-MAL-ED          INDIA                          0                 0        6      41
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        0      41
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        8      25
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        1      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       15      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        1      25
Birth       ki0047075b-MAL-ED          PERU                           1                 0       30     215
Birth       ki0047075b-MAL-ED          PERU                           1                 1        9     215
Birth       ki0047075b-MAL-ED          PERU                           0                 0      159     215
Birth       ki0047075b-MAL-ED          PERU                           0                 1       17     215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       80      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        7      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0        8      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        5     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        2     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       93     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       19     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       58      72
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       14      72
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      72
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      72
Birth       ki1000108-IRC              INDIA                          1                 0      255     287
Birth       ki1000108-IRC              INDIA                          1                 1       32     287
Birth       ki1000108-IRC              INDIA                          0                 0        0     287
Birth       ki1000108-IRC              INDIA                          0                 1        0     287
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0      452     605
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1       81     605
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0       58     605
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1       14     605
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0      447     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1       44     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 0       44     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 1        4     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      482     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       76     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      149     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       25     732
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 0       91     544
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 1        9     544
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 0      361     544
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 1       83     544
Birth       ki1114097-CONTENT          PERU                           1                 0        2       2
Birth       ki1114097-CONTENT          PERU                           1                 1        0       2
Birth       ki1114097-CONTENT          PERU                           0                 0        0       2
Birth       ki1114097-CONTENT          PERU                           0                 1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1054   22399
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      340   22399
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0    13973   22399
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1     7032   22399
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      226    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       81    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1738    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1      775    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      179     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1       42     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       17     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        2     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0      201     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        6     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 0      180     235
6 months    ki0047075b-MAL-ED          INDIA                          1                 1       40     235
6 months    ki0047075b-MAL-ED          INDIA                          0                 0       11     235
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        4     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       97     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        6     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      121     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        5     229
6 months    ki0047075b-MAL-ED          PERU                           1                 0       38     270
6 months    ki0047075b-MAL-ED          PERU                           1                 1       20     270
6 months    ki0047075b-MAL-ED          PERU                           0                 0      172     270
6 months    ki0047075b-MAL-ED          PERU                           0                 1       40     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      184     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       45     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       16     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        4     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       12     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        2     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      174     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       57     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      170     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       87     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     257
6 months    ki1000108-IRC              INDIA                          1                 0      235     303
6 months    ki1000108-IRC              INDIA                          1                 1       68     303
6 months    ki1000108-IRC              INDIA                          0                 0        0     303
6 months    ki1000108-IRC              INDIA                          0                 1        0     303
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0      361     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1      116     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0       31     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1       27     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      477     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       80     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0       31     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       16     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      423     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1      114     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      142     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       36     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       68     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       10     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      283     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       80     441
6 months    ki1114097-CONTENT          PERU                           1                 0      184     215
6 months    ki1114097-CONTENT          PERU                           1                 1       17     215
6 months    ki1114097-CONTENT          PERU                           0                 0       12     215
6 months    ki1114097-CONTENT          PERU                           0                 1        2     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1267   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      198   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    11289   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1     4019   16773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0      494    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1       96    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3112    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1     1122    4824
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      103     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       92     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0        8     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        9     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      160     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        7     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 0      123     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       89     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 0        7     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1        8     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       82     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1       16     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0       90     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1       33     221
24 months   ki0047075b-MAL-ED          PERU                           1                 0       32     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1       17     201
24 months   ki0047075b-MAL-ED          PERU                           0                 0       95     201
24 months   ki0047075b-MAL-ED          PERU                           0                 1       57     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      142     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       78     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        6     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       10     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       57     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1      143     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       79     259
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1      180     259
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     259
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     259
24 months   ki1000108-IRC              INDIA                          1                 0      188     305
24 months   ki1000108-IRC              INDIA                          1                 1      117     305
24 months   ki1000108-IRC              INDIA                          0                 0        0     305
24 months   ki1000108-IRC              INDIA                          0                 1        0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      171     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1      206     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0       12     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       38     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      365     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1      168     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0       23     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       22     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      260     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       86     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      122     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       46     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       48     374
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       24     374
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      170     374
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      132     374
24 months   ki1114097-CONTENT          PERU                           1                 0      136     164
24 months   ki1114097-CONTENT          PERU                           1                 1       18     164
24 months   ki1114097-CONTENT          PERU                           0                 0        7     164
24 months   ki1114097-CONTENT          PERU                           0                 1        3     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      481    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      193    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     3901    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1     4034    8609
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      418    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      148    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     2425    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1     1755    4746


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/0b367206-6869-4505-bc18-84233a660b9b/04e02936-7abd-4dc6-ad04-de5a310df67f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0b367206-6869-4505-bc18-84233a660b9b/04e02936-7abd-4dc6-ad04-de5a310df67f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0b367206-6869-4505-bc18-84233a660b9b/04e02936-7abd-4dc6-ad04-de5a310df67f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0b367206-6869-4505-bc18-84233a660b9b/04e02936-7abd-4dc6-ad04-de5a310df67f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       PERU           1                    NA                0.2307692   0.0982297   0.3633088
Birth       ki0047075b-MAL-ED       PERU           0                    NA                0.0965909   0.0528473   0.1403345
Birth       ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.1529935   0.1224868   0.1835003
Birth       ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.1847789   0.0925706   0.2769872
Birth       ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.1371072   0.1086306   0.1655838
Birth       ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.1487539   0.0967399   0.2007679
Birth       ki1113344-GMS-Nepal     NEPAL          1                    NA                0.0900000   0.0338578   0.1461422
Birth       ki1113344-GMS-Nepal     NEPAL          0                    NA                0.1869369   0.1506403   0.2232335
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2976662   0.2643959   0.3309364
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.3303231   0.3227385   0.3379078
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2759034   0.1899253   0.3618814
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.3093121   0.2874131   0.3312111
6 months    ki0047075b-MAL-ED       NEPAL          1                    NA                0.0582524   0.0129205   0.1035843
6 months    ki0047075b-MAL-ED       NEPAL          0                    NA                0.0396825   0.0055223   0.0738427
6 months    ki0047075b-MAL-ED       PERU           1                    NA                0.3570396   0.2310060   0.4830732
6 months    ki0047075b-MAL-ED       PERU           0                    NA                0.1869080   0.1339152   0.2399009
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.2458163   0.2073539   0.2842787
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.4265560   0.2906853   0.5624268
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.1436189   0.1144612   0.1727767
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.3507519   0.2097699   0.4917340
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2120678   0.1777156   0.2464199
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2036719   0.1432639   0.2640799
6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                0.1264751   0.0528931   0.2000571
6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                0.2204820   0.1777178   0.2632462
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.1873549   0.1579196   0.2167902
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2559326   0.2475718   0.2642934
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.1720344   0.1238631   0.2202058
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2649690   0.2494487   0.2804893
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.4717949   0.4015628   0.5420269
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915812   0.7672423
24 months   ki0047075b-MAL-ED       INDIA          1                    NA                0.4198113   0.3532303   0.4863924
24 months   ki0047075b-MAL-ED       INDIA          0                    NA                0.5333333   0.2803080   0.7863586
24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                0.1555938   0.0815483   0.2296394
24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                0.2665785   0.1878491   0.3453079
24 months   ki0047075b-MAL-ED       PERU           1                    NA                0.3466895   0.2151092   0.4782699
24 months   ki0047075b-MAL-ED       PERU           0                    NA                0.3675438   0.2905589   0.4445287
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3545455   0.2911994   0.4178915
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.3333333   0.1151006   0.5515661
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5514596   0.5013425   0.6015767
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.7291020   0.6134504   0.8447537
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.3162282   0.2765732   0.3558832
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.4832299   0.3176679   0.6487920
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2543045   0.2088289   0.2997801
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2595525   0.1933514   0.3257536
24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.3554803   0.2472985   0.4636621
24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.4372117   0.3811430   0.4932805
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.3860557   0.3243991   0.4477123
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.4992870   0.4857423   0.5128317
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.3170959   0.2484581   0.3857336
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.4146209   0.3965067   0.4327351


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                0.1209302   0.0772464   0.1646140
Birth       ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.1570248   0.1280099   0.1860397
Birth       ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1691176   0.1375885   0.2006468
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.3291218   0.3217144   0.3365293
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3035461   0.2835868   0.3235054
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                0.0480349   0.0202781   0.0757918
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                0.2222222   0.1725409   0.2719036
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.2672897   0.2297549   0.3048246
6 months    ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.2040816   0.1664236   0.2417397
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2514160   0.2432636   0.2595684
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2524876   0.2384257   0.2665494
24 months   ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.2217195   0.1668277   0.2766112
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5714286   0.5244353   0.6184219
24 months   ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.4171123   0.3670728   0.4671518
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.4909978   0.4779033   0.5040923
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.4009692   0.3839829   0.4179556


### Parameter: RR


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU           0                    1                 0.4185606   0.2014240   0.8697720
Birth       ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.2077561   0.7060582   2.0659414
Birth       ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 1.0849455   0.7225708   1.6290539
Birth       ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal     NEPAL          0                    1                 2.0770768   1.0807332   3.9919641
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.1097101   0.9909770   1.2426690
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.1210883   0.8146193   1.5428545
6 months    ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       NEPAL          0                    1                 0.6812169   0.2134571   2.1740031
6 months    ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU           0                    1                 0.5234939   0.3336048   0.8214685
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.7352633   1.2202274   2.4676864
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    1                 2.4422405   1.5568761   3.8310939
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 0.9604094   0.6853530   1.3458558
6 months    ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          0                    1                 1.7432832   0.9438838   3.2197147
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.3660310   1.1656018   1.6009246
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.5402092   1.1568660   2.0505784
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    1                 1.1221228   0.6990487   1.8012472
24 months   ki0047075b-MAL-ED       INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA          0                    1                 1.2704120   0.7703668   2.0950365
24 months   ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       NEPAL          0                    1                 1.7132973   0.9765898   3.0057528
24 months   ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU           0                    1                 1.0601527   0.6920639   1.6240172
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    1                 0.9401709   0.4769548   1.8532602
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.3221313   1.1055544   1.5811354
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    1                 1.5281053   1.0609022   2.2010566
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 1.0206364   0.7513910   1.3863604
24 months   ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          0                    1                 1.2299183   0.8848228   1.7096067
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.2933031   1.1012373   1.5188669
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.3075569   1.0509757   1.6267789


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           1                    NA                -0.1098390   -0.2243028    0.0046248
Birth       ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0040313   -0.0074170    0.0154795
Birth       ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0008709   -0.0132281    0.0149699
Birth       ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0791176    0.0244621    0.1337732
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0314557   -0.0011868    0.0640981
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0276427   -0.0553187    0.1106041
6 months    ki0047075b-MAL-ED       NEPAL          1                    NA                -0.0102175   -0.0414719    0.0210369
6 months    ki0047075b-MAL-ED       PERU           1                    NA                -0.1348174   -0.2436793   -0.0259555
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0214734    0.0063374    0.0366094
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0153215    0.0037479    0.0268950
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0022776   -0.0193474    0.0147923
6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0776065    0.0074530    0.1477600
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0640611    0.0350792    0.0930429
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0804531    0.0335149    0.1273914
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0046202   -0.0153770    0.0246175
24 months   ki0047075b-MAL-ED       INDIA          1                    NA                 0.0075015   -0.0101741    0.0251770
24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.0661256    0.0050286    0.1272227
24 months   ki0047075b-MAL-ED       PERU           1                    NA                 0.0214697   -0.0927670    0.1357063
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                -0.0016043   -0.0188054    0.0155968
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0199689    0.0054860    0.0344519
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0124915   -0.0000137    0.0249968
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0025048   -0.0234500    0.0284597
24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0616320   -0.0368703    0.1601343
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.1049421    0.0445327    0.1653515
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0838734    0.0179391    0.1498076


### Parameter: PAF


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           1                    NA                -0.9082840   -2.0890152   -0.1788701
Birth       ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0256727   -0.0498728    0.0957823
Birth       ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0063119   -0.1012935    0.1034033
Birth       ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.4678260    0.0402469    0.7049146
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0955745   -0.0092075    0.1894774
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0910659   -0.2281399    0.3273069
6 months    ki0047075b-MAL-ED       NEPAL          1                    NA                -0.2127096   -1.0563292    0.2848107
6 months    ki0047075b-MAL-ED       PERU           1                    NA                -0.6066782   -1.1782897   -0.1850650
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0803375    0.0224115    0.1348311
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0963976    0.0220932    0.1650562
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0108564   -0.0956081    0.0673393
6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.3802718   -0.0702286    0.6411392
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.2548011    0.1306037    0.3612564
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.3186420    0.1052131    0.4811628
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0096979   -0.0331976    0.0508125
24 months   ki0047075b-MAL-ED       INDIA          1                    NA                 0.0175550   -0.0247338    0.0580986
24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.2982400   -0.0332872    0.5233977
24 months   ki0047075b-MAL-ED       PERU           1                    NA                 0.0583163   -0.3092604    0.3226953
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                -0.0045455   -0.0544841    0.0430282
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0349457    0.0088972    0.0603095
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0380006   -0.0008178    0.0753134
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0097536   -0.0966337    0.1058200
24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.1477587   -0.1240398    0.3538350
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.2137324    0.0804766    0.3276769
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.2091765    0.0257346    0.3580787
