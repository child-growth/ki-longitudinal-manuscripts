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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
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

agecat      studyid                    country                        impfloor    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0      197     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        8     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       17     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     222
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0      165     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0     167
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0        2     167
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0     167
Birth       ki0047075b-MAL-ED          INDIA                          1                 0      174     188
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        4     188
Birth       ki0047075b-MAL-ED          INDIA                          0                 0        8     188
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        2     188
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       62     159
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        2     159
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       93     159
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        2     159
Birth       ki0047075b-MAL-ED          PERU                           1                 0       54     252
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0     252
Birth       ki0047075b-MAL-ED          PERU                           0                 0      198     252
Birth       ki0047075b-MAL-ED          PERU                           0                 1        0     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      195     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       20     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        7     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      105     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       66      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        5      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      71
Birth       ki1000108-IRC              INDIA                          1                 0      215     253
Birth       ki1000108-IRC              INDIA                          1                 1       38     253
Birth       ki1000108-IRC              INDIA                          0                 0        0     253
Birth       ki1000108-IRC              INDIA                          0                 1        0     253
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0       23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       17      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0      23
Birth       ki1114097-CONTENT          PERU                           1                 0        2       2
Birth       ki1114097-CONTENT          PERU                           1                 1        0       2
Birth       ki1114097-CONTENT          PERU                           0                 0        0       2
Birth       ki1114097-CONTENT          PERU                           0                 1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0      909   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1       16   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0    14504   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      237   15666
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0       58     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      620     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        5     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      219     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        2     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       19     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0      207     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 0      215     235
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        5     235
6 months    ki0047075b-MAL-ED          INDIA                          0                 0       15     235
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0      103     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      126     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        0     229
6 months    ki0047075b-MAL-ED          PERU                           1                 0       58     270
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     270
6 months    ki0047075b-MAL-ED          PERU                           0                 0      212     270
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      226     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       14     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      231     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      253     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        4     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     257
6 months    ki1000108-IRC              INDIA                          1                 0      289     304
6 months    ki1000108-IRC              INDIA                          1                 1       15     304
6 months    ki1000108-IRC              INDIA                          0                 0        0     304
6 months    ki1000108-IRC              INDIA                          0                 1        0     304
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0      472     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1        4     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0       57     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1        1     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      535     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0       42     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        1     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      178     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       77     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1        1     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      357     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1        6     441
6 months    ki1114097-CONTENT          PERU                           1                 0      201     215
6 months    ki1114097-CONTENT          PERU                           1                 1        0     215
6 months    ki1114097-CONTENT          PERU                           0                 0       14     215
6 months    ki1114097-CONTENT          PERU                           0                 1        0     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1451   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1       12   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    15066   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      217   16746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0      589    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1        1    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     4204    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       32    4826
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      195     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      166     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 0      210     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 0       15     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       98     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      123     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        0     221
24 months   ki0047075b-MAL-ED          PERU                           1                 0       49     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1        0     201
24 months   ki0047075b-MAL-ED          PERU                           0                 0      151     201
24 months   ki0047075b-MAL-ED          PERU                           0                 1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      220     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       12     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      200     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      259     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     260
24 months   ki1000108-IRC              INDIA                          1                 0      303     305
24 months   ki1000108-IRC              INDIA                          1                 1        2     305
24 months   ki1000108-IRC              INDIA                          0                 0        0     305
24 months   ki1000108-IRC              INDIA                          0                 1        0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      368     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1        8     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0       48     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1        2     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      525     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        7     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0       44     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1        2     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      342     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      168     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       70     384
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        2     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      299     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       13     384
24 months   ki1114097-CONTENT          PERU                           1                 0      154     164
24 months   ki1114097-CONTENT          PERU                           1                 1        0     164
24 months   ki1114097-CONTENT          PERU                           0                 0       10     164
24 months   ki1114097-CONTENT          PERU                           0                 1        0     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      649    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       23    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     7599    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      309    8580
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      561    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1        4    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     4039    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      125    4729


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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







# Results Detail

## Results Plots
![](/tmp/b967918b-ee1b-4fb8-81a0-97fa97a3f6fb/d5de7728-04cf-4898-b55b-e25a987eb3ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b967918b-ee1b-4fb8-81a0-97fa97a3f6fb/d5de7728-04cf-4898-b55b-e25a987eb3ee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b967918b-ee1b-4fb8-81a0-97fa97a3f6fb/d5de7728-04cf-4898-b55b-e25a987eb3ee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b967918b-ee1b-4fb8-81a0-97fa97a3f6fb/d5de7728-04cf-4898-b55b-e25a987eb3ee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0173589   0.0074461   0.0272717
Birth       kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.0160602   0.0136092   0.0185112
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0094328   0.0026958   0.0161698
6 months    kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.0141925   0.0120344   0.0163506
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0314718   0.0185692   0.0443745
24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.0389442   0.0345050   0.0433834


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0161496   0.0137846   0.0185146
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0136749   0.0116007   0.0157492
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0386946   0.0343662   0.0430231


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   0                    1                 0.9251868   0.5101074   1.678020
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   0                    1                 1.5045915   0.7289765   3.105444
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    1                 1.2374306   0.8171920   1.873776


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0012093   -0.0108680   0.0084494
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0042421   -0.0021753   0.0106595
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0072228   -0.0049557   0.0194013


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0748786   -0.8754574   0.3839561
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.3102118   -0.3663189   0.6517594
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.1866616   -0.1984980   0.4480430
