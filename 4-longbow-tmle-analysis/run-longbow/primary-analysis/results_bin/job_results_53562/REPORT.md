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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      155     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       32     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0       24     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        4     215
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0       54      62
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        2      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        6      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0      62
Birth       ki0047075b-MAL-ED          INDIA                          0               0       33      45
Birth       ki0047075b-MAL-ED          INDIA                          0               1        4      45
Birth       ki0047075b-MAL-ED          INDIA                          1               0        7      45
Birth       ki0047075b-MAL-ED          INDIA                          1               1        1      45
Birth       ki0047075b-MAL-ED          NEPAL                          0               0       24      26
Birth       ki0047075b-MAL-ED          NEPAL                          0               1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        1      26
Birth       ki0047075b-MAL-ED          PERU                           0               0      202     228
Birth       ki0047075b-MAL-ED          PERU                           0               1        5     228
Birth       ki0047075b-MAL-ED          PERU                           1               0       21     228
Birth       ki0047075b-MAL-ED          PERU                           1               1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      100     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       12     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        8     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      102     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       12     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       66      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        8      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        9      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        3      86
Birth       ki1000108-IRC              INDIA                          0               0      228     343
Birth       ki1000108-IRC              INDIA                          0               1       90     343
Birth       ki1000108-IRC              INDIA                          1               0       23     343
Birth       ki1000108-IRC              INDIA                          1               1        2     343
Birth       ki1000109-EE               PAKISTAN                       0               0      120     177
Birth       ki1000109-EE               PAKISTAN                       0               1       17     177
Birth       ki1000109-EE               PAKISTAN                       1               0       35     177
Birth       ki1000109-EE               PAKISTAN                       1               1        5     177
Birth       ki1000109-ResPak           PAKISTAN                       0               0       26      38
Birth       ki1000109-ResPak           PAKISTAN                       0               1        2      38
Birth       ki1000109-ResPak           PAKISTAN                       1               0        8      38
Birth       ki1000109-ResPak           PAKISTAN                       1               1        2      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0      806    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1       95    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0      179    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1       23    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0      360     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               1      146     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0       47     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1       22     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      386     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               1      105     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0       29     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1       12     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      468     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1      157     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0       67     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1       15     707
Birth       ki1101329-Keneba           GAMBIA                         0               0     1065    1466
Birth       ki1101329-Keneba           GAMBIA                         0               1      360    1466
Birth       ki1101329-Keneba           GAMBIA                         1               0       37    1466
Birth       ki1101329-Keneba           GAMBIA                         1               1        4    1466
Birth       ki1113344-GMS-Nepal        NEPAL                          0               0      450     641
Birth       ki1113344-GMS-Nepal        NEPAL                          0               1      120     641
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0       59     641
Birth       ki1113344-GMS-Nepal        NEPAL                          1               1       12     641
Birth       ki1114097-CMIN             BANGLADESH                     0               0       14      19
Birth       ki1114097-CMIN             BANGLADESH                     0               1        3      19
Birth       ki1114097-CMIN             BANGLADESH                     1               0        1      19
Birth       ki1114097-CMIN             BANGLADESH                     1               1        1      19
Birth       ki1114097-CONTENT          PERU                           0               0        2       2
Birth       ki1114097-CONTENT          PERU                           0               1        0       2
Birth       ki1114097-CONTENT          PERU                           1               0        0       2
Birth       ki1114097-CONTENT          PERU                           1               1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0               0    10917   13830
Birth       ki1119695-PROBIT           BELARUS                        0               1     2887   13830
Birth       ki1119695-PROBIT           BELARUS                        1               0       26   13830
Birth       ki1119695-PROBIT           BELARUS                        1               1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    10252   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1     1975   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0      604   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1       86   12917
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0    13377   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1     1650   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     2664   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      323   18014
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     1777    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1      186    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0      380    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1       53    2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      196     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0       37     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        2     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      183     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       25     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0               0      182     236
6 months    ki0047075b-MAL-ED          INDIA                          0               1       16     236
6 months    ki0047075b-MAL-ED          INDIA                          1               0       35     236
6 months    ki0047075b-MAL-ED          INDIA                          1               1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      205     236
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       27     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        1     236
6 months    ki0047075b-MAL-ED          PERU                           0               0      239     273
6 months    ki0047075b-MAL-ED          PERU                           0               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           1               0       34     273
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      221     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        6     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       26     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      207     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       39     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      258     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1       34     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0       64     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       12     368
6 months    ki1000108-IRC              INDIA                          0               0      308     408
6 months    ki1000108-IRC              INDIA                          0               1       48     408
6 months    ki1000108-IRC              INDIA                          1               0       46     408
6 months    ki1000108-IRC              INDIA                          1               1        6     408
6 months    ki1000109-EE               PAKISTAN                       0               0      185     375
6 months    ki1000109-EE               PAKISTAN                       0               1       24     375
6 months    ki1000109-EE               PAKISTAN                       1               0      143     375
6 months    ki1000109-EE               PAKISTAN                       1               1       23     375
6 months    ki1000109-ResPak           PAKISTAN                       0               0      160     239
6 months    ki1000109-ResPak           PAKISTAN                       0               1       13     239
6 months    ki1000109-ResPak           PAKISTAN                       1               0       53     239
6 months    ki1000109-ResPak           PAKISTAN                       1               1       13     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      868    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1      101    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      300    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       65    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0      196     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1       36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      115     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       33     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               0      426     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               1       26     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0       76     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1        9     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      523     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       19     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0       55     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        6     603
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
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      431     564
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1       42     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0       82     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        9     564
6 months    ki1114097-CMIN             BANGLADESH                     0               0      139     243
6 months    ki1114097-CMIN             BANGLADESH                     0               1       12     243
6 months    ki1114097-CMIN             BANGLADESH                     1               0       83     243
6 months    ki1114097-CMIN             BANGLADESH                     1               1        9     243
6 months    ki1114097-CONTENT          PERU                           0               0      197     215
6 months    ki1114097-CONTENT          PERU                           0               1        0     215
6 months    ki1114097-CONTENT          PERU                           1               0       18     215
6 months    ki1114097-CONTENT          PERU                           1               1        0     215
6 months    ki1119695-PROBIT           BELARUS                        0               0    15499   15758
6 months    ki1119695-PROBIT           BELARUS                        0               1      129   15758
6 months    ki1119695-PROBIT           BELARUS                        1               0      129   15758
6 months    ki1119695-PROBIT           BELARUS                        1               1        1   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     7395    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1      237    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      845    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       28    8505
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0    10788   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1      885   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     4575   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      536   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     3296    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1      177    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     1262    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1       98    4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      160     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       31     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        2     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      147     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       19     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0               0      171     227
24 months   ki0047075b-MAL-ED          INDIA                          0               1       20     227
24 months   ki0047075b-MAL-ED          INDIA                          1               0       29     227
24 months   ki0047075b-MAL-ED          INDIA                          1               1        7     227
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      198     228
24 months   ki0047075b-MAL-ED          NEPAL                          0               1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       25     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        2     228
24 months   ki0047075b-MAL-ED          PERU                           0               0      173     201
24 months   ki0047075b-MAL-ED          PERU                           0               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           1               0       24     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        3     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      213     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       24     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      178     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       32     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      283     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       66     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       11     372
24 months   ki1000108-IRC              INDIA                          0               0      332     409
24 months   ki1000108-IRC              INDIA                          0               1       26     409
24 months   ki1000108-IRC              INDIA                          1               0       46     409
24 months   ki1000108-IRC              INDIA                          1               1        5     409
24 months   ki1000109-EE               PAKISTAN                       0               0       90     168
24 months   ki1000109-EE               PAKISTAN                       0               1       10     168
24 months   ki1000109-EE               PAKISTAN                       1               0       48     168
24 months   ki1000109-EE               PAKISTAN                       1               1       20     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               0      311     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               1       43     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               0       64     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               1       10     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      469     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       50     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       48     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       12     579
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
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      334     487
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       71     487
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       62     487
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       20     487
24 months   ki1114097-CMIN             BANGLADESH                     0               0      142     243
24 months   ki1114097-CMIN             BANGLADESH                     0               1       11     243
24 months   ki1114097-CMIN             BANGLADESH                     1               0       76     243
24 months   ki1114097-CMIN             BANGLADESH                     1               1       14     243
24 months   ki1114097-CONTENT          PERU                           0               0      147     164
24 months   ki1114097-CONTENT          PERU                           0               1        0     164
24 months   ki1114097-CONTENT          PERU                           1               0       17     164
24 months   ki1114097-CONTENT          PERU                           1               1        0     164
24 months   ki1119695-PROBIT           BELARUS                        0               0     3917    3972
24 months   ki1119695-PROBIT           BELARUS                        0               1       44    3972
24 months   ki1119695-PROBIT           BELARUS                        1               0       11    3972
24 months   ki1119695-PROBIT           BELARUS                        1               1        0    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0      272     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1       59     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       82     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       20     433
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      718    1082
24 months   ki1135781-COHORTS          GUATEMALA                      0               1       25    1082
24 months   ki1135781-COHORTS          GUATEMALA                      1               0      314    1082
24 months   ki1135781-COHORTS          GUATEMALA                      1               1       25    1082
24 months   ki1135781-COHORTS          INDIA                          0               0     4267    5291
24 months   ki1135781-COHORTS          INDIA                          0               1      387    5291
24 months   ki1135781-COHORTS          INDIA                          1               0      539    5291
24 months   ki1135781-COHORTS          INDIA                          1               1       98    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0     2162    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1      149    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      120    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       18    2449
24 months   ki1148112-LCNI-5           MALAWI                         0               0      361     563
24 months   ki1148112-LCNI-5           MALAWI                         0               1        4     563
24 months   ki1148112-LCNI-5           MALAWI                         1               0      192     563
24 months   ki1148112-LCNI-5           MALAWI                         1               1        6     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0     4815    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1     1099    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     1910    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      779    8603
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/342caea1-49d2-40c4-849b-769b2e26b952/585cf100-4cfb-4329-8acd-2fdad62bb2e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/342caea1-49d2-40c4-849b-769b2e26b952/585cf100-4cfb-4329-8acd-2fdad62bb2e3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/342caea1-49d2-40c4-849b-769b2e26b952/585cf100-4cfb-4329-8acd-2fdad62bb2e3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/342caea1-49d2-40c4-849b-769b2e26b952/585cf100-4cfb-4329-8acd-2fdad62bb2e3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN      0                    NA                0.1240876   0.0687255   0.1794497
Birth       ki1000109-EE               PAKISTAN      1                    NA                0.1250000   0.0222203   0.2277797
Birth       ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.1057483   0.0756339   0.1358626
Birth       ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.1136796   0.0468465   0.1805126
Birth       ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2889606   0.2494470   0.3284743
Birth       ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3370829   0.2256622   0.4485037
Birth       ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.2132372   0.1769359   0.2495385
Birth       ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2553462   0.1068993   0.4037931
Birth       ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.2519477   0.2177838   0.2861115
Birth       ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.1862708   0.0944031   0.2781385
Birth       ki1113344-GMS-Nepal        NEPAL         0                    NA                0.2111546   0.1776502   0.2446590
Birth       ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1646957   0.0747171   0.2546744
Birth       ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1613376   0.1548152   0.1678599
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1291122   0.1030096   0.1552149
Birth       ki1135781-COHORTS          INDIA         0                    NA                0.1792151   0.1693537   0.1890764
Birth       ki1135781-COHORTS          INDIA         1                    NA                0.1394328   0.1041360   0.1747295
Birth       ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1565045   0.1430770   0.1699319
Birth       ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1303249   0.0604108   0.2002389
Birth       kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.1098322   0.1042377   0.1154266
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1069199   0.0953797   0.1184601
Birth       kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0947459   0.0782909   0.1112009
Birth       kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.1218549   0.0838813   0.1598286
6 months    ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.1161482   0.0792802   0.1530162
6 months    ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1586997   0.0751786   0.2422208
6 months    ki1000108-IRC              INDIA         0                    NA                0.1348315   0.0993091   0.1703538
6 months    ki1000108-IRC              INDIA         1                    NA                0.1153846   0.0284424   0.2023268
6 months    ki1000109-EE               PAKISTAN      0                    NA                0.1121399   0.0686555   0.1556243
6 months    ki1000109-EE               PAKISTAN      1                    NA                0.1297373   0.0774702   0.1820045
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                0.0751026   0.0353099   0.1148953
6 months    ki1000109-ResPak           PAKISTAN      1                    NA                0.2013959   0.1024075   0.3003843
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.1031326   0.0766254   0.1296397
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.1781350   0.1440001   0.2122699
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1516094   0.1047332   0.1984856
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.2088651   0.1412060   0.2765241
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0575221   0.0360371   0.0790072
6 months    ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.1058824   0.0404108   0.1713539
6 months    ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0350554   0.0195587   0.0505520
6 months    ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.0983607   0.0235660   0.1731553
6 months    ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0261011   0.0134710   0.0387313
6 months    ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.0490196   0.0070898   0.0909494
6 months    ki1101329-Keneba           GAMBIA        0                    NA                0.0569544   0.0465047   0.0674041
6 months    ki1101329-Keneba           GAMBIA        1                    NA                0.0668595   0.0322247   0.1014943
6 months    ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0887949   0.0631380   0.1144519
6 months    ki1113344-GMS-Nepal        NEPAL         1                    NA                0.0989011   0.0375108   0.1602914
6 months    ki1114097-CMIN             BANGLADESH    0                    NA                0.0794702   0.0362411   0.1226993
6 months    ki1114097-CMIN             BANGLADESH    1                    NA                0.0978261   0.0369955   0.1586567
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0310418   0.0271494   0.0349342
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0321784   0.0204643   0.0438924
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                0.0321384   0.0199789   0.0442980
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                0.0389610   0.0083837   0.0695383
6 months    ki1135781-COHORTS          INDIA         0                    NA                0.1162310   0.1081457   0.1243163
6 months    ki1135781-COHORTS          INDIA         1                    NA                0.2004461   0.1728106   0.2280815
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0581177   0.0490302   0.0672052
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                0.0867773   0.0417226   0.1318320
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                0.0150943   0.0047077   0.0254809
6 months    ki1148112-LCNI-5           MALAWI        1                    NA                0.0194175   0.0040230   0.0348120
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.0757909   0.0705078   0.0810740
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1056210   0.0963375   0.1149045
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0508626   0.0409949   0.0607303
6 months    kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.0718781   0.0522665   0.0914898
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                0.1047120   0.0611940   0.1482301
24 months   ki0047075b-MAL-ED          INDIA         1                    NA                0.1944444   0.0648755   0.3240134
24 months   ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0404213   0.0178424   0.0630003
24 months   ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1408262   0.0610824   0.2205700
24 months   ki1000108-IRC              INDIA         0                    NA                0.0726257   0.0457097   0.0995417
24 months   ki1000108-IRC              INDIA         1                    NA                0.0980392   0.0163267   0.1797517
24 months   ki1000109-EE               PAKISTAN      0                    NA                0.1037423   0.0434132   0.1640714
24 months   ki1000109-EE               PAKISTAN      1                    NA                0.2971067   0.1876098   0.4066035
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.1205180   0.0866368   0.1543992
24 months   ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.1447204   0.0669679   0.2224728
24 months   ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0960881   0.0706810   0.1214952
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.1908474   0.0868155   0.2948793
24 months   ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0742127   0.0497778   0.0986476
24 months   ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.1759034   0.0864259   0.2653808
24 months   ki1101329-Keneba           GAMBIA        0                    NA                0.1021750   0.0870745   0.1172755
24 months   ki1101329-Keneba           GAMBIA        1                    NA                0.1905227   0.1294295   0.2516160
24 months   ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1745714   0.1374812   0.2116616
24 months   ki1113344-GMS-Nepal        NEPAL         1                    NA                0.2319910   0.1381484   0.3258335
24 months   ki1114097-CMIN             BANGLADESH    0                    NA                0.0730761   0.0319583   0.1141939
24 months   ki1114097-CMIN             BANGLADESH    1                    NA                0.1638524   0.0881356   0.2395693
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1785391   0.1372033   0.2198749
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1974385   0.1201403   0.2747367
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                0.0335173   0.0205451   0.0464894
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                0.0729273   0.0452557   0.1005989
24 months   ki1135781-COHORTS          INDIA         0                    NA                0.0832455   0.0753146   0.0911765
24 months   ki1135781-COHORTS          INDIA         1                    NA                0.1511778   0.1230373   0.1793182
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0647234   0.0546630   0.0747837
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1279223   0.0696507   0.1861940
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.1855943   0.1744430   0.1967455
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.2904770   0.2720633   0.3088907
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1674387   0.1517844   0.1830930
24 months   kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2616328   0.2356795   0.2875861


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN      NA                   NA                0.1242938   0.0755526   0.1730349
Birth       ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.2059282   0.1745993   0.2372572
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1595572   0.1532418   0.1658725
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.1769740   0.1674681   0.1864799
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1095259   0.1044047   0.1146471
Birth       kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0997496   0.0843744   0.1151247
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA         NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1000109-EE               PAKISTAN      NA                   NA                0.1253333   0.0917776   0.1588891
6 months    ki1000109-ResPak           PAKISTAN      NA                   NA                0.1087866   0.0692283   0.1483450
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.0579225   0.0479029   0.0679420
6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0904255   0.0667359   0.1141152
6 months    ki1114097-CMIN             BANGLADESH    NA                   NA                0.0864198   0.0510184   0.1218211
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0311581   0.0274654   0.0348509
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0332295   0.0219033   0.0445557
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.1262774   0.1184108   0.1341439
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0594974   0.0505830   0.0684118
6 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.0166865   0.0080138   0.0253592
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0846640   0.0798626   0.0894653
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0569005   0.0480577   0.0657432
24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1000109-EE               PAKISTAN      NA                   NA                0.1785714   0.1204842   0.2366587
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.1106605   0.0958563   0.1254646
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1868583   0.1522030   0.2215136
24 months   ki1114097-CMIN             BANGLADESH    NA                   NA                0.1028807   0.0646041   0.1411572
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1824480   0.1460286   0.2188675
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0462107   0.0336957   0.0587258
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0916651   0.0838893   0.0994409
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.2182959   0.2084450   0.2281469
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.1942978   0.1810880   0.2075076


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000109-EE               PAKISTAN      1                    0                 1.0073529   0.3952817   2.5671818
Birth       ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA         1                    0                 1.0750017   0.6197938   1.8645373
Birth       ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH    1                    0                 1.1665359   0.8157953   1.6680729
Birth       ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH    1                    0                 1.1974750   0.6530437   2.1957892
Birth       ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 0.7393235   0.4430956   1.2335921
Birth       ki1113344-GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL         1                    0                 0.7799770   0.4413897   1.3782927
Birth       ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 0.8002614   0.6511897   0.9834589
Birth       ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         1                    0                 0.7780191   0.6004788   1.0080519
Birth       ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   1                    0                 0.8327231   0.4837830   1.4333446
Birth       kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    0                 0.9734844   0.8660858   1.0942010
Birth       kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.2861234   0.9031062   1.8315823
6 months    ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 1.3663545   0.7388233   2.5268892
6 months    ki1000108-IRC              INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA         1                    0                 0.8557692   0.3852033   1.9011805
6 months    ki1000109-EE               PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN      1                    0                 1.1569239   0.6601463   2.0275398
6 months    ki1000109-ResPak           PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN      1                    0                 2.6816107   1.2961862   5.5478416
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    0                 1.7272431   1.3749373   2.1698215
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 1.3776522   0.8795258   2.1578964
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH    1                    0                 1.8407240   0.8938320   3.7907176
6 months    ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH    1                    0                 2.8058671   1.1643246   6.7617656
6 months    ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 1.8780637   0.7029196   5.0178194
6 months    ki1101329-Keneba           GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA        1                    0                 1.1739128   0.6775834   2.0338033
6 months    ki1113344-GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL         1                    0                 1.1138148   0.5616423   2.2088494
6 months    ki1114097-CMIN             BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH    1                    0                 1.2309783   0.5388246   2.8122463
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.0366137   0.7053692   1.5234120
6 months    ki1135781-COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     1                    0                 1.2122877   0.5072524   2.8972591
6 months    ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         1                    0                 1.7245488   1.4778474   2.0124328
6 months    ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   1                    0                 1.4931301   0.8680720   2.5682633
6 months    ki1148112-LCNI-5           MALAWI        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI        1                    0                 1.2864078   0.4502572   3.6753328
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    0                 1.3935831   1.2523604   1.5507309
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.4131827   1.0082287   1.9807859
24 months   ki0047075b-MAL-ED          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA         1                    0                 1.8569444   0.8467057   4.0725397
24 months   ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 3.4839587   1.5695440   7.7334363
24 months   ki1000108-IRC              INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA         1                    0                 1.3499246   0.5422092   3.3608731
24 months   ki1000109-EE               PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000109-EE               PAKISTAN      1                    0                 2.8638915   1.4386462   5.7011061
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    1                    0                 1.2008196   0.6532239   2.2074632
24 months   ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    0                 1.9861715   1.0836711   3.6402900
24 months   ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 2.3702596   1.2924315   4.3469466
24 months   ki1101329-Keneba           GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA        1                    0                 1.8646707   1.3096453   2.6549149
24 months   ki1113344-GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         1                    0                 1.3289174   0.8415193   2.0986106
24 months   ki1114097-CMIN             BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH    1                    0                 2.2422170   1.0820566   4.6462793
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.1058558   0.7015459   1.7431746
24 months   ki1135781-COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     1                    0                 2.1758137   1.2656087   3.7406231
24 months   ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         1                    0                 1.8160464   1.4735432   2.2381594
24 months   ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   1                    0                 1.9764480   1.2212963   3.1985248
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    0                 1.5651184   1.4379225   1.7035658
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.5625586   1.3619739   1.7926843


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000109-EE               PAKISTAN      0                    NA                 0.0002062   -0.0261762    0.0265886
Birth       ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.0012327   -0.0098363    0.0123017
Birth       ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0032133   -0.0108429    0.0172694
Birth       ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.0066876   -0.0047277    0.0181029
Birth       ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                -0.0086662   -0.0195065    0.0021741
Birth       ki1113344-GMS-Nepal        NEPAL         0                    NA                -0.0052264   -0.0157462    0.0052935
Birth       ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                -0.0017804   -0.0031515   -0.0004093
Birth       ki1135781-COHORTS          INDIA         0                    NA                -0.0022411   -0.0045060    0.0000238
Birth       ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0009336   -0.0030538    0.0011866
Birth       kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0003062   -0.0024136    0.0018011
Birth       kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0050037   -0.0025712    0.0125785
6 months    ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.0088518   -0.0098591    0.0275626
6 months    ki1000108-IRC              INDIA         0                    NA                -0.0024785   -0.0144652    0.0095081
6 months    ki1000109-EE               PAKISTAN      0                    NA                 0.0131934   -0.0173963    0.0437832
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                 0.0336840    0.0037350    0.0636330
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.0213052    0.0147094    0.0279011
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                 0.0299695   -0.0024017    0.0623408
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0076548   -0.0033541    0.0186637
6 months    ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.0064040   -0.0014720    0.0142800
6 months    ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.0032695   -0.0030052    0.0095442
6 months    ki1101329-Keneba           GAMBIA        0                    NA                 0.0009680   -0.0024539    0.0043899
6 months    ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.0016306   -0.0091092    0.0123704
6 months    ki1114097-CMIN             BANGLADESH    0                    NA                 0.0069496   -0.0213264    0.0352255
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0001163   -0.0011472    0.0013799
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                 0.0010910   -0.0041736    0.0063557
6 months    ki1135781-COHORTS          INDIA         0                    NA                 0.0100463    0.0065735    0.0135192
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.0013797   -0.0011950    0.0039544
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                 0.0015922   -0.0052488    0.0084332
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                 0.0088730    0.0057660    0.0119800
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0060379   -0.0001949    0.0122706
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                 0.0142307   -0.0078630    0.0363244
24 months   ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.0214066    0.0039067    0.0389065
24 months   ki1000108-IRC              INDIA         0                    NA                 0.0031689   -0.0075896    0.0139274
24 months   ki1000109-EE               PAKISTAN      0                    NA                 0.0748291    0.0219611    0.1276972
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0033138   -0.0114178    0.0180454
24 months   ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.0109931   -0.0001652    0.0221514
24 months   ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.0133359    0.0005021    0.0261697
24 months   ki1101329-Keneba           GAMBIA        0                    NA                 0.0084855    0.0022461    0.0147248
24 months   ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.0122869   -0.0048169    0.0293907
24 months   ki1114097-CMIN             BANGLADESH    0                    NA                 0.0298046   -0.0023367    0.0619459
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0039089   -0.0167583    0.0245762
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                 0.0126935    0.0029966    0.0223903
24 months   ki1135781-COHORTS          INDIA         0                    NA                 0.0084196    0.0048647    0.0119744
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.0034677    0.0001757    0.0067598
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                 0.0327017    0.0260916    0.0393117
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0268591    0.0180801    0.0356380


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000109-EE               PAKISTAN      0                    NA                 0.0016589   -0.2348505    0.1928700
Birth       ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.0115226   -0.0966937    0.1090607
Birth       ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0109979   -0.0382931    0.0579489
Birth       ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.0304085   -0.0228097    0.0808578
Birth       ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                -0.0356221   -0.0810665    0.0079119
Birth       ki1113344-GMS-Nepal        NEPAL         0                    NA                -0.0253795   -0.0777249    0.0244234
Birth       ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                -0.0111584   -0.0197798   -0.0026098
Birth       ki1135781-COHORTS          INDIA         0                    NA                -0.0126632   -0.0255326    0.0000446
Birth       ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0060010   -0.0197166    0.0075301
Birth       kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0027961   -0.0222192    0.0162579
Birth       kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0501623   -0.0284927    0.1228020
6 months    ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.0708141   -0.0906303    0.2083602
6 months    ki1000108-IRC              INDIA         0                    NA                -0.0187266   -0.1133497    0.0678546
6 months    ki1000109-EE               PAKISTAN      0                    NA                 0.1052667   -0.1743900    0.3183289
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                 0.3096338   -0.0001457    0.5234640
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.1712119    0.1030506    0.2341934
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                 0.1650496   -0.0318031    0.3243457
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.1174463   -0.0642104    0.2680948
6 months    ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.1544649   -0.0475894    0.3175480
6 months    ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.1113183   -0.1239256    0.2973243
6 months    ki1101329-Keneba           GAMBIA        0                    NA                 0.0167125   -0.0441206    0.0740013
6 months    ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.0180326   -0.1081330    0.1298337
6 months    ki1114097-CMIN             BANGLADESH    0                    NA                 0.0804163   -0.3105913    0.3547689
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0037338   -0.0376538    0.0434705
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                 0.0328337   -0.1388794    0.1786571
6 months    ki1135781-COHORTS          INDIA         0                    NA                 0.0795578    0.0519838    0.1063297
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.0231893   -0.0209255    0.0653979
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                 0.0954178   -0.4186525    0.4232069
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                 0.1048029    0.0678391    0.1403010
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.1061130   -0.0084823    0.2076868
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                 0.1196432   -0.0825540    0.2840744
24 months   ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.3462292    0.0402841    0.5546429
24 months   ki1000108-IRC              INDIA         0                    NA                 0.0418093   -0.1104940    0.1732244
24 months   ki1000109-EE               PAKISTAN      0                    NA                 0.4190432    0.0750708    0.6350955
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0267605   -0.0996222    0.1386176
24 months   ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.1026613   -0.0054378    0.1991383
24 months   ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.1523260   -0.0015931    0.2825917
24 months   ki1101329-Keneba           GAMBIA        0                    NA                 0.0766803    0.0193281    0.1306785
24 months   ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.0657552   -0.0299704    0.1525841
24 months   ki1114097-CMIN             BANGLADESH    0                    NA                 0.2897005   -0.0762373    0.5312136
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0214250   -0.0986169    0.1283503
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                 0.2746863    0.0477993    0.4475115
24 months   ki1135781-COHORTS          INDIA         0                    NA                 0.0918512    0.0529194    0.1291826
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.0508533    0.0018382    0.0974616
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                 0.1498044    0.1190780    0.1794590
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.1382366    0.0911017    0.1829271
