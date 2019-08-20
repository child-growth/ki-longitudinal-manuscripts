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

agecat      studyid                    country                        impfloor    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0      167     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1       38     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0       17     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        0     222
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0      159     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        6     167
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0        2     167
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0     167
Birth       ki0047075b-MAL-ED          INDIA                          1                0      150     188
Birth       ki0047075b-MAL-ED          INDIA                          1                1       28     188
Birth       ki0047075b-MAL-ED          INDIA                          0                0        8     188
Birth       ki0047075b-MAL-ED          INDIA                          0                1        2     188
Birth       ki0047075b-MAL-ED          NEPAL                          1                0       52     159
Birth       ki0047075b-MAL-ED          NEPAL                          1                1       12     159
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       87     159
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        8     159
Birth       ki0047075b-MAL-ED          PERU                           1                0       53     252
Birth       ki0047075b-MAL-ED          PERU                           1                1        1     252
Birth       ki0047075b-MAL-ED          PERU                           0                0      194     252
Birth       ki0047075b-MAL-ED          PERU                           0                1        4     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0      182     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       14     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0       20     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        7     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      104     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        2     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       59      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1       12      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0        0      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      71
Birth       ki1000108-IRC              INDIA                          1                0      190     253
Birth       ki1000108-IRC              INDIA                          1                1       63     253
Birth       ki1000108-IRC              INDIA                          0                0        0     253
Birth       ki1000108-IRC              INDIA                          0                1        0     253
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0       19      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        2      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       16      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1      23
Birth       ki1114097-CONTENT          PERU                           1                0        2       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1114097-CONTENT          PERU                           0                0        0       2
Birth       ki1114097-CONTENT          PERU                           0                1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0      844   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1       81   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    13320   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1     1421   15666
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0       55     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        3     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0      592     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1       33     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0      214     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        7     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0       18     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        1     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0      206     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                0      202     235
6 months    ki0047075b-MAL-ED          INDIA                          1                1       18     235
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      448     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       28     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0       52     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        6     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      518     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       21     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0       40     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        3     582
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
24 months   ki0047075b-MAL-ED          PERU                           0                0      150     201
24 months   ki0047075b-MAL-ED          PERU                           0                1        2     201
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      475     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       57     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0       38     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        8     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      314     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       32     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      155     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       13     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       54     384
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       18     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      252     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       60     384
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/14a73bdf-3fff-4832-b34a-0ba6c99b2ea4/4dc8d0ec-9e35-4aa2-9c6e-a0789f58e082/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/14a73bdf-3fff-4832-b34a-0ba6c99b2ea4/4dc8d0ec-9e35-4aa2-9c6e-a0789f58e082/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/14a73bdf-3fff-4832-b34a-0ba6c99b2ea4/4dc8d0ec-9e35-4aa2-9c6e-a0789f58e082/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/14a73bdf-3fff-4832-b34a-0ba6c99b2ea4/4dc8d0ec-9e35-4aa2-9c6e-a0789f58e082/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL        1                    NA                0.1875000   0.0915731   0.2834269
Birth       ki0047075b-MAL-ED       NEPAL        0                    NA                0.0842105   0.0281913   0.1402298
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1043841   0.0804533   0.1283150
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0960991   0.0907454   0.1014527
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0588235   0.0376661   0.0799809
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1034483   0.0249987   0.1818978
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0260708   0.0125841   0.0395575
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0393258   0.0107520   0.0678997
6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1025641   0.0351589   0.1699693
6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.0909091   0.0613020   0.1205161
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0885797   0.0635183   0.1136410
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0846371   0.0795988   0.0896754
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0248595   0.0138798   0.0358393
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0614554   0.0515260   0.0713847
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1250000   0.0915325   0.1584675
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1200000   0.0298210   0.2101790
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1071429   0.0808377   0.1334480
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1739130   0.0642844   0.2835417
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0929148   0.0623953   0.1234343
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0773101   0.0376071   0.1170131
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2507591   0.1492148   0.3523034
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1918861   0.1480546   0.2357177
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.2020910   0.1533244   0.2508575
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.2181819   0.2080631   0.2283007
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1544466   0.1045937   0.2042995
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2017302   0.1868517   0.2166088


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1257862   0.0740797   0.1774926
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0958764   0.0906733   0.1010796
6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0636704   0.0429419   0.0843989
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.0929705   0.0658371   0.1201040
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0843784   0.0795716   0.0891851
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0569830   0.0481380   0.0658280
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1244131   0.0930343   0.1557919
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2031250   0.1628324   0.2434176
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2179487   0.2080959   0.2278016
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1945443   0.1813282   0.2077604


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED       NEPAL        0                    1                 0.4491228   0.1940442   1.039512
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    1                 0.9206293   0.7288707   1.162838
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.7586207   0.7597329   4.070834
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.5084270   0.6182469   3.680329
6 months    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal     NEPAL        0                    1                 0.8863636   0.4256670   1.845669
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 0.9554910   0.7145768   1.277628
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.4721034   1.5455580   3.954103
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 0.9600000   0.4323222   2.131743
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 1.6231884   0.8252271   3.192746
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.8320535   0.4518965   1.532017
24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 0.7652210   0.4803614   1.219006
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.0796223   0.8470561   1.376041
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.3061487   0.9389584   1.816933


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL        1                    NA                -0.0617138   -0.1285543   0.0051267
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0085077   -0.0317599   0.0147445
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0048469   -0.0040567   0.0137504
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0032999   -0.0045774   0.0111771
6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0095936   -0.0701945   0.0510073
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0042013   -0.0286873   0.0202847
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0321235    0.0191872   0.0450598
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0005869   -0.0118777   0.0107040
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0053139   -0.0037789   0.0144067
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0053661   -0.0220205   0.0112882
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0476341   -0.1378529   0.0425847
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0158577   -0.0312023   0.0629178
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0400977   -0.0076411   0.0878365


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL        1                    NA                -0.4906250   -1.0974070   -0.0593857
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0887360   -0.3603292    0.1286330
6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0761246   -0.0726042    0.2042304
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.1123526   -0.1953934    0.3408714
6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.1031895   -0.9908790    0.3886986
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0497911   -0.3839907    0.2037075
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.5637375    0.3200220    0.7201013
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0047170   -0.0996885    0.0820526
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0472527   -0.0365321    0.1242651
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0612933   -0.2691545    0.1125246
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.2345063   -0.7675321    0.1377775
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0727591   -0.1707037    0.2655907
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.2061108   -0.0824516    0.4177476
