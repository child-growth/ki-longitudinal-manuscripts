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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        impfloor    sstunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      190     213  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        6     213  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       17     213  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     213  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       55      60  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        3      60  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0        2      60  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0      60  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       33      41  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        2      41  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          0                  0        6      41  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0      41  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        8      25  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        1      25  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       16      25  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        0      25  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           1                  0       37     215  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           1                  1        2     215  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           0                  0      174     215  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           0                  1        2     215  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       86      96  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1      96  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0        9      96  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0      96  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        5     119  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        2     119  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      106     119  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        6     119  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       68      72  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        4      72  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      72  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      72  sstunted         
Birth       ki1000108-IRC              INDIA                          1                  0      274     287  sstunted         
Birth       ki1000108-IRC              INDIA                          1                  1       13     287  sstunted         
Birth       ki1000108-IRC              INDIA                          0                  0        0     287  sstunted         
Birth       ki1000108-IRC              INDIA                          0                  1        0     287  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                  0      517     605  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                  1       16     605  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                  0       69     605  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                  1        3     605  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0      488     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1        3     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0       47     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1        1     539  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      555     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        3     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      167     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        7     732  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0       98     544  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1        2     544  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0      420     544  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1       24     544  sstunted         
Birth       ki1114097-CONTENT          PERU                           1                  0        2       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           1                  1        0       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           0                  0        0       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           0                  1        0       2  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     1307   22399  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1       87   22399  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0    18649   22399  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     2356   22399  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      289    2820  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       18    2820  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0     2298    2820  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1      215    2820  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      214     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        7     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       18     240  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     240  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0      207     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0        2     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          1                  0      212     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        8     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          0                  0       14     235  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        1     235  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0      102     229  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        1     229  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      126     229  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     229  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           1                  0       55     270  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           1                  1        3     270  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           0                  0      205     270  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           0                  1        7     270  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0      223     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        6     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       20     249  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     249  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       13     245  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        1     245  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      218     245  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       13     245  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      221     257  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       36     257  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0     257  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0     257  sstunted         
6 months    ki1000108-IRC              INDIA                          1                  0      285     303  sstunted         
6 months    ki1000108-IRC              INDIA                          1                  1       18     303  sstunted         
6 months    ki1000108-IRC              INDIA                          0                  0        0     303  sstunted         
6 months    ki1000108-IRC              INDIA                          0                  1        0     303  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  0      446     535  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  1       31     535  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  0       54     535  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  1        4     535  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      549     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        8     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0       41     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        6     604  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      521     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       16     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      171     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        7     715  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0       78     441  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        0     441  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      346     441  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       17     441  sstunted         
6 months    ki1114097-CONTENT          PERU                           1                  0      197     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           1                  1        4     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           0                  0       14     215  sstunted         
6 months    ki1114097-CONTENT          PERU                           0                  1        0     215  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     1429   16773  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1       36   16773  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0    14328   16773  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      980   16773  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0      574    4824  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       16    4824  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     3979    4824  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      255    4824  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      168     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       27     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       16     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     212  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0      166     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0        2     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     169  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          1                  0      184     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       28     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       13     227  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        2     227  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       95     221  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        3     221  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      119     221  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        4     221  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           1                  0       46     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           1                  1        3     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           0                  0      140     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           0                  1       12     201  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0      195     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1       25     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       16     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2     238  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        9     212  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        3     212  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      134     212  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       66     212  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      165     259  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       94     259  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0     259  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0     259  sstunted         
24 months   ki1000108-IRC              INDIA                          1                  0      282     305  sstunted         
24 months   ki1000108-IRC              INDIA                          1                  1       23     305  sstunted         
24 months   ki1000108-IRC              INDIA                          0                  0        0     305  sstunted         
24 months   ki1000108-IRC              INDIA                          0                  1        0     305  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0      304     427  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1       73     427  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  0       28     427  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  1       22     427  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      492     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       41     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0       34     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       11     578  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      323     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       23     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      155     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1       13     514  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       69     374  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        3     374  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      268     374  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       34     374  sstunted         
24 months   ki1114097-CONTENT          PERU                           1                  0      151     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           1                  1        3     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           0                  0       10     164  sstunted         
24 months   ki1114097-CONTENT          PERU                           0                  1        0     164  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0      629    8609  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1       45    8609  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     6637    8609  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1298    8609  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      543    4746  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       23    4746  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     3751    4746  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      429    4746  sstunted         


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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/b5802fcd-8bfe-4588-bb31-2aa913252508/bfa965b7-0299-44db-aa2e-d9358daeb8cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b5802fcd-8bfe-4588-bb31-2aa913252508/bfa965b7-0299-44db-aa2e-d9358daeb8cb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b5802fcd-8bfe-4588-bb31-2aa913252508/bfa965b7-0299-44db-aa2e-d9358daeb8cb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b5802fcd-8bfe-4588-bb31-2aa913252508/bfa965b7-0299-44db-aa2e-d9358daeb8cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0624103   0.0478121   0.0770086
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1121638   0.1074147   0.1169129
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0586319   0.0096070   0.1076568
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0855551   0.0737653   0.0973449
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0143627   0.0044736   0.0242517
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1276596   0.0321760   0.2231431
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0297952   0.0154049   0.0441854
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0393258   0.0107520   0.0678997
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0245734   0.0166417   0.0325050
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0640188   0.0599190   0.0681186
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0271186   0.0118993   0.0423380
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0602267   0.0527918   0.0676617
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1936340   0.1536999   0.2335680
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.4400000   0.3022497   0.5777503
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0769231   0.0542814   0.0995647
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2444444   0.1187717   0.3701172
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0664740   0.0402002   0.0927477
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0773810   0.0369378   0.1178241
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0667656   0.0459874   0.0875438
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1635791   0.1544106   0.1727476
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0406360   0.0213475   0.0599246
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1026316   0.0921035   0.1131597


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1090674   0.1045072   0.1136275
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0826241   0.0709364   0.0943118
6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0231788   0.0111688   0.0351888
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0321678   0.0192256   0.0451101
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0605735   0.0567154   0.0644317
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0561774   0.0493938   0.0629611
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2224824   0.1829871   0.2619778
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1559995   0.1472541   0.1647450
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0952381   0.0856745   0.1048017


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.797199   1.4161898    2.280714
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.459190   0.6242962    3.410617
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    1                 8.888298   3.2159417   24.565693
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.319874   0.5515999    3.158206
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 2.605210   1.8793792    3.611362
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.220861   1.2481235    3.951711
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 2.272329   1.5619140    3.305866
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 3.177778   1.7572854    5.746518
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.164079   0.6045058    2.241631
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 2.450051   1.7878168    3.357587
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.525629   1.5497907    4.115912


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0466570    0.0322120   0.0611020
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0239922   -0.0211387   0.0691231
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0088162    0.0009634   0.0166689
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0023727   -0.0055977   0.0103431
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0360002    0.0279832   0.0440171
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0290588    0.0141291   0.0439885
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0288485    0.0104466   0.0472504
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0130423    0.0024474   0.0236372
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0035649   -0.0122046   0.0193344
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0892340    0.0683217   0.1101462
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0546020    0.0350170   0.0741871


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4277818    0.2800381   0.5452070
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2903776   -0.5548346   0.6761302
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.3803539    0.0300934   0.6041256
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0737592   -0.2081364   0.2898798
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.5943216    0.4441778   0.7039071
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.5172681    0.1700930   0.7192094
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1296663    0.0446808   0.2070915
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1449704    0.0245485   0.2505259
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0508992   -0.2025819   0.2509513
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.5720142    0.4192279   0.6846064
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.5733215    0.3218093   0.7315585
