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

agecat      studyid                    country                        exclfeed3    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0      169     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        4     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0       64     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        3     240
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       65     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        2     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      112     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        6     185
Birth       ki0047075b-MAL-ED          INDIA                          1                   0      118     196
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        5     196
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       71     196
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        2     196
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       59     171
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        2     171
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      106     171
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        4     171
Birth       ki0047075b-MAL-ED          PERU                           1                   0       63     272
Birth       ki0047075b-MAL-ED          PERU                           1                   1        4     272
Birth       ki0047075b-MAL-ED          PERU                           0                   0      203     272
Birth       ki0047075b-MAL-ED          PERU                           0                   1        2     272
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       32     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      200     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       37     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       76     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        4     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       4
Birth       ki1000108-IRC              INDIA                          1                   0        0      10
Birth       ki1000108-IRC              INDIA                          1                   1        0      10
Birth       ki1000108-IRC              INDIA                          0                   0       10      10
Birth       ki1000108-IRC              INDIA                          0                   1        0      10
Birth       ki1000109-EE               PAKISTAN                       1                   0        2       2
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       2
Birth       ki1000109-EE               PAKISTAN                       0                   0        0       2
Birth       ki1000109-EE               PAKISTAN                       0                   1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   0       47      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   1        1      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   0        2      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   1        0      50
Birth       ki1101329-Keneba           GAMBIA                         1                   0     1169    1354
Birth       ki1101329-Keneba           GAMBIA                         1                   1       27    1354
Birth       ki1101329-Keneba           GAMBIA                         0                   0      156    1354
Birth       ki1101329-Keneba           GAMBIA                         0                   1        2    1354
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    15308   18710
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1516   18710
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1606   18710
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      280   18710
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0       33      40
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1        4      40
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0        3      40
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1        0      40
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      169     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        3     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0       60     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        5     237
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       81     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      128     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0      136     233
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        5     233
6 months    ki0047075b-MAL-ED          INDIA                          0                   0       88     233
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        4     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       84     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      148     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0     233
6 months    ki0047075b-MAL-ED          PERU                           1                   0       63     270
6 months    ki0047075b-MAL-ED          PERU                           1                   1        4     270
6 months    ki0047075b-MAL-ED          PERU                           0                   0      196     270
6 months    ki0047075b-MAL-ED          PERU                           0                   1        7     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       31     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      211     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       63     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        5     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      163     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        9     240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      10
6 months    ki1000108-IRC              INDIA                          1                   0        0      10
6 months    ki1000108-IRC              INDIA                          1                   1        0      10
6 months    ki1000108-IRC              INDIA                          0                   0        9      10
6 months    ki1000108-IRC              INDIA                          0                   1        1      10
6 months    ki1000109-EE               PAKISTAN                       1                   0      257     371
6 months    ki1000109-EE               PAKISTAN                       1                   1       89     371
6 months    ki1000109-EE               PAKISTAN                       0                   0       20     371
6 months    ki1000109-EE               PAKISTAN                       0                   1        5     371
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      342     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       37     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   0       16     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   1        3     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      406     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        6     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      163     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        8     583
6 months    ki1101329-Keneba           GAMBIA                         1                   0     1495    1742
6 months    ki1101329-Keneba           GAMBIA                         1                   1       46    1742
6 months    ki1101329-Keneba           GAMBIA                         0                   0      191    1742
6 months    ki1101329-Keneba           GAMBIA                         0                   1       10    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      369     458
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       10     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       74     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        5     458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    14028   16281
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      764   16281
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1297   16281
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      192   16281
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0       77      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0       11      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1        1      89
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      130     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       20     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       53     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        5     208
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       70     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0       98     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0      111     225
24 months   ki0047075b-MAL-ED          INDIA                          1                   1       22     225
24 months   ki0047075b-MAL-ED          INDIA                          0                   0       86     225
24 months   ki0047075b-MAL-ED          INDIA                          0                   1        6     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       79     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        3     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      140     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        3     225
24 months   ki0047075b-MAL-ED          PERU                           1                   0       41     199
24 months   ki0047075b-MAL-ED          PERU                           1                   1        5     199
24 months   ki0047075b-MAL-ED          PERU                           0                   0      144     199
24 months   ki0047075b-MAL-ED          PERU                           0                   1        9     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       26     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      181     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       24     232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       38     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1       19     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      103     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       50     210
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        8      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      10
24 months   ki1000108-IRC              INDIA                          1                   0        0      10
24 months   ki1000108-IRC              INDIA                          1                   1        0      10
24 months   ki1000108-IRC              INDIA                          0                   0       10      10
24 months   ki1000108-IRC              INDIA                          0                   1        0      10
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      374     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       33     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      154     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       16     577
24 months   ki1101329-Keneba           GAMBIA                         1                   0     1173    1420
24 months   ki1101329-Keneba           GAMBIA                         1                   1      101    1420
24 months   ki1101329-Keneba           GAMBIA                         0                   0      129    1420
24 months   ki1101329-Keneba           GAMBIA                         0                   1       17    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      302     404
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       34     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       60     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1        8     404
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     6376    8341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1141    8341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      675    8341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      149    8341
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      132     152
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        5     152
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0       14     152
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1        1     152


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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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
![](/tmp/78d31b73-0cff-489c-9b25-b523ddc4d255/56e10fd3-c034-4059-a06f-2d6e87e8cbb8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/78d31b73-0cff-489c-9b25-b523ddc4d255/56e10fd3-c034-4059-a06f-2d6e87e8cbb8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/78d31b73-0cff-489c-9b25-b523ddc4d255/56e10fd3-c034-4059-a06f-2d6e87e8cbb8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/78d31b73-0cff-489c-9b25-b523ddc4d255/56e10fd3-c034-4059-a06f-2d6e87e8cbb8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0958183   0.0912586   0.1003779
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.0969608   0.0922600   0.1016616
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0735294   0.0113643   0.1356945
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0523256   0.0189770   0.0856741
6 months    ki1000109-EE          PAKISTAN                       1                    NA                0.2572254   0.2111063   0.3033446
6 months    ki1000109-EE          PAKISTAN                       0                    NA                0.2000000   0.0429911   0.3570089
6 months    ki1017093b-PROVIDE    BANGLADESH                     1                    NA                0.0145631   0.0029856   0.0261406
6 months    ki1017093b-PROVIDE    BANGLADESH                     0                    NA                0.0467836   0.0151051   0.0784622
6 months    ki1101329-Keneba      GAMBIA                         1                    NA                0.0299057   0.0214061   0.0384053
6 months    ki1101329-Keneba      GAMBIA                         0                    NA                0.0496591   0.0204326   0.0788856
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.0263852   0.0102313   0.0425391
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0632911   0.0095406   0.1170417
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0540917   0.0504399   0.0577436
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.0989363   0.0828448   0.1150277
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1333333   0.0788022   0.1878644
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.0862069   0.0138007   0.1586131
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1654135   0.1021271   0.2287000
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.0652174   0.0146514   0.1157834
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1086957   0.0185215   0.1988698
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.0588235   0.0214463   0.0962008
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3268994   0.2037272   0.4500715
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3252768   0.2510576   0.3994959
24 months   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                0.0810061   0.0544219   0.1075903
24 months   ki1017093b-PROVIDE    BANGLADESH                     0                    NA                0.0926911   0.0485123   0.1368700
24 months   ki1101329-Keneba      GAMBIA                         1                    NA                0.0793042   0.0644366   0.0941719
24 months   ki1101329-Keneba      GAMBIA                         0                    NA                0.1173359   0.0631581   0.1715138
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1011905   0.0689040   0.1334769
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1176471   0.0409739   0.1943202
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1541074   0.1450402   0.1631746
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1599715   0.1326761   0.1872670


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0959914   0.0914158   0.1005671
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0583333   0.0286197   0.0880470
6 months    ki1000109-EE          PAKISTAN                       NA                   NA                0.2533693   0.2090516   0.2976870
6 months    ki1017093b-PROVIDE    BANGLADESH                     NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1101329-Keneba      GAMBIA                         NA                   NA                0.0321470   0.0238614   0.0404325
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.0327511   0.0164329   0.0490693
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0587188   0.0549206   0.0625169
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1201923   0.0758932   0.1644914
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1244444   0.0812176   0.1676713
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.0703518   0.0347303   0.1059733
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3285714   0.2648934   0.3922495
24 months   ki1017093b-PROVIDE    BANGLADESH                     NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1101329-Keneba      GAMBIA                         NA                   NA                0.0830986   0.0687366   0.0974606
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1039604   0.0741620   0.1337588
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1546577   0.1455620   0.1637534


### Parameter: RR


agecat      studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0119241   1.0049256   1.0189713
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 0.7116279   0.2468544   2.0514693
6 months    ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN                       0                    1                 0.7775281   0.3475336   1.7395439
6 months    ki1017093b-PROVIDE    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH                     0                    1                 3.2124756   1.1306224   9.1277159
6 months    ki1101329-Keneba      GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA                         0                    1                 1.6605239   0.8642958   3.1902732
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 2.3987342   0.8419859   6.8337550
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.8290455   1.5464361   2.1633014
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 0.6465517   0.2540317   1.6455786
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 0.3942688   0.1660733   0.9360195
24 months   ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                 0.5411765   0.1903305   1.5387549
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9950364   0.6412505   1.5440105
24 months   ki1017093b-PROVIDE    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH                     0                    1                 1.1442485   0.6412124   2.0419203
24 months   ki1101329-Keneba      GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA                         0                    1                 1.4795673   0.8990846   2.4348314
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.1626297   0.5627332   2.4020404
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.0380521   0.8767940   1.2289685


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0001732    0.0000681    0.0002782
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0151961   -0.0657680    0.0353758
6 months    ki1000109-EE          PAKISTAN                       1                    NA                -0.0038562   -0.0149797    0.0072674
6 months    ki1017093b-PROVIDE    BANGLADESH                     1                    NA                 0.0094506   -0.0005137    0.0194149
6 months    ki1101329-Keneba      GAMBIA                         1                    NA                 0.0022413   -0.0013670    0.0058495
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0063659   -0.0033992    0.0161309
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0046270    0.0030802    0.0061738
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0131410   -0.0385801    0.0122981
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0409691   -0.0747142   -0.0072240
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0383439   -0.1134508    0.0367630
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0016721   -0.1036574    0.1070015
24 months   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                 0.0039159   -0.0112545    0.0190863
24 months   ki1101329-Keneba      GAMBIA                         1                    NA                 0.0037944   -0.0018166    0.0094053
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0027699   -0.0112459    0.0167857
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0005503   -0.0021354    0.0032360


### Parameter: PAF


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0018040    0.0007200    0.0028868
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2605042   -1.4904356    0.3620109
6 months    ki1000109-EE          PAKISTAN                       1                    NA                -0.0152195   -0.0600590    0.0277233
6 months    ki1017093b-PROVIDE    BANGLADESH                     1                    NA                 0.3935506   -0.1036844    0.6667699
6 months    ki1101329-Keneba      GAMBIA                         1                    NA                 0.0697194   -0.0479919    0.1742092
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.1943712   -0.1445616    0.4329376
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0787995    0.0531439    0.1037599
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.1093333   -0.3392733    0.0811282
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.3292159   -0.6111954   -0.0965864
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.5450311   -2.0286214    0.2118127
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0050889   -0.3731522    0.2791417
24 months   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                 0.0461117   -0.1499659    0.2087567
24 months   ki1101329-Keneba      GAMBIA                         1                    NA                 0.0456611   -0.0239224    0.1105158
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0266440   -0.1177654    0.1523965
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0035582   -0.0139269    0.0207417
