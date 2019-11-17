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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        feducyrs    n_cell      n
-------------  -------------------------  -----------------------------  ---------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High            50    137
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low             38    137
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium          49    137
0-3 months     ki0047075b-MAL-ED          INDIA                          High            32    108
0-3 months     ki0047075b-MAL-ED          INDIA                          Low             46    108
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium          30    108
0-3 months     ki0047075b-MAL-ED          NEPAL                          High            23     60
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low             17     60
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium          20     60
0-3 months     ki0047075b-MAL-ED          PERU                           High           105    220
0-3 months     ki0047075b-MAL-ED          PERU                           Low             60    220
0-3 months     ki0047075b-MAL-ED          PERU                           Medium          55    220
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High            27     74
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low             27     74
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          20     74
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           117    185
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             51    185
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          17    185
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High           106    387
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low            156    387
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium         125    387
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High           219    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low            217    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium         204    640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High           280    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low            232    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium         209    721
0-3 months     ki1113344-GMS-Nepal        NEPAL                          High           126    508
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low            228    508
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Medium         154    508
0-3 months     ki1119695-PROBIT           BELARUS                        High          1143   7261
0-3 months     ki1119695-PROBIT           BELARUS                        Low           2533   7261
0-3 months     ki1119695-PROBIT           BELARUS                        Medium        3585   7261
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High           537   7738
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low           1384   7738
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium        5817   7738
0-3 months     ki1135781-COHORTS          GUATEMALA                      High            88    336
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low            111    336
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium         137    336
0-3 months     ki1135781-COHORTS          INDIA                          High           517   1330
0-3 months     ki1135781-COHORTS          INDIA                          Low            430   1330
0-3 months     ki1135781-COHORTS          INDIA                          Medium         383   1330
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High          2190   9489
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low           4054   9489
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium        3245   9489
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High           135    620
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low            245    620
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium         240    620
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High            50    129
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low             34    129
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium          45    129
3-6 months     ki0047075b-MAL-ED          INDIA                          High            42    132
3-6 months     ki0047075b-MAL-ED          INDIA                          Low             53    132
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium          37    132
3-6 months     ki0047075b-MAL-ED          NEPAL                          High            38     93
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low             27     93
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium          28     93
3-6 months     ki0047075b-MAL-ED          PERU                           High           105    220
3-6 months     ki0047075b-MAL-ED          PERU                           Low             60    220
3-6 months     ki0047075b-MAL-ED          PERU                           Medium          55    220
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High            32     89
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low             34     89
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          23     89
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           123    194
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             54    194
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          17    194
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High            97    347
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low            138    347
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium         112    347
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High           207    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low            208    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium         183    598
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High           271    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low            220    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium         204    695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           310   1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            882   1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         464   1656
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High           116    468
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low            211    468
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium         141    468
3-6 months     ki1119695-PROBIT           BELARUS                        High          1010   6445
3-6 months     ki1119695-PROBIT           BELARUS                        Low           2269   6445
3-6 months     ki1119695-PROBIT           BELARUS                        Medium        3166   6445
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High           413   5993
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low           1079   5993
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium        4501   5993
3-6 months     ki1135781-COHORTS          GUATEMALA                      High            92    368
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low            121    368
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium         155    368
3-6 months     ki1135781-COHORTS          INDIA                          High           528   1343
3-6 months     ki1135781-COHORTS          INDIA                          Low            431   1343
3-6 months     ki1135781-COHORTS          INDIA                          Medium         384   1343
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High          1574   6001
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low           2336   6001
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium        2091   6001
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High            90    422
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low            169    422
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium         163    422
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     High            47    123
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low             32    123
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Medium          44    123
6-9 months     ki0047075b-MAL-ED          INDIA                          High            43    133
6-9 months     ki0047075b-MAL-ED          INDIA                          Low             51    133
6-9 months     ki0047075b-MAL-ED          INDIA                          Medium          39    133
6-9 months     ki0047075b-MAL-ED          NEPAL                          High            38     91
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low             27     91
6-9 months     ki0047075b-MAL-ED          NEPAL                          Medium          26     91
6-9 months     ki0047075b-MAL-ED          PERU                           High            94    199
6-9 months     ki0047075b-MAL-ED          PERU                           Low             54    199
6-9 months     ki0047075b-MAL-ED          PERU                           Medium          51    199
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High            31     85
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low             33     85
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          21     85
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           118    185
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             51    185
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          16    185
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          High            93    349
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low            146    349
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Medium         110    349
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          High            21     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Low             23     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Medium          30     74
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     High           194    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low            192    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Medium         179    565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     High           270    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low            215    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium         203    688
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           280   1480
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            786   1480
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         414   1480
6-9 months     ki1113344-GMS-Nepal        NEPAL                          High           114    480
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low            213    480
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Medium         153    480
6-9 months     ki1119695-PROBIT           BELARUS                        High           936   6034
6-9 months     ki1119695-PROBIT           BELARUS                        Low           2132   6034
6-9 months     ki1119695-PROBIT           BELARUS                        Medium        2966   6034
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       High           396   5766
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low           1037   5766
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium        4333   5766
6-9 months     ki1135781-COHORTS          GUATEMALA                      High            91    366
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low            122    366
6-9 months     ki1135781-COHORTS          GUATEMALA                      Medium         153    366
6-9 months     ki1135781-COHORTS          INDIA                          High           487   1255
6-9 months     ki1135781-COHORTS          INDIA                          Low            413   1255
6-9 months     ki1135781-COHORTS          INDIA                          Medium         355   1255
6-9 months     ki1148112-LCNI-5           MALAWI                         High           175    557
6-9 months     ki1148112-LCNI-5           MALAWI                         Low            193    557
6-9 months     ki1148112-LCNI-5           MALAWI                         Medium         189    557
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     High           163    742
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low            285    742
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium         294    742
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     High            46    124
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low             34    124
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          44    124
9-12 months    ki0047075b-MAL-ED          INDIA                          High            42    132
9-12 months    ki0047075b-MAL-ED          INDIA                          Low             52    132
9-12 months    ki0047075b-MAL-ED          INDIA                          Medium          38    132
9-12 months    ki0047075b-MAL-ED          NEPAL                          High            38     90
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low             26     90
9-12 months    ki0047075b-MAL-ED          NEPAL                          Medium          26     90
9-12 months    ki0047075b-MAL-ED          PERU                           High            89    191
9-12 months    ki0047075b-MAL-ED          PERU                           Low             53    191
9-12 months    ki0047075b-MAL-ED          PERU                           Medium          49    191
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            32     87
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low             33     87
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          22     87
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           118    184
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             50    184
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          16    184
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          High           100    370
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low            151    370
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         119    370
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            21     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low             26     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          30     77
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     High           194    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low            190    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         182    566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           265    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            206    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         203    674
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           207   1076
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            561   1076
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         308   1076
9-12 months    ki1113344-GMS-Nepal        NEPAL                          High           112    468
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low            206    468
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium         150    468
9-12 months    ki1119695-PROBIT           BELARUS                        High           939   6040
9-12 months    ki1119695-PROBIT           BELARUS                        Low           2123   6040
9-12 months    ki1119695-PROBIT           BELARUS                        Medium        2978   6040
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           369   5777
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1030   5777
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        4378   5777
9-12 months    ki1135781-COHORTS          GUATEMALA                      High           106    410
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low            134    410
9-12 months    ki1135781-COHORTS          GUATEMALA                      Medium         170    410
9-12 months    ki1135781-COHORTS          INDIA                          High           442   1126
9-12 months    ki1135781-COHORTS          INDIA                          Low            363   1126
9-12 months    ki1135781-COHORTS          INDIA                          Medium         321   1126
9-12 months    ki1148112-LCNI-5           MALAWI                         High           112    382
9-12 months    ki1148112-LCNI-5           MALAWI                         Low            130    382
9-12 months    ki1148112-LCNI-5           MALAWI                         Medium         140    382
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High           191    839
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low            314    839
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium         334    839
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     High            41    119
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low             35    119
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          43    119
12-15 months   ki0047075b-MAL-ED          INDIA                          High            42    131
12-15 months   ki0047075b-MAL-ED          INDIA                          Low             51    131
12-15 months   ki0047075b-MAL-ED          INDIA                          Medium          38    131
12-15 months   ki0047075b-MAL-ED          NEPAL                          High            39     91
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low             26     91
12-15 months   ki0047075b-MAL-ED          NEPAL                          Medium          26     91
12-15 months   ki0047075b-MAL-ED          PERU                           High            89    182
12-15 months   ki0047075b-MAL-ED          PERU                           Low             49    182
12-15 months   ki0047075b-MAL-ED          PERU                           Medium          44    182
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            32     86
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low             33     86
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          21     86
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           119    185
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             51    185
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          15    185
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          High           105    375
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low            147    375
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Medium         123    375
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          High            22     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low             25     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium          29     76
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     High           192    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low            176    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         164    532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           259    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            201    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         200    660
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           152    786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            417    786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         217    786
12-15 months   ki1113344-GMS-Nepal        NEPAL                          High           107    468
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low            206    468
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Medium         155    468
12-15 months   ki1119695-PROBIT           BELARUS                        High            40    278
12-15 months   ki1119695-PROBIT           BELARUS                        Low             97    278
12-15 months   ki1119695-PROBIT           BELARUS                        Medium         141    278
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           140   2464
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            485   2464
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium        1839   2464
12-15 months   ki1135781-COHORTS          GUATEMALA                      High           105    389
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low            136    389
12-15 months   ki1135781-COHORTS          GUATEMALA                      Medium         148    389
12-15 months   ki1148112-LCNI-5           MALAWI                         High            38    126
12-15 months   ki1148112-LCNI-5           MALAWI                         Low             46    126
12-15 months   ki1148112-LCNI-5           MALAWI                         Medium          42    126
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     High           186    846
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low            328    846
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         332    846
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     High            40    117
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low             35    117
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          42    117
15-18 months   ki0047075b-MAL-ED          INDIA                          High            42    130
15-18 months   ki0047075b-MAL-ED          INDIA                          Low             50    130
15-18 months   ki0047075b-MAL-ED          INDIA                          Medium          38    130
15-18 months   ki0047075b-MAL-ED          NEPAL                          High            37     90
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low             27     90
15-18 months   ki0047075b-MAL-ED          NEPAL                          Medium          26     90
15-18 months   ki0047075b-MAL-ED          PERU                           High            84    173
15-18 months   ki0047075b-MAL-ED          PERU                           Low             46    173
15-18 months   ki0047075b-MAL-ED          PERU                           Medium          43    173
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            33     87
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low             33     87
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          21     87
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           114    177
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             48    177
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          15    177
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          High            99    360
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low            140    360
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Medium         121    360
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          High            21     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low             21     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium          30     72
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     High           188    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low            178    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         162    528
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           240    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            181    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         183    604
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           134    662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            353    662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         175    662
15-18 months   ki1113344-GMS-Nepal        NEPAL                          High           114    479
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low            211    479
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Medium         154    479
15-18 months   ki1119695-PROBIT           BELARUS                        High             8     36
15-18 months   ki1119695-PROBIT           BELARUS                        Low             12     36
15-18 months   ki1119695-PROBIT           BELARUS                        Medium          16     36
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           107   1963
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            395   1963
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium        1461   1963
15-18 months   ki1135781-COHORTS          GUATEMALA                      High            90    345
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low            121    345
15-18 months   ki1135781-COHORTS          GUATEMALA                      Medium         134    345
15-18 months   ki1148112-LCNI-5           MALAWI                         High            35    119
15-18 months   ki1148112-LCNI-5           MALAWI                         Low             44    119
15-18 months   ki1148112-LCNI-5           MALAWI                         Medium          40    119
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     High           195    859
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low            327    859
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         337    859
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     High            40    116
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low             34    116
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          42    116
18-21 months   ki0047075b-MAL-ED          INDIA                          High            42    130
18-21 months   ki0047075b-MAL-ED          INDIA                          Low             50    130
18-21 months   ki0047075b-MAL-ED          INDIA                          Medium          38    130
18-21 months   ki0047075b-MAL-ED          NEPAL                          High            37     90
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low             27     90
18-21 months   ki0047075b-MAL-ED          NEPAL                          Medium          26     90
18-21 months   ki0047075b-MAL-ED          PERU                           High            77    164
18-21 months   ki0047075b-MAL-ED          PERU                           Low             45    164
18-21 months   ki0047075b-MAL-ED          PERU                           Medium          42    164
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            34     90
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low             34     90
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          22     90
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           108    166
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             43    166
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          15    166
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     High           182    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low            188    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         171    541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           228    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            152    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         166    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              3      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5      9
18-21 months   ki1113344-GMS-Nepal        NEPAL                          High           110    444
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low            194    444
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Medium         140    444
18-21 months   ki1119695-PROBIT           BELARUS                        High             3     23
18-21 months   ki1119695-PROBIT           BELARUS                        Low              6     23
18-21 months   ki1119695-PROBIT           BELARUS                        Medium          14     23
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            74   1544
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            311   1544
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium        1159   1544
18-21 months   ki1135781-COHORTS          GUATEMALA                      High            91    344
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low            118    344
18-21 months   ki1135781-COHORTS          GUATEMALA                      Medium         135    344
18-21 months   ki1148112-LCNI-5           MALAWI                         High           147    472
18-21 months   ki1148112-LCNI-5           MALAWI                         Low            161    472
18-21 months   ki1148112-LCNI-5           MALAWI                         Medium         164    472
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     High            40    115
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             34    115
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          41    115
21-24 months   ki0047075b-MAL-ED          INDIA                          High            42    131
21-24 months   ki0047075b-MAL-ED          INDIA                          Low             50    131
21-24 months   ki0047075b-MAL-ED          INDIA                          Medium          39    131
21-24 months   ki0047075b-MAL-ED          NEPAL                          High            37     90
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low             27     90
21-24 months   ki0047075b-MAL-ED          NEPAL                          Medium          26     90
21-24 months   ki0047075b-MAL-ED          PERU                           High            70    154
21-24 months   ki0047075b-MAL-ED          PERU                           Low             43    154
21-24 months   ki0047075b-MAL-ED          PERU                           Medium          41    154
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            34     91
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low             34     91
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          23     91
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           107    167
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             45    167
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          15    167
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     High           154    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            169    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         148    471
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           204    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            135    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         151    490
21-24 months   ki1113344-GMS-Nepal        NEPAL                          High            84    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low            151    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         107    342
21-24 months   ki1119695-PROBIT           BELARUS                        High             5     32
21-24 months   ki1119695-PROBIT           BELARUS                        Low             11     32
21-24 months   ki1119695-PROBIT           BELARUS                        Medium          16     32
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            54   1134
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            230   1134
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         850   1134
21-24 months   ki1135781-COHORTS          GUATEMALA                      High            98    384
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low            134    384
21-24 months   ki1135781-COHORTS          GUATEMALA                      Medium         152    384
21-24 months   ki1148112-LCNI-5           MALAWI                         High           122    403
21-24 months   ki1148112-LCNI-5           MALAWI                         Low            145    403
21-24 months   ki1148112-LCNI-5           MALAWI                         Medium         136    403


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/b47c872e-b324-4758-9505-5e9d7f747041/db5ae463-f6c0-43fd-9d72-7c5b17869d67/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b47c872e-b324-4758-9505-5e9d7f747041/db5ae463-f6c0-43fd-9d72-7c5b17869d67/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b47c872e-b324-4758-9505-5e9d7f747041/db5ae463-f6c0-43fd-9d72-7c5b17869d67/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                3.4805705    3.3582296   3.6029113
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                3.3586146    3.2050891   3.5121401
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                3.3440608    3.1940202   3.4941014
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 NA                3.4086394    3.2224983   3.5947804
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                3.3112833    3.1315814   3.4909853
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                3.5112095    3.2905796   3.7318395
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                3.6121277    3.3348685   3.8893869
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                3.5856377    3.3407579   3.8305175
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                3.7782377    3.5106916   4.0457838
0-3 months     ki0047075b-MAL-ED          PERU                           High                 NA                3.0464690    2.9340429   3.1588951
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  NA                2.9993438    2.8810469   3.1176407
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               NA                3.0972540    2.9472653   3.2472427
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                3.2852595    3.0045221   3.5659969
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                3.2644148    2.9926708   3.5361587
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                3.1067638    2.7830853   3.4304424
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                3.2886665    3.1808758   3.3964572
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                3.2756615    3.1060412   3.4452817
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                3.3113893    3.0922426   3.5305360
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                3.4541540    3.1849459   3.7233620
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                3.3038558    3.1922985   3.4154131
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                3.4809534    3.3929923   3.5689145
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                3.3174797    3.2510533   3.3839061
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                3.2131012    3.1483592   3.2778432
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                3.2409061    3.1814835   3.3003286
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                3.1082150    3.0526022   3.1638278
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                3.1673390    3.0959023   3.2387756
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                3.1151326    3.0528437   3.1774216
0-3 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                3.6462082    3.5471922   3.7452242
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                3.5618785    3.4837909   3.6399662
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                3.6156702    3.5237469   3.7075934
0-3 months     ki1119695-PROBIT           BELARUS                        High                 NA                2.7761646    2.6181793   2.9341498
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  NA                2.6951074    2.4650987   2.9251161
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               NA                2.7687447    2.6290173   2.9084721
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                3.3607997    3.2849103   3.4366892
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                3.3210914    3.2710434   3.3711393
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                3.3441560    3.3200663   3.3682457
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                2.6164312    2.4953930   2.7374695
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                2.6011027    2.4919598   2.7102455
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                2.4092101    2.3076088   2.5108115
0-3 months     ki1135781-COHORTS          INDIA                          High                 NA                3.6047219    3.5540410   3.6554029
0-3 months     ki1135781-COHORTS          INDIA                          Low                  NA                3.4510090    3.3957406   3.5062773
0-3 months     ki1135781-COHORTS          INDIA                          Medium               NA                3.4644126    3.4062016   3.5226237
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                3.6991134    3.6713010   3.7269257
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                3.6213632    3.5992373   3.6434891
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                3.6447223    3.6212422   3.6682024
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                2.9434721    2.7314258   3.1555184
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                2.9711855    2.8283019   3.1140691
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                3.0504107    2.8505964   3.2502249
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                2.0631694    1.9786411   2.1476977
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                1.8811258    1.7503810   2.0118706
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                1.9267571    1.7929445   2.0605697
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 NA                1.8899268    1.7742976   2.0055560
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                1.9451952    1.7852028   2.1051876
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                1.8532608    1.6840280   2.0224937
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                1.9522615    1.7972942   2.1072288
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.8312230    1.6992759   1.9631702
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.8937279    1.7006461   2.0868097
3-6 months     ki0047075b-MAL-ED          PERU                           High                 NA                2.0294906    1.9083549   2.1506262
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  NA                2.0182658    1.8854939   2.1510378
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               NA                2.0917258    1.9721720   2.2112796
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                1.9333237    1.6904907   2.1761567
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                1.8199741    1.6265189   2.0134293
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                2.0052699    1.7717856   2.2387542
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.8182968    1.7203909   1.9162026
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.9056219    1.7613027   2.0499412
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.6661310    1.4128995   1.9193624
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.8793608    1.8094613   1.9492603
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                1.8585816    1.7991067   1.9180566
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                2.0118647    1.8391601   2.1845692
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                2.0052697    1.9459091   2.0646303
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.9332277    1.8757968   1.9906586
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.9579987    1.8994870   2.0165104
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                2.0021119    1.9465225   2.0577014
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                1.9809547    1.9148391   2.0470702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                2.0374840    1.9680136   2.1069544
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.8146201    1.7338460   1.8953942
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.7984913    1.7478251   1.8491575
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.7694312    1.7051846   1.8336778
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.7224555    1.6430307   1.8018802
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                1.7177922    1.6572390   1.7783453
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.6858415    1.6179839   1.7536991
3-6 months     ki1119695-PROBIT           BELARUS                        High                 NA                2.1387237    2.0699907   2.2074568
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  NA                2.0745720    2.0015151   2.1476289
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               NA                2.0899104    2.0209315   2.1588893
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                2.0401002    1.9696468   2.1105537
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.9297058    1.8814667   1.9779449
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.9796611    1.9566078   2.0027143
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                1.7003203    1.6072200   1.7934206
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                1.6220705    1.5431696   1.7009714
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                1.6720852    1.6020988   1.7420715
3-6 months     ki1135781-COHORTS          INDIA                          High                 NA                1.8987895    1.8578691   1.9397100
3-6 months     ki1135781-COHORTS          INDIA                          Low                  NA                1.8374902    1.7862283   1.8887522
3-6 months     ki1135781-COHORTS          INDIA                          Medium               NA                1.8864071    1.8364722   1.9363419
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                1.9276586    1.9013989   1.9539183
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                1.9199583    1.8946392   1.9452774
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                1.9319085    1.9069292   1.9568877
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                2.0069049    1.8545499   2.1592598
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.8868698    1.7819257   1.9918139
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.8203018    1.7355941   1.9050095
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                1.2999632    1.2087218   1.3912046
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                1.1831103    1.0774604   1.2887602
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                1.2158249    1.1282980   1.3033519
6-9 months     ki0047075b-MAL-ED          INDIA                          High                 NA                1.2442407    1.1439699   1.3445115
6-9 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                1.2113493    1.0726651   1.3500335
6-9 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                1.2246073    1.1373260   1.3118887
6-9 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                1.2893364    1.1916577   1.3870151
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.3272627    1.1874942   1.4670313
6-9 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.3415105    1.2167192   1.4663019
6-9 months     ki0047075b-MAL-ED          PERU                           High                 NA                1.3728978    1.2806693   1.4651264
6-9 months     ki0047075b-MAL-ED          PERU                           Low                  NA                1.3467805    1.2324401   1.4611210
6-9 months     ki0047075b-MAL-ED          PERU                           Medium               NA                1.2121897    1.1016112   1.3227683
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                1.4484164    1.2994158   1.5974170
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                1.2853933    1.1355817   1.4352049
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                1.4914201    1.2562194   1.7266208
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.2259136    1.1076822   1.3441451
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.1279032    0.9904173   1.2653891
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.2311861    1.0016540   1.4607183
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.3242421    1.2587608   1.3897234
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                1.1838274    1.0919295   1.2757253
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.1940797    1.1048391   1.2833203
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                1.0123795    0.8895382   1.1352207
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                1.2588849    1.0965441   1.4212258
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                1.1231246    1.0026646   1.2435846
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.3453136    1.3043509   1.3862764
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.2326295    1.1886321   1.2766270
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.2676577    1.2230176   1.3122978
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                1.3844546    1.3352342   1.4336750
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                1.2710731    1.2229183   1.3192279
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                1.3141180    1.2600834   1.3681525
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.3320429    1.2459710   1.4181148
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.2935547    1.2430085   1.3441009
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.3805313    1.3135698   1.4474929
6-9 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.3534669    1.2706872   1.4362466
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                1.3319080    1.2628105   1.4010055
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.2713966    1.2148160   1.3279773
6-9 months     ki1119695-PROBIT           BELARUS                        High                 NA                1.5760300    1.5302873   1.6217728
6-9 months     ki1119695-PROBIT           BELARUS                        Low                  NA                1.6251239    1.5713575   1.6788903
6-9 months     ki1119695-PROBIT           BELARUS                        Medium               NA                1.5691250    1.5278974   1.6103526
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                1.3014182    1.2224364   1.3804000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.3230224    1.2769975   1.3690473
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.3569557    1.3348270   1.3790844
6-9 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                1.0606356    0.9684964   1.1527748
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                1.0315402    0.9667226   1.0963579
6-9 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                1.0942078    1.0348086   1.1536070
6-9 months     ki1135781-COHORTS          INDIA                          High                 NA                1.2330853    1.1950659   1.2711048
6-9 months     ki1135781-COHORTS          INDIA                          Low                  NA                1.1942336    1.1498064   1.2386608
6-9 months     ki1135781-COHORTS          INDIA                          Medium               NA                1.1741100    1.1274787   1.2207414
6-9 months     ki1148112-LCNI-5           MALAWI                         High                 NA                1.4840597    1.4229680   1.5451514
6-9 months     ki1148112-LCNI-5           MALAWI                         Low                  NA                1.4513036    1.3857285   1.5168788
6-9 months     ki1148112-LCNI-5           MALAWI                         Medium               NA                1.4433744    1.3804086   1.5063401
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                1.2930667    1.2058478   1.3802856
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.2581086    1.1982055   1.3180117
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.3163148    1.2564245   1.3762050
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.9932027    0.9054722   1.0809331
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.9603188    0.8661451   1.0544926
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.9874760    0.8931336   1.0818184
9-12 months    ki0047075b-MAL-ED          INDIA                          High                 NA                1.0369363    0.9437511   1.1301215
9-12 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.9799179    0.8934134   1.0664225
9-12 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.9502999    0.8529016   1.0476983
9-12 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                1.1569030    1.0730719   1.2407342
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.1320131    1.0189220   1.2451043
9-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.0506927    0.9395427   1.1618426
9-12 months    ki0047075b-MAL-ED          PERU                           High                 NA                1.1178818    1.0365321   1.1992315
9-12 months    ki0047075b-MAL-ED          PERU                           Low                  NA                1.0583484    0.9438666   1.1728302
9-12 months    ki0047075b-MAL-ED          PERU                           Medium               NA                1.0770727    0.9756510   1.1784945
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.9900869    0.8035863   1.1765875
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.9525357    0.7578363   1.1472351
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.8617467    0.6940716   1.0294217
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7930554    0.6658508   0.9202600
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7288771    0.6056932   0.8520609
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9072593    0.6124824   1.2020362
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.9451687    0.8670549   1.0232825
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.9855553    0.9299035   1.0412071
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.0218362    0.9912922   1.0523801
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                1.2101778    0.3631592   2.0571965
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                1.1223237    0.4763320   1.7683154
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.8214164    0.3419769   1.3008560
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.0880427    1.0396954   1.1363900
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.0292780    0.9898285   1.0687274
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.0310041    0.9797305   1.0822777
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                1.1201993    1.0788767   1.1615220
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                1.1077113    1.0621736   1.1532490
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                1.1437460    1.0933856   1.1941065
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.1406694    1.0652670   1.2160718
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.0737933    1.0268433   1.1207432
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.0706198    1.0053569   1.1358828
9-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.0054075    0.9294806   1.0813343
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.9934913    0.9410016   1.0459811
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.9994896    0.9558469   1.0431324
9-12 months    ki1119695-PROBIT           BELARUS                        High                 NA                1.3710631    1.3091102   1.4330160
9-12 months    ki1119695-PROBIT           BELARUS                        Low                  NA                1.3908605    1.3063255   1.4753954
9-12 months    ki1119695-PROBIT           BELARUS                        Medium               NA                1.3444251    1.2949001   1.3939502
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                1.1575437    1.0844429   1.2306444
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.0513257    1.0089473   1.0937041
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.0793425    1.0585582   1.1001268
9-12 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                1.0199751    0.9571137   1.0828365
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.9319370    0.8737331   0.9901410
9-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.9131246    0.8532438   0.9730054
9-12 months    ki1135781-COHORTS          INDIA                          High                 NA                1.0658171    1.0260790   1.1055552
9-12 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.9029339    0.8574908   0.9483770
9-12 months    ki1135781-COHORTS          INDIA                          Medium               NA                1.0004575    0.9553467   1.0455684
9-12 months    ki1148112-LCNI-5           MALAWI                         High                 NA                1.1116510    1.0300248   1.1932771
9-12 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                1.1033119    1.0180812   1.1885427
9-12 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                1.0854622    1.0092837   1.1616407
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                1.0357293    0.9538510   1.1176075
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.0561721    0.9988868   1.1134575
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.0607152    1.0175270   1.1039033
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.9150430    0.8410307   0.9890553
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.9480516    0.8474290   1.0486742
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.8702960    0.7878481   0.9527440
12-15 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.9196286    0.8190701   1.0201872
12-15 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.9151281    0.8270601   1.0031960
12-15 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.8923759    0.8107712   0.9739806
12-15 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                1.0575357    0.9610799   1.1539915
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.8085753    0.6918396   0.9253109
12-15 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.9318677    0.8261800   1.0375554
12-15 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.8756958    0.8006483   0.9507432
12-15 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.8803612    0.7881907   0.9725317
12-15 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.8788754    0.7745975   0.9831533
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.9703201    0.8396160   1.1010241
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.8590175    0.7337866   0.9842485
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                1.0109244    0.8309143   1.1909346
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.8442220    0.7576868   0.9307572
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9190000    0.7823788   1.0556212
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.8405868    0.6270863   1.0540873
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.0176094    0.9160373   1.1191816
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.7250648    0.6218256   0.8283041
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.8438940    0.8032864   0.8845017
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                1.1607780    1.0068938   1.3146621
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.5834587   -0.1553182   1.3222356
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                1.1418591    1.0180971   1.2656212
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.9969364    0.9494507   1.0444220
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.9278145    0.8842452   0.9713837
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.9504872    0.9073726   0.9936018
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                1.0098282    0.9710704   1.0485859
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.9519104    0.9089663   0.9948544
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.9403629    0.8942788   0.9864469
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.9683902    0.8886642   1.0481162
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9067502    0.8542889   0.9592115
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9547662    0.8874835   1.0220489
12-15 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.8779817    0.8274784   0.9284851
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.8716040    0.8214440   0.9217640
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.8933641    0.8488619   0.9378662
12-15 months   ki1119695-PROBIT           BELARUS                        High                 NA                1.4476375    0.7613531   2.1339219
12-15 months   ki1119695-PROBIT           BELARUS                        Low                  NA                1.3267534    0.5842778   2.0692289
12-15 months   ki1119695-PROBIT           BELARUS                        Medium               NA                1.0977792    0.5406633   1.6548952
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.9292165    0.8020058   1.0564273
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.9236629    0.8573615   0.9899642
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.9219934    0.8912104   0.9527765
12-15 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7423004    0.6730315   0.8115694
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7575340    0.6962045   0.8188636
12-15 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7364208    0.6705256   0.8023160
12-15 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.9638411    0.8053654   1.1223167
12-15 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                1.0582701    0.9410832   1.1754570
12-15 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.8424165    0.6310057   1.0538274
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.9899079    0.9116858   1.0681300
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.9140923    0.8645990   0.9635856
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.9343793    0.8869221   0.9818365
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.8752216    0.7942279   0.9562152
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.7841109    0.6878177   0.8804042
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.7761372    0.6946971   0.8575772
15-18 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.7939805    0.7035499   0.8844110
15-18 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.8338620    0.7502834   0.9174406
15-18 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.8353227    0.7459643   0.9246812
15-18 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.8445056    0.7269455   0.9620656
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.8187013    0.7040302   0.9333724
15-18 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.7992601    0.6826250   0.9158951
15-18 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.8209677    0.7444096   0.8975257
15-18 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.8243723    0.7513053   0.8974393
15-18 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.9174636    0.8263610   1.0085662
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.9378574    0.7921660   1.0835487
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.9116549    0.7769586   1.0463512
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.8090034    0.6181363   0.9998706
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7068756    0.6215505   0.7922006
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6148438    0.4801523   0.7495352
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6581331    0.4456114   0.8706548
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.9027625    0.6657964   1.1397286
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.9626366    0.8948583   1.0304149
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.0089550    0.8610398   1.1568703
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7686245    0.6520318   0.8852172
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.9255588    0.7820144   1.0691033
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.8103725    0.7150548   0.9056902
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.8901804    0.8515513   0.9288095
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.8466295    0.8041196   0.8891394
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.8269552    0.7831778   0.8707326
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.9441941    0.9077647   0.9806236
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.8696841    0.8277280   0.9116402
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.9305001    0.8897220   0.9712782
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.9161242    0.8392024   0.9930461
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9553484    0.8943403   1.0163565
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9167355    0.8350202   0.9984508
15-18 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.7725046    0.7198204   0.8251888
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.7319688    0.6713980   0.7925395
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.7703563    0.7133400   0.8273725
15-18 months   ki1119695-PROBIT           BELARUS                        High                 NA                1.3665541   -0.3619371   3.0950454
15-18 months   ki1119695-PROBIT           BELARUS                        Low                  NA                1.2934772   -0.4762520   3.0632063
15-18 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8277278    0.3233967   1.3320590
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7843764    0.6615968   0.9071560
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7805663    0.7053961   0.8557365
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.8045019    0.7699811   0.8390226
15-18 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7043659    0.6146126   0.7941193
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.6534677    0.5817697   0.7251657
15-18 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.8124661    0.7524413   0.8724908
15-18 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.7405876    0.6265558   0.8546195
15-18 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.8009266    0.6925311   0.9093220
15-18 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.9187572    0.7792805   1.0582340
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.8147372    0.7363890   0.8930854
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.8524884    0.7979199   0.9070568
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.8418079    0.7870960   0.8965197
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.8256832    0.7527977   0.8985686
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.7932028    0.7045062   0.8818994
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.8092558    0.7258093   0.8927024
18-21 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.9080866    0.8310802   0.9850929
18-21 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.8757709    0.7902924   0.9612494
18-21 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.8869829    0.7926326   0.9813331
18-21 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.8097182    0.7075648   0.9118716
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.7746135    0.6806578   0.8685692
18-21 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.8455594    0.7445288   0.9465900
18-21 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.8430095    0.7735360   0.9124831
18-21 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.8945199    0.7939855   0.9950542
18-21 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.7992289    0.7100583   0.8883994
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.7758994    0.6658426   0.8859561
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.7015101    0.5684282   0.8345920
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.7240224    0.5437657   0.9042791
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7455523    0.6535469   0.8375576
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7283134    0.5791644   0.8774625
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.8453417    0.7037931   0.9868903
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.8921961    0.8512571   0.9331351
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.8047134    0.7660688   0.8433580
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.8211455    0.7769590   0.8653319
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.8154593    0.7806726   0.8502461
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.7625740    0.7194639   0.8056841
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8057196    0.7608335   0.8506058
18-21 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.8827339    0.8008091   0.9646586
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.9095766    0.8639752   0.9551779
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.9121233    0.8530072   0.9712393
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.8074958    0.6712938   0.9436978
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.6732913    0.5977017   0.7488809
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.6811226    0.6409255   0.7213197
18-21 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7427133    0.6672824   0.8181442
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.6941937    0.6215453   0.7668421
18-21 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7466418    0.6829532   0.8103305
18-21 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.8301319    0.7198539   0.9404099
18-21 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.8390034    0.7816028   0.8964039
18-21 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.7917240    0.7203781   0.8630699
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.7756412    0.6962769   0.8550055
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.7820176    0.6930797   0.8709555
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.7741632    0.6983136   0.8500127
21-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.8332952    0.7527517   0.9138386
21-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.8164174    0.7495889   0.8832460
21-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.7858091    0.7200141   0.8516041
21-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.7981805    0.7062552   0.8901058
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.7473649    0.6098572   0.8848726
21-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.7842792    0.6947539   0.8738044
21-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.7695548    0.6962019   0.8429077
21-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.7990811    0.7015496   0.8966126
21-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.7590157    0.6556893   0.8623422
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.8771872    0.7531610   1.0012134
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.8126153    0.6921965   0.9330341
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.8373127    0.6913234   0.9833019
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7946518    0.7136437   0.8756599
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6450014    0.4817915   0.8082113
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6343848    0.4543498   0.8144198
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.8000959    0.7570453   0.8431465
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7393964    0.6961002   0.7826926
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.7517955    0.7068187   0.7967722
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.8064235    0.7684217   0.8444253
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.7432223    0.6935554   0.7928892
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8399266    0.7997442   0.8801091
21-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.8856083    0.7657265   1.0054900
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.7877002    0.7305026   0.8448979
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.7470545    0.6740918   0.8200173
21-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                1.3948377   -0.3740287   3.1637040
21-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                1.4891065    1.0119516   1.9662614
21-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                1.2292300    0.0070954   2.4513646
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.8200052    0.6518365   0.9881739
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.6669246    0.5961673   0.7376820
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.6919215    0.6449874   0.7388555
21-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.6271294    0.5522250   0.7020339
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.5999734    0.5436411   0.6563057
21-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.6610772    0.6077715   0.7143829
21-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.6522886    0.5802283   0.7243489
21-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.7923047    0.7149445   0.8696648
21-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.7948381    0.7107941   0.8788820


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3979187   3.3154647   3.4803727
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3956646   3.2820866   3.5092426
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6599922   3.5033844   3.8166001
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0463129   2.9731827   3.1194431
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.2294119   3.0612660   3.3975579
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2871694   3.2020744   3.3722644
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.4022248   3.2704557   3.5339939
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5991019   3.5479403   3.6502635
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.7442243   2.5756023   2.9128463
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3411857   3.3203084   3.3620631
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5268754   2.4626038   2.5911470
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5146204   3.4829437   3.5462971
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6472957   3.6318019   3.6627894
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                2.9958189   2.8869566   3.1046813
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9676032   1.8996131   2.0355934
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.9018403   1.8136737   1.9900069
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.8994983   1.8048377   1.9941589
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0419881   1.9674098   2.1165663
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9086145   1.7783388   2.0388902
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8292696   1.7515547   1.9069846
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9138649   1.8623955   1.9653342
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7933681   1.7575702   1.8291661
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7093219   1.6699158   1.7487279
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0921600   2.0257549   2.1585652
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9748321   1.9548517   1.9948124
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.6626989   1.6169443   1.7084536
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8755767   1.8484594   1.9026940
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9261419   1.9108543   1.9414296
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8867574   1.8215405   1.9519743
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2394642   1.1844395   1.2944889
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2258711   1.1584944   1.2932477
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3154961   1.2471080   1.3838843
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3246242   1.2633828   1.3858657
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3957495   1.2953587   1.4961403
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1993506   1.1124123   1.2862888
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2244759   1.1805129   1.2684389
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.1338927   1.0525014   1.2152841
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3251662   1.2885567   1.3617757
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3177402   1.2769900   1.3584905
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                1.5899823   1.5470524   1.6329122
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.3470386   1.3276819   1.3663953
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0649714   1.0247727   1.1051701
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.2036176   1.1789746   1.2282607
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.4589045   1.4222542   1.4955548
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2888509   1.2502161   1.3274857
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9821541   0.9287459   1.0355622
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9895337   0.9360398   1.0430277
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.1190296   1.0603974   1.1776618
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0908927   1.0348852   1.1469003
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9433895   0.8335257   1.0532533
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7855464   0.6934679   0.8776249
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9863087   0.9640508   1.0085666
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0290473   0.6585278   1.3995669
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0857505   1.0516744   1.1198266
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9982656   0.9657105   1.0308207
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.3648879   1.3089716   1.4208042
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.0793423   1.0612498   1.0974348
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9468978   0.9113936   0.9824020
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.9946741   0.9693876   1.0199607
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.0992151   1.0523671   1.1460631
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.0533268   1.0198974   1.0867563
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9085823   0.8591222   0.9580425
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9099711   0.8572535   0.9626887
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9504990   0.8857491   1.0152489
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8777205   0.8267476   0.9286935
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9375260   0.8551185   1.0199334
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8645417   0.7949705   0.9341129
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8459533   0.8245899   0.8673167
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.9636513   0.7049916   1.2223109
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9319267   0.8950348   0.9688186
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8802690   0.8513071   0.9092309
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.2280124   0.7452869   1.7107379
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9227324   0.8953389   0.9501259
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7453893   0.7074590   0.7833197
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.9578403   0.8612449   1.0544357
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.9387223   0.9057631   0.9716816
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8123975   0.7622036   0.8625914
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8214042   0.7706117   0.8721967
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8236934   0.7553557   0.8920310
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8458575   0.7977957   0.8939193
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8968158   0.8079212   0.9857105
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6777871   0.6091235   0.7464506
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9617394   0.8773098   1.0461689
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8317920   0.7632451   0.9003389
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9372014   0.8951355   0.9792674
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7539578   0.7191986   0.7887171
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.1027168   0.2502078   1.9552257
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7985885   0.7680287   0.8291482
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7285014   0.6863301   0.7706726
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8227868   0.7513696   0.8942040
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8397284   0.8047475   0.8747093
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8102152   0.7630350   0.8573954
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8894887   0.8398301   0.9391473
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8095409   0.7508722   0.8682097
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8459313   0.7971977   0.8946650
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7351157   0.6560928   0.8141386
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7501039   0.6775670   0.8226408
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9037294   0.8697046   0.9377541
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6856019   0.6511523   0.7200516
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7276117   0.6869861   0.7682373
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8198129   0.7731117   0.8665140
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7769994   0.7302546   0.8237443
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8127162   0.7713440   0.8540884
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7789199   0.7171245   0.8407153
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7749933   0.7238446   0.8261420
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8429833   0.7683723   0.9175942
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7399316   0.6691267   0.8107365
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.3444388   0.7369879   1.9518896
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6929508   0.6540821   0.7318195
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6310908   0.5963911   0.6657905
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.7507726   0.7049982   0.7965470


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1219559   -0.3182652    0.0743535
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1365097   -0.3301058    0.0570865
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0973560   -0.3560862    0.1613741
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               High               0.1025702   -0.1860923    0.3912327
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0264900   -0.3964073    0.3434273
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               High               0.1661100   -0.2191868    0.5514068
0-3 months     ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  High              -0.0471252   -0.2103238    0.1160734
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               High               0.0507850   -0.1366616    0.2382316
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.0208447   -0.4115597    0.3698704
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.1784956   -0.6069594    0.2499682
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0130050   -0.2139773    0.1879673
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0227228   -0.2214986    0.2669443
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1502982   -0.3370869    0.0364905
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               High               0.0267994   -0.2067797    0.2603785
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1043785   -0.1971362   -0.0116208
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0765737   -0.1657000    0.0125527
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               0.0591240   -0.0314076    0.1496556
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0069177   -0.0765850    0.0904203
0-3 months     ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0843296   -0.2104321    0.0417729
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0305380   -0.1656456    0.1045695
0-3 months     ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  High              -0.0810572   -0.2209421    0.0588278
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               High              -0.0074199   -0.0871526    0.0723129
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0397084   -0.1306150    0.0511982
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0166438   -0.0962649    0.0629773
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0153286   -0.1783084    0.1476513
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.2072211   -0.3652499   -0.0491923
0-3 months     ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Low                  High              -0.1537129   -0.2287006   -0.0787253
0-3 months     ki1135781-COHORTS          INDIA                          Medium               High              -0.1403093   -0.2174914   -0.0631272
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0777502   -0.1112008   -0.0442996
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0543911   -0.0892988   -0.0194833
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0277135   -0.2309332    0.2863601
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.1069386   -0.1716518    0.3855290
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1820436   -0.3377332   -0.0263541
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1364123   -0.2946869    0.0218623
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  High               0.0552684   -0.1421339    0.2526707
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0366659   -0.2416290    0.1682971
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.1210385   -0.3245696    0.0824926
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.0585336   -0.3061128    0.1890455
3-6 months     ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  High              -0.0112247   -0.1909530    0.1685036
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               High               0.0622352   -0.1079616    0.2324321
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1133496   -0.4238215    0.1971223
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.0719462   -0.2649258    0.4088183
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0873252   -0.0870698    0.2617201
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1521658   -0.4236649    0.1193333
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.0207792   -0.1460200    0.1044617
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               High               0.1325039    0.0067838    0.2582239
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0720420   -0.1546373    0.0105533
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0472710   -0.1306215    0.0360795
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0211573   -0.1075370    0.0652224
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0353721   -0.0536016    0.1243458
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0161289   -0.1114783    0.0792206
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0451889   -0.1483978    0.0580200
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0046633   -0.1045381    0.0952115
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0366140   -0.1410790    0.0678511
3-6 months     ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  High              -0.0641517   -0.1247632   -0.0035402
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               High              -0.0488133   -0.0900965   -0.0075302
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1103944   -0.1957800   -0.0250088
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0604392   -0.1345684    0.0136901
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0782498   -0.2002868    0.0437871
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0282352   -0.1447073    0.0882369
3-6 months     ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Low                  High              -0.0612993   -0.1268910    0.0042924
3-6 months     ki1135781-COHORTS          INDIA                          Medium               High              -0.0123825   -0.0769423    0.0521774
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0077003   -0.0431188    0.0277182
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               0.0042498   -0.0309169    0.0394166
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.1200351   -0.3042139    0.0641438
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1866031   -0.3614111   -0.0117951
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1168529   -0.2564484    0.0227426
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0841383   -0.2105739    0.0422973
6-9 months     ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0328914   -0.2040274    0.1382447
6-9 months     ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0196334   -0.1525705    0.1133038
6-9 months     ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low                  High               0.0379264   -0.1325916    0.2084443
6-9 months     ki0047075b-MAL-ED          NEPAL                          Medium               High               0.0521741   -0.1062999    0.2106482
6-9 months     ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Low                  High              -0.0261173   -0.1730181    0.1207835
6-9 months     ki0047075b-MAL-ED          PERU                           Medium               High              -0.1607081   -0.3047002   -0.0167160
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1630231   -0.3743160    0.0482698
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.0430037   -0.2354214    0.3214288
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0980104   -0.2793417    0.0833209
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0052725   -0.2529206    0.2634656
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1404147   -0.2837881    0.0029587
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.1301624   -0.2084879   -0.0518369
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               0.2465055    0.0429262    0.4500847
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High               0.1107452   -0.0613030    0.2827934
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1126841   -0.1727984   -0.0525699
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0776559   -0.1382422   -0.0170697
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1133815   -0.1822403   -0.0445227
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0703367   -0.1434282    0.0027549
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0384883   -0.1383045    0.0613280
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0484884   -0.0605631    0.1575398
6-9 months     ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0215590   -0.1293873    0.0862694
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0820703   -0.1823392    0.0181986
6-9 months     ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        Low                  High               0.0490939    0.0065573    0.0916305
6-9 months     ki1119695-PROBIT           BELARUS                        Medium               High              -0.0069050   -0.0427508    0.0289408
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               0.0216042   -0.0698092    0.1130176
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0555375   -0.0264857    0.1375607
6-9 months     ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0290954   -0.1417495    0.0835588
6-9 months     ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0335722   -0.0760540    0.1431983
6-9 months     ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          Low                  High              -0.0388517   -0.0973261    0.0196227
6-9 months     ki1135781-COHORTS          INDIA                          Medium               High              -0.0589753   -0.1191414    0.0011908
6-9 months     ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0327560   -0.1223791    0.0568670
6-9 months     ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0406853   -0.1284172    0.0470466
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0349581   -0.1412468    0.0713306
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0232481   -0.0859751    0.1324712
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.0328839   -0.1615902    0.0958225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0057267   -0.1345565    0.1231031
9-12 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0570184   -0.1841660    0.0701293
9-12 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0866364   -0.2214322    0.0481594
9-12 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0248899   -0.1656637    0.1158839
9-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.1062104   -0.2454295    0.0330087
9-12 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.0595334   -0.1999751    0.0809082
9-12 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.0408091   -0.1708250    0.0892068
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.0375512   -0.3071626    0.2320603
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.1283403   -0.3791337    0.1224532
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0641783   -0.2412525    0.1128959
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.1142040   -0.2068481    0.4352560
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High               0.0403866   -0.0828865    0.1636598
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High               0.0766675    0.0101841    0.1431508
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.0878542   -1.1530987    0.9773904
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.3887614   -1.3620563    0.5845335
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0587647   -0.1211644    0.0036350
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0570386   -0.1275115    0.0134344
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0124880   -0.0739799    0.0490038
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0235467   -0.0415972    0.0886907
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0668761   -0.1557008    0.0219486
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0700496   -0.1697731    0.0296740
9-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0119161   -0.1042203    0.0803880
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0059178   -0.0934939    0.0816583
9-12 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        Low                  High               0.0197974   -0.0530126    0.0926073
9-12 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.0266380   -0.0946056    0.0413297
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1062179   -0.1907144   -0.0217215
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0782012   -0.1541993   -0.0022031
9-12 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0880380   -0.1737075   -0.0023686
9-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.1068505   -0.1936679   -0.0200331
9-12 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.1628832   -0.2232504   -0.1025161
9-12 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.0653596   -0.1254770   -0.0052422
9-12 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0083390   -0.1263522    0.1096742
9-12 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0261888   -0.1378400    0.0854625
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0204429   -0.0745319    0.1154177
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0249859   -0.0703954    0.1203672
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.0330086   -0.0919023    0.1579195
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0447469   -0.1555418    0.0660479
12-15 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0045006   -0.1381717    0.1291706
12-15 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0272527   -0.1567570    0.1022515
12-15 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2489604   -0.4003900   -0.0975308
12-15 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.1256680   -0.2687540    0.0174180
12-15 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.0046654   -0.1141938    0.1235246
12-15 months   ki0047075b-MAL-ED          PERU                           Medium               High               0.0031796   -0.1252960    0.1316553
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1113026   -0.2923173    0.0697122
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.0406044   -0.1818528    0.2630616
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0747780   -0.0869431    0.2364990
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0036352   -0.2340062    0.2267358
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.2925446   -0.4967595   -0.0883297
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.1737154   -0.2719478   -0.0754830
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.5773193   -1.3319527    0.1773142
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.0189188   -0.2163963    0.1785587
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0691219   -0.1335670   -0.0046768
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0464492   -0.1105878    0.0176895
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0579178   -0.1157655   -0.0000701
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0694653   -0.1296808   -0.0092499
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0616401   -0.1570781    0.0337980
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0136240   -0.1179466    0.0906985
12-15 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0063777   -0.0775579    0.0648024
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.0153823   -0.0519306    0.0826952
12-15 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.1208841   -1.2602910    1.0185227
12-15 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.3498583   -1.1494913    0.4497748
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0055537   -0.1490056    0.1378982
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0072231   -0.1381054    0.1236592
12-15 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0152336   -0.0772840    0.1077512
12-15 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0058797   -0.1014849    0.0897256
12-15 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.0944290   -0.1026681    0.2915262
12-15 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.1214246   -0.3856386    0.1427895
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0758156   -0.1684403    0.0168091
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0555286   -0.1457734    0.0347163
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.0911106   -0.2169373    0.0347161
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0990844   -0.2139428    0.0157740
15-18 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Low                  High               0.0398815   -0.0832569    0.1630199
15-18 months   ki0047075b-MAL-ED          INDIA                          Medium               High               0.0413423   -0.0857900    0.1684745
15-18 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0258042   -0.1900291    0.1384206
15-18 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.0452455   -0.2108477    0.1203568
15-18 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.0034046   -0.1024251    0.1092343
15-18 months   ki0047075b-MAL-ED          PERU                           Medium               High               0.0964959   -0.0225034    0.2154952
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.0262025   -0.2246189    0.1722139
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.1288539   -0.3689710    0.1112632
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0920318   -0.2514750    0.0674114
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0487424   -0.2777530    0.1802681
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High               0.0598741   -0.1991677    0.3189159
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High               0.1061925   -0.2162704    0.4286555
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               0.1569343   -0.0279950    0.3418637
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High               0.0417480   -0.1088486    0.1923446
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0435509   -0.1009904    0.0138886
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0632252   -0.1216090   -0.0048414
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0745101   -0.1300746   -0.0189455
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0136941   -0.0683746    0.0409865
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0392242   -0.0589540    0.1374024
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0006113   -0.1116134    0.1128359
15-18 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0405359   -0.1208131    0.0397414
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0021484   -0.0797787    0.0754820
15-18 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.0730770   -2.6016771    2.4555231
15-18 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.5388263   -2.2349082    1.1572556
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0038101   -0.1477733    0.1401531
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0201255   -0.1074148    0.1476657
15-18 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0508983   -0.1657733    0.0639768
15-18 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.1081001    0.0001250    0.2160753
15-18 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.0603389   -0.0969914    0.2176693
15-18 months   ki1148112-LCNI-5           MALAWI                         Medium               High               0.1781696   -0.0019887    0.3583280
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0377512   -0.0563723    0.1318747
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0270707   -0.0699040    0.1240454
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.0324804   -0.1472819    0.0823211
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0164273   -0.1272227    0.0943681
18-21 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0323157   -0.1473659    0.0827346
18-21 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0211037   -0.1428902    0.1006828
18-21 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0351048   -0.1738959    0.1036864
18-21 months   ki0047075b-MAL-ED          NEPAL                          Medium               High               0.0358412   -0.1078338    0.1795161
18-21 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.0515104   -0.0706933    0.1737140
18-21 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0437807   -0.1568203    0.0692590
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.0743892   -0.2470834    0.0983049
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0518770   -0.2630759    0.1593219
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0172388   -0.1924827    0.1580050
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0997894   -0.0690329    0.2686118
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0874827   -0.1437802   -0.0311852
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0710506   -0.1312872   -0.0108141
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0528853   -0.1082803    0.0025096
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0097397   -0.0665278    0.0470483
18-21 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.0268427   -0.0669184    0.1206038
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.0293894   -0.0716372    0.1304160
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1342045   -0.2899761    0.0215671
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1263732   -0.2683830    0.0156367
18-21 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0485196   -0.1532459    0.0562068
18-21 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0039285   -0.0947936    0.1026506
18-21 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.0088715   -0.1154509    0.1331939
18-21 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0384079   -0.1697528    0.0929370
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.0063764   -0.1128236    0.1255764
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0014781   -0.1112589    0.1083028
21-24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0168777   -0.1215358    0.0877803
21-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0474861   -0.1514872    0.0565150
21-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0508157   -0.2162201    0.1145888
21-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.0139013   -0.1422175    0.1144148
21-24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.0295263   -0.0925107    0.1515634
21-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0105391   -0.1372553    0.1161772
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.0645719   -0.2374394    0.1082956
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0398745   -0.2314349    0.1516858
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1496504   -0.3318585    0.0325577
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1602670   -0.3576877    0.0371537
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0606995   -0.1217561    0.0003572
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0483004   -0.1105600    0.0139592
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0632012   -0.1257387   -0.0006637
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0335032   -0.0218030    0.0888093
21-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0979080   -0.2307358    0.0349197
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.1385537   -0.2788933    0.0017859
21-24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1119695-PROBIT           BELARUS                        Low                  High               0.0942689   -1.9373600    2.1258977
21-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1656077   -2.4781597    2.1469444
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1530805   -0.3355286    0.0293676
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1280837   -0.3026790    0.0465116
21-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0271560   -0.1208790    0.0665670
21-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0339478   -0.0579879    0.1258835
21-24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.1400161    0.0342934    0.2457387
21-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High               0.1425495    0.0318423    0.2532566


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0826518   -0.1867715    0.0214679
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0129748   -0.1773402    0.1513907
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0478645   -0.1582010    0.2539300
0-3 months     ki0047075b-MAL-ED          PERU                           High                 NA                -0.0001561   -0.0771142    0.0768021
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0558476   -0.2784997    0.1668046
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0014971   -0.0660241    0.0630299
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0519292   -0.1989555    0.0950972
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0597987   -0.1123527   -0.0072446
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0210299   -0.0238608    0.0659206
0-3 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0471063   -0.1340442    0.0398315
0-3 months     ki1119695-PROBIT           BELARUS                        High                 NA                -0.0319402   -0.1091383    0.0452578
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0196140   -0.0930696    0.0538416
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0895558   -0.1949463    0.0158346
0-3 months     ki1135781-COHORTS          INDIA                          High                 NA                -0.0901015   -0.1297886   -0.0504145
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0518177   -0.0753598   -0.0282756
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0523469   -0.1349914    0.2396851
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0955662   -0.1744896   -0.0166427
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0119135   -0.1004929    0.1243200
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0527632   -0.1683074    0.0627809
3-6 months     ki0047075b-MAL-ED          PERU                           High                 NA                 0.0124975   -0.0664259    0.0914210
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0247093   -0.2078370    0.1584185
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0109729   -0.0479362    0.0698820
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0345041   -0.0194653    0.0884734
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0395240   -0.0867685    0.0077206
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0036853   -0.0411107    0.0484814
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0212520   -0.0944860    0.0519820
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0131336   -0.0819373    0.0556700
3-6 months     ki1119695-PROBIT           BELARUS                        High                 NA                -0.0465637   -0.0845418   -0.0085856
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0652682   -0.1336697    0.0031333
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0376214   -0.1177920    0.0425492
3-6 months     ki1135781-COHORTS          INDIA                          High                 NA                -0.0232129   -0.0562762    0.0098505
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0015167   -0.0239947    0.0209613
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1201475   -0.2520408    0.0117459
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0604990   -0.1311427    0.0101446
6-9 months     ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0183696   -0.1083286    0.0715893
6-9 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0261598   -0.0528950    0.1052145
6-9 months     ki0047075b-MAL-ED          PERU                           High                 NA                -0.0482736   -0.1132406    0.0166934
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0526669   -0.1794962    0.0741625
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0265631   -0.0874291    0.0343029
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0997662   -0.1745771   -0.0249553
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1215133    0.0068400    0.2361865
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0628952   -0.0969906   -0.0287997
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0561851   -0.0934394   -0.0189308
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0068767   -0.0839836    0.0702301
6-9 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0357267   -0.1082397    0.0367863
6-9 months     ki1119695-PROBIT           BELARUS                        High                 NA                 0.0139523   -0.0155523    0.0434569
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0456205   -0.0302476    0.1214885
6-9 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0043358   -0.0723711    0.0810427
6-9 months     ki1135781-COHORTS          INDIA                          High                 NA                -0.0294677   -0.0599789    0.0010434
6-9 months     ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0251552   -0.0774070    0.0270966
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0042158   -0.0822251    0.0737935
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0110486   -0.0806091    0.0585119
9-12 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0474026   -0.1249862    0.0301811
9-12 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0378734   -0.1051856    0.0294387
9-12 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0269891   -0.0868829    0.0329047
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0466974   -0.1925241    0.0991293
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0075090   -0.0700034    0.0549854
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0411400   -0.0308743    0.1131544
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.1811305   -0.8618611    0.4996001
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0380677   -0.0763045    0.0001691
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0032752   -0.0291860    0.0357363
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0549189   -0.1231769    0.0133391
9-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0071419   -0.0709028    0.0566191
9-12 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0061752   -0.0599577    0.0476074
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0782014   -0.1488301   -0.0075727
9-12 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0730773   -0.1293699   -0.0167846
9-12 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0711430   -0.1024287   -0.0398573
9-12 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0124359   -0.0827961    0.0579244
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0175976   -0.0504187    0.0856138
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0064606   -0.0708772    0.0579559
12-15 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0096575   -0.0897020    0.0703870
12-15 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1070367   -0.1813445   -0.0327289
12-15 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0020248   -0.0501483    0.0541978
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0327941   -0.1384407    0.0728525
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0203197   -0.0315922    0.0722316
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1716561   -0.2896832   -0.0536291
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.1971267   -0.4743910    0.0801376
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0371863   -0.0734031   -0.0009695
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0386887   -0.0691245   -0.0082529
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0364635   -0.1089815    0.0360545
12-15 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0022873   -0.0448623    0.0494369
12-15 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.2196251   -0.9896973    0.5504471
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0064841   -0.1293420    0.1163738
12-15 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0030889   -0.0572983    0.0634761
12-15 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0060008   -0.1449135    0.1329120
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0511856   -0.1176767    0.0153055
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0628241   -0.1306027    0.0049546
15-18 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0274237   -0.0465595    0.1014070
15-18 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0208122   -0.1052337    0.0636093
15-18 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0248898   -0.0249031    0.0746827
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0410415   -0.1551720    0.0730889
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0290885   -0.0802446    0.0220676
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0589769   -0.1520683    0.2700221
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0631675   -0.0386302    0.1649653
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0340806   -0.0658560   -0.0023051
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0264774   -0.0547476    0.0017928
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0210772   -0.0516629    0.0938173
15-18 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0185468   -0.0701477    0.0330541
15-18 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.2638373   -1.7121855    1.1845108
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0142121   -0.1056433    0.1340675
15-18 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0241354   -0.0509054    0.0991762
15-18 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0821991   -0.0200491    0.1844474
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0249912   -0.0426573    0.0926397
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0154679   -0.0777144    0.0467785
18-21 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0185979   -0.0861573    0.0489615
18-21 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0001773   -0.0729591    0.0726045
18-21 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0029218   -0.0487432    0.0545868
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0407836   -0.1367287    0.0551614
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0045516   -0.0475244    0.0566277
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0528584   -0.0863819   -0.0193350
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0176838   -0.0449645    0.0095969
18-21 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0209955   -0.0464119    0.0884028
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1218939   -0.2559072    0.0121195
18-21 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0151016   -0.0809040    0.0507007
18-21 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0103190   -0.0925822    0.0719441
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0013582   -0.0626892    0.0654057
21-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0205790   -0.0841333    0.0429753
21-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0192606   -0.0922054    0.0536841
21-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0054385   -0.0502870    0.0611641
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0342040   -0.1314391    0.0630312
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0547202   -0.1109914    0.0015511
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0369568   -0.0728210   -0.0010927
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0070881   -0.0361316    0.0219554
21-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0865771   -0.1833688    0.0102146
21-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0503989   -1.7836355    1.6828377
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1270544   -0.2916693    0.0375606
21-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0039614   -0.0588953    0.0668180
21-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0984840    0.0341099    0.1628581
