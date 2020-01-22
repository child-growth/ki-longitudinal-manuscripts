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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        impfloor    stunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0      161     213  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       35     213  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       15     213  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        2     213  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       49      60  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        9      60  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0        2      60  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0      60  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                 0       27      41  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        8      41  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                 0        6      41  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        0      41  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        8      25  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        1      25  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       15      25  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        1      25  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                 0       30     215  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                 1        9     215  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                 0      159     215  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                 1       17     215  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       80      96  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        7      96  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0        8      96  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1      96  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        5     119  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        2     119  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       93     119  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       19     119  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       58      72  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       14      72  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      72  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      72  stunted          
Birth       ki1000108-IRC              INDIA                          1                 0      255     287  stunted          
Birth       ki1000108-IRC              INDIA                          1                 1       32     287  stunted          
Birth       ki1000108-IRC              INDIA                          0                 0        0     287  stunted          
Birth       ki1000108-IRC              INDIA                          0                 1        0     287  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0      452     605  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1       81     605  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0       58     605  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1       14     605  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0      447     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1       44     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 0       44     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 1        4     539  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      482     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       76     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      149     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       25     732  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 0       91     544  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 1        9     544  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 0      361     544  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 1       83     544  stunted          
Birth       ki1114097-CONTENT          PERU                           1                 0        2       2  stunted          
Birth       ki1114097-CONTENT          PERU                           1                 1        0       2  stunted          
Birth       ki1114097-CONTENT          PERU                           0                 0        0       2  stunted          
Birth       ki1114097-CONTENT          PERU                           0                 1        0       2  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1054   22399  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      340   22399  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0    13973   22399  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1     7032   22399  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      226    2820  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       81    2820  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1738    2820  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1      775    2820  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      179     240  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1       42     240  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       17     240  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        2     240  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0      201     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        6     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0        2     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                 0      180     235  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                 1       40     235  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                 0       11     235  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        4     235  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       97     229  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        6     229  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      121     229  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        5     229  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                 0       38     270  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                 1       20     270  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                 0      172     270  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                 1       40     270  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      184     249  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       45     249  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       16     249  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        4     249  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       12     245  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        2     245  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      174     245  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       57     245  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      170     257  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       87     257  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     257  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     257  stunted          
6 months    ki1000108-IRC              INDIA                          1                 0      235     303  stunted          
6 months    ki1000108-IRC              INDIA                          1                 1       68     303  stunted          
6 months    ki1000108-IRC              INDIA                          0                 0        0     303  stunted          
6 months    ki1000108-IRC              INDIA                          0                 1        0     303  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0      361     535  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1      116     535  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0       31     535  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1       27     535  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      477     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       80     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0       31     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       16     604  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      423     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1      114     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      142     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       36     715  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       68     441  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       10     441  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      283     441  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       80     441  stunted          
6 months    ki1114097-CONTENT          PERU                           1                 0      184     215  stunted          
6 months    ki1114097-CONTENT          PERU                           1                 1       17     215  stunted          
6 months    ki1114097-CONTENT          PERU                           0                 0       12     215  stunted          
6 months    ki1114097-CONTENT          PERU                           0                 1        2     215  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1267   16773  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      198   16773  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    11289   16773  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1     4019   16773  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0      494    4824  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1       96    4824  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3112    4824  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1     1122    4824  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      103     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       92     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0        8     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        9     212  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      160     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        7     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     169  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                 0      123     227  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       89     227  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                 0        7     227  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                 1        8     227  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       82     221  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1       16     221  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0       90     221  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1       33     221  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                 0       32     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                 1       17     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                 0       95     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                 1       57     201  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      142     238  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       78     238  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       12     238  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        6     238  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        2     212  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       10     212  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       57     212  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1      143     212  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       79     259  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1      180     259  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     259  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     259  stunted          
24 months   ki1000108-IRC              INDIA                          1                 0      188     305  stunted          
24 months   ki1000108-IRC              INDIA                          1                 1      117     305  stunted          
24 months   ki1000108-IRC              INDIA                          0                 0        0     305  stunted          
24 months   ki1000108-IRC              INDIA                          0                 1        0     305  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      171     427  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1      206     427  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0       12     427  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       38     427  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      365     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1      168     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0       23     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       22     578  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      260     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       86     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      122     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       46     514  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       48     374  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       24     374  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      170     374  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      132     374  stunted          
24 months   ki1114097-CONTENT          PERU                           1                 0      136     164  stunted          
24 months   ki1114097-CONTENT          PERU                           1                 1       18     164  stunted          
24 months   ki1114097-CONTENT          PERU                           0                 0        7     164  stunted          
24 months   ki1114097-CONTENT          PERU                           0                 1        3     164  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      481    8609  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      193    8609  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     3901    8609  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1     4034    8609  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      418    4746  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      148    4746  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     2425    4746  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1     1755    4746  stunted          


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/82cefce5-ff89-47ea-897d-1540981de193/a4b0c53a-352b-4a6e-add1-68e52fb95bc8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/82cefce5-ff89-47ea-897d-1540981de193/a4b0c53a-352b-4a6e-add1-68e52fb95bc8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/82cefce5-ff89-47ea-897d-1540981de193/a4b0c53a-352b-4a6e-add1-68e52fb95bc8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/82cefce5-ff89-47ea-897d-1540981de193/a4b0c53a-352b-4a6e-add1-68e52fb95bc8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       PERU           1                    NA                0.2307692   0.0982297   0.3633088
Birth       ki0047075b-MAL-ED       PERU           0                    NA                0.0965909   0.0528473   0.1403345
Birth       ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.1519700   0.1214680   0.1824720
Birth       ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.1944444   0.1029517   0.2859372
Birth       ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.1362007   0.1077218   0.1646797
Birth       ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.1436782   0.0915246   0.1958318
Birth       ki1113344-GMS-Nepal     NEPAL          1                    NA                0.0900000   0.0338578   0.1461422
Birth       ki1113344-GMS-Nepal     NEPAL          0                    NA                0.1869369   0.1506403   0.2232335
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2439024   0.2172373   0.2705676
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.3347774   0.3272497   0.3423052
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2638436   0.2001279   0.3275594
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.3083963   0.2873131   0.3294796
6 months    ki0047075b-MAL-ED       NEPAL          1                    NA                0.0582524   0.0129205   0.1035843
6 months    ki0047075b-MAL-ED       NEPAL          0                    NA                0.0396825   0.0055223   0.0738427
6 months    ki0047075b-MAL-ED       PERU           1                    NA                0.3448276   0.2222761   0.4673791
6 months    ki0047075b-MAL-ED       PERU           0                    NA                0.1886792   0.1359144   0.2414440
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.2431866   0.2046512   0.2817219
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.4655172   0.3370255   0.5940089
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.1436266   0.1144772   0.1727759
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.3404255   0.2048436   0.4760075
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2122905   0.1776796   0.2469014
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2022472   0.1431975   0.2612969
6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                0.1282051   0.0539283   0.2024820
6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                0.2203857   0.1776963   0.2630750
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.1351536   0.1169667   0.1533405
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2625425   0.2541433   0.2709416
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.1627119   0.1268367   0.1985870
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2649976   0.2499672   0.2800281
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.4717949   0.4015628   0.5420269
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915812   0.7672423
24 months   ki0047075b-MAL-ED       INDIA          1                    NA                0.4198113   0.3532303   0.4863924
24 months   ki0047075b-MAL-ED       INDIA          0                    NA                0.5333333   0.2803080   0.7863586
24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                0.1632653   0.0899220   0.2366086
24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                0.2682927   0.1898137   0.3467717
24 months   ki0047075b-MAL-ED       PERU           1                    NA                0.3469388   0.2133295   0.4805480
24 months   ki0047075b-MAL-ED       PERU           0                    NA                0.3750000   0.2978448   0.4521552
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3545455   0.2911994   0.4178915
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.3333333   0.1151006   0.5515661
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5464191   0.4961065   0.5967317
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.7600000   0.6414819   0.8785181
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.3151970   0.2757209   0.3546731
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.4888889   0.3427114   0.6350664
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2485549   0.2029730   0.2941368
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2738095   0.2063154   0.3413036
24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.3333333   0.2243006   0.4423661
24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.4370861   0.3810677   0.4931045
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2863501   0.2442431   0.3284572
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.5083806   0.4951416   0.5216196
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2614841   0.2195590   0.3034092
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.4198565   0.4021968   0.4375161


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
Birth       ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.2794925   0.7671368   2.1340403
Birth       ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 1.0549002   0.6938778   1.6037614
Birth       ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal     NEPAL          0                    1                 2.0770768   1.0807332   3.9919641
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.3725875   1.2294964   1.5323318
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.1688602   0.9088603   1.5032389
6 months    ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       NEPAL          0                    1                 0.6812169   0.2134571   2.1740031
6 months    ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU           0                    1                 0.5471698   0.3481127   0.8600515
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.9142390   1.3924288   2.6315967
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    1                 2.3702128   1.5158528   3.7061042
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 0.9526907   0.6819025   1.3310109
6 months    ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          0                    1                 1.7190083   0.9332000   3.1665123
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.9425490   1.6967651   2.2239358
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.6286313   1.2984713   2.0427406
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    1                 1.1221228   0.6990487   1.8012472
24 months   ki0047075b-MAL-ED       INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA          0                    1                 1.2704120   0.7703668   2.0950365
24 months   ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       NEPAL          0                    1                 1.6432927   0.9613983   2.8088367
24 months   ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU           0                    1                 1.0808824   0.6984815   1.6726379
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    1                 0.9401709   0.4769548   1.8532602
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.3908738   1.1604790   1.6670098
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    1                 1.5510582   1.1216121   2.1449318
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 1.1016058   0.8102064   1.4978100
24 months   ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          0                    1                 1.3112583   0.9228179   1.8632042
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.7753809   1.5318537   2.0576230
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.6056673   1.3656292   1.8878970


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           1                    NA                -0.1098390   -0.2243028    0.0046248
Birth       ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0050548   -0.0064750    0.0165846
Birth       ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0017774   -0.0123495    0.0159044
Birth       ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0791176    0.0244621    0.1337732
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0852194    0.0596112    0.1108276
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0397025   -0.0202873    0.0996922
6 months    ki0047075b-MAL-ED       NEPAL          1                    NA                -0.0102175   -0.0414719    0.0210369
6 months    ki0047075b-MAL-ED       PERU           1                    NA                -0.1226054   -0.2276509   -0.0175599
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0241031    0.0084230    0.0397833
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0153138    0.0037312    0.0268965
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0025003   -0.0195428    0.0145422
6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0758765    0.0052821    0.1464709
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.1162624    0.0986404    0.1338844
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0897757    0.0559510    0.1236004
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0046202   -0.0153770    0.0246175
24 months   ki0047075b-MAL-ED       INDIA          1                    NA                 0.0075015   -0.0101741    0.0251770
24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.0584542   -0.0017257    0.1186340
24 months   ki0047075b-MAL-ED       PERU           1                    NA                 0.0212204   -0.0954659    0.1379068
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                -0.0016043   -0.0188054    0.0155968
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0250095    0.0085828    0.0414361
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0135227    0.0011379    0.0259075
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0082544   -0.0183852    0.0348941
24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0837790   -0.0152909    0.1828488
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.2046476    0.1644224    0.2448728
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.1394851    0.1007798    0.1781905


### Parameter: PAF


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU           1                    NA                -0.9082840   -2.0890152   -0.1788701
Birth       ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0321912   -0.0439265    0.1027587
Birth       ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0128819   -0.0949814    0.1101200
Birth       ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.4678260    0.0402469    0.7049146
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.2589296    0.1766420    0.3329933
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.1307955   -0.0916225    0.3078958
6 months    ki0047075b-MAL-ED       NEPAL          1                    NA                -0.2127096   -1.0563292    0.2848107
6 months    ki0047075b-MAL-ED       PERU           1                    NA                -0.5517241   -1.1018571   -0.1455811
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0901761    0.0300719    0.1465557
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0963495    0.0220027    0.1650445
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0119181   -0.0964951    0.0661352
6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.3717949   -0.0815092    0.6351010
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.4624304    0.3884910    0.5274295
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.3555648    0.2062610    0.4767843
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0096979   -0.0331976    0.0508125
24 months   ki0047075b-MAL-ED       INDIA          1                    NA                 0.0175550   -0.0247338    0.0580986
24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.2636401   -0.0579426    0.4874714
24 months   ki0047075b-MAL-ED       PERU           1                    NA                 0.0576393   -0.3191428    0.3268024
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                -0.0045455   -0.0544841    0.0430282
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0437666    0.0142257    0.0724222
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0411376    0.0027310    0.0780650
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0321422   -0.0773141    0.1304777
24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.2008547   -0.0759638    0.4064547
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.4167995    0.3281756    0.4937326
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.3478699    0.2429051    0.4382823
