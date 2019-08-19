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

**Intervention Variable:** enwast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enwast    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      200     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0       40     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0      175     183
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        2     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        6     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          0                0      167     203
Birth       ki0047075b-MAL-ED          INDIA                          0                1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          1                0       32     203
Birth       ki0047075b-MAL-ED          INDIA                          1                1        1     203
Birth       ki0047075b-MAL-ED          NEPAL                          0                0      146     169
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        2     169
Birth       ki0047075b-MAL-ED          NEPAL                          1                0       21     169
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0     169
Birth       ki0047075b-MAL-ED          PERU                           0                0      271     279
Birth       ki0047075b-MAL-ED          PERU                           0                1        2     279
Birth       ki0047075b-MAL-ED          PERU                           1                0        6     279
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      240     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       20     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     260
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      115     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        2     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       74      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       11      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0      85
Birth       ki1000108-IRC              INDIA                          0                0      256     369
Birth       ki1000108-IRC              INDIA                          0                1        0     369
Birth       ki1000108-IRC              INDIA                          1                0      113     369
Birth       ki1000108-IRC              INDIA                          1                1        0     369
Birth       ki1000109-EE               PAKISTAN                       0                0        1       2
Birth       ki1000109-EE               PAKISTAN                       0                1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       0                0        6       6
Birth       ki1000109-ResPak           PAKISTAN                       0                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       1                0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       1                1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      155     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0       11     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        0     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0       21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0       20      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0      23
Birth       ki1101329-Keneba           GAMBIA                         0                0     1481    1537
Birth       ki1101329-Keneba           GAMBIA                         0                1       23    1537
Birth       ki1101329-Keneba           GAMBIA                         1                0       30    1537
Birth       ki1101329-Keneba           GAMBIA                         1                1        3    1537
Birth       ki1114097-CMIN             BANGLADESH                     0                0        5       8
Birth       ki1114097-CMIN             BANGLADESH                     0                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1                0        3       8
Birth       ki1114097-CMIN             BANGLADESH                     1                1        0       8
Birth       ki1114097-CMIN             BRAZIL                         0                0      103     111
Birth       ki1114097-CMIN             BRAZIL                         0                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         1                0        8     111
Birth       ki1114097-CMIN             BRAZIL                         1                1        0     111
Birth       ki1114097-CMIN             PERU                           0                0       10      10
Birth       ki1114097-CMIN             PERU                           0                1        0      10
Birth       ki1114097-CMIN             PERU                           1                0        0      10
Birth       ki1114097-CMIN             PERU                           1                1        0      10
Birth       ki1114097-CONTENT          PERU                           0                0        2       2
Birth       ki1114097-CONTENT          PERU                           0                1        0       2
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0                0    10936   13877
Birth       ki1119695-PROBIT           BELARUS                        0                1        0   13877
Birth       ki1119695-PROBIT           BELARUS                        1                0     2941   13877
Birth       ki1119695-PROBIT           BELARUS                        1                1        0   13877
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    10856   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0     2236   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1        0   13092
Birth       ki1135781-COHORTS          GUATEMALA                      0                0      564     762
Birth       ki1135781-COHORTS          GUATEMALA                      0                1        0     762
Birth       ki1135781-COHORTS          GUATEMALA                      1                0      198     762
Birth       ki1135781-COHORTS          GUATEMALA                      1                1        0     762
Birth       ki1135781-COHORTS          INDIA                          0                0     5097    6231
Birth       ki1135781-COHORTS          INDIA                          0                1        0    6231
Birth       ki1135781-COHORTS          INDIA                          1                0     1134    6231
Birth       ki1135781-COHORTS          INDIA                          1                1        0    6231
Birth       ki1135781-COHORTS          PHILIPPINES                    0                0     2448    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    0                1        0    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0      462    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1        0    2910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    14203   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     1542   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1        0   15745
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0      647     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0       36     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        0     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      183     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        5     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       40     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        1     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      195     202
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        7     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     202
6 months    ki0047075b-MAL-ED          INDIA                          0                0      188     233
6 months    ki0047075b-MAL-ED          INDIA                          0                1        5     233
6 months    ki0047075b-MAL-ED          INDIA                          1                0       37     233
6 months    ki0047075b-MAL-ED          INDIA                          1                1        3     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      205     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        0     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       27     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     232
6 months    ki0047075b-MAL-ED          PERU                           0                0      250     266
6 months    ki0047075b-MAL-ED          PERU                           0                1       11     266
6 months    ki0047075b-MAL-ED          PERU                           1                0        5     266
6 months    ki0047075b-MAL-ED          PERU                           1                1        0     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      232     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        4     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       16     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      223     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       12     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        3     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      239     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       27     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       82     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       15     363
6 months    ki1000108-IRC              INDIA                          0                0      242     387
6 months    ki1000108-IRC              INDIA                          0                1       14     387
6 months    ki1000108-IRC              INDIA                          1                0      121     387
6 months    ki1000108-IRC              INDIA                          1                1       10     387
6 months    ki1000109-EE               PAKISTAN                       0                0      240     326
6 months    ki1000109-EE               PAKISTAN                       0                1       54     326
6 months    ki1000109-EE               PAKISTAN                       1                0       25     326
6 months    ki1000109-EE               PAKISTAN                       1                1        7     326
6 months    ki1000109-ResPak           PAKISTAN                       0                0      152     226
6 months    ki1000109-ResPak           PAKISTAN                       0                1       31     226
6 months    ki1000109-ResPak           PAKISTAN                       1                0       31     226
6 months    ki1000109-ResPak           PAKISTAN                       1                1       12     226
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0     1004    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1       70    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      121    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       18    1213
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      272     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1       39     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       54     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       15     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      354     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1       14     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      135     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       11     514
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      452     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        5     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      113     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        6     576
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      505     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       11     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      171     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        7     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1883    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       18    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      119    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0    2020
6 months    ki1101329-Keneba           GAMBIA                         0                0     1947    2078
6 months    ki1101329-Keneba           GAMBIA                         0                1       53    2078
6 months    ki1101329-Keneba           GAMBIA                         1                0       65    2078
6 months    ki1101329-Keneba           GAMBIA                         1                1       13    2078
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      270     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1       23     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0        2     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        4     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      458     561
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1       12     561
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       84     561
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        7     561
6 months    ki1114097-CMIN             BANGLADESH                     0                0      200     232
6 months    ki1114097-CMIN             BANGLADESH                     0                1       18     232
6 months    ki1114097-CMIN             BANGLADESH                     1                0       11     232
6 months    ki1114097-CMIN             BANGLADESH                     1                1        3     232
6 months    ki1114097-CMIN             BRAZIL                         0                0       96     105
6 months    ki1114097-CMIN             BRAZIL                         0                1        2     105
6 months    ki1114097-CMIN             BRAZIL                         1                0        7     105
6 months    ki1114097-CMIN             BRAZIL                         1                1        0     105
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                0      806     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                1       16     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0       21     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1        1     844
6 months    ki1114097-CMIN             PERU                           0                0      599     637
6 months    ki1114097-CMIN             PERU                           0                1        6     637
6 months    ki1114097-CMIN             PERU                           1                0       30     637
6 months    ki1114097-CMIN             PERU                           1                1        2     637
6 months    ki1114097-CONTENT          PERU                           0                0      210     215
6 months    ki1114097-CONTENT          PERU                           0                1        4     215
6 months    ki1114097-CONTENT          PERU                           1                0        1     215
6 months    ki1114097-CONTENT          PERU                           1                1        0     215
6 months    ki1119695-PROBIT           BELARUS                        0                0    12526   15754
6 months    ki1119695-PROBIT           BELARUS                        0                1      195   15754
6 months    ki1119695-PROBIT           BELARUS                        1                0     2987   15754
6 months    ki1119695-PROBIT           BELARUS                        1                1       46   15754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     6428    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1      194    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1141    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       82    7845
6 months    ki1135781-COHORTS          GUATEMALA                      0                0      628     901
6 months    ki1135781-COHORTS          GUATEMALA                      0                1       97     901
6 months    ki1135781-COHORTS          GUATEMALA                      1                0      164     901
6 months    ki1135781-COHORTS          GUATEMALA                      1                1       12     901
6 months    ki1135781-COHORTS          INDIA                          0                0     5205    6508
6 months    ki1135781-COHORTS          INDIA                          0                1      159    6508
6 months    ki1135781-COHORTS          INDIA                          1                0     1089    6508
6 months    ki1135781-COHORTS          INDIA                          1                1       55    6508
6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2099    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    0                1       92    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0      385    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1       17    2593
6 months    ki1148112-LCNI-5           MALAWI                         0                0      759     839
6 months    ki1148112-LCNI-5           MALAWI                         0                1       66     839
6 months    ki1148112-LCNI-5           MALAWI                         1                0        9     839
6 months    ki1148112-LCNI-5           MALAWI                         1                1        5     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    12361   14236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      350   14236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     1461   14236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1       64   14236
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3862    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      148    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0      375    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       25    4410
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      147     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       17     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       32     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        5     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      156     163
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        6     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     163
24 months   ki0047075b-MAL-ED          INDIA                          0                0      162     224
24 months   ki0047075b-MAL-ED          INDIA                          0                1       22     224
24 months   ki0047075b-MAL-ED          INDIA                          1                0       34     224
24 months   ki0047075b-MAL-ED          INDIA                          1                1        6     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      193     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        6     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       25     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     225
24 months   ki0047075b-MAL-ED          PERU                           0                0      179     197
24 months   ki0047075b-MAL-ED          PERU                           0                1       14     197
24 months   ki0047075b-MAL-ED          PERU                           1                0        4     197
24 months   ki0047075b-MAL-ED          PERU                           1                1        0     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      198     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       23     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       13     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        3     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      139     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       63     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        2     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        1     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      182     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       85     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       63     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       35     365
24 months   ki1000108-IRC              INDIA                          0                0      233     388
24 months   ki1000108-IRC              INDIA                          0                1       23     388
24 months   ki1000108-IRC              INDIA                          1                0      117     388
24 months   ki1000108-IRC              INDIA                          1                1       15     388
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      237     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1       56     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       92     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       24     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      412     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       39     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      111     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        7     569
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      342     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       21     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      128     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        9     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0                0     1516    1716
24 months   ki1101329-Keneba           GAMBIA                         0                1      120    1716
24 months   ki1101329-Keneba           GAMBIA                         1                0       67    1716
24 months   ki1101329-Keneba           GAMBIA                         1                1       13    1716
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      379     497
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       42     497
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       65     497
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       11     497
24 months   ki1114097-CMIN             BANGLADESH                     0                0      159     232
24 months   ki1114097-CMIN             BANGLADESH                     0                1       58     232
24 months   ki1114097-CMIN             BANGLADESH                     1                0       10     232
24 months   ki1114097-CMIN             BANGLADESH                     1                1        5     232
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                0      478     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                1       49     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       16     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1        5     548
24 months   ki1114097-CMIN             PERU                           0                0      387     429
24 months   ki1114097-CMIN             PERU                           0                1       27     429
24 months   ki1114097-CMIN             PERU                           1                0       12     429
24 months   ki1114097-CMIN             PERU                           1                1        3     429
24 months   ki1114097-CONTENT          PERU                           0                0      160     164
24 months   ki1114097-CONTENT          PERU                           0                1        3     164
24 months   ki1114097-CONTENT          PERU                           1                0        1     164
24 months   ki1114097-CONTENT          PERU                           1                1        0     164
24 months   ki1119695-PROBIT           BELARUS                        0                0     3074    4032
24 months   ki1119695-PROBIT           BELARUS                        0                1       47    4032
24 months   ki1119695-PROBIT           BELARUS                        1                0      894    4032
24 months   ki1119695-PROBIT           BELARUS                        1                1       17    4032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      263     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       84     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       34     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       18     399
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      494    1029
24 months   ki1135781-COHORTS          GUATEMALA                      0                1      382    1029
24 months   ki1135781-COHORTS          GUATEMALA                      1                0       93    1029
24 months   ki1135781-COHORTS          GUATEMALA                      1                1       60    1029
24 months   ki1135781-COHORTS          INDIA                          0                0     3554    5071
24 months   ki1135781-COHORTS          INDIA                          0                1      698    5071
24 months   ki1135781-COHORTS          INDIA                          1                0      668    5071
24 months   ki1135781-COHORTS          INDIA                          1                1      151    5071
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     1434    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1      555    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      271    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       87    2347
24 months   ki1148112-LCNI-5           MALAWI                         0                0      505     579
24 months   ki1148112-LCNI-5           MALAWI                         0                1       64     579
24 months   ki1148112-LCNI-5           MALAWI                         1                0        7     579
24 months   ki1148112-LCNI-5           MALAWI                         1                1        3     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     5675    7237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      738    7237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      730    7237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       94    7237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     3638    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      305    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0      333    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1       39    4315


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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/6b3f1dad-4c39-40c4-87c1-783a96ae3f89/08a729dc-67ca-4765-a50e-66f22c244221/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6b3f1dad-4c39-40c4-87c1-783a96ae3f89/08a729dc-67ca-4765-a50e-66f22c244221/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6b3f1dad-4c39-40c4-87c1-783a96ae3f89/08a729dc-67ca-4765-a50e-66f22c244221/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6b3f1dad-4c39-40c4-87c1-783a96ae3f89/08a729dc-67ca-4765-a50e-66f22c244221/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.1027073   0.0662993   0.1391154
6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.1665549   0.0940035   0.2391064
6 months    ki1000108-IRC              INDIA           0                    NA                0.0568930   0.0282796   0.0855064
6 months    ki1000108-IRC              INDIA           1                    NA                0.0712774   0.0266493   0.1159055
6 months    ki1000109-EE               PAKISTAN        0                    NA                0.1836735   0.1393436   0.2280034
6 months    ki1000109-EE               PAKISTAN        1                    NA                0.2187500   0.0752971   0.3622029
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                0.1665680   0.1125433   0.2205927
6 months    ki1000109-ResPak           PAKISTAN        1                    NA                0.2898085   0.1492384   0.4303786
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.0650528   0.0461089   0.0839968
6 months    ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.1225237   0.0661569   0.1788905
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.1255366   0.0886754   0.1623978
6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.2126043   0.1167985   0.3084101
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.0378785   0.0181219   0.0576351
6 months    ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.0788338   0.0350938   0.1225738
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.0109409   0.0013953   0.0204866
6 months    ki1017093b-PROVIDE         BANGLADESH      1                    NA                0.0504202   0.0110724   0.0897679
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0213178   0.0088460   0.0337896
6 months    ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.0393258   0.0107514   0.0679003
6 months    ki1101329-Keneba           GAMBIA          0                    NA                0.0265309   0.0194914   0.0335705
6 months    ki1101329-Keneba           GAMBIA          1                    NA                0.1672283   0.0839309   0.2505257
6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                0.0255319   0.0112590   0.0398048
6 months    ki1113344-GMS-Nepal        NEPAL           1                    NA                0.0769231   0.0221254   0.1317207
6 months    ki1119695-PROBIT           BELARUS         0                    NA                0.0152897   0.0096178   0.0209617
6 months    ki1119695-PROBIT           BELARUS         1                    NA                0.0161265   0.0099129   0.0223401
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0291712   0.0251097   0.0332327
6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.0709729   0.0567242   0.0852217
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                0.1329243   0.1082084   0.1576401
6 months    ki1135781-COHORTS          GUATEMALA       1                    NA                0.0687662   0.0318175   0.1057148
6 months    ki1135781-COHORTS          INDIA           0                    NA                0.0296055   0.0250605   0.0341506
6 months    ki1135781-COHORTS          INDIA           1                    NA                0.0480509   0.0355593   0.0605426
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0415768   0.0332227   0.0499310
6 months    ki1135781-COHORTS          PHILIPPINES     1                    NA                0.0456083   0.0251067   0.0661099
6 months    ki1148112-LCNI-5           MALAWI          0                    NA                0.0800000   0.0613187   0.0986813
6 months    ki1148112-LCNI-5           MALAWI          1                    NA                0.3571429   0.1895146   0.5247712
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.0274729   0.0244005   0.0305453
6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.0427222   0.0312974   0.0541470
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0370017   0.0310243   0.0429791
6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.0629432   0.0417710   0.0841154
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.1036585   0.0568906   0.1504265
24 months   ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.1351351   0.0247048   0.2455655
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                0.1195652   0.0725799   0.1665505
24 months   ki0047075b-MAL-ED          INDIA           1                    NA                0.1500000   0.0390966   0.2609034
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.3197686   0.2638642   0.3756729
24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.3657914   0.2704888   0.4610939
24 months   ki1000108-IRC              INDIA           0                    NA                0.0897633   0.0543246   0.1252020
24 months   ki1000108-IRC              INDIA           1                    NA                0.1143632   0.0593053   0.1694212
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.1913904   0.1460789   0.2367019
24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.2092751   0.1337510   0.2847992
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.0864745   0.0605120   0.1124370
24 months   ki1017093b-PROVIDE         BANGLADESH      1                    NA                0.0593220   0.0166624   0.1019817
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0578512   0.0338106   0.0818919
24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.0656934   0.0241667   0.1072202
24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.0733609   0.0607228   0.0859989
24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.1673889   0.0870332   0.2477445
24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                0.0998265   0.0711634   0.1284896
24 months   ki1113344-GMS-Nepal        NEPAL           1                    NA                0.1464768   0.0670566   0.2258969
24 months   ki1114097-CMIN             BANGLADESH      0                    NA                0.2672811   0.2082734   0.3262889
24 months   ki1114097-CMIN             BANGLADESH      1                    NA                0.3333333   0.0942583   0.5724084
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0929791   0.0681626   0.1177956
24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.2380952   0.0557641   0.4204263
24 months   ki1119695-PROBIT           BELARUS         0                    NA                0.0150965   0.0001917   0.0300014
24 months   ki1119695-PROBIT           BELARUS         1                    NA                0.0164747   0.0031057   0.0298437
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.2440237   0.1985717   0.2894758
24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.3825614   0.2504284   0.5146944
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.4374693   0.4046333   0.4703053
24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.3837435   0.3066790   0.4608079
24 months   ki1135781-COHORTS          INDIA           0                    NA                0.1634172   0.1523067   0.1745277
24 months   ki1135781-COHORTS          INDIA           1                    NA                0.1898675   0.1631113   0.2166237
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.2754206   0.2557809   0.2950604
24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.2625975   0.2177685   0.3074264
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.1147134   0.1057491   0.1236777
24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.1181566   0.0912617   0.1450515
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0775848   0.0678409   0.0873287
24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.0999940   0.0717707   0.1282172


### Parameter: E(Y)


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.1157025   0.0827518   0.1486532
6 months    ki1000108-IRC              INDIA           NA                   NA                0.0620155   0.0379551   0.0860759
6 months    ki1000109-EE               PAKISTAN        NA                   NA                0.1871166   0.1447155   0.2295176
6 months    ki1000109-ResPak           PAKISTAN        NA                   NA                0.1902655   0.1389784   0.2415526
6 months    ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.0725474   0.0527677   0.0923271
6 months    ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.0486381   0.0300237   0.0672526
6 months    ki1017093b-PROVIDE         BANGLADESH      NA                   NA                0.0190972   0.0079103   0.0302842
6 months    ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0259366   0.0141026   0.0377706
6 months    ki1101329-Keneba           GAMBIA          NA                   NA                0.0317613   0.0242196   0.0393030
6 months    ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.0338681   0.0188862   0.0488500
6 months    ki1119695-PROBIT           BELARUS         NA                   NA                0.0152977   0.0100190   0.0205764
6 months    ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.0351816   0.0311045   0.0392588
6 months    ki1135781-COHORTS          GUATEMALA       NA                   NA                0.1209767   0.0996719   0.1422815
6 months    ki1135781-COHORTS          INDIA           NA                   NA                0.0328826   0.0285497   0.0372155
6 months    ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.0420363   0.0343109   0.0497616
6 months    ki1148112-LCNI-5           MALAWI          NA                   NA                0.0846246   0.0657805   0.1034686
6 months    kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.0290812   0.0261221   0.0320403
6 months    kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0392290   0.0334844   0.0449737
24 months   ki0047075b-MAL-ED          BANGLADESH      NA                   NA                0.1094527   0.0661839   0.1527215
24 months   ki0047075b-MAL-ED          INDIA           NA                   NA                0.1250000   0.0815935   0.1684065
24 months   ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.3287671   0.2805081   0.3770261
24 months   ki1000108-IRC              INDIA           NA                   NA                0.0979381   0.0683249   0.1275514
24 months   ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.1955990   0.1571099   0.2340881
24 months   ki1017093b-PROVIDE         BANGLADESH      NA                   NA                0.0808436   0.0584259   0.1032613
24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0600000   0.0391629   0.0808371
24 months   ki1101329-Keneba           GAMBIA          NA                   NA                0.0775058   0.0648507   0.0901609
24 months   ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.1066398   0.0794767   0.1338030
24 months   ki1114097-CMIN             BANGLADESH      NA                   NA                0.2715517   0.2141972   0.3289063
24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0985401   0.0735635   0.1235168
24 months   ki1119695-PROBIT           BELARUS         NA                   NA                0.0158730   0.0044440   0.0273021
24 months   ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.2556391   0.2127831   0.2984951
24 months   ki1135781-COHORTS          GUATEMALA       NA                   NA                0.4295432   0.3992834   0.4598031
24 months   ki1135781-COHORTS          INDIA           NA                   NA                0.1674226   0.1571457   0.1776995
24 months   ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.2735407   0.2555022   0.2915792
24 months   kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.1149648   0.1064894   0.1234401
24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0797219   0.0704575   0.0889863


### Parameter: RR


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 1.6216456   0.9243142    2.8450657
6 months    ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000108-IRC              INDIA           1                    0                 1.2528320   0.5619470    2.7931246
6 months    ki1000109-EE               PAKISTAN        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000109-EE               PAKISTAN        1                    0                 1.1909722   0.5921368    2.3954175
6 months    ki1000109-ResPak           PAKISTAN        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000109-ResPak           PAKISTAN        1                    0                 1.7398810   0.9713925    3.1163367
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA           1                    0                 1.8834489   1.1516977    3.0801310
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.6935639   0.9877396    2.9037601
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH      1                    0                 2.0812274   0.9724792    4.4540876
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH      1                    0                 4.6084034   1.4294855   14.8566610
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 1.8447395   0.7257688    4.6889094
6 months    ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba           GAMBIA          1                    0                 6.3031406   3.5854458   11.0807927
6 months    ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL           1                    0                 3.0128205   1.2181721    7.4513996
6 months    ki1119695-PROBIT           BELARUS         0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS         1                    0                 1.0547272   0.7310372    1.5217414
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 2.4329803   1.9060254    3.1056212
6 months    ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA       1                    0                 0.5173334   0.2930964    0.9131256
6 months    ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA           1                    0                 1.6230392   1.2002760    2.1947087
6 months    ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES     1                    0                 1.0969646   0.6705175    1.7946308
6 months    ki1148112-LCNI-5           MALAWI          0                    0                 1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI          1                    0                 4.4642857   2.6428796    7.5409592
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    0                 1.5550674   1.1599040    2.0848575
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.7010891   1.1716132    2.4698459
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH      1                    0                 1.3036566   0.5125857    3.3155829
24 months   ki0047075b-MAL-ED          INDIA           0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          INDIA           1                    0                 1.2545455   0.5430650    2.8981511
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 1.1439255   0.8360601    1.5651572
24 months   ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1000108-IRC              INDIA           1                    0                 1.2740536   0.6823177    2.3789686
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                 1.0934462   0.7093814    1.6854468
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH      1                    0                 0.6860061   0.3146966    1.4954226
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 1.1355579   0.5329294    2.4196293
24 months   ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba           GAMBIA          1                    0                 2.2817187   1.3706522    3.7983670
24 months   ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL           1                    0                 1.4673132   0.7942613    2.7107051
24 months   ki1114097-CMIN             BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1114097-CMIN             BANGLADESH      1                    0                 1.2471264   0.5888451    2.6413131
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    0                 2.5607386   1.1380602    5.7618938
24 months   ki1119695-PROBIT           BELARUS         0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS         1                    0                 1.0912867   0.2860770    4.1628881
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 1.5677220   1.0568797    2.3254794
24 months   ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA       1                    0                 0.8771895   0.7083967    1.0862014
24 months   ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA           1                    0                 1.1618576   0.9941106    1.3579105
24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                 0.9534415   0.7930238    1.1463094
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                 1.0300156   0.8090312    1.3113613
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.2888344   0.9495552    1.7493392


### Parameter: PAR


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0129951   -0.0087726    0.0347629
6 months    ki1000108-IRC              INDIA           0                    NA                 0.0051225   -0.0133223    0.0235672
6 months    ki1000109-EE               PAKISTAN        0                    NA                 0.0034431   -0.0113388    0.0182250
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.0236975   -0.0044074    0.0518024
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0074946   -0.0001790    0.0151681
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0165686   -0.0028696    0.0360069
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0107596   -0.0027410    0.0242602
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    NA                 0.0081563   -0.0003100    0.0166226
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0046188   -0.0033992    0.0126368
6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0052304    0.0019198    0.0085410
6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0083362   -0.0009822    0.0176546
6 months    ki1119695-PROBIT           BELARUS         0                    NA                 0.0000080   -0.0010605    0.0010764
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0060104    0.0037175    0.0083034
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0119476   -0.0208003   -0.0030949
6 months    ki1135781-COHORTS          INDIA           0                    NA                 0.0032771    0.0009457    0.0056085
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0004594   -0.0028426    0.0037614
6 months    ki1148112-LCNI-5           MALAWI          0                    NA                 0.0046246   -0.0002290    0.0094781
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0016083    0.0003411    0.0028755
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0022273    0.0002915    0.0041631
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0057942   -0.0163463    0.0279347
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                 0.0054348   -0.0161277    0.0269973
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0089986   -0.0205905    0.0385876
24 months   ki1000108-IRC              INDIA           0                    NA                 0.0081749   -0.0141105    0.0304602
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0042086   -0.0206150    0.0290322
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    NA                -0.0056309   -0.0160268    0.0047650
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0021488   -0.0110023    0.0152998
24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0041450    0.0002517    0.0080382
24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0068133   -0.0061644    0.0197910
24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.0042706   -0.0117879    0.0203291
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0055610   -0.0018669    0.0129890
24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0007765   -0.0040485    0.0056015
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0116154   -0.0069874    0.0302182
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0079260   -0.0203386    0.0044865
24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0040054   -0.0006091    0.0086200
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0018799   -0.0092072    0.0054474
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0002513   -0.0028831    0.0033858
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0021371   -0.0003870    0.0046612


### Parameter: PAF


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.1123151   -0.0941379    0.2798124
6 months    ki1000108-IRC              INDIA           0                    NA                 0.0825999   -0.2660647    0.3352450
6 months    ki1000109-EE               PAKISTAN        0                    NA                 0.0184008   -0.0637979    0.0942481
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.1245496   -0.0339458    0.2587490
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.1033057   -0.0035421    0.1987774
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.1165941   -0.0286046    0.2412965
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.2212177   -0.0972083    0.4472318
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    NA                 0.4270937   -0.0888394    0.6985583
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.1780792   -0.1821916    0.4285582
6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.1646773    0.0618205    0.2562574
6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.2461366   -0.0557717    0.4617113
6 months    ki1119695-PROBIT           BELARUS         0                    NA                 0.0005208   -0.0718733    0.0680254
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.1708404    0.1060107    0.2309689
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0987593   -0.1727464   -0.0294400
6 months    ki1135781-COHORTS          INDIA           0                    NA                 0.0996598    0.0270830    0.1668225
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0109297   -0.0708192    0.0864377
6 months    ki1148112-LCNI-5           MALAWI          0                    NA                 0.0546479   -0.0037528    0.1096507
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0553040    0.0110558    0.0975724
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0567774    0.0057826    0.1051566
24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0529379   -0.1715422    0.2344052
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                 0.0434783   -0.1449793    0.2009167
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0273707   -0.0669011    0.1133125
24 months   ki1000108-IRC              INDIA           0                    NA                 0.0834697   -0.1737197    0.2843030
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0215166   -0.1139601    0.1405170
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    NA                -0.0696520   -0.2049603    0.0504622
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0358127   -0.2098968    0.2316227
24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0534793    0.0025508    0.1018075
24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0638909   -0.0650804    0.1772451
24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.0157267   -0.0451956    0.0730980
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0564340   -0.0208643    0.1278795
24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0489179   -0.3412565    0.3255897
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0454365   -0.0300066    0.1153539
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0184522   -0.0477781    0.0100529
24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0239240   -0.0040162    0.0510867
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0068726   -0.0340113    0.0195537
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0021863   -0.0254502    0.0290780
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0268070   -0.0057204    0.0582824
