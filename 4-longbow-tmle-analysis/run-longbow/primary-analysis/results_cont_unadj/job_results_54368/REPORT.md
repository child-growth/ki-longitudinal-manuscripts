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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        meducyrs    n_cell      n
-------------  -------------------------  -----------------------------  ---------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High            75    200
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low             66    200
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium          59    200
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High            57    167
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low             43    167
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Medium          67    167
0-3 months     ki0047075b-MAL-ED          INDIA                          High            43    159
0-3 months     ki0047075b-MAL-ED          INDIA                          Low             55    159
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium          61    159
0-3 months     ki0047075b-MAL-ED          NEPAL                          High            32    144
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low             65    144
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium          47    144
0-3 months     ki0047075b-MAL-ED          PERU                           High            78    264
0-3 months     ki0047075b-MAL-ED          PERU                           Low             93    264
0-3 months     ki0047075b-MAL-ED          PERU                           Medium          93    264
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High            57    211
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low            106    211
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          48    211
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             8    189
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             58    189
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         123    189
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High            50     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low             14     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium          24     88
0-3 months     ki1000108-IRC              INDIA                          High           108    377
0-3 months     ki1000108-IRC              INDIA                          Low            138    377
0-3 months     ki1000108-IRC              INDIA                          Medium         131    377
0-3 months     ki1000109-EE               PAKISTAN                       High            11    300
0-3 months     ki1000109-EE               PAKISTAN                       Low            266    300
0-3 months     ki1000109-EE               PAKISTAN                       Medium          23    300
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High            91    389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low            172    389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium         126    389
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High           163    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low            206    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Medium         197    566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High           218    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low            196    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium         226    640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High           242    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low            229    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium         250    721
0-3 months     ki1113344-GMS-Nepal        NEPAL                          High            62    506
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low            363    506
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Medium          81    506
0-3 months     ki1119695-PROBIT           BELARUS                        High          1181   7539
0-3 months     ki1119695-PROBIT           BELARUS                        Low           2538   7539
0-3 months     ki1119695-PROBIT           BELARUS                        Medium        3820   7539
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High          4249   7968
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low           1708   7968
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium        2011   7968
0-3 months     ki1135781-COHORTS          GUATEMALA                      High            93    352
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low            151    352
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium         108    352
0-3 months     ki1135781-COHORTS          INDIA                          High           659   5090
0-3 months     ki1135781-COHORTS          INDIA                          Low           1719   5090
0-3 months     ki1135781-COHORTS          INDIA                          Medium        2712   5090
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High          3074   9812
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low           3808   9812
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium        2930   9812
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High           205    635
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low            237    635
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium         193    635
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High            73    189
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low             61    189
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium          55    189
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High            71    207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low             55    207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Medium          81    207
3-6 months     ki0047075b-MAL-ED          INDIA                          High            56    202
3-6 months     ki0047075b-MAL-ED          INDIA                          Low             69    202
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium          77    202
3-6 months     ki0047075b-MAL-ED          NEPAL                          High            50    218
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low             93    218
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium          75    218
3-6 months     ki0047075b-MAL-ED          PERU                           High            81    266
3-6 months     ki0047075b-MAL-ED          PERU                           Low             92    266
3-6 months     ki0047075b-MAL-ED          PERU                           Medium          93    266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High            67    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low            121    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          55    243
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             9    198
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             62    198
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         127    198
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High           132    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low             85    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium          90    307
3-6 months     ki1000108-IRC              INDIA                          High           118    397
3-6 months     ki1000108-IRC              INDIA                          Low            142    397
3-6 months     ki1000108-IRC              INDIA                          Medium         137    397
3-6 months     ki1000109-EE               PAKISTAN                       High            11    278
3-6 months     ki1000109-EE               PAKISTAN                       Low            245    278
3-6 months     ki1000109-EE               PAKISTAN                       Medium          22    278
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High            84    349
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low            156    349
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium         109    349
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High           147    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low            193    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Medium         183    523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High           207    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low            185    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium         206    598
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High           233    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low            220    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium         242    695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           407   1657
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             57   1657
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1193   1657
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High            57    466
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low            335    466
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium          74    466
3-6 months     ki1119695-PROBIT           BELARUS                        High          1047   6696
3-6 months     ki1119695-PROBIT           BELARUS                        Low           2261   6696
3-6 months     ki1119695-PROBIT           BELARUS                        Medium        3388   6696
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High          3298   6166
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low           1287   6166
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium        1581   6166
3-6 months     ki1135781-COHORTS          GUATEMALA                      High           107    389
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low            165    389
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium         117    389
3-6 months     ki1135781-COHORTS          INDIA                          High           685   5145
3-6 months     ki1135781-COHORTS          INDIA                          Low           1711   5145
3-6 months     ki1135781-COHORTS          INDIA                          Medium        2749   5145
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High          2214   6233
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low           2129   6233
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium        1890   6233
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High           142    432
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low            155    432
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium         135    432
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     High            69    185
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low             61    185
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Medium          55    185
6-9 months     ki0047075b-MAL-ED          BRAZIL                         High            67    197
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low             51    197
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Medium          79    197
6-9 months     ki0047075b-MAL-ED          INDIA                          High            57    202
6-9 months     ki0047075b-MAL-ED          INDIA                          Low             68    202
6-9 months     ki0047075b-MAL-ED          INDIA                          Medium          77    202
6-9 months     ki0047075b-MAL-ED          NEPAL                          High            50    215
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low             92    215
6-9 months     ki0047075b-MAL-ED          NEPAL                          Medium          73    215
6-9 months     ki0047075b-MAL-ED          PERU                           High            74    244
6-9 months     ki0047075b-MAL-ED          PERU                           Low             82    244
6-9 months     ki0047075b-MAL-ED          PERU                           Medium          88    244
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High            64    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low            113    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          54    231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             8    187
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             60    187
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         119    187
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          High           133    313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low             91    313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium          89    313
6-9 months     ki1000108-IRC              INDIA                          High           123    407
6-9 months     ki1000108-IRC              INDIA                          Low            146    407
6-9 months     ki1000108-IRC              INDIA                          Medium         138    407
6-9 months     ki1000109-EE               PAKISTAN                       High            12    302
6-9 months     ki1000109-EE               PAKISTAN                       Low            261    302
6-9 months     ki1000109-EE               PAKISTAN                       Medium          29    302
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          High            76    351
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low            156    351
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Medium         119    351
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          High             4     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Low             60     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Medium          10     74
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     High           142    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low            180    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Medium         176    498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     High           195    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low            175    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Medium         195    565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     High           234    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low            218    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium         236    688
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           363   1481
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             43   1481
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1075   1481
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      High            89    211
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Low             58    211
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Medium          64    211
6-9 months     ki1113344-GMS-Nepal        NEPAL                          High            55    479
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low            344    479
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Medium          80    479
6-9 months     ki1119695-PROBIT           BELARUS                        High           980   6262
6-9 months     ki1119695-PROBIT           BELARUS                        Low           2105   6262
6-9 months     ki1119695-PROBIT           BELARUS                        Medium        3177   6262
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       High          3226   5917
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low           1203   5917
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium        1488   5917
6-9 months     ki1135781-COHORTS          GUATEMALA                      High           102    389
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low            163    389
6-9 months     ki1135781-COHORTS          GUATEMALA                      Medium         124    389
6-9 months     ki1135781-COHORTS          INDIA                          High           636   4728
6-9 months     ki1135781-COHORTS          INDIA                          Low           1551   4728
6-9 months     ki1135781-COHORTS          INDIA                          Medium        2541   4728
6-9 months     ki1148112-LCNI-5           MALAWI                         High           217    557
6-9 months     ki1148112-LCNI-5           MALAWI                         Low            175    557
6-9 months     ki1148112-LCNI-5           MALAWI                         Medium         165    557
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     High           262    767
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low            257    767
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium         248    767
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     High            67    187
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low             63    187
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          57    187
9-12 months    ki0047075b-MAL-ED          BRAZIL                         High            67    193
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low             50    193
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Medium          76    193
9-12 months    ki0047075b-MAL-ED          INDIA                          High            56    199
9-12 months    ki0047075b-MAL-ED          INDIA                          Low             69    199
9-12 months    ki0047075b-MAL-ED          INDIA                          Medium          74    199
9-12 months    ki0047075b-MAL-ED          NEPAL                          High            50    215
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low             92    215
9-12 months    ki0047075b-MAL-ED          NEPAL                          Medium          73    215
9-12 months    ki0047075b-MAL-ED          PERU                           High            72    234
9-12 months    ki0047075b-MAL-ED          PERU                           Low             81    234
9-12 months    ki0047075b-MAL-ED          PERU                           Medium          81    234
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            67    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low            115    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          51    233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             8    185
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             57    185
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         120    185
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High           133    317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low             93    317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium          91    317
9-12 months    ki1000108-IRC              INDIA                          High           120    400
9-12 months    ki1000108-IRC              INDIA                          Low            144    400
9-12 months    ki1000108-IRC              INDIA                          Medium         136    400
9-12 months    ki1000109-EE               PAKISTAN                       High            13    323
9-12 months    ki1000109-EE               PAKISTAN                       Low            278    323
9-12 months    ki1000109-EE               PAKISTAN                       Medium          32    323
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          High            83    372
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low            160    372
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         129    372
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             4     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low             61     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          12     77
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     High           140    482
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low            176    482
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Medium         166    482
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     High           194    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low            170    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         202    566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           232    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            212    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         230    674
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           269   1076
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             35   1076
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         772   1076
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High            80    185
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Low             51    185
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium          54    185
9-12 months    ki1113344-GMS-Nepal        NEPAL                          High            51    467
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low            338    467
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium          78    467
9-12 months    ki1119695-PROBIT           BELARUS                        High           983   6264
9-12 months    ki1119695-PROBIT           BELARUS                        Low           2077   6264
9-12 months    ki1119695-PROBIT           BELARUS                        Medium        3204   6264
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          3223   5921
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1218   5921
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        1480   5921
9-12 months    ki1135781-COHORTS          GUATEMALA                      High           120    436
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low            174    436
9-12 months    ki1135781-COHORTS          GUATEMALA                      Medium         142    436
9-12 months    ki1135781-COHORTS          INDIA                          High           561   4077
9-12 months    ki1135781-COHORTS          INDIA                          Low           1289   4077
9-12 months    ki1135781-COHORTS          INDIA                          Medium        2227   4077
9-12 months    ki1148112-LCNI-5           MALAWI                         High           144    382
9-12 months    ki1148112-LCNI-5           MALAWI                         Low            123    382
9-12 months    ki1148112-LCNI-5           MALAWI                         Medium         115    382
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High           290    864
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low            287    864
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium         287    864
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     High            65    174
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low             58    174
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          51    174
12-15 months   ki0047075b-MAL-ED          BRAZIL                         High            67    183
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low             43    183
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Medium          73    183
12-15 months   ki0047075b-MAL-ED          INDIA                          High            56    198
12-15 months   ki0047075b-MAL-ED          INDIA                          Low             69    198
12-15 months   ki0047075b-MAL-ED          INDIA                          Medium          73    198
12-15 months   ki0047075b-MAL-ED          NEPAL                          High            50    216
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low             92    216
12-15 months   ki0047075b-MAL-ED          NEPAL                          Medium          74    216
12-15 months   ki0047075b-MAL-ED          PERU                           High            70    223
12-15 months   ki0047075b-MAL-ED          PERU                           Low             78    223
12-15 months   ki0047075b-MAL-ED          PERU                           Medium          75    223
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            64    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low            118    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          46    228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             8    186
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             58    186
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         120    186
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          High           134    329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low             94    329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium         101    329
12-15 months   ki1000108-IRC              INDIA                          High           116    390
12-15 months   ki1000108-IRC              INDIA                          Low            142    390
12-15 months   ki1000108-IRC              INDIA                          Medium         132    390
12-15 months   ki1000109-EE               PAKISTAN                       High            12    294
12-15 months   ki1000109-EE               PAKISTAN                       Low            256    294
12-15 months   ki1000109-EE               PAKISTAN                       Medium          26    294
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          High            87    377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low            162    377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Medium         128    377
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          High             5     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low             60     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium          11     76
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     High           137    461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low            169    461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         155    461
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     High           186    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low            158    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         188    532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           226    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            208    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         226    660
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           188    786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             29    786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         569    786
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      High            42     96
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Low             27     96
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium          27     96
12-15 months   ki1113344-GMS-Nepal        NEPAL                          High            48    466
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low            339    466
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Medium          79    466
12-15 months   ki1119695-PROBIT           BELARUS                        High            37    283
12-15 months   ki1119695-PROBIT           BELARUS                        Low             95    283
12-15 months   ki1119695-PROBIT           BELARUS                        Medium         151    283
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       High          1315   2545
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            557   2545
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         673   2545
12-15 months   ki1135781-COHORTS          GUATEMALA                      High           112    420
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low            179    420
12-15 months   ki1135781-COHORTS          GUATEMALA                      Medium         129    420
12-15 months   ki1148112-LCNI-5           MALAWI                         High            44    126
12-15 months   ki1148112-LCNI-5           MALAWI                         Low             43    126
12-15 months   ki1148112-LCNI-5           MALAWI                         Medium          39    126
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     High           284    871
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low            302    871
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         285    871
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     High            67    173
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low             57    173
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          49    173
15-18 months   ki0047075b-MAL-ED          BRAZIL                         High            64    174
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low             42    174
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Medium          68    174
15-18 months   ki0047075b-MAL-ED          INDIA                          High            56    198
15-18 months   ki0047075b-MAL-ED          INDIA                          Low             68    198
15-18 months   ki0047075b-MAL-ED          INDIA                          Medium          74    198
15-18 months   ki0047075b-MAL-ED          NEPAL                          High            49    212
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low             90    212
15-18 months   ki0047075b-MAL-ED          NEPAL                          Medium          73    212
15-18 months   ki0047075b-MAL-ED          PERU                           High            66    212
15-18 months   ki0047075b-MAL-ED          PERU                           Low             73    212
15-18 months   ki0047075b-MAL-ED          PERU                           Medium          73    212
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            63    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low            114    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          48    225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7    178
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             55    178
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         116    178
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          High           131    321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low             92    321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium          98    321
15-18 months   ki1000108-IRC              INDIA                          High           116    382
15-18 months   ki1000108-IRC              INDIA                          Low            136    382
15-18 months   ki1000108-IRC              INDIA                          Medium         130    382
15-18 months   ki1000109-EE               PAKISTAN                       High            10    276
15-18 months   ki1000109-EE               PAKISTAN                       Low            242    276
15-18 months   ki1000109-EE               PAKISTAN                       Medium          24    276
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          High            87    362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low            154    362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Medium         121    362
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          High             4     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low             56     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium          12     72
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     High           133    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low            163    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         153    449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     High           185    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low            158    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         185    528
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           211    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            184    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         209    604
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           152    662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             19    662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         491    662
15-18 months   ki1113344-GMS-Nepal        NEPAL                          High            55    477
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low            342    477
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Medium          80    477
15-18 months   ki1119695-PROBIT           BELARUS                        High             7     37
15-18 months   ki1119695-PROBIT           BELARUS                        Low             12     37
15-18 months   ki1119695-PROBIT           BELARUS                        Medium          18     37
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       High          1055   2034
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            475   2034
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         504   2034
15-18 months   ki1135781-COHORTS          GUATEMALA                      High            97    368
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low            155    368
15-18 months   ki1135781-COHORTS          GUATEMALA                      Medium         116    368
15-18 months   ki1148112-LCNI-5           MALAWI                         High            38    119
15-18 months   ki1148112-LCNI-5           MALAWI                         Low             43    119
15-18 months   ki1148112-LCNI-5           MALAWI                         Medium          38    119
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     High           288    883
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low            315    883
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         280    883
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     High            64    170
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low             57    170
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          49    170
18-21 months   ki0047075b-MAL-ED          BRAZIL                         High            62    166
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low             41    166
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Medium          63    166
18-21 months   ki0047075b-MAL-ED          INDIA                          High            56    198
18-21 months   ki0047075b-MAL-ED          INDIA                          Low             67    198
18-21 months   ki0047075b-MAL-ED          INDIA                          Medium          75    198
18-21 months   ki0047075b-MAL-ED          NEPAL                          High            49    212
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low             90    212
18-21 months   ki0047075b-MAL-ED          NEPAL                          Medium          73    212
18-21 months   ki0047075b-MAL-ED          PERU                           High            60    201
18-21 months   ki0047075b-MAL-ED          PERU                           Low             71    201
18-21 months   ki0047075b-MAL-ED          PERU                           Medium          70    201
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            66    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low            117    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          50    233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7    167
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             51    167
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         109    167
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          High           130    305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low             85    305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium          90    305
18-21 months   ki1000108-IRC              INDIA                          High           118    379
18-21 months   ki1000108-IRC              INDIA                          Low            134    379
18-21 months   ki1000108-IRC              INDIA                          Medium         127    379
18-21 months   ki1000109-EE               PAKISTAN                       High             9    252
18-21 months   ki1000109-EE               PAKISTAN                       Low            219    252
18-21 months   ki1000109-EE               PAKISTAN                       Medium          24    252
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     High           125    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low            158    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         139    422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     High           181    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low            164    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         196    541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           199    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            159    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         188    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             3      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5      9
18-21 months   ki1113344-GMS-Nepal        NEPAL                          High            52    442
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low            310    442
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Medium          80    442
18-21 months   ki1119695-PROBIT           BELARUS                        High             3     23
18-21 months   ki1119695-PROBIT           BELARUS                        Low              4     23
18-21 months   ki1119695-PROBIT           BELARUS                        Medium          16     23
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           818   1594
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            366   1594
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         410   1594
18-21 months   ki1135781-COHORTS          GUATEMALA                      High            94    366
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low            154    366
18-21 months   ki1135781-COHORTS          GUATEMALA                      Medium         118    366
18-21 months   ki1148112-LCNI-5           MALAWI                         High           180    472
18-21 months   ki1148112-LCNI-5           MALAWI                         Low            150    472
18-21 months   ki1148112-LCNI-5           MALAWI                         Medium         142    472
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     High            64    167
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             55    167
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          48    167
21-24 months   ki0047075b-MAL-ED          BRAZIL                         High            62    164
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low             39    164
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium          63    164
21-24 months   ki0047075b-MAL-ED          INDIA                          High            55    198
21-24 months   ki0047075b-MAL-ED          INDIA                          Low             68    198
21-24 months   ki0047075b-MAL-ED          INDIA                          Medium          75    198
21-24 months   ki0047075b-MAL-ED          NEPAL                          High            47    212
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low             91    212
21-24 months   ki0047075b-MAL-ED          NEPAL                          Medium          74    212
21-24 months   ki0047075b-MAL-ED          PERU                           High            56    188
21-24 months   ki0047075b-MAL-ED          PERU                           Low             69    188
21-24 months   ki0047075b-MAL-ED          PERU                           Medium          63    188
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            66    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low            119    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          50    235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7    166
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             52    166
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         107    166
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High           131    308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low             84    308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium          93    308
21-24 months   ki1000108-IRC              INDIA                          High           119    389
21-24 months   ki1000108-IRC              INDIA                          Low            139    389
21-24 months   ki1000108-IRC              INDIA                          Medium         131    389
21-24 months   ki1000109-EE               PAKISTAN                       High             3    105
21-24 months   ki1000109-EE               PAKISTAN                       Low             88    105
21-24 months   ki1000109-EE               PAKISTAN                       Medium          14    105
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     High           123    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low            150    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         138    411
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     High           155    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            147    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         169    471
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           183    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            137    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         170    490
21-24 months   ki1113344-GMS-Nepal        NEPAL                          High            37    340
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low            240    340
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium          63    340
21-24 months   ki1119695-PROBIT           BELARUS                        High             5     32
21-24 months   ki1119695-PROBIT           BELARUS                        Low              8     32
21-24 months   ki1119695-PROBIT           BELARUS                        Medium          19     32
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           610   1168
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            252   1168
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         306   1168
21-24 months   ki1135781-COHORTS          GUATEMALA                      High           111    413
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low            173    413
21-24 months   ki1135781-COHORTS          GUATEMALA                      Medium         129    413
21-24 months   ki1148112-LCNI-5           MALAWI                         High           165    403
21-24 months   ki1148112-LCNI-5           MALAWI                         Low            123    403
21-24 months   ki1148112-LCNI-5           MALAWI                         Medium         115    403


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/66736743-1e1f-45ea-b6e3-c20feb7a3d27/5fae8f1c-763c-4c1a-a948-d7d01881aaeb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/66736743-1e1f-45ea-b6e3-c20feb7a3d27/5fae8f1c-763c-4c1a-a948-d7d01881aaeb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/66736743-1e1f-45ea-b6e3-c20feb7a3d27/5fae8f1c-763c-4c1a-a948-d7d01881aaeb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                3.3842257    3.2769429   3.4915085
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                3.2988922    3.1709975   3.4267868
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                3.3729684    3.2551890   3.4907478
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                3.8837649    3.7128811   4.0546488
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low                  NA                3.8439186    3.6014668   4.0863703
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Medium               NA                3.7133295    3.5415761   3.8850828
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 NA                3.5258154    3.2839348   3.7676960
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                3.2029991    3.0601419   3.3458563
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                3.4112529    3.2332686   3.5892372
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                3.8139762    3.6347584   3.9931940
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                3.6376746    3.4904995   3.7848497
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                3.5350475    3.3702149   3.6998801
0-3 months     ki0047075b-MAL-ED          PERU                           High                 NA                3.1519309    3.0331765   3.2706854
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  NA                3.0440338    2.9450612   3.1430065
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               NA                2.9850873    2.8613778   3.1087969
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                3.2718566    3.1065134   3.4371998
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                3.1387922    2.9888645   3.2887200
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                3.1697066    2.9896272   3.3497860
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                3.5712242    3.2523494   3.8900991
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                3.1558772    2.9992068   3.3125475
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                3.2874672    3.1793946   3.3955399
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                3.5665761    3.3042959   3.8288564
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                3.6393118    3.1799426   4.0986811
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                3.1340555    2.6509591   3.6171520
0-3 months     ki1000108-IRC              INDIA                          High                 NA                3.3140421    3.1158679   3.5122162
0-3 months     ki1000108-IRC              INDIA                          Low                  NA                3.1708445    2.9982152   3.3434739
0-3 months     ki1000108-IRC              INDIA                          Medium               NA                2.9589839    2.7588639   3.1591038
0-3 months     ki1000109-EE               PAKISTAN                       High                 NA                3.1822609    2.8157203   3.5488016
0-3 months     ki1000109-EE               PAKISTAN                       Low                  NA                3.0665449    2.9768937   3.1561961
0-3 months     ki1000109-EE               PAKISTAN                       Medium               NA                3.1773427    2.8998002   3.4548852
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                3.4813937    3.2046187   3.7581687
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                3.2900317    3.2485260   3.3315374
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                3.4964933    3.2289084   3.7640783
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                3.1427842    3.0410326   3.2445359
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                3.1012563    3.0177652   3.1847475
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                3.0920503    2.9981806   3.1859201
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                3.2852605    3.2227353   3.3477857
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                3.2354554    3.1680331   3.3028776
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                3.2503532    3.1878769   3.3128295
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                3.1250670    3.0660616   3.1840723
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                3.1435665    3.0759242   3.2112088
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                3.1201705    3.0576320   3.1827089
0-3 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                3.7025659    3.5567509   3.8483808
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                3.5622466    3.5017346   3.6227585
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                3.6807164    3.5545208   3.8069121
0-3 months     ki1119695-PROBIT           BELARUS                        High                 NA                2.7907683    2.6555321   2.9260045
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  NA                2.6986686    2.4808297   2.9165076
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               NA                2.7599753    2.6045321   2.9154185
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                3.3477660    3.3194197   3.3761122
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                3.3443188    3.3000624   3.3885751
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                3.3063788    3.2659735   3.3467840
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                2.6804001    2.5756433   2.7851570
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                2.4550382    2.3570022   2.5530742
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                2.4942493    2.3763761   2.6121224
0-3 months     ki1135781-COHORTS          INDIA                          High                 NA                3.6496084    3.6085790   3.6906377
0-3 months     ki1135781-COHORTS          INDIA                          Low                  NA                3.4091305    3.3813329   3.4369281
0-3 months     ki1135781-COHORTS          INDIA                          Medium               NA                3.5248281    3.5030773   3.5465789
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                3.7007795    3.6779173   3.7236417
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                3.6156831    3.5908178   3.6405483
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                3.6373334    3.6136731   3.6609937
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                2.9546219    2.7812132   3.1280306
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                3.0077783    2.8293268   3.1862298
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                3.0122247    2.8107905   3.2136589
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                1.9886536    1.9001483   2.0771589
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                1.9717366    1.8704027   2.0730706
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                1.8456519    1.7547844   1.9365194
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                2.0935859    1.9553724   2.2317994
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low                  NA                2.1824390    2.0287301   2.3361480
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Medium               NA                2.1634209    2.0386268   2.2882150
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 NA                1.7889236    1.6814772   1.8963700
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                1.9479954    1.8524354   2.0435555
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                1.9112261    1.7820791   2.0403731
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                1.9708445    1.8498278   2.0918612
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.9331996    1.8517692   2.0146299
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.9981357    1.8903063   2.1059651
3-6 months     ki0047075b-MAL-ED          PERU                           High                 NA                1.9453584    1.8221276   2.0685892
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  NA                1.9953656    1.8950737   2.0956576
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               NA                2.0884862    1.9698284   2.2071441
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                1.9844016    1.8352074   2.1335957
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                1.9205903    1.8023201   2.0388606
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                2.0630404    1.9039574   2.2221235
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.4175914    1.0392274   1.7959554
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.9220764    1.7744438   2.0697089
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.8309601    1.7438980   1.9180223
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                1.8700942    1.7184138   2.0217745
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                1.6580699    1.5009798   1.8151600
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                1.8441616    1.6308015   2.0575217
3-6 months     ki1000108-IRC              INDIA                          High                 NA                1.8009938    1.6846020   1.9173856
3-6 months     ki1000108-IRC              INDIA                          Low                  NA                1.8654115    1.7641753   1.9666477
3-6 months     ki1000108-IRC              INDIA                          Medium               NA                1.9651227    1.8521750   2.0780703
3-6 months     ki1000109-EE               PAKISTAN                       High                 NA                2.2243503    1.9894597   2.4592408
3-6 months     ki1000109-EE               PAKISTAN                       Low                  NA                2.0719204    2.0083882   2.1354527
3-6 months     ki1000109-EE               PAKISTAN                       Medium               NA                2.2665218    2.1173200   2.4157236
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.9402098    1.8005419   2.0798776
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                1.9324732    1.9103829   1.9545634
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.8688091    1.8068012   1.9308169
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                1.9337466    1.8475062   2.0199870
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                1.7706268    1.6927854   1.8484683
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                1.8169722    1.7331207   1.9008238
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.9754269    1.9166713   2.0341825
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.9548415    1.8968521   2.0128309
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.9658102    1.9068949   2.0247256
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                2.0400735    1.9789867   2.1011603
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                2.0012954    1.9396231   2.0629677
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                1.9768884    1.9112700   2.0425067
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.7894391    1.7161997   1.8626786
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.8841281    1.6994254   2.0688307
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.7904624    1.7484417   1.8324830
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.7724464    1.6728237   1.8720692
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                1.7043570    1.6568114   1.7519026
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.6949312    1.5977930   1.7920694
3-6 months     ki1119695-PROBIT           BELARUS                        High                 NA                2.1135420    2.0264993   2.2005847
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  NA                2.0424049    1.9610876   2.1237221
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               NA                2.1141431    2.0566059   2.1716803
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                1.9956154    1.9689031   2.0223277
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.9620656    1.9187656   2.0053656
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.9443935    1.9051159   1.9836711
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                1.7009388    1.6177455   1.7841320
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                1.6780440    1.6115718   1.7445162
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                1.6478516    1.5640775   1.7316256
3-6 months     ki1135781-COHORTS          INDIA                          High                 NA                1.9542078    1.9181912   1.9902245
3-6 months     ki1135781-COHORTS          INDIA                          Low                  NA                1.7906032    1.7672770   1.8139294
3-6 months     ki1135781-COHORTS          INDIA                          Medium               NA                1.8883014    1.8701196   1.9064831
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                1.9319457    1.9090282   1.9548633
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                1.9167088    1.8915169   1.9419008
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                1.9345664    1.9104289   1.9587039
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                1.9179013    1.7979300   2.0378726
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.8558065    1.7456221   1.9659909
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.8800892    1.7827674   1.9774110
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                1.2532524    1.1747652   1.3317396
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                1.2362789    1.1634092   1.3091485
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                1.2941188    1.2263608   1.3618767
6-9 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                1.6240658    1.4559148   1.7922169
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low                  NA                1.3492897    1.2368974   1.4616819
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Medium               NA                1.4481036    1.3314778   1.5647293
6-9 months     ki0047075b-MAL-ED          INDIA                          High                 NA                1.2391173    1.1528068   1.3254279
6-9 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                1.2518801    1.1639995   1.3397607
6-9 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                1.2512345    1.1436354   1.3588335
6-9 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                1.3356656    1.2342471   1.4370840
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.3764021    1.3061696   1.4466347
6-9 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.3629505    1.2907496   1.4351513
6-9 months     ki0047075b-MAL-ED          PERU                           High                 NA                1.3454166    1.2301166   1.4607167
6-9 months     ki0047075b-MAL-ED          PERU                           Low                  NA                1.3362301    1.2414060   1.4310542
6-9 months     ki0047075b-MAL-ED          PERU                           Medium               NA                1.2819796    1.2073491   1.3566101
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                1.3905770    1.2684941   1.5126600
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                1.3626400    1.2778345   1.4474455
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                1.3906408    1.2398974   1.5413843
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.8652418    1.0777321   2.6527515
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.1700104    1.0466590   1.2933619
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.1596030    1.0555149   1.2636911
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                1.1938103    1.0665380   1.3210826
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                1.3029834    1.1757374   1.4302295
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                1.1649278    1.0208785   1.3089772
6-9 months     ki1000108-IRC              INDIA                          High                 NA                1.4414115    1.3484885   1.5343345
6-9 months     ki1000108-IRC              INDIA                          Low                  NA                1.3013447    1.2198353   1.3828540
6-9 months     ki1000108-IRC              INDIA                          Medium               NA                1.3860670    1.3087166   1.4634174
6-9 months     ki1000109-EE               PAKISTAN                       High                 NA                1.2750594    1.0634085   1.4867103
6-9 months     ki1000109-EE               PAKISTAN                       Low                  NA                1.1711742    1.1188463   1.2235020
6-9 months     ki1000109-EE               PAKISTAN                       Medium               NA                1.2181709    1.1097913   1.3265504
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.2341780    1.1240347   1.3443214
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                1.1783647    1.0863989   1.2703306
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.2653719    1.2576869   1.2730569
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                1.2564908    1.1765209   1.3364607
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                1.2457629    1.1774875   1.3140383
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                1.2649280    1.2008354   1.3290205
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.3373138    1.2960311   1.3785966
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.2348999    1.1885820   1.2812178
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.2701680    1.2276023   1.3127338
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                1.3481299    1.2951281   1.4011318
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                1.2863427    1.2338622   1.3388233
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                1.3473063    1.3002376   1.3943750
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.3954560    1.3189018   1.4720101
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.0876064    0.8267800   1.3484327
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.3108262    1.2690107   1.3526416
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                1.1697707    1.1037409   1.2358005
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                1.1626949    1.0785226   1.2468672
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                1.1845750    1.1007196   1.2684305
6-9 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.3019836    1.2204802   1.3834870
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                1.3280184    1.2753345   1.3807023
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.2804802    1.2086093   1.3523511
6-9 months     ki1119695-PROBIT           BELARUS                        High                 NA                1.5828648    1.5350407   1.6306889
6-9 months     ki1119695-PROBIT           BELARUS                        Low                  NA                1.6308195    1.5722568   1.6893822
6-9 months     ki1119695-PROBIT           BELARUS                        Medium               NA                1.5754826    1.5392825   1.6116828
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                1.3687800    1.3438907   1.3936693
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.3080009    1.2634249   1.3525769
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.3311288    1.2918182   1.3704393
6-9 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                0.9899988    0.9123324   1.0676651
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                1.0405343    0.9792402   1.1018284
6-9 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                1.1598093    1.0935457   1.2260730
6-9 months     ki1135781-COHORTS          INDIA                          High                 NA                1.2521216    1.2186169   1.2856262
6-9 months     ki1135781-COHORTS          INDIA                          Low                  NA                1.1276986    1.1063676   1.1490296
6-9 months     ki1135781-COHORTS          INDIA                          Medium               NA                1.2057447    1.1890151   1.2224744
6-9 months     ki1148112-LCNI-5           MALAWI                         High                 NA                1.4708193    1.4116880   1.5299506
6-9 months     ki1148112-LCNI-5           MALAWI                         Low                  NA                1.4532866    1.3840817   1.5224916
6-9 months     ki1148112-LCNI-5           MALAWI                         Medium               NA                1.4491931    1.3870253   1.5113609
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                1.3181768    1.2455694   1.3907842
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.2630748    1.2030538   1.3230959
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.2776368    1.2206189   1.3346547
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                1.0228024    0.9471844   1.0984204
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.9755662    0.9055425   1.0455900
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.9778920    0.8951809   1.0606031
9-12 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                1.2501292    1.1318223   1.3684362
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                1.2302906    1.0799833   1.3805979
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                1.3858749    1.2652232   1.5065266
9-12 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.9885475    0.9012054   1.0758895
9-12 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.9756020    0.9063344   1.0448696
9-12 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.9655178    0.9102329   1.0208026
9-12 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                1.0796799    0.9958637   1.1634961
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.1234977    1.0544081   1.1925873
9-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.0795665    1.0116143   1.1475188
9-12 months    ki0047075b-MAL-ED          PERU                           High                 NA                1.1423776    1.0435120   1.2412432
9-12 months    ki0047075b-MAL-ED          PERU                           Low                  NA                1.0534935    0.9692712   1.1377157
9-12 months    ki0047075b-MAL-ED          PERU                           Medium               NA                1.1073158    1.0248899   1.1897418
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                1.0115623    0.8988310   1.1242936
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                1.0067640    0.9234865   1.0900416
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                1.0350075    0.8604221   1.2095929
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5953627   -0.3642333   1.5549586
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.8417257    0.7074195   0.9760319
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.8137222    0.7079916   0.9194527
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.8656841    0.7614929   0.9698753
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.9172966    0.8148463   1.0197468
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.9308136    0.7838536   1.0777736
9-12 months    ki1000108-IRC              INDIA                          High                 NA                1.1302501    1.0572197   1.2032805
9-12 months    ki1000108-IRC              INDIA                          Low                  NA                1.1289780    1.0607719   1.1971841
9-12 months    ki1000108-IRC              INDIA                          Medium               NA                1.1116656    1.0481575   1.1751737
9-12 months    ki1000109-EE               PAKISTAN                       High                 NA                0.9406095    0.7752115   1.1060075
9-12 months    ki1000109-EE               PAKISTAN                       Low                  NA                0.9149091    0.8760062   0.9538120
9-12 months    ki1000109-EE               PAKISTAN                       Medium               NA                0.8838772    0.7900210   0.9777334
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.0726468    1.0013503   1.1439433
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.9263822    0.8278433   1.0249212
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.0057809    0.9498659   1.0616959
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                1.1850055    1.1187126   1.2512983
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                1.0386391    0.9818982   1.0953799
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                1.0602092    1.0018853   1.1185332
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.0931354    1.0443797   1.1418911
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.0193334    0.9767609   1.0619059
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.0343113    0.9876496   1.0809731
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                1.1458693    1.1017793   1.1899593
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                1.1115557    1.0655774   1.1575339
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                1.1118709    1.0657286   1.1580132
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.1134139    1.0417456   1.1850823
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.1330986    0.9425719   1.3236254
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.0739646    1.0345314   1.1133979
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                1.0997319    1.0394481   1.1600158
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.9361912    0.8712270   1.0011555
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                1.0447019    0.9719475   1.1174563
9-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.0504797    0.9736036   1.1273559
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.9862264    0.9449393   1.0275135
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.0154905    0.9564776   1.0745035
9-12 months    ki1119695-PROBIT           BELARUS                        High                 NA                1.3814839    1.3240543   1.4389134
9-12 months    ki1119695-PROBIT           BELARUS                        Low                  NA                1.3895861    1.3126533   1.4665188
9-12 months    ki1119695-PROBIT           BELARUS                        Medium               NA                1.3424243    1.2943128   1.3905357
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                1.0998994    1.0769324   1.1228664
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.0548900    1.0121610   1.0976191
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.0605754    1.0234001   1.0977508
9-12 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.9514569    0.8942765   1.0086372
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.9610860    0.8998102   1.0223619
9-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.9265949    0.8697683   0.9834214
9-12 months    ki1135781-COHORTS          INDIA                          High                 NA                1.0655467    1.0301790   1.1009145
9-12 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.9049110    0.8814317   0.9283903
9-12 months    ki1135781-COHORTS          INDIA                          Medium               NA                1.0131946    0.9954529   1.0309363
9-12 months    ki1148112-LCNI-5           MALAWI                         High                 NA                1.1167920    1.0482626   1.1853213
9-12 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                1.1450682    1.0631529   1.2269836
9-12 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                1.0281629    0.9337195   1.1226063
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                1.0408267    0.9783718   1.1032816
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.0501296    1.0011509   1.0991083
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.0739660    1.0209200   1.1270119
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.9038613    0.8297213   0.9780012
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.9136866    0.8412415   0.9861316
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.9624158    0.8679421   1.0568894
12-15 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                1.2296850    1.1299640   1.3294061
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                1.0651795    0.9609461   1.1694130
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                1.1110879    1.0145046   1.2076713
12-15 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.9714966    0.8882521   1.0547411
12-15 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.9256871    0.8568964   0.9944779
12-15 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.8853639    0.8224974   0.9482303
12-15 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.9792836    0.8840846   1.0744827
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.8953858    0.8386643   0.9521073
12-15 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.0145774    0.9456890   1.0834659
12-15 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.9361684    0.8427717   1.0295651
12-15 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.8745915    0.8041459   0.9450372
12-15 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.8767720    0.8010444   0.9524996
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.9383424    0.8063380   1.0703468
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.9122728    0.8420637   0.9824819
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.9124653    0.7883573   1.0365734
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7597030    0.4944137   1.0249922
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7970905    0.6719172   0.9222639
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.8693063    0.7850031   0.9536095
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.9650011    0.8521793   1.0778229
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.7975286    0.6530025   0.9420548
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7572444    0.6578083   0.8566805
12-15 months   ki1000108-IRC              INDIA                          High                 NA                0.9597068    0.8948680   1.0245456
12-15 months   ki1000108-IRC              INDIA                          Low                  NA                0.9319485    0.8748604   0.9890365
12-15 months   ki1000108-IRC              INDIA                          Medium               NA                0.9767073    0.8870291   1.0663854
12-15 months   ki1000109-EE               PAKISTAN                       High                 NA                1.1409202    0.9553897   1.3264507
12-15 months   ki1000109-EE               PAKISTAN                       Low                  NA                1.0068463    0.9716978   1.0419949
12-15 months   ki1000109-EE               PAKISTAN                       Medium               NA                1.0011643    0.8996952   1.1026334
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.9343162    0.9013128   0.9673196
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.8272465    0.7222342   0.9322588
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.8216225    0.7458685   0.8973765
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                1.3072787    1.0693738   1.5451836
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.9064373    0.5819223   1.2309524
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                1.1195331    0.9972984   1.2417678
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.7285163    0.6644446   0.7925880
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.7267804    0.6300992   0.8234616
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.7174593    0.6611973   0.7737212
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.0012199    0.9513069   1.0511330
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.9295550    0.8849314   0.9741785
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.9440981    0.9043549   0.9838412
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                1.0451337    1.0022201   1.0880474
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.9251730    0.8862374   0.9641086
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.9394507    0.8961518   0.9827496
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.9547372    0.8821516   1.0273227
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7047789    0.5074858   0.9020720
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9359670    0.8923580   0.9795760
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                1.0073279    0.9025732   1.1120826
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.9508837    0.8529080   1.0488594
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                1.0690701    0.9715219   1.1666182
12-15 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.9550186    0.8815919   1.0284453
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.8696401    0.8338809   0.9053994
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.8777043    0.8170516   0.9383570
12-15 months   ki1119695-PROBIT           BELARUS                        High                 NA                1.4511453    0.5388250   2.3634655
12-15 months   ki1119695-PROBIT           BELARUS                        Low                  NA                1.1928546    0.2398122   2.1458969
12-15 months   ki1119695-PROBIT           BELARUS                        Medium               NA                1.1755914    0.7272596   1.6239232
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.9241763    0.8885653   0.9597873
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.9223332    0.8609402   0.9837262
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.9157430    0.8616793   0.9698067
12-15 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7334172    0.6639444   0.8028900
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7436720    0.6832756   0.8040684
12-15 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7684577    0.7092737   0.8276417
12-15 months   ki1148112-LCNI-5           MALAWI                         High                 NA                1.1022061    0.9366471   1.2677651
12-15 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.8098584    0.6184393   1.0012774
12-15 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.9581256    0.8431077   1.0731435
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.9756927    0.9134964   1.0378890
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.9246870    0.8773417   0.9720324
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.9285468    0.8794748   0.9776188
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.7972358    0.7334064   0.8610653
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.8421517    0.7684849   0.9158186
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.8379967    0.7606515   0.9153419
15-18 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                1.0428342    0.9495867   1.1360817
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.8984733    0.7784154   1.0185312
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                1.0201675    0.9240781   1.1162568
15-18 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.8674004    0.7957918   0.9390091
15-18 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.8161369    0.7548839   0.8773899
15-18 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.8288872    0.7599067   0.8978676
15-18 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.8789533    0.7903794   0.9675273
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.8585119    0.7944188   0.9226050
15-18 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.7905860    0.7153716   0.8658004
15-18 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.9164043    0.8342941   0.9985146
15-18 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.8312109    0.7641801   0.8982418
15-18 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.8160694    0.7460280   0.8861108
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.9510034    0.8450171   1.0569897
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.8794140    0.8038382   0.9549899
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.8217164    0.7291115   0.9143212
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5340559    0.0753020   0.9928098
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6460663    0.5248960   0.7672367
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.7462268    0.6671956   0.8252581
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.7300027    0.6216746   0.8383309
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6823039    0.5945125   0.7700954
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7875910    0.6674289   0.9077532
15-18 months   ki1000108-IRC              INDIA                          High                 NA                0.8455493    0.7718255   0.9192732
15-18 months   ki1000108-IRC              INDIA                          Low                  NA                0.8350842    0.7715767   0.8985917
15-18 months   ki1000108-IRC              INDIA                          Medium               NA                0.8963790    0.8287578   0.9640002
15-18 months   ki1000109-EE               PAKISTAN                       High                 NA                1.0814671    0.7867033   1.3762308
15-18 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.8189788    0.7856409   0.8523167
15-18 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.9382323    0.8723577   1.0041069
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.0683671    0.8542091   1.2825250
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.8999127    0.8494394   0.9503859
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.9537792    0.8409712   1.0665872
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.8277265    0.7567344   0.8987186
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.7412567    0.6760914   0.8064219
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.7585760    0.6864688   0.8306832
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.9020395    0.8640072   0.9400719
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.8310882    0.7848922   0.8772842
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.8315214    0.7908440   0.8721987
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.9164241    0.8796471   0.9532010
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.9068019    0.8620047   0.9515991
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.9286311    0.8904052   0.9668570
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.9534155    0.8601028   1.0467282
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9310235    0.7325340   1.1295129
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9324211    0.8842294   0.9806128
15-18 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.7339403    0.6221914   0.8456892
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.7616997    0.7188656   0.8045339
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.7364546    0.6749879   0.7979213
15-18 months   ki1119695-PROBIT           BELARUS                        High                 NA                1.2671968   -1.6263815   4.1607751
15-18 months   ki1119695-PROBIT           BELARUS                        Low                  NA                1.4411317   -0.5665792   3.4488427
15-18 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8609007    0.8015677   0.9202337
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.8334490    0.7947149   0.8721831
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7415734    0.6748142   0.8083325
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7808298    0.7171724   0.8444872
15-18 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7392402    0.6523090   0.8261713
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.6740768    0.6097322   0.7384213
15-18 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7835880    0.7190635   0.8481125
15-18 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.7776813    0.6684560   0.8869066
15-18 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.8981211    0.7685774   1.0276648
15-18 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.7826455    0.6578502   0.9074407
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.8279470    0.7629895   0.8929045
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.8500067    0.8050121   0.8950014
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.8285607    0.7749412   0.8821801
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.8563033    0.7851956   0.9274109
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.7946330    0.7370064   0.8522596
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.8358842    0.7829805   0.8887879
18-21 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.9658255    0.8574967   1.0741543
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.9255648    0.7459579   1.1051717
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.8672635    0.7685109   0.9660161
18-21 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.9324543    0.8631798   1.0017288
18-21 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.8756322    0.8207051   0.9305593
18-21 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.8497356    0.7840980   0.9153731
18-21 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.8535716    0.7600082   0.9471351
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.7975413    0.7354670   0.8596155
18-21 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.8431431    0.7887347   0.8975515
18-21 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.8713244    0.7856607   0.9569881
18-21 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.7904728    0.7201984   0.8607472
18-21 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.8647494    0.7880559   0.9414430
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.7973603    0.6969137   0.8978068
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.8073833    0.7226060   0.8921606
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.7031710    0.6059091   0.8004328
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6485780    0.3152906   0.9818654
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6492972    0.5155783   0.7830160
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.7886951    0.7071545   0.8702357
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.7117315    0.6095216   0.8139414
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6077283    0.5121703   0.7032863
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7701728    0.6428921   0.8974535
18-21 months   ki1000108-IRC              INDIA                          High                 NA                0.7984374    0.7312687   0.8656060
18-21 months   ki1000108-IRC              INDIA                          Low                  NA                0.7706627    0.7085152   0.8328101
18-21 months   ki1000108-IRC              INDIA                          Medium               NA                0.7124458    0.6433541   0.7815374
18-21 months   ki1000109-EE               PAKISTAN                       High                 NA                0.6915285    0.4034801   0.9795769
18-21 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.7105768    0.6741912   0.7469625
18-21 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.8111846    0.7232046   0.8991646
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.7518768    0.6799306   0.8238229
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.7308023    0.6725979   0.7890067
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.7068245    0.6485593   0.7650896
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.8605356    0.8219330   0.8991382
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.8131650    0.7718882   0.8544419
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.8416617    0.7980581   0.8852652
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.8547382    0.8151954   0.8942810
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.7481140    0.7070772   0.7891507
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.7794809    0.7405121   0.8184497
18-21 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.9538341    0.8250263   1.0826419
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.8911572    0.8499075   0.9324070
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.9263966    0.8727367   0.9800565
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.6890774    0.6409956   0.7371591
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.6987779    0.6320368   0.7655190
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.6499735    0.5810737   0.7188733
18-21 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7630617    0.6882226   0.8379009
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.6938744    0.6262789   0.7614698
18-21 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7582279    0.6977298   0.8187260
18-21 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.8099782    0.7317363   0.8882201
18-21 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.8976348    0.8407210   0.9545486
18-21 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.7500730    0.6484007   0.8517453
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.7638394    0.7024850   0.8251938
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.7665668    0.6984338   0.8346998
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.7290122    0.6579071   0.8001173
21-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.7903580    0.7345846   0.8461315
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.8448994    0.7572755   0.9325233
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.7639290    0.6804657   0.8473924
21-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.8819532    0.8227631   0.9411432
21-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.8210057    0.7651997   0.8768117
21-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.8217973    0.7708926   0.8727020
21-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.8161623    0.7323276   0.8999969
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.7845704    0.7145332   0.8546076
21-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.7712715    0.7063077   0.8362353
21-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.7350363    0.6535320   0.8165407
21-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.8048660    0.7252422   0.8844899
21-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.7302273    0.6491425   0.8113121
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.8217171    0.7294918   0.9139424
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.8292230    0.7490700   0.9093759
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.8874092    0.8031625   0.9716558
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.0131509    0.6177636   1.4085382
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7014834    0.5930463   0.8099204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.7220249    0.6290124   0.8150373
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6772589    0.5733320   0.7811857
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.7392444    0.6295275   0.8489613
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7192633    0.6194818   0.8190448
21-24 months   ki1000108-IRC              INDIA                          High                 NA                0.7293433    0.6569020   0.8017846
21-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.7296636    0.6595297   0.7997976
21-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.6668512    0.5973317   0.7363707
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.7386368    0.6774468   0.7998268
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.7061972    0.6462829   0.7661115
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.7101058    0.6472779   0.7729336
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.7799437    0.7376632   0.8222243
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7367018    0.6894827   0.7839209
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.7707222    0.7283316   0.8131128
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.8184840    0.7788359   0.8581322
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.7926046    0.7458298   0.8393793
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.7841465    0.7424009   0.8258921
21-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.8782290    0.7070990   1.0493590
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.7972417    0.7436747   0.8508087
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.7606652    0.6685722   0.8527581
21-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                1.9317474    0.8272862   3.0362085
21-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                1.2314376    0.2361311   2.2267441
21-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                1.2374633    0.5681865   1.9067401
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7071746    0.6529025   0.7614468
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.6676650    0.5941648   0.7411653
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.6782609    0.6023974   0.7541244
21-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.6356355    0.5706050   0.7006660
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.6115145    0.5611506   0.6618783
21-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.6515411    0.5917530   0.7113291
21-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.7255167    0.6426382   0.8083951
21-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.7775595    0.7053465   0.8497726
21-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.7583590    0.6837450   0.8329730


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3527447   3.2846638   3.4208256
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.8051268   3.6947487   3.9155049
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3701977   3.2615992   3.4787962
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6433564   3.5475915   3.7391213
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0551473   2.9887233   3.1215713
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.1817712   3.0847973   3.2787451
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2590960   3.1719051   3.3462868
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                3.0792823   2.9958049   3.1627598
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.4016721   3.2751931   3.5281511
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5984044   3.5470497   3.6497590
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.7441602   2.5752798   2.9130407
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3365815   3.3160236   3.3571395
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5266105   2.4638524   2.5893686
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5019098   3.4859351   3.5178846
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6488080   3.6334900   3.6641260
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                2.9919690   2.8831447   3.1007933
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9415794   1.8866642   1.9964946
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1445210   2.0649831   2.2240588
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8898803   1.8231296   1.9566310
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9641742   1.9061411   2.0222072
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0126951   1.9464905   2.0788997
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9704262   1.8897530   2.0510994
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8407020   1.7648629   1.9165411
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0933519   2.0349680   2.1517359
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9144516   1.8761636   1.9527397
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7934331   1.7576565   1.8292097
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7111887   1.6717032   1.7506742
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0898257   2.0242077   2.1554437
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9754791   1.9557927   1.9951655
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.6752605   1.6310161   1.7195049
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8645860   1.8511724   1.8779996
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9275359   1.9126320   1.9424398
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8838056   1.8192936   1.9483176
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2598052   1.2167761   1.3028342
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4823674   1.4015134   1.5632213
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2480326   1.1918969   1.3041683
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3623612   1.3169197   1.4078027
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3194504   1.2649025   1.3739984
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1931300   1.1064908   1.2797693
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                1.1798150   1.1325767   1.2270533
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2199478   1.1697810   1.2701146
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3250883   1.2885032   1.3616734
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1723161   1.1280519   1.2165803
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3170895   1.2762741   1.3579049
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                1.5952397   1.5519431   1.6385362
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.3469544   1.3278647   1.3660440
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0653042   1.0257315   1.1048769
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.1863805   1.1740650   1.1986961
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.4589045   1.4222542   1.4955548
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2866056   1.2489500   1.3242611
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9931993   0.9491959   1.0372028
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.2984439   1.2238729   1.3730149
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9754950   0.9354296   1.0155604
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0983913   1.0560268   1.1407559
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0994733   1.0483737   1.1505728
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8129077   0.7224320   0.9033835
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.9128691   0.8774672   0.9482710
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9865499   0.9621090   1.0109908
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0857505   1.0516744   1.1198266
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0385849   0.9992705   1.0778993
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9981312   0.9655073   1.0307550
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.3641916   1.3090073   1.4193759
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.0808113   1.0629176   1.0987049
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9472024   0.9127037   0.9817011
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.9861630   0.9729014   0.9994245
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.0992151   1.0523671   1.1460631
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.0549250   1.0219929   1.0878571
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9242989   0.8781391   0.9704587
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1437215   1.0844435   1.2029996
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9237767   0.8826742   0.9648791
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9556408   0.9146837   0.9965978
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8946539   0.8485132   0.9407947
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8420733   0.7739483   0.9101983
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                1.0118163   0.9788936   1.0447389
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8500454   0.8255871   0.8745037
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.9636513   0.7049916   1.2223109
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9319267   0.8950348   0.9688186
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0088179   0.9480568   1.0695791
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8798016   0.8507313   0.9088719
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.2174129   0.7348696   1.6999562
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9215428   0.8946445   0.9484411
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7485501   0.7119716   0.7851287
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.9578403   0.8612449   1.0544357
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.9425810   0.9101550   0.9750070
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8235797   0.7824704   0.8646890
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9991302   0.9399688   1.0582916
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8354009   0.7963395   0.8744623
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8398470   0.7967822   0.8829118
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8525196   0.8100674   0.8949717
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7069346   0.6402109   0.7736583
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8388591   0.8064871   0.8712312
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9584027   0.8755768   1.0412286
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9372014   0.8951355   0.9792674
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7542650   0.7193850   0.7891450
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.1259506   0.2738358   1.9780654
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7989549   0.7689838   0.8289260
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7257728   0.6845837   0.7669619
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8227868   0.7513696   0.8942040
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8360111   0.8044652   0.8675571
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8297401   0.7931591   0.8663210
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9184755   0.8473947   0.9895564
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8818938   0.8448872   0.9189003
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8261942   0.7871506   0.8652378
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8404751   0.7956440   0.8853062
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7402513   0.6709886   0.8095140
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7194782   0.6849868   0.7539696
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9049091   0.8707727   0.9390456
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6812466   0.6472086   0.7152846
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7323917   0.6927659   0.7720174
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8198129   0.7731117   0.8665140
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7547274   0.7162532   0.7932016
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.7931756   0.7492488   0.8371025
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8382354   0.8062387   0.8702321
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7869322   0.7448788   0.8289855
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7590538   0.7120769   0.8060307
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7278666   0.6563699   0.7993633
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7992776   0.7536859   0.8448693
21-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.3444388   0.7369879   1.9518896
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6910753   0.6529850   0.7291655
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6304996   0.5973024   0.6636969
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.7507726   0.7049982   0.7965470


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.0853335   -0.2522666    0.0815995
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0112573   -0.1705733    0.1480587
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.0398464   -0.3364676    0.2567748
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.1704355   -0.4127173    0.0718464
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  High              -0.3228163   -0.6037334   -0.0418992
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               High              -0.1145625   -0.4148701    0.1857451
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.1763016   -0.4082058    0.0556025
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.2789287   -0.5224216   -0.0354358
0-3 months     ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  High              -0.1078971   -0.2624875    0.0466933
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               High              -0.1668436   -0.3383273    0.0046401
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1330643   -0.3562609    0.0901322
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.1021500   -0.3466228    0.1423229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.4153471   -0.7706311   -0.0600630
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.2837570   -0.6204480    0.0529341
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               0.0727357   -0.4562360    0.6017074
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.4325206   -0.9822233    0.1171822
0-3 months     ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Low                  High              -0.1431975   -0.4060166    0.1196215
0-3 months     ki1000108-IRC              INDIA                          Medium               High              -0.3550582   -0.6366980   -0.0734184
0-3 months     ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Low                  High              -0.1157160   -0.4930612    0.2616292
0-3 months     ki1000109-EE               PAKISTAN                       Medium               High              -0.0049182   -0.4646811    0.4548447
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1913619   -0.4755067    0.0927828
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               High               0.0150997   -0.2084836    0.2386829
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.0415279   -0.1731492    0.0900935
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.0507339   -0.1891713    0.0877036
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0498051   -0.1417571    0.0421468
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0349073   -0.1232967    0.0534821
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               0.0184995   -0.0712619    0.1082610
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0048965   -0.0908773    0.0810843
0-3 months     ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.1403193   -0.2981917    0.0175531
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0218495   -0.2146897    0.1709907
0-3 months     ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  High              -0.0920997   -0.2221096    0.0379102
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               High              -0.0307930   -0.1127599    0.0511739
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0034472   -0.0560032    0.0491088
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0413872   -0.0907440    0.0079696
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.2253619   -0.3688369   -0.0818870
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.1861509   -0.3438470   -0.0284547
0-3 months     ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Low                  High              -0.2404779   -0.2900370   -0.1909187
0-3 months     ki1135781-COHORTS          INDIA                          Medium               High              -0.1247803   -0.1712185   -0.0783421
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0850965   -0.1166559   -0.0535370
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0634461   -0.0957054   -0.0311868
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0531564   -0.1882014    0.2945142
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0576028   -0.2011253    0.3163309
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.0169170   -0.1514598    0.1176258
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1430018   -0.2698485   -0.0161550
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low                  High               0.0888531   -0.1178578    0.2955641
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Medium               High               0.0698350   -0.1163814    0.2560514
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  High               0.1590718    0.0152787    0.3028649
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               High               0.1223024   -0.0456966    0.2903015
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0376449   -0.1835077    0.1082179
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               High               0.0272912   -0.1347959    0.1893783
3-6 months     ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  High               0.0500072   -0.1088774    0.2088918
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               High               0.1431278   -0.0279438    0.3141995
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.0638113   -0.2541970    0.1265745
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.0786389   -0.1394582    0.2967359
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.5044849    0.0983388    0.9106311
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.4133687    0.0251173    0.8016201
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.2120243   -0.4303914    0.0063429
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.0259326   -0.2877139    0.2358488
3-6 months     ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Low                  High               0.0644177   -0.0898412    0.2186766
3-6 months     ki1000108-IRC              INDIA                          Medium               High               0.1641289    0.0019431    0.3263146
3-6 months     ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Low                  High              -0.1524298   -0.3957607    0.0909011
3-6 months     ki1000109-EE               PAKISTAN                       Medium               High               0.0421715   -0.2360995    0.3204425
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.0077366   -0.1574223    0.1419491
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0714007   -0.2027212    0.0599198
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.1631198   -0.2792951   -0.0469445
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1167744   -0.2370595    0.0035106
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0205854   -0.1031383    0.0619676
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0096167   -0.0928227    0.0735893
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0387781   -0.1255828    0.0480267
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0631851   -0.1528365    0.0264662
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0946889   -0.1040045    0.2933824
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0010233   -0.0834146    0.0854611
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0680895   -0.1784764    0.0422975
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0775152   -0.2166573    0.0616268
3-6 months     ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  High              -0.0711371   -0.1522302    0.0099559
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               High               0.0006011   -0.0600787    0.0612810
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0335498   -0.0844265    0.0173270
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0512218   -0.0987221   -0.0037215
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0228948   -0.1293827    0.0835932
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0530872   -0.1711516    0.0649772
3-6 months     ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Low                  High              -0.1636046   -0.2065151   -0.1206941
3-6 months     ki1135781-COHORTS          INDIA                          Medium               High              -0.0659064   -0.1062521   -0.0255608
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0152369   -0.0483379    0.0178641
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               0.0026207   -0.0288354    0.0340767
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0620948   -0.2232611    0.0990714
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0378121   -0.1910361    0.1154119
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.0169735   -0.1240726    0.0901256
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.0408664   -0.0628225    0.1445552
6-9 months     ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.2747762   -0.4770305   -0.0725219
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.1759622   -0.3805993    0.0286748
6-9 months     ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Low                  High               0.0127628   -0.1104140    0.1359395
6-9 months     ki0047075b-MAL-ED          INDIA                          Medium               High               0.0121171   -0.1258215    0.1500558
6-9 months     ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Low                  High               0.0407366   -0.0826259    0.1640991
6-9 months     ki0047075b-MAL-ED          NEPAL                          Medium               High               0.0272849   -0.0972087    0.1517785
6-9 months     ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Low                  High              -0.0091866   -0.1584705    0.1400974
6-9 months     ki0047075b-MAL-ED          PERU                           Medium               High              -0.0634370   -0.2007826    0.0739086
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.0279370   -0.1765850    0.1207110
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.0000638   -0.1939152    0.1940428
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.6952314   -1.4923431    0.1018803
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.7056388   -1.4999976    0.0887199
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               0.1091731   -0.0707985    0.2891448
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.0288825   -0.2211023    0.1633373
6-9 months     ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Low                  High              -0.1400669   -0.2636729   -0.0164608
6-9 months     ki1000108-IRC              INDIA                          Medium               High              -0.0553446   -0.1762485    0.0655594
6-9 months     ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       Low                  High              -0.1038852   -0.3219088    0.1141384
6-9 months     ki1000109-EE               PAKISTAN                       Medium               High              -0.0568885   -0.2946746    0.1808976
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.0558133   -0.1925693    0.0809426
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               High               0.0311938   -0.0787539    0.1411416
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.0107279   -0.1158788    0.0944230
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               High               0.0084372   -0.0940472    0.1109215
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1024140   -0.1644593   -0.0403687
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0671458   -0.1264426   -0.0078490
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0617872   -0.1363754    0.0128010
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0008236   -0.0717084    0.0700612
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.3078496   -0.5796785   -0.0360207
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0846298   -0.1718598    0.0026002
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              -0.0070757   -0.1140566    0.0999051
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Medium               High               0.0148043   -0.0919274    0.1215361
6-9 months     ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.0260348   -0.0710136    0.1230833
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0215034   -0.1301691    0.0871623
6-9 months     ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        Low                  High               0.0479547    0.0006395    0.0952699
6-9 months     ki1119695-PROBIT           BELARUS                        Medium               High              -0.0073822   -0.0359758    0.0212115
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0607791   -0.1118329   -0.0097252
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0376512   -0.0841786    0.0088761
6-9 months     ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0505355   -0.0484040    0.1494751
6-9 months     ki1135781-COHORTS          GUATEMALA                      Medium               High               0.1698106    0.0677178    0.2719033
6-9 months     ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          Low                  High              -0.1244230   -0.1641416   -0.0847043
6-9 months     ki1135781-COHORTS          INDIA                          Medium               High              -0.0463769   -0.0838261   -0.0089276
6-9 months     ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0175327   -0.1085592    0.0734939
6-9 months     ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0216262   -0.1074244    0.0641721
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0551019   -0.1513904    0.0411866
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0405399   -0.1315611    0.0504812
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.0472362   -0.1502964    0.0558240
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0449104   -0.1569782    0.0671574
9-12 months    ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.0198386   -0.2111206    0.1714434
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High               0.1357457   -0.0332317    0.3047231
9-12 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0129455   -0.1244203    0.0985293
9-12 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0230297   -0.1263982    0.0803388
9-12 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  High               0.0438178   -0.0648032    0.1524388
9-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.0001134   -0.1080146    0.1077878
9-12 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.0888841   -0.2187602    0.0409919
9-12 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.0350618   -0.1637803    0.0936566
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.0047983   -0.1449535    0.1353570
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.0234452   -0.1843730    0.2312634
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.2463630   -0.7225862    1.2153122
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.2183595   -0.7470437    1.1837627
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               0.0516125   -0.0945103    0.1977352
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               0.0651295   -0.1150178    0.2452768
9-12 months    ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Low                  High              -0.0012721   -0.1011996    0.0986555
9-12 months    ki1000108-IRC              INDIA                          Medium               High              -0.0185845   -0.1153663    0.0781973
9-12 months    ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       Low                  High              -0.0257004   -0.1956120    0.1442111
9-12 months    ki1000109-EE               PAKISTAN                       Medium               High              -0.0567322   -0.2469045    0.1334400
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1462645   -0.3057473    0.0132182
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0668659   -0.1494916    0.0157598
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.1463664   -0.2336262   -0.0591066
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1247963   -0.2130936   -0.0364989
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0738020   -0.1385287   -0.0090754
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0588241   -0.1263107    0.0086625
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0343136   -0.0980155    0.0293882
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0339984   -0.0978188    0.0298220
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0196847   -0.1838755    0.2232450
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0394493   -0.1212498    0.0423513
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              -0.1635407   -0.2521663   -0.0749151
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              -0.0550301   -0.1495147    0.0394546
9-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0642533   -0.1515149    0.0230082
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0349892   -0.1319040    0.0619256
9-12 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        Low                  High               0.0081022   -0.0452617    0.0614661
9-12 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.0390596   -0.0847806    0.0066614
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0450094   -0.0935197    0.0035010
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0393240   -0.0830217    0.0043738
9-12 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0096291   -0.0741821    0.0934404
9-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0248620   -0.1054774    0.0557534
9-12 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.1606357   -0.2030875   -0.1181839
9-12 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.0523521   -0.0919204   -0.0127839
9-12 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Low                  High               0.0282763   -0.0785245    0.1350770
9-12 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0886291   -0.2053160    0.0280578
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0093029   -0.0692786    0.0878844
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0331393   -0.0457040    0.1119825
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.0098253   -0.0938329    0.1134835
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.0585545   -0.0615371    0.1786461
12-15 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.1645055   -0.3087584   -0.0202526
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.1185971   -0.2574230    0.0202288
12-15 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0458094   -0.1537993    0.0621805
12-15 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0861327   -0.1904488    0.0181834
12-15 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0838978   -0.1947138    0.0269182
12-15 months   ki0047075b-MAL-ED          NEPAL                          Medium               High               0.0352938   -0.0822157    0.1528033
12-15 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Low                  High              -0.0615768   -0.1785621    0.0554084
12-15 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0593964   -0.1796362    0.0608435
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.0260696   -0.1755837    0.1234445
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0258771   -0.2070619    0.1553078
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0373876   -0.2559497    0.3307249
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.1096034   -0.1687587    0.3879654
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.1674724   -0.3508207    0.0158758
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.2077567   -0.3581438   -0.0573695
12-15 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Low                  High              -0.0277583   -0.1141477    0.0586310
12-15 months   ki1000108-IRC              INDIA                          Medium               High               0.0170004   -0.0936623    0.1276632
12-15 months   ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       Low                  High              -0.1340739   -0.3229044    0.0547567
12-15 months   ki1000109-EE               PAKISTAN                       Medium               High              -0.1397559   -0.3512211    0.0717093
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1070697   -0.2215712    0.0074318
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.1126937   -0.1902309   -0.0351566
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.4008413   -0.8032202    0.0015376
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.1877456   -0.4552153    0.0797241
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.0017359   -0.1177205    0.1142488
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.0110570   -0.0963247    0.0742108
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0716650   -0.1386170   -0.0047130
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0571219   -0.1209249    0.0066812
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1199608   -0.1779052   -0.0620163
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.1056831   -0.1666452   -0.0447210
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.2499583   -0.4601801   -0.0397364
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0187701   -0.1034484    0.0659081
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              -0.0564442   -0.1998764    0.0869880
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High               0.0617422   -0.0813983    0.2048826
12-15 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0853785   -0.1670498   -0.0037072
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0773143   -0.1725521    0.0179235
12-15 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.2582907   -1.7289561    1.2123747
12-15 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.2755539   -1.2774460    0.7263382
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0018431   -0.0728166    0.0691305
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0084332   -0.0731714    0.0563049
12-15 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0102547   -0.0818007    0.1023101
12-15 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0350405   -0.0562241    0.1263050
12-15 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.2923478   -0.5454308   -0.0392647
12-15 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.1440805   -0.3456714    0.0575104
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0510057   -0.1289854    0.0269741
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0471459   -0.1221230    0.0278311
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.0449159   -0.0525572    0.1423890
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.0407608   -0.0595212    0.1410428
15-18 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.1443609   -0.2963774    0.0076555
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.0226668   -0.1565632    0.1112297
15-18 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0512635   -0.1454958    0.0429688
15-18 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0385132   -0.1379421    0.0609156
15-18 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0204415   -0.1297725    0.0888896
15-18 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.0883673   -0.2045678    0.0278331
15-18 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Low                  High              -0.0851934   -0.1911898    0.0208029
15-18 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.1003350   -0.2082604    0.0075904
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.0715894   -0.2017616    0.0585829
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.1292871   -0.2700306    0.0114565
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.1120104   -0.3624760    0.5864969
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.2121709   -0.2533407    0.6776825
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.0476988   -0.1871345    0.0917369
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               0.0575883   -0.1041953    0.2193719
15-18 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Low                  High              -0.0104651   -0.1077709    0.0868406
15-18 months   ki1000108-IRC              INDIA                          Medium               High               0.0508296   -0.0492095    0.1508688
15-18 months   ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       Low                  High              -0.2624882   -0.5591312    0.0341548
15-18 months   ki1000109-EE               PAKISTAN                       Medium               High              -0.1432348   -0.4452697    0.1588002
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1684544   -0.3725511    0.0356422
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.1145879   -0.3751831    0.1460074
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.0864698   -0.1828357    0.0098961
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.0691505   -0.1703401    0.0320391
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0709514   -0.1307889   -0.0111138
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0705182   -0.1262058   -0.0148306
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0096222   -0.0675819    0.0483376
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0122071   -0.0408379    0.0652520
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0223920   -0.2417212    0.1969372
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0209944   -0.1260168    0.0840280
15-18 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.0277595   -0.0919175    0.1474364
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.0025143   -0.1250238    0.1300524
15-18 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        Low                  High               0.1739349   -3.3356656    3.6835355
15-18 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.4062961   -3.3017180    2.4891259
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0918756   -0.1690580   -0.0146933
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0526192   -0.1271350    0.0218966
15-18 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0651634   -0.1733172    0.0429904
15-18 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0443478   -0.0639131    0.1526088
15-18 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.1204398   -0.0490055    0.2898852
15-18 months   ki1148112-LCNI-5           MALAWI                         Medium               High               0.0049642   -0.1608792    0.1708075
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0220598   -0.0544003    0.0985198
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0006137   -0.0863951    0.0876224
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.0616703   -0.1531969    0.0298564
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0204191   -0.1090481    0.0682099
18-21 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.0402607   -0.2500076    0.1694863
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.0985620   -0.2451471    0.0480232
18-21 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0568221   -0.1452299    0.0315858
18-21 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0827187   -0.1781506    0.0127132
18-21 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0560303   -0.1683127    0.0562520
18-21 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.0104285   -0.1186616    0.0978045
18-21 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Low                  High              -0.0808516   -0.1916522    0.0299490
18-21 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0065750   -0.1215540    0.1084040
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0100230   -0.1214178    0.1414638
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0941893   -0.2340084    0.0456298
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0007192   -0.3583926    0.3598309
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.1401171   -0.2030000    0.4832343
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.1040032   -0.2439253    0.0359189
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               0.0584413   -0.1047985    0.2216811
18-21 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Low                  High              -0.0277747   -0.1192839    0.0637345
18-21 months   ki1000108-IRC              INDIA                          Medium               High              -0.0859916   -0.1823518    0.0103686
18-21 months   ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       Low                  High               0.0190483   -0.2712890    0.3093857
18-21 months   ki1000109-EE               PAKISTAN                       Medium               High               0.1196561   -0.1815288    0.4208410
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.0210745   -0.1136163    0.0714674
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.0450523   -0.1376324    0.0475277
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0473705   -0.1038855    0.0091444
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0188739   -0.0771099    0.0393620
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1066242   -0.1636124   -0.0496360
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0752572   -0.1307748   -0.0197397
18-21 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0626768   -0.1979284    0.0725747
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0274374   -0.1669754    0.1121005
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               0.0097006   -0.0725565    0.0919576
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0391039   -0.1231219    0.0449142
18-21 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0691874   -0.1700340    0.0316593
18-21 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0048338   -0.1010675    0.0913998
18-21 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.0876566   -0.0090956    0.1844087
18-21 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0599053   -0.1881981    0.0683876
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.0027274   -0.0889594    0.0944142
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0348272   -0.1287437    0.0590892
21-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High               0.0545414   -0.0493269    0.1584096
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.0264290   -0.1268123    0.0739543
21-24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0609475   -0.1422972    0.0204022
21-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0601559   -0.1382248    0.0179130
21-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0315919   -0.1408322    0.0776485
21-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.0448908   -0.1509499    0.0611684
21-24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.0698297   -0.0441129    0.1837723
21-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0048091   -0.1197773    0.1101592
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0075059   -0.1146825    0.1296942
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.0656921   -0.0592199    0.1906041
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.3116675   -0.7216549    0.0983200
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.2911260   -0.6973063    0.1150543
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               0.0619855   -0.0891389    0.2131100
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               0.0420044   -0.1020690    0.1860778
21-24 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Low                  High               0.0003204   -0.1005088    0.1011495
21-24 months   ki1000108-IRC              INDIA                          Medium               High              -0.0624921   -0.1628948    0.0379106
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.0324396   -0.1180781    0.0531989
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.0285311   -0.1162326    0.0591705
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0432420   -0.1066240    0.0201401
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0092215   -0.0690931    0.0506501
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0258794   -0.0871971    0.0354382
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0343375   -0.0919107    0.0232357
21-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0809873   -0.2603051    0.0983305
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.1175638   -0.3119001    0.0767724
21-24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.7003098   -2.0333608    0.6327412
21-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.6942840   -2.0850046    0.6964365
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0395096   -0.1308756    0.0518565
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0289137   -0.1221915    0.0643640
21-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0241210   -0.1063736    0.0581315
21-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0159055   -0.0724323    0.1042434
21-24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.0520429   -0.0578824    0.1619682
21-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High               0.0328423   -0.0786749    0.1443595


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0314810   -0.1181551    0.0551932
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0786381   -0.2250990    0.0678228
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1556177   -0.3522264    0.0409911
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1706198   -0.3349817   -0.0062580
0-3 months     ki0047075b-MAL-ED          PERU                           High                 NA                -0.0967837   -0.1976866    0.0041193
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0900854   -0.2383143    0.0581435
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3121282   -0.6294222    0.0051658
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1063886   -0.2995655    0.0867884
0-3 months     ki1000108-IRC              INDIA                          High                 NA                -0.1757928   -0.3461800   -0.0054056
0-3 months     ki1000109-EE               PAKISTAN                       High                 NA                -0.1029786   -0.4655638    0.2596066
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0797216   -0.2478001    0.0883569
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0327726   -0.1178767    0.0523314
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0275795   -0.0787201    0.0235612
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0041779   -0.0455112    0.0538670
0-3 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1041615   -0.2408687    0.0325457
0-3 months     ki1119695-PROBIT           BELARUS                        High                 NA                -0.0466081   -0.1239036    0.0306875
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0111844   -0.0303985    0.0080297
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1537896   -0.2492559   -0.0583233
0-3 months     ki1135781-COHORTS          INDIA                          High                 NA                -0.1476986   -0.1864632   -0.1089339
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0519715   -0.0708439   -0.0330991
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0373471   -0.1046790    0.1793732
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0470743   -0.1163407    0.0221921
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0509350   -0.0600820    0.1619521
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1009567    0.0029804    0.1989329
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0066704   -0.1129482    0.0996075
3-6 months     ki0047075b-MAL-ED          PERU                           High                 NA                 0.0673367   -0.0342526    0.1689259
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0139754   -0.1423990    0.1144481
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.4231106    0.0544693    0.7917519
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0663062   -0.1819928    0.0493804
3-6 months     ki1000108-IRC              INDIA                          High                 NA                 0.0796800   -0.0181161    0.1774762
3-6 months     ki1000109-EE               PAKISTAN                       High                 NA                -0.1309983   -0.3638416    0.1018450
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0257581   -0.1288077    0.0772915
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1010551   -0.1756360   -0.0264743
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0096811   -0.0566924    0.0373301
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0342762   -0.0848326    0.0162802
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0039940   -0.0593220    0.0673100
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0612577   -0.1564200    0.0339046
3-6 months     ki1119695-PROBIT           BELARUS                        High                 NA                -0.0237163   -0.0770682    0.0296356
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0201363   -0.0385154   -0.0017571
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0256783   -0.0968905    0.0455340
3-6 months     ki1135781-COHORTS          INDIA                          High                 NA                -0.0896218   -0.1232627   -0.0559810
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0044098   -0.0221561    0.0133365
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0340957   -0.1277834    0.0595920
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0065528   -0.0518983    0.0650039
6-9 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.1416985   -0.2665165   -0.0168805
6-9 months     ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0089153   -0.0710632    0.0888937
6-9 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0266956   -0.0602905    0.1136817
6-9 months     ki0047075b-MAL-ED          PERU                           High                 NA                -0.0259662   -0.1165529    0.0646205
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0136512   -0.1173610    0.0900585
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.6721118   -1.4301455    0.0859219
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0235278   -0.0683531    0.1154088
6-9 months     ki1000108-IRC              INDIA                          High                 NA                -0.0690106   -0.1450267    0.0070055
6-9 months     ki1000109-EE               PAKISTAN                       High                 NA                -0.0952444   -0.3037332    0.1132445
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0142302   -0.1083509    0.0798904
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0008957   -0.0671579    0.0653664
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0548954   -0.0890233   -0.0207675
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0198604   -0.0618726    0.0221517
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0703677   -0.1361409   -0.0045945
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0025454   -0.0488472    0.0539381
6-9 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0151059   -0.0672544    0.0974661
6-9 months     ki1119695-PROBIT           BELARUS                        High                 NA                 0.0123749   -0.0153520    0.0401017
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0218256   -0.0393871   -0.0042642
6-9 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0753054    0.0087117    0.1418991
6-9 months     ki1135781-COHORTS          INDIA                          High                 NA                -0.0657410   -0.0969216   -0.0345605
6-9 months     ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0119148   -0.0579079    0.0340783
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0315712   -0.0873835    0.0242411
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0296031   -0.0892431    0.0300370
9-12 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0483147   -0.0508799    0.1475093
9-12 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0130525   -0.0833402    0.0572353
9-12 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0187114   -0.0558030    0.0932258
9-12 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0429044   -0.1227201    0.0369114
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0027635   -0.0952277    0.1007548
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2175451   -0.7040684    1.1391585
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0338383   -0.0458548    0.1135314
9-12 months    ki1000108-IRC              INDIA                          High                 NA                -0.0067767   -0.0674663    0.0539130
9-12 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.0277404   -0.1902449    0.1347641
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0860968   -0.1707555   -0.0014382
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0964246   -0.1518893   -0.0409599
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0431605   -0.0815600   -0.0047609
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0223949   -0.0583752    0.0135855
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0276635   -0.0887319    0.0334050
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0611470   -0.1062771   -0.0160169
9-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0523486   -0.1277372    0.0230400
9-12 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0172922   -0.0529003    0.0183158
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0190881   -0.0356233   -0.0025529
9-12 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0042544   -0.0558294    0.0473205
9-12 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0793838   -0.1122852   -0.0464824
9-12 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0175769   -0.0754592    0.0403054
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0140983   -0.0323970    0.0605935
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0204376   -0.0388979    0.0797732
12-15 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0859635   -0.1645547   -0.0073724
12-15 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0477199   -0.1162710    0.0208313
12-15 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0236429   -0.1045414    0.0572557
12-15 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0415144   -0.1148331    0.0318042
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0187130   -0.1234278    0.0860019
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0823703   -0.1802422    0.3449829
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1116287   -0.1965502   -0.0267071
12-15 months   ki1000108-IRC              INDIA                          High                 NA                -0.0043529   -0.0629361    0.0542304
12-15 months   ki1000109-EE               PAKISTAN                       High                 NA                -0.1291040   -0.3099230    0.0517151
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0842708   -0.1196318   -0.0489098
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.3436274   -0.6842978   -0.0029569
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0043540   -0.0647030    0.0559950
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0414699   -0.0793331   -0.0036067
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0739943   -0.1083966   -0.0395919
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0228104   -0.0869143    0.0412934
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0014901   -0.0696690    0.0726491
12-15 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0752170   -0.1468122   -0.0036218
12-15 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.2337323   -1.2235692    0.7561046
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0026335   -0.0287326    0.0234656
12-15 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0151329   -0.0447866    0.0750524
12-15 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.1443658   -0.2770199   -0.0117117
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0331117   -0.0793126    0.0130892
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0263439   -0.0247290    0.0774167
15-18 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0437040   -0.1198537    0.0324457
15-18 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0319995   -0.0932614    0.0292624
15-18 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0391063   -0.1170377    0.0388250
15-18 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0638848   -0.1298118    0.0020422
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0638532   -0.1516914    0.0239850
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1728787   -0.2724914    0.6182488
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0039108   -0.0742556    0.0820772
15-18 months   ki1000108-IRC              INDIA                          High                 NA                 0.0135722   -0.0471206    0.0742651
15-18 months   ki1000109-EE               PAKISTAN                       High                 NA                -0.2426079   -0.5283308    0.0431149
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1099644   -0.2881429    0.0682142
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0549546   -0.1155439    0.0056347
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0459397   -0.0777665   -0.0141129
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0012927   -0.0292737    0.0318591
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0162140   -0.0967019    0.0642739
15-18 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0203247   -0.0837168    0.1243662
15-18 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1412462   -2.5720441    2.2895516
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0344941   -0.0635150   -0.0054733
15-18 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0134673   -0.0860601    0.0591254
15-18 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0451055   -0.0519065    0.1421174
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0080642   -0.0417002    0.0578285
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0265632   -0.0774294    0.0243030
18-21 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0473500   -0.1369134    0.0422135
18-21 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0505605   -0.1093302    0.0082092
18-21 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0273774   -0.1063192    0.0515644
18-21 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0308493   -0.1013266    0.0396279
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0151793   -0.1015479    0.0711893
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0916733   -0.2347707    0.4181173
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0117395   -0.0866271    0.0631481
18-21 months   ki1000108-IRC              INDIA                          High                 NA                -0.0386352   -0.0949489    0.0176785
18-21 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.0279497   -0.2517554    0.3076549
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0227300   -0.0811254    0.0356655
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0211979   -0.0538862    0.0114905
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0569627   -0.0880851   -0.0258402
18-21 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0489249   -0.1666232    0.0687733
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0078307   -0.0409618    0.0253004
18-21 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0306701   -0.0961997    0.0348596
18-21 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0098346   -0.0504449    0.0701142
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0091120   -0.0576853    0.0394613
21-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0028176   -0.0490309    0.0546661
21-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0437178   -0.0945202    0.0070846
21-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0292301   -0.1045987    0.0461386
21-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0240174   -0.0459274    0.0939623
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0177779   -0.0620837    0.0976395
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.2852843   -0.6703276    0.0997590
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0295883   -0.0437528    0.1029295
21-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0209304   -0.0818644    0.0400036
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0214190   -0.0739882    0.0311502
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0168047   -0.0522435    0.0186341
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0191487   -0.0507661    0.0124687
21-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0789514   -0.2370342    0.0791314
21-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.5873086   -1.5957405    0.4211233
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0160993   -0.0524275    0.0202288
21-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0051359   -0.0604335    0.0501617
21-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0252559   -0.0325327    0.0830446
