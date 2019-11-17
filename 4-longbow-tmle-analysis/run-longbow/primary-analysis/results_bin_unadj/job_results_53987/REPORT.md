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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                   country                        earlybf    ever_stunted   n_cell       n
---------------------------  ------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                     0       65     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                     1       73     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                     0       38     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                     1       40     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                     0       78     202
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                     1       17     202
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                     0       92     202
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                     1       15     202
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                     0       61     209
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                     1       66     209
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                     0       37     209
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                     1       45     209
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                     0       65     211
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                     1       25     211
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                     0       91     211
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                     1       30     211
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                     0       85     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                     1      117     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                     0       30     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                     1       34     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0       78     260
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       87     260
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       49     260
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       46     260
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       32     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1      152     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0        8     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       27     219
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                     0       12     206
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                     1       31     206
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                     0       26     206
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                     1      137     206
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                     0       29    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                     1       58    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                     0      417    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                     1      559    1063
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      334     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      235     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       62     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       22     653
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                     0       77     527
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                     1       77     527
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                     0      155     527
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                     1      218     527
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     3956   11219
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1     2020   11219
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     3375   11219
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1     1868   11219
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                     0       79   18308
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                     1       17   18308
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                     0    13594   18308
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                     1     4618   18308
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                     0     1421    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                     1     1056    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                     0      858    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                     1      551    3886
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                     0      107     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                     1       31     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                     0       62     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                     1       16     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                     0       83     202
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                     1       12     202
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                     0       98     202
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                     1        9     202
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                     0      103     209
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                     1       24     209
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                     0       60     209
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                     1       22     209
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                     0       84     211
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                     1        6     211
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                     0      113     211
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                     1        8     211
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                     0      132     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                     1       70     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                     0       42     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                     1       22     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      115     260
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       50     260
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       71     260
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       24     260
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      130     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       54     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       23     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       12     219
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                     0       24     206
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                     1       19     206
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                     0       66     206
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                     1       97     206
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                     0       74    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                     1       13    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                     0      778    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                     1      197    1062
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      462     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      107     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       67     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       17     653
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                     0      127     527
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                     1       27     527
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                     0      311     527
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                     1       62     527
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     5032   11210
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      941   11210
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     4260   11210
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      977   11210
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                     0       80   18265
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                     1       15   18265
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                     0    15797   18265
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                     1     2373   18265
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                     0     2239    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                     1      209    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1107    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                     1      104    3659
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                     0       58     157
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                     1       42     157
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                     0       33     157
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                     1       24     157
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                     0       69     163
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                     1        5     163
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                     0       83     163
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                     1        6     163
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                     0       55     154
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                     1       42     154
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                     0       34     154
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                     1       23     154
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                     0       62     194
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                     1       19     194
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                     0       91     194
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                     1       22     194
6-24 months                  ki0047075b-MAL-ED         PERU                           1                     0       66     149
6-24 months                  ki0047075b-MAL-ED         PERU                           1                     1       47     149
6-24 months                  ki0047075b-MAL-ED         PERU                           0                     0       24     149
6-24 months                  ki0047075b-MAL-ED         PERU                           0                     1       12     149
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0       61     156
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       37     156
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       36     156
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       22     156
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       24     144
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       98     144
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0        7     144
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       15     144
6-24 months                  ki1000109-EE              PAKISTAN                       1                     0       12      88
6-24 months                  ki1000109-EE              PAKISTAN                       1                     1       12      88
6-24 months                  ki1000109-EE              PAKISTAN                       0                     0       24      88
6-24 months                  ki1000109-EE              PAKISTAN                       0                     1       40      88
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                     0       29     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                     1       46     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                     0      375     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                     1      363     813
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      314     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      128     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       59     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        5     506
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                     0       59     366
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                     1       50     366
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                     0      101     366
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                     1      156     366
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     3065    7553
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                     1     1081    7553
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     2512    7553
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      895    7553
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                     0       11   10492
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                     1        2   10492
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                     0     8212   10492
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                     1     2267   10492
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                     0     1417    3649
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                     1      855    3649
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                     0      853    3649
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                     1      524    3649


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/7664aabb-3f80-4d6c-b9b5-750d750a61c2/b663073e-6c5d-4e29-9bed-5509f9b47b4a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7664aabb-3f80-4d6c-b9b5-750d750a61c2/b663073e-6c5d-4e29-9bed-5509f9b47b4a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7664aabb-3f80-4d6c-b9b5-750d750a61c2/b663073e-6c5d-4e29-9bed-5509f9b47b4a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7664aabb-3f80-4d6c-b9b5-750d750a61c2/b663073e-6c5d-4e29-9bed-5509f9b47b4a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5289855   0.4455107   0.6124603
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.5128205   0.4016382   0.6240028
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1789474   0.1016772   0.2562176
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1401869   0.0742407   0.2061331
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.5196850   0.4325845   0.6067856
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.5487805   0.4408172   0.6567437
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2777778   0.1850217   0.3705339
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2479339   0.1708111   0.3250567
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                0.5792079   0.5109990   0.6474169
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                0.5312500   0.4087613   0.6537387
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.5272727   0.4509479   0.6035976
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.4842105   0.3835228   0.5848982
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8260870   0.7711946   0.8809793
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7714286   0.6319952   0.9108619
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    NA                0.7209302   0.5865382   0.8553223
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    NA                0.8404908   0.7841439   0.8968377
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6666667   0.5681713   0.7651620
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.5727459   0.5190227   0.6264691
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.4130053   0.3725179   0.4534927
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.2619048   0.1678092   0.3560003
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5000000   0.4209558   0.5790442
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5844504   0.5343903   0.6345105
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.3380187   0.3260250   0.3500125
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.3562846   0.3433210   0.3692481
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1770833   0.1612631   0.1929036
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2535691   0.2456282   0.2615100
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.4263222   0.4028106   0.4498338
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3910575   0.3628358   0.4192792
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2246377   0.1548450   0.2944304
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2051282   0.1153089   0.2949475
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1263158   0.0593474   0.1932842
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.0841121   0.0313911   0.1368332
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1889764   0.1207255   0.2572273
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2682927   0.1721634   0.3644220
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0666667   0.0150094   0.1183239
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.0661157   0.0217359   0.1104956
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                0.3465347   0.2807878   0.4122815
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                0.3437500   0.2271679   0.4603321
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3030303   0.2327728   0.3732878
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2526316   0.1650860   0.3401772
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2934783   0.2275330   0.3594235
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3428571   0.1852433   0.5004710
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                0.4418605   0.2930668   0.5906542
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                0.5950920   0.5195513   0.6706328
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1494253   0.1150118   0.1838387
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2020513   0.1758054   0.2282972
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1880492   0.1559181   0.2201803
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.2023810   0.1163957   0.2883662
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1753247   0.1152124   0.2354370
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1662198   0.1284040   0.2040356
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1575423   0.1483029   0.1667817
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1865572   0.1760061   0.1971082
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1578947   0.1426694   0.1731201
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1305999   0.1248780   0.1363217
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0853758   0.0724364   0.0983152
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0858794   0.0634722   0.1082867
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4200000   0.3229548   0.5170452
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4210526   0.2924689   0.5496363
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.0675676   0.0102027   0.1249325
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.0674157   0.0151624   0.1196691
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                0.4329897   0.3340635   0.5319158
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                0.4035088   0.2757314   0.5312861
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2345679   0.1420522   0.3270836
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1946903   0.1214947   0.2678858
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                0.4159292   0.3247463   0.5071121
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                0.3333333   0.1788247   0.4878420
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3775510   0.2812632   0.4738388
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3793103   0.2540351   0.5045856
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8032787   0.7324939   0.8740635
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6818182   0.4865093   0.8771270
6-24 months                  ki1000109-EE              PAKISTAN                       1                    NA                0.5000000   0.2988157   0.7011843
6-24 months                  ki1000109-EE              PAKISTAN                       0                    NA                0.6250000   0.5057124   0.7442876
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6133333   0.4946575   0.7320092
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.4918699   0.4444057   0.5393342
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2895928   0.2472661   0.3319194
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.0781250   0.0123109   0.1439391
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.4587156   0.3650428   0.5523884
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6070039   0.5472088   0.6667990
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.2607332   0.2473685   0.2740980
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.2626945   0.2479156   0.2774733
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3763204   0.3515638   0.4010770
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3805374   0.3530822   0.4079926


### Parameter: E(Y)


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.5231481   0.4563856   0.5899107
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1584158   0.1079383   0.2088934
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.5311005   0.4632825   0.5989184
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2606635   0.2012891   0.3200380
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.5115385   0.4506616   0.5724154
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8173516   0.7660617   0.8686415
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       NA                   NA                0.8155340   0.7624394   0.8686286
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.5804327   0.5278252   0.6330403
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5597723   0.5173495   0.6021951
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.3465550   0.3377489   0.3553610
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2531680   0.2454102   0.2609258
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.4135358   0.3953404   0.4317312
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2175926   0.1624398   0.2727454
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1039604   0.0617667   0.1461541
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2200957   0.1637912   0.2764002
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.0663507   0.0326877   0.1000137
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           NA                   NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.2846154   0.2296617   0.3395691
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3013699   0.2404592   0.3622805
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       NA                   NA                0.5631068   0.4952092   0.6310044
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1977401   0.1736271   0.2218531
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1688805   0.1368637   0.2008972
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1710972   0.1641255   0.1780689
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1307419   0.1251476   0.1363361
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0855425   0.0741829   0.0969021
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4203822   0.3429219   0.4978424
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.0674847   0.0288550   0.1061143
6-24 months                  ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months                  ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months                  ki0047075b-MAL-ED         PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3782051   0.3018621   0.4545482
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7847222   0.7173567   0.8520877
6-24 months                  ki1000109-EE              PAKISTAN                       NA                   NA                0.5909091   0.4875952   0.6942230
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5628415   0.5119537   0.6137294
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.2616179   0.2517052   0.2715306
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3779118   0.3593176   0.3965059


### Parameter: RR


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9694415   0.7414200   1.2675904
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    1                 0.7833975   0.4136790   1.4835456
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    1                 1.0559867   0.8154862   1.3674147
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    1                 0.8925620   0.5655151   1.4087456
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    1                 0.9172009   0.7079876   1.1882374
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.9183303   0.7127941   1.1831335
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9338346   0.7702576   1.1321499
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    1                 1.1658421   0.9563229   1.4212644
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 0.8591189   0.7401777   0.9971730
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 0.6341439   0.4369713   0.9202856
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.1689008   0.9765422   1.3991500
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0540379   1.0018078   1.1089911
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.4319195   1.3028363   1.5737920
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 0.9172816   0.8380804   1.0039676
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9131514   0.5337915   1.5621181
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    1                 0.6658879   0.2930014   1.5133259
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    1                 1.4197154   0.8536079   2.3612620
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    1                 0.9917355   0.3557703   2.7645348
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    1                 0.9919643   0.6725506   1.4630768
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.8336842   0.5494472   1.2649611
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.1682540   0.7003501   1.9487644
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    1                 1.3467872   0.9397391   1.9301482
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.3521893   1.0252467   1.7833913
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 1.0762127   0.6807973   1.7012902
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    1                 0.9480687   0.6282575   1.4306781
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.1841723   1.0915178   1.2846917
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.8271326   0.7442792   0.9192093
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0058989   0.7431988   1.3614561
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.0025063   0.6835569   1.4702782
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                    1                 0.9977528   0.3160532   3.1498199
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    1                 0.9319131   0.6306537   1.3770822
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    1                 0.8299953   0.4813196   1.4312575
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    1                 0.8014184   0.4799246   1.3382759
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.0046598   0.6619081   1.5248965
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.8487941   0.6289904   1.1454091
6-24 months                  ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE              PAKISTAN                       0                    1                 1.2500000   0.8007576   1.9512771
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    1                 0.8019618   0.6483931   0.9919026
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 0.2697754   0.1147303   0.6343463
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.3232685   1.0548300   1.6600206
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0075219   0.9336867   1.0871960
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0112058   0.9172324   1.1148071


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0058374   -0.0560536    0.0443789
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0205315   -0.0744080    0.0333450
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0114154   -0.0430439    0.0658747
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0171143   -0.0863196    0.0520910
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0115387   -0.0453612    0.0222837
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0157343   -0.0619684    0.0304999
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0087354   -0.0328310    0.0153603
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    NA                 0.0946037   -0.0208958    0.2101033
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0862339   -0.1739786    0.0015107
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0194371   -0.0331745   -0.0056998
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0597723   -0.0065309    0.1260755
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0085362    0.0002810    0.0167914
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0760847    0.0588809    0.0932884
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0127864   -0.0260233    0.0004505
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0070451   -0.0481397    0.0340495
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0223554   -0.0675962    0.0228854
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0311193   -0.0154343    0.0776729
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0003160   -0.0393704    0.0387385
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0006700   -0.0328732    0.0315332
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0184149   -0.0595362    0.0227063
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0078916   -0.0195192    0.0353024
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                 0.1212463   -0.0110674    0.2535600
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0483148    0.0053458    0.0912839
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0018436   -0.0099701    0.0136573
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0064442   -0.0567104    0.0438220
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0135550    0.0069976    0.0201124
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0271529   -0.0429665   -0.0113393
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0001667   -0.0084241    0.0087575
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0003822   -0.0581046    0.0588689
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0000829   -0.0424513    0.0422855
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0109118   -0.0707660    0.0489424
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0232277   -0.0919977    0.0455423
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                -0.0199560   -0.0636756    0.0237635
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0006541   -0.0580911    0.0593993
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0185565   -0.0510927    0.0139797
6-24 months                  ki1000109-EE              PAKISTAN                       1                    NA                 0.0909091   -0.0795947    0.2614129
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1102583   -0.2228632    0.0023466
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0267469   -0.0383890   -0.0151048
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.1041259    0.0257820    0.1824699
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0008847   -0.0081034    0.0098727
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0015913   -0.0123485    0.0155312


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0111581   -0.1118646    0.0804269
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.1296053   -0.5244967    0.1629971
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0214939   -0.0866616    0.1188848
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0656566   -0.3670184    0.1692694
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0203265   -0.0817498    0.0376091
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0307587   -0.1253161    0.0558532
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0106874   -0.0406648    0.0184265
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    NA                 0.1160022   -0.0392024    0.2480271
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1485683   -0.3120868   -0.0054283
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0493869   -0.0849970   -0.0149456
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.1067797   -0.0202802    0.2180162
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0246316    0.0005174    0.0481641
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.3005304    0.2325741    0.3624691
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0309197   -0.0633251    0.0004981
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0323774   -0.2395249    0.1401519
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.2150376   -0.7293081    0.1462965
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1413899   -0.0964111    0.3276142
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0047619   -0.8050043    0.4406958
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0019372   -0.0995100    0.0869769
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0647011   -0.2193484    0.0703327
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0261858   -0.0691241    0.1129990
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                 0.2153168   -0.0606005    0.4194536
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.2443350    0.0142741    0.4207014
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0097086   -0.0544885    0.0699974
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0381585   -0.3827896    0.2205806
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0792237    0.0401772    0.1166818
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.2076832   -0.3379806   -0.0900745
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0019485   -0.1036534    0.0974460
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0009091   -0.1483712    0.1307840
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0012285   -0.8743831    0.4651795
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0258525   -0.1779764    0.1066261
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1099067   -0.4872812    0.1717149
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                -0.0503975   -0.1670102    0.0545628
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0017295   -0.1663327    0.1455749
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0236472   -0.0662936    0.0172936
6-24 months                  ki1000109-EE              PAKISTAN                       1                    NA                 0.1538462   -0.1925419    0.3996217
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.2191687   -0.4671379   -0.0131102
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.1017589   -0.1463941   -0.0588616
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.1850004    0.0319084    0.3138828
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0033815   -0.0315731    0.0371517
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0042109   -0.0333981    0.0404511
