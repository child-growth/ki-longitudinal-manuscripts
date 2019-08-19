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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        enstunt    swasted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      202     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        8     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0       31     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0      169     183
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0       14     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          0                0      168     203
Birth       ki0047075b-MAL-ED          INDIA                          0                1        5     203
Birth       ki0047075b-MAL-ED          INDIA                          1                0       28     203
Birth       ki0047075b-MAL-ED          INDIA                          1                1        2     203
Birth       ki0047075b-MAL-ED          NEPAL                          0                0      150     168
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        4     168
Birth       ki0047075b-MAL-ED          NEPAL                          1                0       14     168
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0     168
Birth       ki0047075b-MAL-ED          PERU                           0                0      253     279
Birth       ki0047075b-MAL-ED          PERU                           0                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           1                0       26     279
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      230     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       26     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      104     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       73      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       10      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1      88
Birth       ki1000108-IRC              INDIA                          0                0      265     343
Birth       ki1000108-IRC              INDIA                          0                1       53     343
Birth       ki1000108-IRC              INDIA                          1                0       24     343
Birth       ki1000108-IRC              INDIA                          1                1        1     343
Birth       ki1000109-EE               PAKISTAN                       0                0        0       1
Birth       ki1000109-EE               PAKISTAN                       0                1        0       1
Birth       ki1000109-EE               PAKISTAN                       1                0        1       1
Birth       ki1000109-EE               PAKISTAN                       1                1        0       1
Birth       ki1000109-ResPak           PAKISTAN                       0                0        5       6
Birth       ki1000109-ResPak           PAKISTAN                       0                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       1                0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       1                1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      138     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0       23     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        2     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0       25      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0       21      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0      23
Birth       ki1101329-Keneba           GAMBIA                         0                0     1336    1423
Birth       ki1101329-Keneba           GAMBIA                         0                1       11    1423
Birth       ki1101329-Keneba           GAMBIA                         1                0       76    1423
Birth       ki1101329-Keneba           GAMBIA                         1                1        0    1423
Birth       ki1114097-CMIN             BANGLADESH                     0                0        6       8
Birth       ki1114097-CMIN             BANGLADESH                     0                1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     1                0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     1                1        0       8
Birth       ki1114097-CMIN             BRAZIL                         0                0      109     111
Birth       ki1114097-CMIN             BRAZIL                         0                1        1     111
Birth       ki1114097-CMIN             BRAZIL                         1                0        1     111
Birth       ki1114097-CMIN             BRAZIL                         1                1        0     111
Birth       ki1114097-CMIN             PERU                           0                0       10      10
Birth       ki1114097-CMIN             PERU                           0                1        0      10
Birth       ki1114097-CMIN             PERU                           1                0        0      10
Birth       ki1114097-CMIN             PERU                           1                1        0      10
Birth       ki1114097-CONTENT          PERU                           0                0        2       2
Birth       ki1114097-CONTENT          PERU                           0                1        0       2
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0                0    12887   13824
Birth       ki1119695-PROBIT           BELARUS                        0                1      911   13824
Birth       ki1119695-PROBIT           BELARUS                        1                0       26   13824
Birth       ki1119695-PROBIT           BELARUS                        1                1        0   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    11474   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1      752   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0      651   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1       39   12916
Birth       ki1135781-COHORTS          GUATEMALA                      0                0      672     756
Birth       ki1135781-COHORTS          GUATEMALA                      0                1       60     756
Birth       ki1135781-COHORTS          GUATEMALA                      1                0       24     756
Birth       ki1135781-COHORTS          GUATEMALA                      1                1        0     756
Birth       ki1135781-COHORTS          INDIA                          0                0     5514    6193
Birth       ki1135781-COHORTS          INDIA                          0                1      299    6193
Birth       ki1135781-COHORTS          INDIA                          1                0      359    6193
Birth       ki1135781-COHORTS          INDIA                          1                1       21    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    0                0     2695    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    0                1      118    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0       83    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1        3    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    13024   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1      218   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     2431   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1       36   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0      570     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        5     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      108     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        0     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      200     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       39     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      188     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                0      193     236
6 months    ki0047075b-MAL-ED          INDIA                          0                1        4     236
6 months    ki0047075b-MAL-ED          INDIA                          1                0       38     236
6 months    ki0047075b-MAL-ED          INDIA                          1                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      209     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       27     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0                0      239     273
6 months    ki0047075b-MAL-ED          PERU                           0                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           1                0       34     273
6 months    ki0047075b-MAL-ED          PERU                           1                1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      226     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       25     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      208     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       39     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      283     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       11     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       73     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     368
6 months    ki1000108-IRC              INDIA                          0                0      340     408
6 months    ki1000108-IRC              INDIA                          0                1       20     408
6 months    ki1000108-IRC              INDIA                          1                0       46     408
6 months    ki1000108-IRC              INDIA                          1                1        2     408
6 months    ki1000109-EE               PAKISTAN                       0                0      241     376
6 months    ki1000109-EE               PAKISTAN                       0                1        5     376
6 months    ki1000109-EE               PAKISTAN                       1                0      126     376
6 months    ki1000109-EE               PAKISTAN                       1                1        4     376
6 months    ki1000109-ResPak           PAKISTAN                       0                0      171     235
6 months    ki1000109-ResPak           PAKISTAN                       0                1        2     235
6 months    ki1000109-ResPak           PAKISTAN                       1                0       55     235
6 months    ki1000109-ResPak           PAKISTAN                       1                1        7     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0      943    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1       26    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      348    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       17    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      222     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1       10     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      139     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1        9     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      447     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        4     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       84     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1        1     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      518     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        4     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       59     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        1     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      613     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      102     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1879    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       11    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      137    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1    2028
6 months    ki1101329-Keneba           GAMBIA                         0                0     1865    2089
6 months    ki1101329-Keneba           GAMBIA                         0                1       28    2089
6 months    ki1101329-Keneba           GAMBIA                         1                0      190    2089
6 months    ki1101329-Keneba           GAMBIA                         1                1        6    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      228     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0       71     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        0     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      500     563
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1        4     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       56     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        3     563
6 months    ki1114097-CMIN             BANGLADESH                     0                0      149     243
6 months    ki1114097-CMIN             BANGLADESH                     0                1        2     243
6 months    ki1114097-CMIN             BANGLADESH                     1                0       89     243
6 months    ki1114097-CMIN             BANGLADESH                     1                1        3     243
6 months    ki1114097-CMIN             BRAZIL                         0                0      104     108
6 months    ki1114097-CMIN             BRAZIL                         0                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         1                0        4     108
6 months    ki1114097-CMIN             BRAZIL                         1                1        0     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                0      740     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                1        7     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0       99     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1        3     849
6 months    ki1114097-CMIN             PERU                           0                0      601     636
6 months    ki1114097-CMIN             PERU                           0                1        3     636
6 months    ki1114097-CMIN             PERU                           1                0       32     636
6 months    ki1114097-CMIN             PERU                           1                1        0     636
6 months    ki1114097-CONTENT          PERU                           0                0      197     215
6 months    ki1114097-CONTENT          PERU                           0                1        0     215
6 months    ki1114097-CONTENT          PERU                           1                0       18     215
6 months    ki1114097-CONTENT          PERU                           1                1        0     215
6 months    ki1119695-PROBIT           BELARUS                        0                0    15611   15757
6 months    ki1119695-PROBIT           BELARUS                        0                1       16   15757
6 months    ki1119695-PROBIT           BELARUS                        1                0      130   15757
6 months    ki1119695-PROBIT           BELARUS                        1                1        0   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     7341    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1       73    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      844    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1        6    8264
6 months    ki1135781-COHORTS          GUATEMALA                      0                0      805     963
6 months    ki1135781-COHORTS          GUATEMALA                      0                1        4     963
6 months    ki1135781-COHORTS          GUATEMALA                      1                0      152     963
6 months    ki1135781-COHORTS          GUATEMALA                      1                1        2     963
6 months    ki1135781-COHORTS          INDIA                          0                0     5869    6850
6 months    ki1135781-COHORTS          INDIA                          0                1      165    6850
6 months    ki1135781-COHORTS          INDIA                          1                0      764    6850
6 months    ki1135781-COHORTS          INDIA                          1                1       52    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2518    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    0                1       31    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0      153    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1        4    2706
6 months    ki1148112-LCNI-5           MALAWI                         0                0      530     839
6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         1                0      309     839
6 months    ki1148112-LCNI-5           MALAWI                         1                1        0     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    11570   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      147   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     4984   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1       83   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3451    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       22    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     1349    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       11    4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      179     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       33     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      152     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                0      188     227
24 months   ki0047075b-MAL-ED          INDIA                          0                1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          1                0       37     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      202     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       26     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0                0      173     201
24 months   ki0047075b-MAL-ED          PERU                           0                1        1     201
24 months   ki0047075b-MAL-ED          PERU                           1                0       27     201
24 months   ki0047075b-MAL-ED          PERU                           1                1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      216     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      181     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       33     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      295     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       74     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     372
24 months   ki1000108-IRC              INDIA                          0                0      358     409
24 months   ki1000108-IRC              INDIA                          0                1        4     409
24 months   ki1000108-IRC              INDIA                          1                0       46     409
24 months   ki1000108-IRC              INDIA                          1                1        1     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      348     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        6     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       70     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        4     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      511     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        8     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       58     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        1     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      443     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0       67     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        3     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0                0     1521    1726
24 months   ki1101329-Keneba           GAMBIA                         0                1       29    1726
24 months   ki1101329-Keneba           GAMBIA                         1                0      175    1726
24 months   ki1101329-Keneba           GAMBIA                         1                1        1    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      432     498
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       15     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       51     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     498
24 months   ki1114097-CMIN             BANGLADESH                     0                0      152     243
24 months   ki1114097-CMIN             BANGLADESH                     0                1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     1                0       89     243
24 months   ki1114097-CMIN             BANGLADESH                     1                1        1     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                0      447     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                1        3     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       99     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1        2     551
24 months   ki1114097-CMIN             PERU                           0                0      343     429
24 months   ki1114097-CMIN             PERU                           0                1        0     429
24 months   ki1114097-CMIN             PERU                           1                0       85     429
24 months   ki1114097-CMIN             PERU                           1                1        1     429
24 months   ki1114097-CONTENT          PERU                           0                0      147     164
24 months   ki1114097-CONTENT          PERU                           0                1        0     164
24 months   ki1114097-CONTENT          PERU                           1                0       17     164
24 months   ki1114097-CONTENT          PERU                           1                1        0     164
24 months   ki1119695-PROBIT           BELARUS                        0                0     3956    3971
24 months   ki1119695-PROBIT           BELARUS                        0                1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        1                0       11    3971
24 months   ki1119695-PROBIT           BELARUS                        1                1        0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      301     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       23     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       92     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1        7     423
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      741    1082
24 months   ki1135781-COHORTS          GUATEMALA                      0                1        3    1082
24 months   ki1135781-COHORTS          GUATEMALA                      1                0      337    1082
24 months   ki1135781-COHORTS          GUATEMALA                      1                1        1    1082
24 months   ki1135781-COHORTS          INDIA                          0                0     4610    5291
24 months   ki1135781-COHORTS          INDIA                          0                1       46    5291
24 months   ki1135781-COHORTS          INDIA                          1                0      625    5291
24 months   ki1135781-COHORTS          INDIA                          1                1       10    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     2290    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1       21    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      134    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1        4    2449
24 months   ki1148112-LCNI-5           MALAWI                         0                0      365     563
24 months   ki1148112-LCNI-5           MALAWI                         0                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         1                0      197     563
24 months   ki1148112-LCNI-5           MALAWI                         1                1        1     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     5765    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      168    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     2503    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      167    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     3316    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       64    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     1290    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1       65    4735


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
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/d86696df-f4dd-4cf8-a325-98c6d03de578/cd2db61d-9d38-4591-8d3b-01f0bb3d4532/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d86696df-f4dd-4cf8-a325-98c6d03de578/cd2db61d-9d38-4591-8d3b-01f0bb3d4532/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d86696df-f4dd-4cf8-a325-98c6d03de578/cd2db61d-9d38-4591-8d3b-01f0bb3d4532/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d86696df-f4dd-4cf8-a325-98c6d03de578/cd2db61d-9d38-4591-8d3b-01f0bb3d4532/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0615320   0.0572729   0.0657911
Birth       ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0556395   0.0383615   0.0729175
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.0514947   0.0458142   0.0571753
Birth       ki1135781-COHORTS          INDIA        1                    NA                0.0538085   0.0310498   0.0765673
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0165156   0.0138439   0.0191873
Birth       kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.0145469   0.0096128   0.0194809
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0271683   0.0170821   0.0372546
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0464901   0.0176742   0.0753061
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.0431035   0.0169358   0.0692711
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.0608108   0.0222580   0.0993636
6 months    ki1101329-Keneba           GAMBIA       0                    NA                0.0147913   0.0093520   0.0202307
6 months    ki1101329-Keneba           GAMBIA       1                    NA                0.0306122   0.0064899   0.0547346
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0098462   0.0075986   0.0120939
6 months    ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0070588   0.0014303   0.0126873
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0273287   0.0232131   0.0314442
6 months    ki1135781-COHORTS          INDIA        1                    NA                0.0639229   0.0470764   0.0807695
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0125514   0.0102816   0.0148212
6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.0158345   0.0120122   0.0196569
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0063463   0.0034816   0.0092109
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0080285   0.0002496   0.0158074
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0709877   0.0429919   0.0989834
24 months   ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0707071   0.0201535   0.1212607
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0098553   0.0070160   0.0126947
24 months   ki1135781-COHORTS          INDIA        1                    NA                0.0153666   0.0054193   0.0253139
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0282443   0.0238407   0.0326479
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.0626513   0.0526595   0.0726430
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0189631   0.0137773   0.0241489
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0477349   0.0344552   0.0610146


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0612419   0.0571066   0.0653771
Birth       ki1135781-COHORTS          INDIA        NA                   NA                0.0516712   0.0461576   0.0571849
Birth       kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.0161691   0.0138058   0.0185324
6 months    ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.0500000   0.0280580   0.0719420
6 months    ki1101329-Keneba           GAMBIA       NA                   NA                0.0162757   0.0108484   0.0217031
6 months    ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0095595   0.0074615   0.0116576
6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0316788   0.0275309   0.0358267
6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.0137035   0.0116269   0.0157801
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0068281   0.0038634   0.0097927
24 months   ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0709220   0.0464309   0.0954131
24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0105840   0.0078264   0.0133416
24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.0389399   0.0346167   0.0432631
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0272439   0.0220352   0.0324527


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 0.9042365   0.6578363   1.242929
Birth       ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA        1                    0                 1.0449332   0.6749632   1.617696
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH   1                    0                 0.8807967   0.6087691   1.274379
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.7111869   0.7594696   3.855534
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.4108107   0.5864838   3.393763
6 months    ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA       1                    0                 2.0696064   0.8674280   4.937898
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 0.7169057   0.3127925   1.643114
6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA        1                    0                 2.3390420   1.7267150   3.168512
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.2615725   0.9488031   1.677445
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2650803   0.4328456   3.697458
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 0.9960474   0.4402169   2.253686
24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA        1                    0                 1.5592153   0.7676296   3.167091
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    0                 2.2181926   1.7744582   2.772890
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 2.5172527   1.6973974   3.733104


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0002901   -0.0012376   0.0006573
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0001765   -0.0012742   0.0016272
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    NA                -0.0003465   -0.0011714   0.0004784
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0050655   -0.0038775   0.0140086
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0068966   -0.0112717   0.0250648
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0014844   -0.0008441   0.0038129
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0002867   -0.0009103   0.0003369
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0043502    0.0022756   0.0064247
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0011521   -0.0001330   0.0024372
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0004818   -0.0018272   0.0027908
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0000657   -0.0135905   0.0134591
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0007287   -0.0004843   0.0019416
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0106956    0.0073429   0.0140484
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0082808    0.0041912   0.0123704


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0047376   -0.0203252   0.0106120
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0034165   -0.0250555   0.0310976
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    NA                -0.0214311   -0.0731047   0.0277543
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.1571494   -0.1551812   0.3850341
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.1379310   -0.3069960   0.4313962
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0912029   -0.0600361   0.2208641
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0299912   -0.0969920   0.0329175
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.1373205    0.0718164   0.1982019
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0840725   -0.0134827   0.1722373
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0705628   -0.3200587   0.3455946
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0009259   -0.2110026   0.1727081
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0688456   -0.0516105   0.1755041
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.2746697    0.1898531   0.3506067
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.3039517    0.1516769   0.4288930
