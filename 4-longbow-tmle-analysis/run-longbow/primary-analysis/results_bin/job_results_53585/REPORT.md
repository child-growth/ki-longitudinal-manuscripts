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

agecat      studyid                    country                        impfloor    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0      150     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1       35     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0       16     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        0     201
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0       53      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        2      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0        2      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0      57
Birth       ki0047075b-MAL-ED          INDIA                          1                0       29      39
Birth       ki0047075b-MAL-ED          INDIA                          1                1        4      39
Birth       ki0047075b-MAL-ED          INDIA                          0                0        5      39
Birth       ki0047075b-MAL-ED          INDIA                          0                1        1      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        7      24
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        1      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       15      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        1      24
Birth       ki0047075b-MAL-ED          PERU                           1                0       36     210
Birth       ki0047075b-MAL-ED          PERU                           1                1        1     210
Birth       ki0047075b-MAL-ED          PERU                           0                0      169     210
Birth       ki0047075b-MAL-ED          PERU                           0                1        4     210
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       76      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       10      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0        9      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        5     111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      105     111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        1     111
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       59      68
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        9      68
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0        0      68
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      68
Birth       ki1000108-IRC              INDIA                          1                0      190     253
Birth       ki1000108-IRC              INDIA                          1                1       63     253
Birth       ki1000108-IRC              INDIA                          0                0        0     253
Birth       ki1000108-IRC              INDIA                          0                1        0     253
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0      361     572
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1      144     572
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0       45     572
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1       22     572
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0      380     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1      105     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0       35     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1       12     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0      421     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1      121     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0      114     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1       51     707
Birth       ki1113344-GMS-Nepal        NEPAL                          1                0       79     503
Birth       ki1113344-GMS-Nepal        NEPAL                          1                1       18     503
Birth       ki1113344-GMS-Nepal        NEPAL                          0                0      329     503
Birth       ki1113344-GMS-Nepal        NEPAL                          0                1       77     503
Birth       ki1114097-CONTENT          PERU                           1                0        2       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1114097-CONTENT          PERU                           0                0        0       2
Birth       ki1114097-CONTENT          PERU                           0                1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     1083   17966
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      132   17966
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    14915   17966
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1     1836   17966
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      246    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1       25    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0     1910    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1      213    2394
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0      214     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        7     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0       18     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        1     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0      206     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                0      201     235
6 months    ki0047075b-MAL-ED          INDIA                          1                1       19     235
6 months    ki0047075b-MAL-ED          INDIA                          0                0       15     235
6 months    ki0047075b-MAL-ED          INDIA                          0                1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                0      101     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        2     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      124     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        2     229
6 months    ki0047075b-MAL-ED          PERU                           1                0       58     270
6 months    ki0047075b-MAL-ED          PERU                           1                1        0     270
6 months    ki0047075b-MAL-ED          PERU                           0                0      212     270
6 months    ki0047075b-MAL-ED          PERU                           0                1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0      222     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        7     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       14     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      230     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        1     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      230     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       27     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0        0     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     257
6 months    ki1000108-IRC              INDIA                          1                0      260     304
6 months    ki1000108-IRC              INDIA                          1                1       44     304
6 months    ki1000108-IRC              INDIA                          0                0        0     304
6 months    ki1000108-IRC              INDIA                          0                1        0     304
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      448     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       29     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0       52     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        6     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      535     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       22     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0       43     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        3     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      523     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       14     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      171     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        7     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       70     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        8     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      330     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1       33     441
6 months    ki1114097-CONTENT          PERU                           1                0      201     215
6 months    ki1114097-CONTENT          PERU                           1                1        0     215
6 months    ki1114097-CONTENT          PERU                           0                0       14     215
6 months    ki1114097-CONTENT          PERU                           0                1        0     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     1361   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      102   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    13972   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1     1311   16746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0      575    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       15    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3976    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      260    4826
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0      177     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1        3     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0      164     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                0      188     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1       24     227
24 months   ki0047075b-MAL-ED          INDIA                          0                0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          0                1        3     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       97     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      119     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        4     221
24 months   ki0047075b-MAL-ED          PERU                           1                0       48     201
24 months   ki0047075b-MAL-ED          PERU                           1                1        1     201
24 months   ki0047075b-MAL-ED          PERU                           0                0      149     201
24 months   ki0047075b-MAL-ED          PERU                           0                1        3     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0      219     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       12     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      196     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        4     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      247     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       13     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0        0     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     260
24 months   ki1000108-IRC              INDIA                          1                0      282     305
24 months   ki1000108-IRC              INDIA                          1                1       23     305
24 months   ki1000108-IRC              INDIA                          0                0        0     305
24 months   ki1000108-IRC              INDIA                          0                1        0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0      329     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       47     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0       44     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        6     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      478     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       55     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0       39     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        7     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      314     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       32     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      155     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       13     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       54     373
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       18     373
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      241     373
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       60     373
24 months   ki1114097-CONTENT          PERU                           1                0      154     164
24 months   ki1114097-CONTENT          PERU                           1                1        0     164
24 months   ki1114097-CONTENT          PERU                           0                0       10     164
24 months   ki1114097-CONTENT          PERU                           0                1        0     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      547    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      125    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     6163    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1     1745    8580
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0      480    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1       85    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     3329    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      835    4729


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




# Results Detail

## Results Plots
![](/tmp/a1a36c7d-e05a-4b92-aad2-e08c1965061f/3653db72-0da0-47be-988a-b6fb8e3ced44/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a1a36c7d-e05a-4b92-aad2-e08c1965061f/3653db72-0da0-47be-988a-b6fb8e3ced44/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a1a36c7d-e05a-4b92-aad2-e08c1965061f/3653db72-0da0-47be-988a-b6fb8e3ced44/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a1a36c7d-e05a-4b92-aad2-e08c1965061f/3653db72-0da0-47be-988a-b6fb8e3ced44/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2861468   0.2467461   0.3255475
Birth       ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3084161   0.1953086   0.4215236
Birth       ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.2174637   0.1807621   0.2541654
Birth       ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2379794   0.1122024   0.3637565
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2261503   0.1907964   0.2615043
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.2576218   0.1912645   0.3239791
Birth       ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1797803   0.1019040   0.2576565
Birth       ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1896663   0.1514429   0.2278896
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1218939   0.0898668   0.1539211
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1098271   0.1044743   0.1151799
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0983543   0.0454241   0.1512844
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1003319   0.0837722   0.1168916
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0607966   0.0393324   0.0822608
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1034483   0.0249989   0.1818977
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0260708   0.0125841   0.0395575
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0393258   0.0107520   0.0678997
6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1025641   0.0351589   0.1699693
6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.0909091   0.0613020   0.1205161
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0891275   0.0639203   0.1143346
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0843879   0.0794063   0.0893696
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0250392   0.0140287   0.0360497
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0614387   0.0515053   0.0713722
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1250000   0.0915325   0.1584675
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1200000   0.0298210   0.2101790
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1031895   0.0773414   0.1290376
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1521739   0.0482853   0.2560625
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0941111   0.0634868   0.1247353
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0817707   0.0417059   0.1218355
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2519296   0.1512656   0.3525935
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1995752   0.1543262   0.2448242
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.2129550   0.1621233   0.2637867
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.2185371   0.2083334   0.2287409
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1615962   0.1094452   0.2137472
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2023922   0.1873521   0.2174323


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2902098   0.2529834   0.3274362
Birth       ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1888668   0.1546279   0.2231057
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1095402   0.1044185   0.1146620
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0994152   0.0840401   0.1147903
6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0654206   0.0444484   0.0863927
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.0929705   0.0658371   0.1201040
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0843784   0.0795716   0.0891851
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0569830   0.0481380   0.0658280
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1244131   0.0930343   0.1557919
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2091153   0.1677890   0.2504415
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2179487   0.2080959   0.2278016
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1945443   0.1813282   0.2077604


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.0778248   0.7286090   1.594416
Birth       ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE      BANGLADESH   0                    1                 1.0943408   0.6288234   1.904480
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.1391617   0.8432609   1.538894
Birth       ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal     NEPAL        0                    1                 1.0549893   0.6540550   1.701695
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    1                 0.9010055   0.6891647   1.177963
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.0201076   0.5812927   1.790182
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.7015458   0.7371519   3.927628
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.5084270   0.6182469   3.680329
6 months    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal     NEPAL        0                    1                 0.8863636   0.4256670   1.845669
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 0.9468228   0.7078448   1.266483
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.4537033   1.5368857   3.917441
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 0.9600000   0.4323222   2.131743
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 1.4747035   0.7126652   3.051574
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.8688743   0.4820698   1.566044
24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 0.7921864   0.5002887   1.254394
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.0262125   0.8066968   1.305462
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.2524565   0.9014023   1.740230


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0040630   -0.0098445   0.0179704
Birth       ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0024611   -0.0089131   0.0138353
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0171312   -0.0023482   0.0366105
Birth       ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0090865   -0.0611979   0.0793709
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0123537   -0.0437351   0.0190277
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0010610   -0.0508513   0.0529732
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0046239   -0.0042649   0.0135127
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0032999   -0.0045774   0.0111771
6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0095936   -0.0701945   0.0510073
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0047491   -0.0294209   0.0199226
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0319438    0.0189794   0.0449082
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0005869   -0.0118777   0.0107040
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0038917   -0.0046819   0.0124653
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0065624   -0.0233031   0.0101782
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0428143   -0.1320175   0.0463890
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0049937   -0.0440954   0.0540827
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0329481   -0.0168416   0.0827378


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0140001   -0.0350920   0.0607639
Birth       ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0111906   -0.0418819   0.0615596
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0704170   -0.0127090   0.1467198
Birth       ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0481108   -0.4072767   0.3561373
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.1127778   -0.4392674   0.1396496
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0106720   -0.6768991   0.4163215
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0706798   -0.0737150   0.1956563
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.1123526   -0.1953934   0.3408714
6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.1031895   -0.9908790   0.3886986
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0562838   -0.3931136   0.1991066
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.5605850    0.3162787   0.7175962
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0047170   -0.0996885   0.0820526
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0363433   -0.0467606   0.1128494
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0749573   -0.2837889   0.0999040
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.2047401   -0.7156703   0.1540341
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0229122   -0.2305015   0.2241370
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.1693604   -0.1315147   0.3902314
