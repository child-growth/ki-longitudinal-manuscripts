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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/c53853fd-6ae4-41a9-8ce7-6d34fd23d572/c0881d4b-5507-4279-8fcb-90db9ec5e961/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c53853fd-6ae4-41a9-8ce7-6d34fd23d572/c0881d4b-5507-4279-8fcb-90db9ec5e961/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c53853fd-6ae4-41a9-8ce7-6d34fd23d572/c0881d4b-5507-4279-8fcb-90db9ec5e961/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c53853fd-6ae4-41a9-8ce7-6d34fd23d572/c0881d4b-5507-4279-8fcb-90db9ec5e961/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2851485   0.2457368   0.3245603
Birth       ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3283582   0.2158113   0.4409051
Birth       ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.2164948   0.1798063   0.2531834
Birth       ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2553191   0.1305422   0.3800961
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2232472   0.1881648   0.2583297
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.3090909   0.2385295   0.3796523
Birth       ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1855670   0.1081257   0.2630083
Birth       ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1896552   0.1514841   0.2278263
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1086420   0.0866167   0.1306673
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1096054   0.1043290   0.1148818
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0922509   0.0488665   0.1356353
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1003297   0.0840328   0.1166266
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0607966   0.0393324   0.0822608
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1034483   0.0249989   0.1818977
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0260708   0.0125841   0.0395575
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0393258   0.0107520   0.0678997
6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1025641   0.0351589   0.1699693
6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.0909091   0.0613020   0.1205161
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0697198   0.0529533   0.0864862
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0857816   0.0808136   0.0907496
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0254237   0.0145373   0.0363101
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0613787   0.0514581   0.0712992
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1250000   0.0915325   0.1584675
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1200000   0.0298210   0.2101790
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1031895   0.0773414   0.1290376
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1521739   0.0482853   0.2560625
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0924855   0.0619295   0.1230416
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0773810   0.0369378   0.1178241
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2500000   0.1498467   0.3501533
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1993355   0.1541431   0.2445280
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1860119   0.1527268   0.2192970
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.2206626   0.2105217   0.2308035
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1504425   0.1126099   0.1882750
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2005283   0.1865356   0.2145211


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
Birth       ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.1515340   0.7957426   1.666406
Birth       ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE      BANGLADESH   0                    1                 1.1793313   0.7030617   1.978237
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.3845229   1.0493907   1.826682
Birth       ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal     NEPAL        0                    1                 1.0220307   0.6430525   1.624357
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.0088679   0.8186237   1.243324
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.0875741   0.6634906   1.782719
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.7015458   0.7371519   3.927628
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.5084270   0.6182469   3.680329
6 months    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal     NEPAL        0                    1                 0.8863636   0.4256670   1.845669
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.2303771   0.9625980   1.572648
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.4142273   1.5276742   3.815272
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 0.9600000   0.4323222   2.131743
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 1.4747035   0.7126652   3.051574
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.8366815   0.4508456   1.552718
24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 0.7973422   0.5031900   1.263448
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.1862822   0.9889000   1.423062
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.3329237   1.0275889   1.728985


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0050613   -0.0089530   0.0190756
Birth       ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0034300   -0.0080984   0.0149583
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0200342    0.0014495   0.0386190
Birth       ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0032998   -0.0663884   0.0729879
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0008983   -0.0202786   0.0220752
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0071643   -0.0336330   0.0479615
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0046239   -0.0042649   0.0135127
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0032999   -0.0045774   0.0111771
6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0095936   -0.0701945   0.0510073
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0146586   -0.0011622   0.0304794
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0315593    0.0186653   0.0444532
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0005869   -0.0118777   0.0107040
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0038917   -0.0046819   0.0124653
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0049369   -0.0215157   0.0116418
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0408847   -0.1295758   0.0478064
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0319368    0.0004311   0.0634426
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0441018    0.0086833   0.0795204


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0174401   -0.0320458   0.0645531
Birth       ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0155961   -0.0382162   0.0666192
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0823500    0.0030235   0.1553648
Birth       ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0174715   -0.4303343   0.3250793
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0082003   -0.2052761   0.1838662
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0720642   -0.4440254   0.4037052
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0706798   -0.0737150   0.1956563
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.1123526   -0.1953934   0.3408714
6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.1031895   -0.9908790   0.3886986
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.1737247   -0.0377081   0.3420781
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.5538367    0.3129374   0.7102714
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0047170   -0.0996885   0.0820526
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0363433   -0.0467606   0.1128494
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0563905   -0.2631650   0.1165360
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.1955128   -0.7036922   0.1610862
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.1465336   -0.0113952   0.2798019
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.2266930    0.0205493   0.3894499
