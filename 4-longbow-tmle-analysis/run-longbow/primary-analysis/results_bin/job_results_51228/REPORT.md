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

**Intervention Variable:** enstunt

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

agecat      studyid                    country                        enstunt    wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      174     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       36     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0       27     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        4     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0      163     183
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        6     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0       14     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          0               0      146     203
Birth       ki0047075b-MAL-ED          INDIA                          0               1       27     203
Birth       ki0047075b-MAL-ED          INDIA                          1               0       24     203
Birth       ki0047075b-MAL-ED          INDIA                          1               1        6     203
Birth       ki0047075b-MAL-ED          NEPAL                          0               0      136     168
Birth       ki0047075b-MAL-ED          NEPAL                          0               1       18     168
Birth       ki0047075b-MAL-ED          NEPAL                          1               0       12     168
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        2     168
Birth       ki0047075b-MAL-ED          PERU                           0               0      248     279
Birth       ki0047075b-MAL-ED          PERU                           0               1        5     279
Birth       ki0047075b-MAL-ED          PERU                           1               0       25     279
Birth       ki0047075b-MAL-ED          PERU                           1               1        1     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      218     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       14     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       22     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        4     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      104     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       12     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       65      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1       12      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        2      88
Birth       ki1000108-IRC              INDIA                          0               0      228     343
Birth       ki1000108-IRC              INDIA                          0               1       90     343
Birth       ki1000108-IRC              INDIA                          1               0       23     343
Birth       ki1000108-IRC              INDIA                          1               1        2     343
Birth       ki1000109-EE               PAKISTAN                       0               0        0       1
Birth       ki1000109-EE               PAKISTAN                       0               1        0       1
Birth       ki1000109-EE               PAKISTAN                       1               0        1       1
Birth       ki1000109-EE               PAKISTAN                       1               1        0       1
Birth       ki1000109-ResPak           PAKISTAN                       0               0        5       6
Birth       ki1000109-ResPak           PAKISTAN                       0               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       1               0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       1               1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0      132     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1        9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       23     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        2     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0       20      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               1        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0       19      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0      23
Birth       ki1101329-Keneba           GAMBIA                         0               0     1322    1423
Birth       ki1101329-Keneba           GAMBIA                         0               1       25    1423
Birth       ki1101329-Keneba           GAMBIA                         1               0       73    1423
Birth       ki1101329-Keneba           GAMBIA                         1               1        3    1423
Birth       ki1114097-CMIN             BANGLADESH                     0               0        5       8
Birth       ki1114097-CMIN             BANGLADESH                     0               1        2       8
Birth       ki1114097-CMIN             BANGLADESH                     1               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1               1        1       8
Birth       ki1114097-CMIN             BRAZIL                         0               0      102     111
Birth       ki1114097-CMIN             BRAZIL                         0               1        8     111
Birth       ki1114097-CMIN             BRAZIL                         1               0        1     111
Birth       ki1114097-CMIN             BRAZIL                         1               1        0     111
Birth       ki1114097-CMIN             PERU                           0               0       10      10
Birth       ki1114097-CMIN             PERU                           0               1        0      10
Birth       ki1114097-CMIN             PERU                           1               0        0      10
Birth       ki1114097-CMIN             PERU                           1               1        0      10
Birth       ki1114097-CONTENT          PERU                           0               0        2       2
Birth       ki1114097-CONTENT          PERU                           0               1        0       2
Birth       ki1114097-CONTENT          PERU                           1               0        0       2
Birth       ki1114097-CONTENT          PERU                           1               1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0               0    10910   13824
Birth       ki1119695-PROBIT           BELARUS                        0               1     2888   13824
Birth       ki1119695-PROBIT           BELARUS                        1               0       26   13824
Birth       ki1119695-PROBIT           BELARUS                        1               1        0   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    10252   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1     1974   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0      604   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1       86   12916
Birth       ki1135781-COHORTS          GUATEMALA                      0               0      540     756
Birth       ki1135781-COHORTS          GUATEMALA                      0               1      192     756
Birth       ki1135781-COHORTS          GUATEMALA                      1               0       24     756
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        0     756
Birth       ki1135781-COHORTS          INDIA                          0               0     4772    6193
Birth       ki1135781-COHORTS          INDIA                          0               1     1041    6193
Birth       ki1135781-COHORTS          INDIA                          1               0      325    6193
Birth       ki1135781-COHORTS          INDIA                          1               1       55    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    0               0     2373    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    0               1      440    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0       75    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       11    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0    11956   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1     1286   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     2247   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      220   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0      547     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1       28     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0      100     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        8     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      196     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0       37     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        2     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      187     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0               0      181     236
6 months    ki0047075b-MAL-ED          INDIA                          0               1       16     236
6 months    ki0047075b-MAL-ED          INDIA                          1               0       37     236
6 months    ki0047075b-MAL-ED          INDIA                          1               1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      206     236
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       26     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        1     236
6 months    ki0047075b-MAL-ED          PERU                           0               0      239     273
6 months    ki0047075b-MAL-ED          PERU                           0               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           1               0       34     273
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      223     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        6     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       24     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      207     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       39     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      259     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1       35     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0       63     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       11     368
6 months    ki1000108-IRC              INDIA                          0               0      311     408
6 months    ki1000108-IRC              INDIA                          0               1       49     408
6 months    ki1000108-IRC              INDIA                          1               0       43     408
6 months    ki1000108-IRC              INDIA                          1               1        5     408
6 months    ki1000109-EE               PAKISTAN                       0               0      217     376
6 months    ki1000109-EE               PAKISTAN                       0               1       29     376
6 months    ki1000109-EE               PAKISTAN                       1               0      110     376
6 months    ki1000109-EE               PAKISTAN                       1               1       20     376
6 months    ki1000109-ResPak           PAKISTAN                       0               0      160     235
6 months    ki1000109-ResPak           PAKISTAN                       0               1       13     235
6 months    ki1000109-ResPak           PAKISTAN                       1               0       49     235
6 months    ki1000109-ResPak           PAKISTAN                       1               1       13     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      868    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1      101    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      300    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       65    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0      196     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1       36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      115     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       33     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               0      426     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               1       25     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0       76     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1        9     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      504     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       18     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0       54     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        6     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      597     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1       16     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0       97     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        5     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1807    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       83    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      134    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        4    2028
6 months    ki1101329-Keneba           GAMBIA                         0               0     1785    2089
6 months    ki1101329-Keneba           GAMBIA                         0               1      108    2089
6 months    ki1101329-Keneba           GAMBIA                         1               0      183    2089
6 months    ki1101329-Keneba           GAMBIA                         1               1       13    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      227     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       68     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        3     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      463     563
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1       41     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0       49     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       10     563
6 months    ki1114097-CMIN             BANGLADESH                     0               0      139     243
6 months    ki1114097-CMIN             BANGLADESH                     0               1       12     243
6 months    ki1114097-CMIN             BANGLADESH                     1               0       83     243
6 months    ki1114097-CMIN             BANGLADESH                     1               1        9     243
6 months    ki1114097-CMIN             BRAZIL                         0               0      103     108
6 months    ki1114097-CMIN             BRAZIL                         0               1        1     108
6 months    ki1114097-CMIN             BRAZIL                         1               0        4     108
6 months    ki1114097-CMIN             BRAZIL                         1               1        0     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0               0      721     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0               1       26     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               0       94     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               1        8     849
6 months    ki1114097-CMIN             PERU                           0               0      594     636
6 months    ki1114097-CMIN             PERU                           0               1       10     636
6 months    ki1114097-CMIN             PERU                           1               0       32     636
6 months    ki1114097-CMIN             PERU                           1               1        0     636
6 months    ki1114097-CONTENT          PERU                           0               0      197     215
6 months    ki1114097-CONTENT          PERU                           0               1        0     215
6 months    ki1114097-CONTENT          PERU                           1               0       18     215
6 months    ki1114097-CONTENT          PERU                           1               1        0     215
6 months    ki1119695-PROBIT           BELARUS                        0               0    15498   15757
6 months    ki1119695-PROBIT           BELARUS                        0               1      129   15757
6 months    ki1119695-PROBIT           BELARUS                        1               0      129   15757
6 months    ki1119695-PROBIT           BELARUS                        1               1        1   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     7177    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1      237    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      822    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       28    8264
6 months    ki1135781-COHORTS          GUATEMALA                      0               0      783     963
6 months    ki1135781-COHORTS          GUATEMALA                      0               1       26     963
6 months    ki1135781-COHORTS          GUATEMALA                      1               0      148     963
6 months    ki1135781-COHORTS          GUATEMALA                      1               1        6     963
6 months    ki1135781-COHORTS          INDIA                          0               0     5333    6850
6 months    ki1135781-COHORTS          INDIA                          0               1      701    6850
6 months    ki1135781-COHORTS          INDIA                          1               0      652    6850
6 months    ki1135781-COHORTS          INDIA                          1               1      164    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     2401    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    0               1      148    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      144    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1       13    2706
6 months    ki1148112-LCNI-5           MALAWI                         0               0      522     839
6 months    ki1148112-LCNI-5           MALAWI                         0               1        8     839
6 months    ki1148112-LCNI-5           MALAWI                         1               0      303     839
6 months    ki1148112-LCNI-5           MALAWI                         1               1        6     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0    10829   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1      888   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     4534   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      533   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     3296    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1      177    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     1262    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1       98    4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      160     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       31     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        2     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      150     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0               0      170     227
24 months   ki0047075b-MAL-ED          INDIA                          0               1       20     227
24 months   ki0047075b-MAL-ED          INDIA                          1               0       30     227
24 months   ki0047075b-MAL-ED          INDIA                          1               1        7     227
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      199     228
24 months   ki0047075b-MAL-ED          NEPAL                          0               1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       24     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        2     228
24 months   ki0047075b-MAL-ED          PERU                           0               0      173     201
24 months   ki0047075b-MAL-ED          PERU                           0               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           1               0       25     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      215     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      178     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       32     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      285     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       64     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       11     372
24 months   ki1000108-IRC              INDIA                          0               0      336     409
24 months   ki1000108-IRC              INDIA                          0               1       26     409
24 months   ki1000108-IRC              INDIA                          1               0       42     409
24 months   ki1000108-IRC              INDIA                          1               1        5     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               0      311     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               1       43     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               0       64     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               1       10     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      466     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       53     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       47     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       12     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      411     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       33     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0       58     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       12     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0               0     1392    1726
24 months   ki1101329-Keneba           GAMBIA                         0               1      158    1726
24 months   ki1101329-Keneba           GAMBIA                         1               0      143    1726
24 months   ki1101329-Keneba           GAMBIA                         1               1       33    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      371     498
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       76     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       36     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       15     498
24 months   ki1114097-CMIN             BANGLADESH                     0               0      142     243
24 months   ki1114097-CMIN             BANGLADESH                     0               1       11     243
24 months   ki1114097-CMIN             BANGLADESH                     1               0       76     243
24 months   ki1114097-CMIN             BANGLADESH                     1               1       14     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0               0      436     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0               1       14     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               0       92     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               1        9     551
24 months   ki1114097-CMIN             PERU                           0               0      342     429
24 months   ki1114097-CMIN             PERU                           0               1        1     429
24 months   ki1114097-CMIN             PERU                           1               0       85     429
24 months   ki1114097-CMIN             PERU                           1               1        1     429
24 months   ki1114097-CONTENT          PERU                           0               0      147     164
24 months   ki1114097-CONTENT          PERU                           0               1        0     164
24 months   ki1114097-CONTENT          PERU                           1               0       17     164
24 months   ki1114097-CONTENT          PERU                           1               1        0     164
24 months   ki1119695-PROBIT           BELARUS                        0               0     3916    3971
24 months   ki1119695-PROBIT           BELARUS                        0               1       44    3971
24 months   ki1119695-PROBIT           BELARUS                        1               0       11    3971
24 months   ki1119695-PROBIT           BELARUS                        1               1        0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0      265     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1       59     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       82     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       17     423
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      719    1082
24 months   ki1135781-COHORTS          GUATEMALA                      0               1       25    1082
24 months   ki1135781-COHORTS          GUATEMALA                      1               0      313    1082
24 months   ki1135781-COHORTS          GUATEMALA                      1               1       25    1082
24 months   ki1135781-COHORTS          INDIA                          0               0     4269    5291
24 months   ki1135781-COHORTS          INDIA                          0               1      387    5291
24 months   ki1135781-COHORTS          INDIA                          1               0      537    5291
24 months   ki1135781-COHORTS          INDIA                          1               1       98    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0     2162    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1      149    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      120    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       18    2449
24 months   ki1148112-LCNI-5           MALAWI                         0               0      361     563
24 months   ki1148112-LCNI-5           MALAWI                         0               1        4     563
24 months   ki1148112-LCNI-5           MALAWI                         1               0      192     563
24 months   ki1148112-LCNI-5           MALAWI                         1               1        6     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0     4829    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1     1104    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     1896    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      774    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     2816    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      564    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0      999    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      356    4735


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
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
![](/tmp/fded8051-044b-4c20-a037-5886f1b05a21/a28b7d36-e5ae-49b8-8303-6239ea21dc64/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fded8051-044b-4c20-a037-5886f1b05a21/a28b7d36-e5ae-49b8-8303-6239ea21dc64/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fded8051-044b-4c20-a037-5886f1b05a21/a28b7d36-e5ae-49b8-8303-6239ea21dc64/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fded8051-044b-4c20-a037-5886f1b05a21/a28b7d36-e5ae-49b8-8303-6239ea21dc64/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA           0                    NA                0.1560694   0.1018556   0.2102831
Birth       ki0047075b-MAL-ED          INDIA           1                    NA                0.2000000   0.0565106   0.3434894
Birth       ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.1612893   0.1547663   0.1678123
Birth       ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.1294436   0.1034552   0.1554321
Birth       ki1135781-COHORTS          INDIA           0                    NA                0.1791636   0.1693014   0.1890258
Birth       ki1135781-COHORTS          INDIA           1                    NA                0.1391529   0.1038815   0.1744243
Birth       ki1135781-COHORTS          PHILIPPINES     0                    NA                0.1564719   0.1430412   0.1699026
Birth       ki1135781-COHORTS          PHILIPPINES     1                    NA                0.1272223   0.0572808   0.1971637
Birth       kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.0970624   0.0913611   0.1027637
Birth       kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.0880663   0.0760157   0.1001170
Birth       kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0486957   0.0283268   0.0690645
Birth       kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.0740741   0.0206143   0.1275338
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.1174377   0.0806145   0.1542609
6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.1487939   0.0657508   0.2318369
6 months    ki1000108-IRC              INDIA           0                    NA                0.1361111   0.1006457   0.1715766
6 months    ki1000108-IRC              INDIA           1                    NA                0.1041667   0.0176423   0.1906910
6 months    ki1000109-EE               PAKISTAN        0                    NA                0.1185135   0.0781030   0.1589240
6 months    ki1000109-EE               PAKISTAN        1                    NA                0.1516438   0.0890907   0.2141970
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                0.0747693   0.0350774   0.1144612
6 months    ki1000109-ResPak           PAKISTAN        1                    NA                0.2072174   0.1028436   0.3115911
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.1031326   0.0766254   0.1296397
6 months    ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.1781350   0.1440001   0.2122699
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.1554380   0.1086889   0.2021871
6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.2240212   0.1567764   0.2912660
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.0554324   0.0342944   0.0765704
6 months    ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.1058824   0.0404107   0.1713540
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.0344828   0.0188164   0.0501491
6 months    ki1017093b-PROVIDE         BANGLADESH      1                    NA                0.1000000   0.0240256   0.1759744
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0261011   0.0134710   0.0387313
6 months    ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.0490196   0.0070898   0.0909494
6 months    ki1101329-Keneba           GAMBIA          0                    NA                0.0569880   0.0465373   0.0674388
6 months    ki1101329-Keneba           GAMBIA          1                    NA                0.0672258   0.0334321   0.1010195
6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                0.0802264   0.0564573   0.1039955
6 months    ki1113344-GMS-Nepal        NEPAL           1                    NA                0.1743491   0.0712751   0.2774230
6 months    ki1114097-CMIN             BANGLADESH      0                    NA                0.0794702   0.0362411   0.1226993
6 months    ki1114097-CMIN             BANGLADESH      1                    NA                0.0978261   0.0369955   0.1586567
6 months    ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0348059   0.0216543   0.0479575
6 months    ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.0784314   0.0262263   0.1306364
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0319630   0.0279584   0.0359676
6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.0331835   0.0211653   0.0452018
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                0.0321384   0.0199789   0.0442980
6 months    ki1135781-COHORTS          GUATEMALA       1                    NA                0.0389610   0.0083837   0.0695383
6 months    ki1135781-COHORTS          INDIA           0                    NA                0.1162748   0.1081886   0.1243610
6 months    ki1135781-COHORTS          INDIA           1                    NA                0.2017969   0.1741636   0.2294301
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0580830   0.0489973   0.0671687
6 months    ki1135781-COHORTS          PHILIPPINES     1                    NA                0.0831336   0.0388635   0.1274038
6 months    ki1148112-LCNI-5           MALAWI          0                    NA                0.0150943   0.0047077   0.0254809
6 months    ki1148112-LCNI-5           MALAWI          1                    NA                0.0194175   0.0040230   0.0348120
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.0758261   0.0705408   0.0811113
6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.1059917   0.0966097   0.1153736
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0508906   0.0411174   0.0606637
6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.0719918   0.0520978   0.0918859
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                0.1052632   0.0615295   0.1489968
24 months   ki0047075b-MAL-ED          INDIA           1                    NA                0.1891892   0.0627115   0.3156669
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.0398468   0.0175349   0.0621586
24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.1516009   0.0689854   0.2342165
24 months   ki1000108-IRC              INDIA           0                    NA                0.0718232   0.0451931   0.0984533
24 months   ki1000108-IRC              INDIA           1                    NA                0.1063830   0.0181273   0.1946386
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.1201786   0.0863320   0.1540252
24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.1428271   0.0604303   0.2252240
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.1018025   0.0757069   0.1278980
24 months   ki1017093b-PROVIDE         BANGLADESH      1                    NA                0.1769701   0.0719093   0.2820309
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0740810   0.0496891   0.0984729
24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.1778590   0.0881037   0.2676142
24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.1020493   0.0869557   0.1171429
24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.1892808   0.1281619   0.2503996
24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                0.1696147   0.1347291   0.2045004
24 months   ki1113344-GMS-Nepal        NEPAL           1                    NA                0.2896620   0.1516329   0.4276912
24 months   ki1114097-CMIN             BANGLADESH      0                    NA                0.0720248   0.0311316   0.1129180
24 months   ki1114097-CMIN             BANGLADESH      1                    NA                0.1623606   0.0863697   0.2383515
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0311111   0.0150553   0.0471669
24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.0891089   0.0334960   0.1447218
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.1831185   0.1409720   0.2252650
24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.1792105   0.1042700   0.2541509
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.0339421   0.0208380   0.0470462
24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.0726733   0.0447897   0.1005568
24 months   ki1135781-COHORTS          INDIA           0                    NA                0.0831501   0.0752235   0.0910768
24 months   ki1135781-COHORTS          INDIA           1                    NA                0.1528043   0.1246219   0.1809866
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0647274   0.0546671   0.0747878
24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.1284088   0.0705649   0.1862528
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.1858379   0.1747165   0.1969593
24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.2903709   0.2716977   0.3090441
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.1670799   0.1514722   0.1826875
24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.2618120   0.2357337   0.2878904


### Parameter: E(Y)


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA           NA                   NA                0.1625616   0.1116803   0.2134428
Birth       ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.1594921   0.1531776   0.1658066
Birth       ki1135781-COHORTS          INDIA           NA                   NA                0.1769740   0.1674681   0.1864799
Birth       ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.0958686   0.0906699   0.1010673
Birth       kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA           NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1000109-EE               PAKISTAN        NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1000109-ResPak           PAKISTAN        NA                   NA                0.1106383   0.0704470   0.1508296
6 months    ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.0634328   0.0427791   0.0840865
6 months    ki1017093b-PROVIDE         BANGLADESH      NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1101329-Keneba           GAMBIA          NA                   NA                0.0579225   0.0479029   0.0679420
6 months    ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1114097-CMIN             BANGLADESH      NA                   NA                0.0864198   0.0510184   0.1218211
6 months    ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0400471   0.0268506   0.0532437
6 months    ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.0320668   0.0282681   0.0358654
6 months    ki1135781-COHORTS          GUATEMALA       NA                   NA                0.0332295   0.0219033   0.0445557
6 months    ki1135781-COHORTS          INDIA           NA                   NA                0.1262774   0.1184108   0.1341439
6 months    ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.0594974   0.0505830   0.0684118
6 months    ki1148112-LCNI-5           MALAWI          NA                   NA                0.0166865   0.0080138   0.0253592
6 months    kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.0846640   0.0798626   0.0894653
6 months    kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0569005   0.0480577   0.0657432
24 months   ki0047075b-MAL-ED          INDIA           NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA           NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE         BANGLADESH      NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA          NA                   NA                0.1106605   0.0958563   0.1254646
24 months   ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.1827309   0.1487560   0.2167058
24 months   ki1114097-CMIN             BANGLADESH      NA                   NA                0.1028807   0.0646041   0.1411572
24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0417423   0.0250277   0.0584569
24 months   ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.1796690   0.1430402   0.2162979
24 months   ki1135781-COHORTS          GUATEMALA       NA                   NA                0.0462107   0.0336957   0.0587258
24 months   ki1135781-COHORTS          INDIA           NA                   NA                0.0916651   0.0838893   0.0994409
24 months   ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.2182959   0.2084450   0.2281469
24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.1942978   0.1810880   0.2075076


### Parameter: RR


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          INDIA           0                    0                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          INDIA           1                    0                 1.2814815   0.5774691   2.843780
Birth       ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 0.8025556   0.6539319   0.984958
Birth       ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA           1                    0                 0.7766808   0.5992615   1.006627
Birth       ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES     1                    0                 0.8130677   0.4661932   1.418037
Birth       kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH      1                    0                 0.9073165   0.7831010   1.051235
Birth       kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.5211640   0.6582436   3.515325
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 1.2670022   0.6672096   2.405982
6 months    ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA           1                    0                 0.7653061   0.3204521   1.827710
6 months    ki1000109-EE               PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN        1                    0                 1.2795490   0.7496187   2.184105
6 months    ki1000109-ResPak           PAKISTAN        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-ResPak           PAKISTAN        1                    0                 2.7714234   1.3283772   5.782083
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA           1                    0                 1.7272431   1.3749373   2.169821
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.4412258   0.9421893   2.204580
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH      1                    0                 1.9101176   0.9237568   3.949686
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH      1                    0                 2.9000000   1.1966037   7.028225
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 1.8780637   0.7029196   5.017819
6 months    ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA          1                    0                 1.1796484   0.6906914   2.014750
6 months    ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL           1                    0                 2.1732135   1.1207428   4.214042
6 months    ki1114097-CMIN             BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1114097-CMIN             BANGLADESH      1                    0                 1.2309783   0.5388246   2.812246
6 months    ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1114097-CMIN             GUINEA-BISSAU   1                    0                 2.2533937   1.0481751   4.844404
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 1.0381870   0.7077269   1.522949
6 months    ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA       1                    0                 1.2122877   0.5072524   2.897259
6 months    ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA           1                    0                 1.7355170   1.4884782   2.023556
6 months    ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES     1                    0                 1.4312903   0.8215633   2.493529
6 months    ki1148112-LCNI-5           MALAWI          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI          1                    0                 1.2864078   0.4502572   3.675333
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    0                 1.3978265   1.2553646   1.556455
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.4146408   1.0070560   1.987187
24 months   ki0047075b-MAL-ED          INDIA           0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA           1                    0                 1.7972973   0.8180556   3.948726
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 3.8045985   1.7416373   8.311128
24 months   ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA           1                    0                 1.4811784   0.5969929   3.674901
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                 1.1884572   0.6250162   2.259830
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH      1                    0                 1.7383678   0.9101398   3.320284
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 2.4008716   1.3119332   4.393657
24 months   ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA          1                    0                 1.8547967   1.3000687   2.646222
24 months   ki1113344-GMS-Nepal        NEPAL           0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL           1                    0                 1.7077646   1.0161182   2.870198
24 months   ki1114097-CMIN             BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1114097-CMIN             BANGLADESH      1                    0                 2.2542329   1.0762927   4.721361
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    0                 2.8642150   1.2743752   6.437451
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 0.9786585   0.6069950   1.577892
24 months   ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA       1                    0                 2.1410931   1.2422105   3.690421
24 months   ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA           1                    0                 1.8376910   1.4933541   2.261425
24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                 1.9838392   1.2317492   3.195145
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                 1.5624959   1.4347617   1.701602
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.5669875   1.3648715   1.799034


### Parameter: PAR


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA           0                    NA                 0.0064922   -0.0162779    0.0292623
Birth       ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                -0.0017972   -0.0031713   -0.0004231
Birth       ki1135781-COHORTS          INDIA           0                    NA                -0.0021896   -0.0044516    0.0000724
Birth       ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0009010   -0.0030215    0.0012195
Birth       kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0011938   -0.0032880    0.0009004
Birth       kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0040130   -0.0050796    0.0131055
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0075623   -0.0105011    0.0256256
6 months    ki1000108-IRC              INDIA           0                    NA                -0.0037582   -0.0148048    0.0072884
6 months    ki1000109-EE               PAKISTAN        0                    NA                 0.0118057   -0.0138104    0.0374218
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.0358690    0.0057147    0.0660233
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0213052    0.0147094    0.0279011
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0261410   -0.0059454    0.0582274
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0080005   -0.0030211    0.0190220
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    NA                 0.0067544   -0.0014053    0.0149140
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0032695   -0.0030052    0.0095442
6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0009344   -0.0024963    0.0043652
6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0103598   -0.0002438    0.0209633
6 months    ki1114097-CMIN             BANGLADESH      0                    NA                 0.0069496   -0.0213264    0.0352255
6 months    ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0052412   -0.0012968    0.0117792
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0001038   -0.0011955    0.0014031
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0010910   -0.0041736    0.0063557
6 months    ki1135781-COHORTS          INDIA           0                    NA                 0.0100026    0.0065309    0.0134742
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0014144   -0.0011590    0.0039878
6 months    ki1148112-LCNI-5           MALAWI          0                    NA                 0.0015922   -0.0052488    0.0084332
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0088379    0.0057312    0.0119446
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0060099   -0.0001868    0.0122067
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                 0.0136796   -0.0085046    0.0358638
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0219812    0.0046446    0.0393178
24 months   ki1000108-IRC              INDIA           0                    NA                 0.0039714   -0.0066759    0.0146187
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0036532   -0.0110035    0.0183098
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    NA                 0.0106543   -0.0005247    0.0218332
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.0134676    0.0005840    0.0263513
24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0086112    0.0023657    0.0148566
24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0131162   -0.0007767    0.0270091
24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.0308559   -0.0012420    0.0629538
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0106312   -0.0001436    0.0214060
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                -0.0034494   -0.0235717    0.0166728
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0122686    0.0024985    0.0220387
24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0085149    0.0049596    0.0120703
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0034637    0.0001710    0.0067563
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.0324581    0.0258503    0.0390658
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0272179    0.0184374    0.0359985


### Parameter: PAF


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA           0                    NA                 0.0399369   -0.1104621    0.1699662
Birth       ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                -0.0112683   -0.0199119   -0.0026979
Birth       ki1135781-COHORTS          INDIA           0                    NA                -0.0123723   -0.0252245    0.0003187
Birth       ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0057917   -0.0195083    0.0077404
Birth       kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0124526   -0.0345103    0.0091348
Birth       kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0761353   -0.1132346    0.2332919
6 months    ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.0604982   -0.0949955    0.1939112
6 months    ki1000108-IRC              INDIA           0                    NA                -0.0283951   -0.1151161    0.0515818
6 months    ki1000109-EE               PAKISTAN        0                    NA                 0.0905904   -0.1275007    0.2664964
6 months    ki1000109-ResPak           PAKISTAN        0                    NA                 0.3242006    0.0202028    0.5338782
6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.1712119    0.1030506    0.2341934
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.1439649   -0.0502693    0.3022779
6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.1261250   -0.0608311    0.2801327
6 months    ki1017093b-PROVIDE         BANGLADESH      0                    NA                 0.1637931   -0.0469553    0.3321186
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.1113183   -0.1239256    0.2973243
6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0161325   -0.0448600    0.0735647
6 months    ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.1143635   -0.0076096    0.2215715
6 months    ki1114097-CMIN             BANGLADESH      0                    NA                 0.0804163   -0.3105913    0.3547689
6 months    ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.1308764   -0.0422604    0.2752524
6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0032377   -0.0381151    0.0429432
6 months    ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0328337   -0.1388794    0.1786571
6 months    ki1135781-COHORTS          INDIA           0                    NA                 0.0792112    0.0516459    0.1059753
6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0237730   -0.0203175    0.0659583
6 months    ki1148112-LCNI-5           MALAWI          0                    NA                 0.0954178   -0.4186525    0.4232069
6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.1043880    0.0674236    0.1398873
6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.1056217   -0.0080051    0.2064400
24 months   ki0047075b-MAL-ED          INDIA           0                    NA                 0.1150097   -0.0883863    0.2803955
24 months   ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                 0.3555220    0.0546287    0.5606468
24 months   ki1000108-IRC              INDIA           0                    NA                 0.0523971   -0.0979233    0.1821366
24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0295011   -0.0962265    0.1408088
24 months   ki1017093b-PROVIDE         BANGLADESH      0                    NA                 0.0947413   -0.0083987    0.1873320
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                 0.1538303   -0.0005415    0.2843844
24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0778161    0.0204165    0.1318523
24 months   ki1113344-GMS-Nepal        NEPAL           0                    NA                 0.0717787   -0.0067202    0.1441566
24 months   ki1114097-CMIN             BANGLADESH      0                    NA                 0.2999194   -0.0655226    0.5400258
24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.2546860   -0.0264565    0.4588247
24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                -0.0191989   -0.1375685    0.0868538
24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.2654924    0.0360108    0.4403449
24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0928919    0.0539630    0.1302189
24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                 0.0507933    0.0017705    0.0974086
24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                 0.1486884    0.1180127    0.1782971
24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.1400836    0.0929773    0.1847434
