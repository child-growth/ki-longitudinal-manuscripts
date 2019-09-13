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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
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

agecat      studyid                    country                        exclfeed3    wasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0      135     227
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       29     227
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       54     227
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        9     227
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       63     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        2     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      108     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        4     177
Birth       ki0047075b-MAL-ED          INDIA                          1                 0      103     193
Birth       ki0047075b-MAL-ED          INDIA                          1                 1       18     193
Birth       ki0047075b-MAL-ED          INDIA                          0                 0       57     193
Birth       ki0047075b-MAL-ED          INDIA                          0                 1       15     193
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       55     166
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        5     166
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       91     166
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1       15     166
Birth       ki0047075b-MAL-ED          PERU                           1                 0       64     265
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0     265
Birth       ki0047075b-MAL-ED          PERU                           0                 0      195     265
Birth       ki0047075b-MAL-ED          PERU                           0                 1        6     265
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       32     231
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     231
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      185     231
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       14     231
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       38     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       74     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        2     114
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0       4
Birth       ki1000108-IRC              INDIA                          1                 0        0       9
Birth       ki1000108-IRC              INDIA                          1                 1        0       9
Birth       ki1000108-IRC              INDIA                          0                 0        6       9
Birth       ki1000108-IRC              INDIA                          0                 1        3       9
Birth       ki1000109-EE               PAKISTAN                       1                 0        1       1
Birth       ki1000109-EE               PAKISTAN                       1                 1        0       1
Birth       ki1000109-EE               PAKISTAN                       0                 0        0       1
Birth       ki1000109-EE               PAKISTAN                       0                 1        0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 0       43      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 1        2      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 0        2      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 1        0      47
Birth       ki1101329-Keneba           GAMBIA                         1                 0     1129    1305
Birth       ki1101329-Keneba           GAMBIA                         1                 1       21    1305
Birth       ki1101329-Keneba           GAMBIA                         0                 0      148    1305
Birth       ki1101329-Keneba           GAMBIA                         0                 1        7    1305
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    12437   15136
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1294   15136
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0     1253   15136
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      152   15136
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0       28      31
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1        0      31
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0        3      31
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0      31
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      166     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        6     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       63     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        2     237
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       80     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      128     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 0      136     233
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        5     233
6 months    ki0047075b-MAL-ED          INDIA                          0                 0       79     233
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       13     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       84     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        1     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      145     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        3     233
6 months    ki0047075b-MAL-ED          PERU                           1                 0       67     270
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     270
6 months    ki0047075b-MAL-ED          PERU                           0                 0      203     270
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       30     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      211     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        6     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       68     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      171     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        9      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      10
6 months    ki1000108-IRC              INDIA                          1                 0        0      10
6 months    ki1000108-IRC              INDIA                          1                 1        0      10
6 months    ki1000108-IRC              INDIA                          0                 0        8      10
6 months    ki1000108-IRC              INDIA                          0                 1        2      10
6 months    ki1000109-EE               PAKISTAN                       1                 0      309     375
6 months    ki1000109-EE               PAKISTAN                       1                 1       40     375
6 months    ki1000109-EE               PAKISTAN                       0                 0       17     375
6 months    ki1000109-EE               PAKISTAN                       0                 1        9     375
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 0      330     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 1       46     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 0       17     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 1        2     395
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      401     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       11     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      157     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       13     582
6 months    ki1101329-Keneba           GAMBIA                         1                 0     1459    1742
6 months    ki1101329-Keneba           GAMBIA                         1                 1       82    1742
6 months    ki1101329-Keneba           GAMBIA                         0                 0      177    1742
6 months    ki1101329-Keneba           GAMBIA                         0                 1       24    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      342     458
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       37     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0       72     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1        7     458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    13545   16253
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1213   16253
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     1329   16253
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      166   16253
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0       74      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1        3      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0       12      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0      89
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      135     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       15     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       54     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        4     208
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       69     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0       97     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 0      119     225
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       14     225
24 months   ki0047075b-MAL-ED          INDIA                          0                 0       79     225
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       13     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       81     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        1     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      139     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        4     225
24 months   ki0047075b-MAL-ED          PERU                           1                 0       45     199
24 months   ki0047075b-MAL-ED          PERU                           1                 1        1     199
24 months   ki0047075b-MAL-ED          PERU                           0                 0      151     199
24 months   ki0047075b-MAL-ED          PERU                           0                 1        2     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       27     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      204     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       57     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      149     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     210
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        9      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      10
24 months   ki1000108-IRC              INDIA                          1                 0        0      10
24 months   ki1000108-IRC              INDIA                          1                 1        0      10
24 months   ki1000108-IRC              INDIA                          0                 0       10      10
24 months   ki1000108-IRC              INDIA                          0                 1        0      10
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      364     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       43     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      149     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       22     578
24 months   ki1101329-Keneba           GAMBIA                         1                 0     1146    1421
24 months   ki1101329-Keneba           GAMBIA                         1                 1      128    1421
24 months   ki1101329-Keneba           GAMBIA                         0                 0      128    1421
24 months   ki1101329-Keneba           GAMBIA                         0                 1       19    1421
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      270     404
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       66     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0       59     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1        9     404
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5847    8313
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1645    8313
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0      636    8313
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      185    8313
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      114     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1       22     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0       11     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1        4     151


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/0a836924-f166-42c2-8fbe-5f0f0e3357d0/dac603e8-aad5-47fd-96b8-b932f0c05055/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0a836924-f166-42c2-8fbe-5f0f0e3357d0/dac603e8-aad5-47fd-96b8-b932f0c05055/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0a836924-f166-42c2-8fbe-5f0f0e3357d0/dac603e8-aad5-47fd-96b8-b932f0c05055/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0a836924-f166-42c2-8fbe-5f0f0e3357d0/dac603e8-aad5-47fd-96b8-b932f0c05055/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1768293   0.1183089   0.2353496
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1428571   0.0562579   0.2294564
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                0.1467833   0.0835022   0.2100645
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                0.2123320   0.1166144   0.3080496
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                0.0833333   0.0131879   0.1534788
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                0.1415094   0.0749564   0.2080624
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0182609   0.0105194   0.0260024
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0451613   0.0124576   0.0778650
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0958507   0.0905881   0.1011132
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0938732   0.0870898   0.1006566
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0354610   0.0048690   0.0660530
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1413043   0.0699722   0.2126365
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1146132   0.0811475   0.1480788
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.3461538   0.1630432   0.5292645
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0271936   0.0115989   0.0427883
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0813222   0.0416317   0.1210127
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0533754   0.0421322   0.0646186
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.1161921   0.0708474   0.1615368
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0976253   0.0677111   0.1275396
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0886076   0.0258744   0.1513408
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0829333   0.0778329   0.0880338
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1021659   0.0860513   0.1182805
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1021524   0.0502357   0.1540692
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1514996   0.0801160   0.2228832
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1052918   0.0753656   0.1352181
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1300263   0.0797091   0.1803435
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1003475   0.0838305   0.1168645
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1309430   0.0760206   0.1858655
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1964286   0.1538951   0.2389621
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1323529   0.0517093   0.2129966
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2215416   0.2107718   0.2323114
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2126490   0.1801302   0.2451677


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1674009   0.1187276   0.2160742
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                0.1709845   0.1177299   0.2242391
Birth       ki0047075b-MAL-ED     NEPAL        NA                   NA                0.1204819   0.0708125   0.1701514
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0214559   0.0135914   0.0293205
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0955338   0.0902714   0.1007962
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0772532   0.0428971   0.1116093
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1306667   0.0965090   0.1648243
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0608496   0.0496205   0.0720787
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0960699   0.0690520   0.1230877
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0848459   0.0799494   0.0897424
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1200000   0.0774445   0.1625555
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1034483   0.0876083   0.1192882
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1856436   0.1476821   0.2236050
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2201371   0.2099559   0.2303184


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8078818   0.4049515    1.611731
Birth       ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED     INDIA        0                    1                 1.4465674   0.7742197    2.702795
Birth       ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED     NEPAL        0                    1                 1.6981132   0.6474557    4.453723
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 2.4731182   1.0686114    5.723609
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9793691   0.9344865    1.026407
6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 3.9847826   1.4665964   10.826764
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 3.0201923   1.6505346    5.526428
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 2.9904921   1.4076919    6.352983
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 2.1768849   1.3976105    3.390664
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9076291   0.4196337    1.963118
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.2319036   1.0428749    1.455195
24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.4830739   0.7432233    2.959418
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.2349134   0.7643867    1.995078
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.3048956   0.8316923    2.047335
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.6737968   0.3529368    1.286355
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9598603   0.8175294    1.126971


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0094284   -0.0385034   0.0196466
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                 0.0242011   -0.0183814   0.0667836
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0371486   -0.0247427   0.0990399
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0031951   -0.0008245   0.0072146
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003168   -0.0007604   0.0001267
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.0417922    0.0104310   0.0731535
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0160535    0.0018375   0.0302695
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0140435    0.0013639   0.0267231
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0074742    0.0020781   0.0128703
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0015555   -0.0135476   0.0104367
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0019125    0.0003426   0.0034824
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0178476   -0.0179028   0.0535979
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0071649   -0.0101412   0.0244710
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0031008   -0.0028012   0.0090027
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0107850   -0.0263084   0.0047384
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0014044   -0.0047592   0.0019504


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0563222   -0.2445778   0.1034577
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                 0.1415398   -0.1442165   0.3559314
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                 0.3083333   -0.4267249   0.6646846
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.1489130   -0.0509463   0.3107650
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0033166   -0.0079815   0.0013267
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.5409771    0.0503299   0.7781314
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1228583    0.0110358   0.2220370
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.3405554   -0.0031464   0.5664968
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.1228307    0.0323042   0.2048885
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0161909   -0.1489352   0.1012165
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0225413    0.0038521   0.0408798
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.1487296   -0.2049088   0.3985758
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0637128   -0.1030439   0.2052594
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0299742   -0.0286484   0.0852558
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0580952   -0.1446338   0.0219007
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0063798   -0.0217335   0.0087432
