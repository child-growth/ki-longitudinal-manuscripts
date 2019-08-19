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

agecat      studyid                    country                        enwast    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      174     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       27     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0       36     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        4     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0      163     183
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1       14     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        6     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          0               0      146     203
Birth       ki0047075b-MAL-ED          INDIA                          0               1       24     203
Birth       ki0047075b-MAL-ED          INDIA                          1               0       27     203
Birth       ki0047075b-MAL-ED          INDIA                          1               1        6     203
Birth       ki0047075b-MAL-ED          NEPAL                          0               0      136     169
Birth       ki0047075b-MAL-ED          NEPAL                          0               1       12     169
Birth       ki0047075b-MAL-ED          NEPAL                          1               0       19     169
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        2     169
Birth       ki0047075b-MAL-ED          PERU                           0               0      248     279
Birth       ki0047075b-MAL-ED          PERU                           0               1       25     279
Birth       ki0047075b-MAL-ED          PERU                           1               0        5     279
Birth       ki0047075b-MAL-ED          PERU                           1               1        1     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      218     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       22     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       16     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        4     260
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      104     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       12     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       65      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        9      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        9      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        2      85
Birth       ki1000108-IRC              INDIA                          0               0      232     369
Birth       ki1000108-IRC              INDIA                          0               1       24     369
Birth       ki1000108-IRC              INDIA                          1               0      111     369
Birth       ki1000108-IRC              INDIA                          1               1        2     369
Birth       ki1000109-EE               PAKISTAN                       0               0        0       2
Birth       ki1000109-EE               PAKISTAN                       0               1        1       2
Birth       ki1000109-EE               PAKISTAN                       1               0        1       2
Birth       ki1000109-EE               PAKISTAN                       1               1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       0               0        5       6
Birth       ki1000109-ResPak           PAKISTAN                       0               1        1       6
Birth       ki1000109-ResPak           PAKISTAN                       1               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       1               1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0      132     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1       23     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0        9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        2     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0       20      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0       19      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0      23
Birth       ki1101329-Keneba           GAMBIA                         0               0     1430    1537
Birth       ki1101329-Keneba           GAMBIA                         0               1       74    1537
Birth       ki1101329-Keneba           GAMBIA                         1               0       29    1537
Birth       ki1101329-Keneba           GAMBIA                         1               1        4    1537
Birth       ki1114097-CMIN             BANGLADESH                     0               0        5       8
Birth       ki1114097-CMIN             BANGLADESH                     0               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1               0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     1               1        1       8
Birth       ki1114097-CMIN             BRAZIL                         0               0      102     111
Birth       ki1114097-CMIN             BRAZIL                         0               1        1     111
Birth       ki1114097-CMIN             BRAZIL                         1               0        8     111
Birth       ki1114097-CMIN             BRAZIL                         1               1        0     111
Birth       ki1114097-CMIN             PERU                           0               0       10      10
Birth       ki1114097-CMIN             PERU                           0               1        0      10
Birth       ki1114097-CMIN             PERU                           1               0        0      10
Birth       ki1114097-CMIN             PERU                           1               1        0      10
Birth       ki1114097-CONTENT          PERU                           0               0        2       2
Birth       ki1114097-CONTENT          PERU                           0               1        0       2
Birth       ki1114097-CONTENT          PERU                           1               0        0       2
Birth       ki1114097-CONTENT          PERU                           1               1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0               0    10910   13877
Birth       ki1119695-PROBIT           BELARUS                        0               1       26   13877
Birth       ki1119695-PROBIT           BELARUS                        1               0     2941   13877
Birth       ki1119695-PROBIT           BELARUS                        1               1        0   13877
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    10252   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1      604   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     2146   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1       90   13092
Birth       ki1135781-COHORTS          GUATEMALA                      0               0      540     762
Birth       ki1135781-COHORTS          GUATEMALA                      0               1       24     762
Birth       ki1135781-COHORTS          GUATEMALA                      1               0      198     762
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        0     762
Birth       ki1135781-COHORTS          INDIA                          0               0     4772    6231
Birth       ki1135781-COHORTS          INDIA                          0               1      325    6231
Birth       ki1135781-COHORTS          INDIA                          1               0     1074    6231
Birth       ki1135781-COHORTS          INDIA                          1               1       60    6231
Birth       ki1135781-COHORTS          PHILIPPINES                    0               0     2373    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    0               1       75    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      451    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       11    2910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0    11956   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1     2247   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     1319   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      223   15745
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0      547     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1      100     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0       28     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        8     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      157     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1       31     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0       34     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        7     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      189     202
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        6     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        7     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     202
6 months    ki0047075b-MAL-ED          INDIA                          0               0      157     233
6 months    ki0047075b-MAL-ED          INDIA                          0               1       36     233
6 months    ki0047075b-MAL-ED          INDIA                          1               0       33     233
6 months    ki0047075b-MAL-ED          INDIA                          1               1        7     233
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      197     232
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        8     232
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       25     232
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        2     232
6 months    ki0047075b-MAL-ED          PERU                           0               0      205     266
6 months    ki0047075b-MAL-ED          PERU                           0               1       56     266
6 months    ki0047075b-MAL-ED          PERU                           1               0        5     266
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      189     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       47     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       15     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        2     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      185     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       50     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        2     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      192     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1       74     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0       61     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       36     363
6 months    ki1000108-IRC              INDIA                          0               0      203     387
6 months    ki1000108-IRC              INDIA                          0               1       53     387
6 months    ki1000108-IRC              INDIA                          1               0       96     387
6 months    ki1000108-IRC              INDIA                          1               1       35     387
6 months    ki1000109-EE               PAKISTAN                       0               0      161     326
6 months    ki1000109-EE               PAKISTAN                       0               1      133     326
6 months    ki1000109-EE               PAKISTAN                       1               0       16     326
6 months    ki1000109-EE               PAKISTAN                       1               1       16     326
6 months    ki1000109-ResPak           PAKISTAN                       0               0      120     226
6 months    ki1000109-ResPak           PAKISTAN                       0               1       63     226
6 months    ki1000109-ResPak           PAKISTAN                       1               0       26     226
6 months    ki1000109-ResPak           PAKISTAN                       1               1       17     226
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      831    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1      243    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0       90    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       49    1213
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0      181     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1      130     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       33     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               0      282     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               1       86     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0      107     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1       39     514
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      390     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       67     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0       98     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       21     576
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      416     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1      100     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      144     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       34     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1715    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      186    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      111    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        8    2020
6 months    ki1101329-Keneba           GAMBIA                         0               0     1741    2078
6 months    ki1101329-Keneba           GAMBIA                         0               1      259    2078
6 months    ki1101329-Keneba           GAMBIA                         1               0       49    2078
6 months    ki1101329-Keneba           GAMBIA                         1               1       29    2078
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      208     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1       85     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        5     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      371     561
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1       99     561
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0       73     561
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       18     561
6 months    ki1114097-CMIN             BANGLADESH                     0               0      142     232
6 months    ki1114097-CMIN             BANGLADESH                     0               1       76     232
6 months    ki1114097-CMIN             BANGLADESH                     1               0        8     232
6 months    ki1114097-CMIN             BANGLADESH                     1               1        6     232
6 months    ki1114097-CMIN             BRAZIL                         0               0       89     105
6 months    ki1114097-CMIN             BRAZIL                         0               1        9     105
6 months    ki1114097-CMIN             BRAZIL                         1               0        7     105
6 months    ki1114097-CMIN             BRAZIL                         1               1        0     105
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0               0      753     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0               1       69     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               0       19     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               1        3     844
6 months    ki1114097-CMIN             PERU                           0               0      567     637
6 months    ki1114097-CMIN             PERU                           0               1       38     637
6 months    ki1114097-CMIN             PERU                           1               0       27     637
6 months    ki1114097-CMIN             PERU                           1               1        5     637
6 months    ki1114097-CONTENT          PERU                           0               0      195     215
6 months    ki1114097-CONTENT          PERU                           0               1       19     215
6 months    ki1114097-CONTENT          PERU                           1               0        1     215
6 months    ki1114097-CONTENT          PERU                           1               1        0     215
6 months    ki1119695-PROBIT           BELARUS                        0               0    11917   15754
6 months    ki1119695-PROBIT           BELARUS                        0               1      804   15754
6 months    ki1119695-PROBIT           BELARUS                        1               0     2851   15754
6 months    ki1119695-PROBIT           BELARUS                        1               1      182   15754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     5734    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1      888    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      936    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      287    7845
6 months    ki1135781-COHORTS          GUATEMALA                      0               0      420     901
6 months    ki1135781-COHORTS          GUATEMALA                      0               1      305     901
6 months    ki1135781-COHORTS          GUATEMALA                      1               0      115     901
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       61     901
6 months    ki1135781-COHORTS          INDIA                          0               0     4516    6508
6 months    ki1135781-COHORTS          INDIA                          0               1      848    6508
6 months    ki1135781-COHORTS          INDIA                          1               0      943    6508
6 months    ki1135781-COHORTS          INDIA                          1               1      201    6508
6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     1760    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    0               1      431    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      332    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1       70    2593
6 months    ki1148112-LCNI-5           MALAWI                         0               0      522     839
6 months    ki1148112-LCNI-5           MALAWI                         0               1      303     839
6 months    ki1148112-LCNI-5           MALAWI                         1               0        8     839
6 months    ki1148112-LCNI-5           MALAWI                         1               1        6     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0    10427   14236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1     2284   14236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     1229   14236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      296   14236
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     3164    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1      846    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0      295    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      105    4410
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0       91     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       73     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       22     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       15     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      151     163
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        6     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        6     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     163
24 months   ki0047075b-MAL-ED          INDIA                          0               0      102     224
24 months   ki0047075b-MAL-ED          INDIA                          0               1       82     224
24 months   ki0047075b-MAL-ED          INDIA                          1               0       30     224
24 months   ki0047075b-MAL-ED          INDIA                          1               1       10     224
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      160     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               1       39     225
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       19     225
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        7     225
24 months   ki0047075b-MAL-ED          PERU                           0               0      122     197
24 months   ki0047075b-MAL-ED          PERU                           0               1       71     197
24 months   ki0047075b-MAL-ED          PERU                           1               0        3     197
24 months   ki0047075b-MAL-ED          PERU                           1               1        1     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      140     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       81     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       13     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        3     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       58     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1      144     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        2     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0       73     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1      194     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       30     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       68     365
24 months   ki1000108-IRC              INDIA                          0               0      162     388
24 months   ki1000108-IRC              INDIA                          0               1       94     388
24 months   ki1000108-IRC              INDIA                          1               0       69     388
24 months   ki1000108-IRC              INDIA                          1               1       63     388
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               0      134     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               1      159     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               0       57     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               1       59     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      302     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1      149     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       82     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       36     569
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      275     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       88     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      101     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       36     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0               0     1095    1716
24 months   ki1101329-Keneba           GAMBIA                         0               1      541    1716
24 months   ki1101329-Keneba           GAMBIA                         1               0       49    1716
24 months   ki1101329-Keneba           GAMBIA                         1               1       31    1716
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      227     497
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1      194     497
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       49     497
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       27     497
24 months   ki1114097-CMIN             BANGLADESH                     0               0       71     232
24 months   ki1114097-CMIN             BANGLADESH                     0               1      146     232
24 months   ki1114097-CMIN             BANGLADESH                     1               0        6     232
24 months   ki1114097-CMIN             BANGLADESH                     1               1        9     232
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0               0      353     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0               1      174     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               0       11     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               1       10     548
24 months   ki1114097-CMIN             PERU                           0               0      284     429
24 months   ki1114097-CMIN             PERU                           0               1      130     429
24 months   ki1114097-CMIN             PERU                           1               0        8     429
24 months   ki1114097-CMIN             PERU                           1               1        7     429
24 months   ki1114097-CONTENT          PERU                           0               0      142     164
24 months   ki1114097-CONTENT          PERU                           0               1       21     164
24 months   ki1114097-CONTENT          PERU                           1               0        1     164
24 months   ki1114097-CONTENT          PERU                           1               1        0     164
24 months   ki1119695-PROBIT           BELARUS                        0               0     2869    4032
24 months   ki1119695-PROBIT           BELARUS                        0               1      252    4032
24 months   ki1119695-PROBIT           BELARUS                        1               0      820    4032
24 months   ki1119695-PROBIT           BELARUS                        1               1       91    4032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0      136     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      211     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       18     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       34     399
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      179    1029
24 months   ki1135781-COHORTS          GUATEMALA                      0               1      697    1029
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       35    1029
24 months   ki1135781-COHORTS          GUATEMALA                      1               1      118    1029
24 months   ki1135781-COHORTS          INDIA                          0               0     2356    5071
24 months   ki1135781-COHORTS          INDIA                          0               1     1896    5071
24 months   ki1135781-COHORTS          INDIA                          1               0      450    5071
24 months   ki1135781-COHORTS          INDIA                          1               1      369    5071
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0      772    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1     1217    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      149    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1      209    2347
24 months   ki1148112-LCNI-5           MALAWI                         0               0      319     579
24 months   ki1148112-LCNI-5           MALAWI                         0               1      250     579
24 months   ki1148112-LCNI-5           MALAWI                         1               0        4     579
24 months   ki1148112-LCNI-5           MALAWI                         1               1        6     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0     3591    7237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1     2822    7237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      476    7237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      348    7237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     2528    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1     1415    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0      216    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      156    4315


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
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/a93a172c-0772-48f7-99aa-3797c9dd7180/40419bec-5650-429d-9b74-b48d947d03ad/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a93a172c-0772-48f7-99aa-3797c9dd7180/40419bec-5650-429d-9b74-b48d947d03ad/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a93a172c-0772-48f7-99aa-3797c9dd7180/40419bec-5650-429d-9b74-b48d947d03ad/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a93a172c-0772-48f7-99aa-3797c9dd7180/40419bec-5650-429d-9b74-b48d947d03ad/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                0.1411765   0.0887043   0.1936486
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                0.1818182   0.0498993   0.3137371
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0554266   0.0511230   0.0597303
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0406698   0.0324026   0.0489371
Birth       ki1135781-COHORTS          INDIA                          0                    NA                0.0638890   0.0571785   0.0705995
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.0520261   0.0391315   0.0649207
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0306967   0.0238605   0.0375328
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0236356   0.0097584   0.0375129
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1582454   0.1516324   0.1648585
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1469048   0.1274747   0.1663348
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1545595   0.1236384   0.1854806
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2222222   0.0728779   0.3715666
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1648936   0.1117327   0.2180545
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1707317   0.0553037   0.2861597
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1865285   0.1314544   0.2416026
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1750000   0.0569956   0.2930044
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2791255   0.2252606   0.3329904
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3739357   0.2768889   0.4709825
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2086560   0.1586317   0.2586803
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2608395   0.1833290   0.3383500
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.4528141   0.3957697   0.5098586
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5095699   0.3298405   0.6892994
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.3412803   0.2724519   0.4101086
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3938604   0.2413788   0.5463420
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2262435   0.2027995   0.2496874
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3552234   0.2280616   0.4823852
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4186088   0.3635993   0.4736183
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4706530   0.3504006   0.5909054
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2334688   0.1901521   0.2767855
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2714445   0.1975411   0.3453478
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1466489   0.1141593   0.1791385
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1814374   0.1131498   0.2497249
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1921633   0.1579535   0.2263731
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1975398   0.1381744   0.2569052
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0978432   0.0844843   0.1112021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0672269   0.0222239   0.1122299
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1295434   0.1148253   0.1442616
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.3637015   0.2535803   0.4738227
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2113129   0.1743699   0.2482558
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1960305   0.1150085   0.2770525
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3486239   0.2852292   0.4120185
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4285714   0.1687861   0.6883568
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0628099   0.0434618   0.0821581
6 months    ki1114097-CMIN             PERU                           1                    NA                0.1562500   0.0303484   0.2821516
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0632595   0.0485271   0.0779918
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0583981   0.0360175   0.0807788
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1338673   0.1256524   0.1420822
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2416590   0.2171238   0.2661943
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4231527   0.3871868   0.4591186
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3399199   0.2694459   0.4103940
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1582449   0.1484573   0.1680325
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1756326   0.1531530   0.1981121
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1959519   0.1793311   0.2125726
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1763775   0.1390881   0.2136668
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                0.3672727   0.3340779   0.4004675
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.4285714   0.2554457   0.6016972
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1792892   0.1715399   0.1870384
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1978270   0.1747390   0.2209150
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2110570   0.1965719   0.2255421
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2622963   0.2134727   0.3111198
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4454131   0.3686785   0.5221477
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4204858   0.2539872   0.5869843
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.4491728   0.3771526   0.5211930
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2478337   0.1092374   0.3864300
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1959799   0.1407050   0.2512548
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2692308   0.0983547   0.4401068
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7242321   0.6707255   0.7777386
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6736987   0.5814925   0.7659049
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3627876   0.3035504   0.4220249
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4810661   0.3934513   0.5686808
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5443201   0.4872805   0.6013597
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5052067   0.4128907   0.5975227
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3307703   0.2872369   0.3743036
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3042049   0.2199617   0.3884482
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2353319   0.1915487   0.2791152
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2890847   0.2124452   0.3657242
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3304914   0.3076917   0.3532912
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3966666   0.2880111   0.5053221
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4595736   0.4119696   0.5071776
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3622468   0.2513073   0.4731864
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6728111   0.6102503   0.7353718
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6000000   0.3515459   0.8484541
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3307386   0.2905088   0.3709684
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.4571540   0.2069641   0.7073439
24 months   ki1114097-CMIN             PERU                           0                    NA                0.3140097   0.2692502   0.3587692
24 months   ki1114097-CMIN             PERU                           1                    NA                0.4666667   0.2139046   0.7194288
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0800862   0.0477487   0.1124238
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1000451   0.0610502   0.1390401
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6097819   0.5583222   0.6612416
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6703996   0.5414617   0.7993376
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7958605   0.7691384   0.8225826
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7703657   0.7028493   0.8378821
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.4451987   0.4302924   0.4601051
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4569600   0.4225931   0.4913268
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6077291   0.5863512   0.6291070
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6064609   0.5558357   0.6570861
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4389456   0.4241209   0.4537704
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4274546   0.3874648   0.4674443
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3589545   0.3405914   0.3773176
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4192766   0.3633003   0.4752529


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1477833   0.0988437   0.1967228
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0530095   0.0491714   0.0568475
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0617878   0.0558091   0.0677665
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0295533   0.0233992   0.0357074
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1568752   0.1505743   0.1631761
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1581259   0.1278797   0.1883722
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1659389   0.1176493   0.2142285
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1845494   0.1346311   0.2344676
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3030303   0.2556886   0.3503720
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2273902   0.1855763   0.2692041
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4570552   0.4028965   0.5112140
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3539823   0.2914982   0.4164664
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2407255   0.2138448   0.2676061
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2431907   0.2060665   0.2803148
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1527778   0.1233713   0.1821843
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1930836   0.1636957   0.2224715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0960396   0.0831873   0.1088919
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1385948   0.1237352   0.1534544
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2085561   0.1749069   0.2422054
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3534483   0.2918020   0.4150945
6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0675039   0.0480051   0.0870027
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0625873   0.0488338   0.0763408
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1497769   0.1418798   0.1576740
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4062153   0.3741290   0.4383016
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1611862   0.1522521   0.1701204
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1932125   0.1780130   0.2084119
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1812307   0.1736272   0.1888342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2156463   0.2019366   0.2293559
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4378109   0.3690538   0.5065681
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4107143   0.3461446   0.4752839
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2044444   0.1516307   0.2572582
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7178082   0.6715729   0.7640435
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4046392   0.3557383   0.4535401
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5330073   0.4845968   0.5814178
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3251318   0.2866094   0.3636542
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2480000   0.2101093   0.2858907
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3333333   0.3110228   0.3556439
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4446680   0.4009358   0.4884002
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6681034   0.6073788   0.7288281
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3357664   0.2961903   0.3753426
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.3193473   0.2751780   0.3635166
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0850694   0.0559313   0.1142076
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6140351   0.5662077   0.6618625
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7920311   0.7672214   0.8168408
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4466575   0.4329730   0.4603419
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6075841   0.5878253   0.6273430
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4380268   0.4238665   0.4521871
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3640788   0.3464603   0.3816973


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 1.2878788   0.5699441   2.9101656
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.7337593   0.5902915   0.9120965
Birth       ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 0.8143204   0.6223933   1.0654321
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.7699742   0.4110085   1.4424524
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9283348   0.8086021   1.0657969
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4377778   0.7114932   2.9054456
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.0354052   0.4895738   2.1897902
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 0.9381944   0.4493659   1.9587797
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.3396687   0.9703346   1.8495810
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 1.2500933   0.8522262   1.8337073
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.1253401   0.7737255   1.6367438
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 1.1540672   0.7446450   1.7885990
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.5700937   1.0949637   2.2513936
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1243266   0.8426464   1.5001668
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.1626585   0.8363094   1.6163575
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2372227   0.8008310   1.9114146
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0279787   0.7255799   1.4564078
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6870877   0.3469776   1.3605763
6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 2.8075642   2.0322685   3.8786294
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9276791   0.5912387   1.4555685
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.2293233   0.6528619   2.3147865
6 months    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 2.4876645   1.0499049   5.8943191
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.9231528   0.6373116   1.3371968
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8052131   1.6034914   2.0323118
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.8033032   0.6424115   1.0044902
6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 1.1098780   0.9629510   1.2792231
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9001059   0.7169939   1.1299828
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 1.1669024   0.7713640   1.7652642
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1033965   0.9789704   1.2436370
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2427746   1.0166736   1.5191589
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9440354   0.6121855   1.4557727
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.5517559   0.3090960   0.9849189
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.3737673   0.6859352   2.7513335
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9302249   0.7952851   1.0880605
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.3260267   1.0374805   1.6948240
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.9281426   0.7517888   1.1458653
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9196864   0.6767218   1.2498832
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2284126   0.8899135   1.6956677
24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.2002325   0.9050245   1.5917338
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.7882237   0.5704297   1.0891730
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.8917808   0.5833684   1.3632433
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.3822213   0.7886619   2.4225031
24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 1.4861538   0.8488405   2.6019651
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.2492172   0.7960452   1.9603707
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0994088   0.8908419   1.3568062
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9679657   0.8812497   1.0632147
24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.0264180   0.9459148   1.1137724
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9979132   0.9119275   1.0920064
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9738212   0.8837154   1.0731145
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1680495   1.0146323   1.3446641


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0066068   -0.0165648    0.0297784
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0024172   -0.0039953   -0.0008390
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0021011   -0.0047581    0.0005558
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0011434   -0.0036075    0.0013207
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0013702   -0.0033197    0.0005792
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0035664   -0.0045137    0.0116465
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0010452   -0.0217092    0.0237997
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0019791   -0.0243421    0.0203838
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0239048   -0.0056857    0.0534953
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0187342   -0.0126219    0.0500903
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0042411   -0.0139054    0.0223875
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0127020   -0.0185326    0.0439366
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0144820   -0.0025564    0.0315204
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0103386   -0.0138410    0.0345181
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0097219   -0.0143573    0.0338011
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0061289   -0.0093875    0.0216452
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0009203   -0.0163293    0.0181698
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0018036   -0.0045870    0.0009797
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0090514    0.0045602    0.0135426
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0027567   -0.0176603    0.0121469
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0048244   -0.0114980    0.0211468
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0046940   -0.0018986    0.0112867
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0006722   -0.0045608    0.0032165
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0159096    0.0119095    0.0199097
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0169374   -0.0323705   -0.0015043
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0029413   -0.0013180    0.0072007
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0027394   -0.0090351    0.0035563
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0010229   -0.0034161    0.0054618
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0019415   -0.0005285    0.0044115
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0045893   -0.0000034    0.0091819
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0076022   -0.0410070    0.0258026
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0384585   -0.0672639   -0.0096531
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0084645   -0.0125139    0.0294430
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0064239   -0.0352779    0.0224302
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0418515    0.0056725    0.0780306
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0113128   -0.0418575    0.0192319
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0056385   -0.0251967    0.0139198
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0126681   -0.0106959    0.0360320
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0028419   -0.0022562    0.0079399
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0149056   -0.0333078    0.0034966
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0047076   -0.0214330    0.0120178
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0050278   -0.0037209    0.0137765
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0053377   -0.0040226    0.0146979
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0049832   -0.0044954    0.0144618
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0042532   -0.0141997    0.0227061
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0038294   -0.0145189    0.0068600
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0014587   -0.0043875    0.0073050
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0001450   -0.0084541    0.0081641
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0009188   -0.0054339    0.0035963
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0051243    0.0001641    0.0100845


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0447059   -0.1251384    0.1889115
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0455987   -0.0756212   -0.0164142
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0340056   -0.0778036    0.0080126
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0386890   -0.1251244    0.0411061
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0087346   -0.0212398    0.0036175
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0225542   -0.0298726    0.0723122
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0062990   -0.1407298    0.1343772
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0107242   -0.1394422    0.1034531
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0788859   -0.0239375    0.1713838
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0823879   -0.0658358    0.2099983
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0092791   -0.0312411    0.0482072
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0358832   -0.0565142    0.1202000
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0601599   -0.0099636    0.1254146
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0241022   -0.0339498    0.0788948
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0399764   -0.0642229    0.1339735
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0401163   -0.0668696    0.1363736
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0047661   -0.0887139    0.0902197
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0187801   -0.0480893    0.0097095
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0653081    0.0328784    0.0966504
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0132180   -0.0872697    0.0557901
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0136496   -0.0336341    0.0587702
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0695368   -0.0314343    0.1606235
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0107398   -0.0745684    0.0492974
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1062221    0.0795035    0.1321652
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0416956   -0.0804482   -0.0043330
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0182479   -0.0085264    0.0443113
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0141782   -0.0472777    0.0178752
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0027773   -0.0093645    0.0147730
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0107130   -0.0029708    0.0242102
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0212814   -0.0003015    0.0423986
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0173641   -0.0966216    0.0561652
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0936381   -0.1669206   -0.0249577
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0414027   -0.0665873    0.1384589
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0089493   -0.0499866    0.0304842
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.1034293    0.0091894    0.1887057
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0212245   -0.0802193    0.0345484
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0173421   -0.0793067    0.0410651
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0510810   -0.0480062    0.1407996
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0085257   -0.0068879    0.0237032
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0335208   -0.0758492    0.0071423
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0070462   -0.0324198    0.0177037
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0149741   -0.0114270    0.0406861
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0167143   -0.0130303    0.0455855
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0585780   -0.0659702    0.1685740
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0069266   -0.0235960    0.0365390
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0048350   -0.0184277    0.0085763
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0032659   -0.0099102    0.0162702
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0002386   -0.0140082    0.0133440
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0020977   -0.0124595    0.0081581
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0140747    0.0003303    0.0276301
