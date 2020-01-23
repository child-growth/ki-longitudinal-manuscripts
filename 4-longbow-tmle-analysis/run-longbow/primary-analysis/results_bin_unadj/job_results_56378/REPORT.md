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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        impfloor    swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0      177     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        8     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       16     201  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     201  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       55      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0        2      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0      57  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1                 0       33      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        0      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0                 0        6      39  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        0      39  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        7      24  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        1      24  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       16      24  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        0      24  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1                 0       37     210  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0     210  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0                 0      173     210  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0                 1        0     210  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       86      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0        9      95  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0      95  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        5     111  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     111  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      106     111  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     111  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       67      68  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1      68  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      68  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      68  swasted          
Birth       ki1000108-IRC              INDIA                          1                 0      215     253  swasted          
Birth       ki1000108-IRC              INDIA                          1                 1       38     253  swasted          
Birth       ki1000108-IRC              INDIA                          0                 0        0     253  swasted          
Birth       ki1000108-IRC              INDIA                          0                 1        0     253  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0      470     572  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1       35     572  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0       64     572  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        3     572  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0      473     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 0       46     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 1        1     532  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      507     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       35     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      153     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       12     707  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 0       94     503  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 1        3     503  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 0      389     503  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 1       17     503  swasted          
Birth       ki1114097-CONTENT          PERU                           1                 0        2       2  swasted          
Birth       ki1114097-CONTENT          PERU                           1                 1        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           0                 0        0       2  swasted          
Birth       ki1114097-CONTENT          PERU                           0                 1        0       2  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1187   17966  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1       28   17966  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0    16431   17966  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      320   17966  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      266    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1        5    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0     2097    2394  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1       26    2394  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      219     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        2     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       19     240  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     240  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0      207     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0        2     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1                 0      214     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        6     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0                 0       15     235  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        0     235  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0      103     229  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     229  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      126     229  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        0     229  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1                 0       58     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0                 0      212     270  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     270  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      226     249  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        3     249  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       20     249  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     249  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       14     245  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     245  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      231     245  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     245  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      253     257  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        4     257  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     257  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     257  swasted          
6 months    ki1000108-IRC              INDIA                          1                 0      289     304  swasted          
6 months    ki1000108-IRC              INDIA                          1                 1       15     304  swasted          
6 months    ki1000108-IRC              INDIA                          0                 0        0     304  swasted          
6 months    ki1000108-IRC              INDIA                          0                 1        0     304  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0      472     535  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1        5     535  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0       57     535  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1        1     535  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      553     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0       45     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        1     603  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      537     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        0     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      178     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     715  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       77     441  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1        1     441  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      357     441  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1        6     441  swasted          
6 months    ki1114097-CONTENT          PERU                           1                 0      201     215  swasted          
6 months    ki1114097-CONTENT          PERU                           1                 1        0     215  swasted          
6 months    ki1114097-CONTENT          PERU                           0                 0       14     215  swasted          
6 months    ki1114097-CONTENT          PERU                           0                 1        0     215  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1451   16746  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1       12   16746  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    15066   16746  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      217   16746  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0      589    4826  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1        1    4826  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     4204    4826  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       32    4826  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      195     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       17     212  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     212  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      166     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     169  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1                 0      210     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        2     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0                 0       15     227  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0                 1        0     227  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       98     221  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     221  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      123     221  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        0     221  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1                 0       49     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1                 1        0     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0                 0      150     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0                 1        2     201  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      220     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       18     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     238  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       12     212  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     212  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      200     212  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     212  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      259     260  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1     260  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     260  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     260  swasted          
24 months   ki1000108-IRC              INDIA                          1                 0      303     305  swasted          
24 months   ki1000108-IRC              INDIA                          1                 1        2     305  swasted          
24 months   ki1000108-IRC              INDIA                          0                 0        0     305  swasted          
24 months   ki1000108-IRC              INDIA                          0                 1        0     305  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      368     426  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1        8     426  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0       48     426  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1        2     426  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      526     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        7     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0       44     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1        2     579  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      342     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      168     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     514  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       70     373  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        2     373  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      288     373  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       13     373  swasted          
24 months   ki1114097-CONTENT          PERU                           1                 0      154     164  swasted          
24 months   ki1114097-CONTENT          PERU                           1                 1        0     164  swasted          
24 months   ki1114097-CONTENT          PERU                           0                 0       10     164  swasted          
24 months   ki1114097-CONTENT          PERU                           0                 1        0     164  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      649    8580  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       23    8580  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     7599    8580  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      309    8580  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      561    4729  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1        4    4729  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     4039    4729  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      125    4729  swasted          


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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/e8c03531-db0f-4e5e-ade3-70953d596e56/e57c82d6-c900-4649-9f61-e5d862fd68bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e8c03531-db0f-4e5e-ade3-70953d596e56/e57c82d6-c900-4649-9f61-e5d862fd68bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e8c03531-db0f-4e5e-ade3-70953d596e56/e57c82d6-c900-4649-9f61-e5d862fd68bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e8c03531-db0f-4e5e-ade3-70953d596e56/e57c82d6-c900-4649-9f61-e5d862fd68bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0645756   0.0438697   0.0852816
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0727273   0.0330752   0.1123793
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0230453   0.0101574   0.0359331
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0191033   0.0166391   0.0215676
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0184502   0.0043706   0.0325298
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0122468   0.0063846   0.0181090
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0082023   0.0015133   0.0148914
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0141988   0.0120409   0.0163567
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0342262   0.0207308   0.0477216
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0390744   0.0346266   0.0435221


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0193699   0.0169591   0.0217808
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0129490   0.0075258   0.0183723
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0136749   0.0116007   0.0157492
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0386946   0.0343662   0.0430231


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.1262338   0.5983167   2.119952
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    1                 0.8289484   0.4635287   1.482444
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    1                 0.6637777   0.2691163   1.637214
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.7310683   0.7594160   3.945923
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.1416507   0.7652505   1.703189


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0019024   -0.0085404   0.0123453
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0036753   -0.0160405   0.0086898
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0055011   -0.0190592   0.0080570
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0054726   -0.0008771   0.0118222
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0044684   -0.0082535   0.0171904


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0286174   -0.1416829   0.1735147
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.1897450   -1.0303378   0.3028287
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.4248304   -2.0400920   0.3322105
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.4001916   -0.3100135   0.7253692
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.1154798   -0.2833612   0.3903696
