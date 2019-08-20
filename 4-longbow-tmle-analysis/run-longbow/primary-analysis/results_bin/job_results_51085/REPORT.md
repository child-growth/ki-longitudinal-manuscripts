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

agecat      studyid                    country                        impfloor    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0      180     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       36     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       16     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        2     234
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0      155     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1       17     174
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0        2     174
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0     174
Birth       ki0047075b-MAL-ED          INDIA                          1                 0      152     191
Birth       ki0047075b-MAL-ED          INDIA                          1                 1       29     191
Birth       ki0047075b-MAL-ED          INDIA                          0                 0        9     191
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        1     191
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       56     164
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1       10     164
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       91     164
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        7     164
Birth       ki0047075b-MAL-ED          PERU                           1                 0       46     259
Birth       ki0047075b-MAL-ED          PERU                           1                 1       10     259
Birth       ki0047075b-MAL-ED          PERU                           0                 0      182     259
Birth       ki0047075b-MAL-ED          PERU                           0                 1       21     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      176     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       21     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       20     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        7     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        1     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       94     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       15     117
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       58      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       13      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      71
Birth       ki1000108-IRC              INDIA                          1                 0      255     287
Birth       ki1000108-IRC              INDIA                          1                 1       32     287
Birth       ki1000108-IRC              INDIA                          0                 0        0     287
Birth       ki1000108-IRC              INDIA                          0                 1        0     287
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0       23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       18      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        2      27
Birth       ki1114097-CONTENT          PERU                           1                 0        2       2
Birth       ki1114097-CONTENT          PERU                           1                 1        0       2
Birth       ki1114097-CONTENT          PERU                           0                 0        0       2
Birth       ki1114097-CONTENT          PERU                           0                 1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0      808   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      268   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0    12429   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1     6058   19563
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0       46     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       25     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      529     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1      222     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      178     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1       43     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       17     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        2     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0      201     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        6     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 0      179     235
6 months    ki0047075b-MAL-ED          INDIA                          1                 1       41     235
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      175     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       56     245
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      460     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       79     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0       29     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       15     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      423     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1      114     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      142     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       36     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       68     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       10     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      285     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       78     441
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3113    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1     1121    4824
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      106     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       89     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0        8     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        9     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      161     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 0      124     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       88     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 0        8     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1        7     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       82     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1       16     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0       91     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1       32     221
24 months   ki0047075b-MAL-ED          PERU                           1                 0       32     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1       17     201
24 months   ki0047075b-MAL-ED          PERU                           0                 0       95     201
24 months   ki0047075b-MAL-ED          PERU                           0                 1       57     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      142     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       78     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        6     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        3     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        9     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       58     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1      142     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       80     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1      180     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     260
24 months   ki1000108-IRC              INDIA                          1                 0      190     305
24 months   ki1000108-IRC              INDIA                          1                 1      115     305
24 months   ki1000108-IRC              INDIA                          0                 0        0     305
24 months   ki1000108-IRC              INDIA                          0                 1        0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      177     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1      200     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0       12     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       38     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      364     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1      168     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0       23     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       22     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      260     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       86     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      122     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       46     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       48     385
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       24     385
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      176     385
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      137     385
24 months   ki1114097-CONTENT          PERU                           1                 0      136     164
24 months   ki1114097-CONTENT          PERU                           1                 1       18     164
24 months   ki1114097-CONTENT          PERU                           0                 0        7     164
24 months   ki1114097-CONTENT          PERU                           0                 1        3     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      482    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      192    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     3903    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1     4032    8609
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      421    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      145    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     2463    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1     1717    4746


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/82d4ec99-56e2-49f8-9bd4-de6ee4fd0dbb/bd248de6-8f5c-4d03-b5b4-a429b3011b70/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/82d4ec99-56e2-49f8-9bd4-de6ee4fd0dbb/bd248de6-8f5c-4d03-b5b4-a429b3011b70/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/82d4ec99-56e2-49f8-9bd4-de6ee4fd0dbb/bd248de6-8f5c-4d03-b5b4-a429b3011b70/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/82d4ec99-56e2-49f8-9bd4-de6ee4fd0dbb/bd248de6-8f5c-4d03-b5b4-a429b3011b70/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL          1                    NA                0.1515152   0.0647482   0.2382821
Birth       ki0047075b-MAL-ED       NEPAL          0                    NA                0.0714286   0.0202831   0.1225740
Birth       ki0047075b-MAL-ED       PERU           1                    NA                0.1696917   0.0564674   0.2829159
Birth       ki0047075b-MAL-ED       PERU           0                    NA                0.1083646   0.0643030   0.1524263
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2988537   0.2656466   0.3320608
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.3242486   0.3163877   0.3321095
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2829916   0.1780161   0.3879671
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2961584   0.2588170   0.3334999
6 months    ki0047075b-MAL-ED       NEPAL          1                    NA                0.0582524   0.0129205   0.1035843
6 months    ki0047075b-MAL-ED       NEPAL          0                    NA                0.0396825   0.0055223   0.0738427
6 months    ki0047075b-MAL-ED       PERU           1                    NA                0.3367668   0.2128478   0.4606859
6 months    ki0047075b-MAL-ED       PERU           0                    NA                0.1860442   0.1334116   0.2386768
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.2460634   0.2076251   0.2845016
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.4288813   0.2881528   0.5696098
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.1481003   0.1182221   0.1779784
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.3253138   0.1821994   0.4684283
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2119018   0.1774247   0.2463788
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2043946   0.1447174   0.2640717
6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                0.1223193   0.0471359   0.1975028
6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                0.2141539   0.1717854   0.2565223
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.1822131   0.1533373   0.2110889
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2561580   0.2477351   0.2645809
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.1611785   0.1160431   0.2063140
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2624270   0.2469217   0.2779323
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.4564103   0.3863340   0.5264865
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915812   0.7672423
24 months   ki0047075b-MAL-ED       INDIA          1                    NA                0.4150943   0.3486198   0.4815689
24 months   ki0047075b-MAL-ED       INDIA          0                    NA                0.4666667   0.2136414   0.7196920
24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                0.1682044   0.0935890   0.2428198
24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                0.2661903   0.1887739   0.3436067
24 months   ki0047075b-MAL-ED       PERU           1                    NA                0.3571453   0.2279499   0.4863408
24 months   ki0047075b-MAL-ED       PERU           0                    NA                0.3719222   0.2947006   0.4491438
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3545455   0.2911994   0.4178915
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.3333333   0.1151006   0.5515661
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5355781   0.4853113   0.5858449
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.7327913   0.6203990   0.8451835
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.3166418   0.2769318   0.3563518
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.5165922   0.3473951   0.6857894
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2462524   0.2011493   0.2913555
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2790246   0.2124781   0.3455710
24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.3296389   0.2203998   0.4388779
24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.4360787   0.3809838   0.4911737
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.3824412   0.3219804   0.4429020
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.4988653   0.4853427   0.5123880
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.3129945   0.2413606   0.3846284
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.4059447   0.3879358   0.4239536


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1036585   0.0568642   0.1504529
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                0.1196911   0.0800828   0.1592995
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.3233655   0.3156750   0.3310561
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                0.0480349   0.0202781   0.0757918
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                0.2222222   0.1725409   0.2719036
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.2672897   0.2297549   0.3048246
6 months    ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1995465   0.1622033   0.2368897
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2514160   0.2432636   0.2595684
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2522803   0.2382170   0.2663435
24 months   ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.2171946   0.1627082   0.2716810
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5573770   0.5102104   0.6045437
24 months   ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.4181818   0.3688464   0.4675172
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.4906493   0.4775353   0.5037634
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3923304   0.3753233   0.4093375


### Parameter: RR


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       NEPAL          0                    1                 0.4714286   0.1884624   1.1792534
Birth       ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU           0                    1                 0.6385973   0.2918786   1.3971783
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.0849744   0.9687510   1.2151413
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.0465272   0.7078250   1.5473022
6 months    ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       NEPAL          0                    1                 0.6812169   0.2134571   2.1740031
6 months    ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU           0                    1                 0.5524421   0.3477743   0.8775584
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.7429709   1.2146033   2.5011851
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH     0                    1                 2.1965785   1.3563383   3.5573403
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 0.9645723   0.6908789   1.3466900
6 months    ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          0                    1                 1.7507773   0.9173191   3.3414991
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.4058157   1.1980622   1.6495954
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.6281760   1.2224069   2.1686373
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH     0                    1                 1.1599471   0.7215350   1.8647429
24 months   ki0047075b-MAL-ED       INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA          0                    1                 1.1242424   0.6387494   1.9787432
24 months   ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       NEPAL          0                    1                 1.5825407   0.9280030   2.6987360
24 months   ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU           0                    1                 1.0413748   0.6911610   1.5690433
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    1                 0.9401709   0.4769548   1.8532602
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.3682249   1.1475740   1.6313018
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH     0                    1                 1.6314719   1.1485772   2.3173894
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 1.1330837   0.8435935   1.5219163
24 months   ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          0                    1                 1.3228984   0.9286206   1.8845804
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.3044236   1.1118683   1.5303261
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.2969710   1.0292509   1.6343281


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          1                    NA                -0.0478566   -0.1083437    0.0126305
Birth       ki0047075b-MAL-ED       PERU           1                    NA                -0.0500005   -0.1506693    0.0506682
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0245118   -0.0082534    0.0572771
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0174950   -0.0842004    0.1191905
6 months    ki0047075b-MAL-ED       NEPAL          1                    NA                -0.0102175   -0.0414719    0.0210369
6 months    ki0047075b-MAL-ED       PERU           1                    NA                -0.1145446   -0.2218996   -0.0071896
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0212263    0.0060579    0.0363947
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0131347    0.0018923    0.0243772
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0021116   -0.0191888    0.0149657
6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0772272    0.0058585    0.1485958
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0692029    0.0407945    0.0976113
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0911017    0.0470521    0.1351514
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0058539   -0.0142072    0.0259150
24 months   ki0047075b-MAL-ED       INDIA          1                    NA                 0.0034079   -0.0139598    0.0207755
24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.0489902   -0.0122973    0.1102776
24 months   ki0047075b-MAL-ED       PERU           1                    NA                 0.0110139   -0.1013493    0.1233770
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                -0.0016043   -0.0188054    0.0155968
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0217990    0.0072365    0.0363614
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0126476    0.0000124    0.0252828
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0105569   -0.0150567    0.0361706
24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0885429   -0.0110110    0.1880968
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.1082081    0.0488691    0.1675472
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0793359    0.0103014    0.1483704


### Parameter: PAF


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          1                    NA                -0.4616756   -1.1416400    0.0024021
Birth       ki0047075b-MAL-ED       PERU           1                    NA                -0.4177464   -1.5514096    0.2121983
Birth       kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0758023   -0.0311848    0.1716892
Birth       kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0582223   -0.3483110    0.3421804
6 months    ki0047075b-MAL-ED       NEPAL          1                    NA                -0.2127096   -1.0563292    0.2848107
6 months    ki0047075b-MAL-ED       PERU           1                    NA                -0.5154507   -1.0830843   -0.1024954
6 months    ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0794132    0.0213971    0.1339898
6 months    ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0814633    0.0103314    0.1474826
6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0100651   -0.0948425    0.0681476
6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.3870134   -0.0913948    0.6557134
6 months    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.2752525    0.1534570    0.3795248
6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.3611132    0.1609479    0.5135269
24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0126635   -0.0317304    0.0551472
24 months   ki0047075b-MAL-ED       INDIA          1                    NA                 0.0081430   -0.0342453    0.0487940
24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.2255589   -0.1089046    0.4591428
24 months   ki0047075b-MAL-ED       PERU           1                    NA                 0.0299160   -0.3286216    0.2916998
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                -0.0045455   -0.0544841    0.0430282
24 months   ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0391099    0.0121899    0.0652963
24 months   ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0384088   -0.0007422    0.0760282
24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0411081   -0.0640285    0.1358562
24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.2117331   -0.0665448    0.4174041
24 months   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.2205407    0.0897122    0.3325662
24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.2022171    0.0047158    0.3605268
