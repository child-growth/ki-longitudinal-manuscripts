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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      179     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        8     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0       28     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     215
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0       56      62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        6      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0      62
Birth       ki0047075b-MAL-ED          INDIA                          0                0       37      45
Birth       ki0047075b-MAL-ED          INDIA                          0                1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          1                0        8      45
Birth       ki0047075b-MAL-ED          INDIA                          1                1        0      45
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       24      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0      26
Birth       ki0047075b-MAL-ED          PERU                           0                0      207     228
Birth       ki0047075b-MAL-ED          PERU                           0                1        0     228
Birth       ki0047075b-MAL-ED          PERU                           1                0       21     228
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      112     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0        8     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      102     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       13     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       74      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       11      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1      86
Birth       ki1000108-IRC              INDIA                          0                0      265     343
Birth       ki1000108-IRC              INDIA                          0                1       53     343
Birth       ki1000108-IRC              INDIA                          1                0       24     343
Birth       ki1000108-IRC              INDIA                          1                1        1     343
Birth       ki1000109-EE               PAKISTAN                       0                0      131     177
Birth       ki1000109-EE               PAKISTAN                       0                1        6     177
Birth       ki1000109-EE               PAKISTAN                       1                0       40     177
Birth       ki1000109-EE               PAKISTAN                       1                1        0     177
Birth       ki1000109-ResPak           PAKISTAN                       0                0       28      38
Birth       ki1000109-ResPak           PAKISTAN                       0                1        0      38
Birth       ki1000109-ResPak           PAKISTAN                       1                0       10      38
Birth       ki1000109-ResPak           PAKISTAN                       1                1        0      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      878    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1       23    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0      196    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        6    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0      475     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1       31     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0       62     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        7     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0      478     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1       13     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0       41     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        0     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0      579     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1       46     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       81     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1     707
Birth       ki1101329-Keneba           GAMBIA                         0                0     1322    1466
Birth       ki1101329-Keneba           GAMBIA                         0                1      103    1466
Birth       ki1101329-Keneba           GAMBIA                         1                0       41    1466
Birth       ki1101329-Keneba           GAMBIA                         1                1        0    1466
Birth       ki1113344-GMS-Nepal        NEPAL                          0                0      545     641
Birth       ki1113344-GMS-Nepal        NEPAL                          0                1       25     641
Birth       ki1113344-GMS-Nepal        NEPAL                          1                0       69     641
Birth       ki1113344-GMS-Nepal        NEPAL                          1                1        2     641
Birth       ki1114097-CMIN             BANGLADESH                     0                0       16      19
Birth       ki1114097-CMIN             BANGLADESH                     0                1        1      19
Birth       ki1114097-CMIN             BANGLADESH                     1                0        2      19
Birth       ki1114097-CMIN             BANGLADESH                     1                1        0      19
Birth       ki1114097-CONTENT          PERU                           0                0        2       2
Birth       ki1114097-CONTENT          PERU                           0                1        0       2
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0                0    12898   13830
Birth       ki1119695-PROBIT           BELARUS                        0                1      906   13830
Birth       ki1119695-PROBIT           BELARUS                        1                0       26   13830
Birth       ki1119695-PROBIT           BELARUS                        1                1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    11474   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1      753   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0      651   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1       39   12917
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    14737   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1      290   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     2928   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1       59   18014
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0     1939    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1       24    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      426    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        7    2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      200     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       39     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      184     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       25     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                0      193     236
6 months    ki0047075b-MAL-ED          INDIA                          0                1        5     236
6 months    ki0047075b-MAL-ED          INDIA                          1                0       37     236
6 months    ki0047075b-MAL-ED          INDIA                          1                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      208     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       28     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0                0      239     273
6 months    ki0047075b-MAL-ED          PERU                           0                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           1                0       34     273
6 months    ki0047075b-MAL-ED          PERU                           1                1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      224     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       27     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      208     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       39     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      281     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       11     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       75     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     368
6 months    ki1000108-IRC              INDIA                          0                0      336     408
6 months    ki1000108-IRC              INDIA                          0                1       20     408
6 months    ki1000108-IRC              INDIA                          1                0       50     408
6 months    ki1000108-IRC              INDIA                          1                1        2     408
6 months    ki1000109-EE               PAKISTAN                       0                0      205     375
6 months    ki1000109-EE               PAKISTAN                       0                1        4     375
6 months    ki1000109-EE               PAKISTAN                       1                0      157     375
6 months    ki1000109-EE               PAKISTAN                       1                1        9     375
6 months    ki1000109-ResPak           PAKISTAN                       0                0      171     239
6 months    ki1000109-ResPak           PAKISTAN                       0                1        2     239
6 months    ki1000109-ResPak           PAKISTAN                       1                0       59     239
6 months    ki1000109-ResPak           PAKISTAN                       1                1        7     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0      943    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1       26    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      348    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       17    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      222     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1       10     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      139     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1        9     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      447     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        5     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       84     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1        1     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      538     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        4     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       60     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        1     603
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
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      468     564
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1        5     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       89     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        2     564
6 months    ki1114097-CMIN             BANGLADESH                     0                0      149     243
6 months    ki1114097-CMIN             BANGLADESH                     0                1        2     243
6 months    ki1114097-CMIN             BANGLADESH                     1                0       89     243
6 months    ki1114097-CMIN             BANGLADESH                     1                1        3     243
6 months    ki1114097-CONTENT          PERU                           0                0      197     215
6 months    ki1114097-CONTENT          PERU                           0                1        0     215
6 months    ki1114097-CONTENT          PERU                           1                0       18     215
6 months    ki1114097-CONTENT          PERU                           1                1        0     215
6 months    ki1119695-PROBIT           BELARUS                        0                0    15612   15758
6 months    ki1119695-PROBIT           BELARUS                        0                1       16   15758
6 months    ki1119695-PROBIT           BELARUS                        1                0      130   15758
6 months    ki1119695-PROBIT           BELARUS                        1                1        0   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     7559    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1       73    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      867    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1        6    8505
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    11527   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      146   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     5027   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1       84   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3451    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       22    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     1349    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       11    4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      179     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       33     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      149     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       19     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                0      189     227
24 months   ki0047075b-MAL-ED          INDIA                          0                1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          1                0       36     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      201     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       27     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0                0      173     201
24 months   ki0047075b-MAL-ED          PERU                           0                1        1     201
24 months   ki0047075b-MAL-ED          PERU                           1                0       26     201
24 months   ki0047075b-MAL-ED          PERU                           1                1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      214     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       24     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      181     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       33     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      293     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       76     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     372
24 months   ki1000108-IRC              INDIA                          0                0      354     409
24 months   ki1000108-IRC              INDIA                          0                1        4     409
24 months   ki1000108-IRC              INDIA                          1                0       50     409
24 months   ki1000108-IRC              INDIA                          1                1        1     409
24 months   ki1000109-EE               PAKISTAN                       0                0       99     168
24 months   ki1000109-EE               PAKISTAN                       0                1        1     168
24 months   ki1000109-EE               PAKISTAN                       1                0       65     168
24 months   ki1000109-EE               PAKISTAN                       1                1        3     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      348     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        6     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       70     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        4     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      511     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        8     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       59     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        1     579
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
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      390     487
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       15     487
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       82     487
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     487
24 months   ki1114097-CMIN             BANGLADESH                     0                0      152     243
24 months   ki1114097-CMIN             BANGLADESH                     0                1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     1                0       89     243
24 months   ki1114097-CMIN             BANGLADESH                     1                1        1     243
24 months   ki1114097-CONTENT          PERU                           0                0      147     164
24 months   ki1114097-CONTENT          PERU                           0                1        0     164
24 months   ki1114097-CONTENT          PERU                           1                0       17     164
24 months   ki1114097-CONTENT          PERU                           1                1        0     164
24 months   ki1119695-PROBIT           BELARUS                        0                0     3957    3972
24 months   ki1119695-PROBIT           BELARUS                        0                1        4    3972
24 months   ki1119695-PROBIT           BELARUS                        1                0       11    3972
24 months   ki1119695-PROBIT           BELARUS                        1                1        0    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      308     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       23     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       94     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1        8     433
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      740    1082
24 months   ki1135781-COHORTS          GUATEMALA                      0                1        3    1082
24 months   ki1135781-COHORTS          GUATEMALA                      1                0      338    1082
24 months   ki1135781-COHORTS          GUATEMALA                      1                1        1    1082
24 months   ki1135781-COHORTS          INDIA                          0                0     4608    5291
24 months   ki1135781-COHORTS          INDIA                          0                1       46    5291
24 months   ki1135781-COHORTS          INDIA                          1                0      627    5291
24 months   ki1135781-COHORTS          INDIA                          1                1       10    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     2290    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1       21    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      134    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1        4    2449
24 months   ki1148112-LCNI-5           MALAWI                         0                0      365     563
24 months   ki1148112-LCNI-5           MALAWI                         0                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         1                0      197     563
24 months   ki1148112-LCNI-5           MALAWI                         1                1        1     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     5747    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      167    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     2521    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      168    8603
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
![](/tmp/6c452d86-a73c-4a19-9604-f93faadcc631/e7175ba9-6835-4edf-8fbf-9b631311490f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6c452d86-a73c-4a19-9604-f93faadcc631/e7175ba9-6835-4edf-8fbf-9b631311490f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6c452d86-a73c-4a19-9604-f93faadcc631/e7175ba9-6835-4edf-8fbf-9b631311490f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6c452d86-a73c-4a19-9604-f93faadcc631/e7175ba9-6835-4edf-8fbf-9b631311490f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0255272    0.0120773   0.0389770
Birth       ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0297030   -0.0011491   0.0605550
Birth       ki1017093-NIH-Birth        BANGLADESH   0                    NA                0.0612648    0.0403513   0.0821784
Birth       ki1017093-NIH-Birth        BANGLADESH   1                    NA                0.1014493    0.0301480   0.1727506
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0616044    0.0573430   0.0658658
Birth       ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0561497    0.0388785   0.0734209
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.0514891    0.0458104   0.0571678
Birth       ki1135781-COHORTS          INDIA        1                    NA                0.0536121    0.0305991   0.0766252
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0192529    0.0165956   0.0219102
Birth       kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.0193616    0.0145712   0.0241519
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0122262    0.0059043   0.0185481
Birth       kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0161663    0.0068108   0.0255218
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0271683    0.0170821   0.0372546
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0464901    0.0176742   0.0753061
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.0431035    0.0169358   0.0692711
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.0608108    0.0222580   0.0993636
6 months    ki1101329-Keneba           GAMBIA       0                    NA                0.0147913    0.0093520   0.0202307
6 months    ki1101329-Keneba           GAMBIA       1                    NA                0.0306122    0.0064899   0.0547346
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0095650    0.0073812   0.0117488
6 months    ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0068729    0.0013921   0.0123536
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0273525    0.0232375   0.0314676
6 months    ki1135781-COHORTS          INDIA        1                    NA                0.0642278    0.0474499   0.0810057
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0125623    0.0102804   0.0148442
6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.0158535    0.0120177   0.0196893
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0063437    0.0034778   0.0092096
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0080426    0.0002379   0.0158472
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                0.0694864    0.0420614   0.0969115
24 months   ki1126311-ZVITAMBO         ZIMBABWE     1                    NA                0.0784314    0.0261967   0.1306660
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0098663    0.0070256   0.0127070
24 months   ki1135781-COHORTS          INDIA        1                    NA                0.0158077    0.0059800   0.0256355
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0283293    0.0238998   0.0327588
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.0628226    0.0529350   0.0727102
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0189805    0.0137516   0.0242094
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0478365    0.0346190   0.0610541


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.0262919   0.0122874   0.0402964
Birth       ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.0660870   0.0457632   0.0864107
Birth       ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0613145   0.0571772   0.0654519
Birth       ki1135781-COHORTS          INDIA        NA                   NA                0.0516712   0.0461576   0.0571849
Birth       kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.0193738   0.0169653   0.0217823
Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0129382   0.0075150   0.0183614
6 months    ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.0500000   0.0280580   0.0719420
6 months    ki1101329-Keneba           GAMBIA       NA                   NA                0.0162757   0.0108484   0.0217031
6 months    ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0092887   0.0072498   0.0113275
6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0316788   0.0275309   0.0358267
6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.0137035   0.0116269   0.0157801
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0068281   0.0038634   0.0097927
24 months   ki1126311-ZVITAMBO         ZIMBABWE     NA                   NA                0.0715935   0.0472820   0.0959051
24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0105840   0.0078264   0.0133416
24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.0389399   0.0346167   0.0432631
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0272439   0.0220352   0.0324527


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.1635816   0.4343503   3.117120
Birth       ki1017093-NIH-Birth        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH   1                    0                 1.6559140   0.7580633   3.617179
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 0.9114558   0.6649944   1.249261
Birth       ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA        1                    0                 1.0412324   0.6685103   1.621762
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.0056431   0.7636242   1.324366
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.3222671   0.6048868   2.890442
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.7111869   0.7594696   3.855534
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.4108107   0.5864838   3.393763
6 months    ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA       1                    0                 2.0696064   0.8674280   4.937898
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 0.7185426   0.3134818   1.646996
6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA        1                    0                 2.3481469   1.7369126   3.174480
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.2619859   0.9470179   1.681709
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2678032   0.4331793   3.710530
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE     1                    0                 1.1287298   0.5204485   2.447948
24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA        1                    0                 1.6021906   0.8075671   3.178702
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    0                 2.2175863   1.7754557   2.769818
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 2.5203025   1.6989419   3.738753


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0007647   -0.0044690   0.0059985
Birth       ki1017093-NIH-Birth        BANGLADESH   0                    NA                 0.0048221   -0.0041582   0.0138025
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0002898   -0.0012378   0.0006581
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0001821   -0.0012667   0.0016309
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0001209   -0.0007817   0.0010235
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0007120   -0.0013405   0.0027646
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0050655   -0.0038775   0.0140086
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0068966   -0.0112717   0.0250648
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0014844   -0.0008441   0.0038129
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0002763   -0.0008822   0.0003295
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0043263    0.0022510   0.0064015
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0011412   -0.0001701   0.0024525
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0004844   -0.0018246   0.0027933
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0021071   -0.0117951   0.0160093
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0007177   -0.0004943   0.0019297
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0106106    0.0072457   0.0139756
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0082635    0.0041515   0.0123754


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0290865   -0.1870240   0.2058517
Birth       ki1017093-NIH-Birth        BANGLADESH   0                    NA                 0.0729665   -0.0715119   0.1979640
Birth       ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0047272   -0.0203045   0.0106124
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0035246   -0.0249094   0.0311698
Birth       kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0062401   -0.0415483   0.0518358
Birth       kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0550343   -0.1272582   0.2078477
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.1571494   -0.1551812   0.3850341
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.1379310   -0.3069960   0.4313962
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0912029   -0.0600361   0.2208641
6 months    ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                -0.0297498   -0.0967402   0.0331487
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.1365674    0.0710488   0.1974649
6 months    kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0832779   -0.0163826   0.1731662
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0709376   -0.3196513   0.3459204
24 months   ki1126311-ZVITAMBO         ZIMBABWE     0                    NA                 0.0294318   -0.1852710   0.2052429
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0678092   -0.0525696   0.1744206
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.2724870    0.1871235   0.3488862
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.3033138    0.1494826   0.4293218
