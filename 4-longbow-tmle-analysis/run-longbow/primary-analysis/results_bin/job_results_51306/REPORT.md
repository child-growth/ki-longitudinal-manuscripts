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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        sex       wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female              0       29    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female              1       42    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                0       16    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                1       37    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female              0        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female              1        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                0        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                1       13     23
0-24 months   ki0047075b-MAL-ED          INDIA                          Female              0       32    178
0-24 months   ki0047075b-MAL-ED          INDIA                          Female              1       65    178
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                0       39    178
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                1       42    178
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female              0        6     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female              1       39     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                0       14     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                1       34     93
0-24 months   ki0047075b-MAL-ED          PERU                           Female              0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           Female              1       10     34
0-24 months   ki0047075b-MAL-ED          PERU                           Male                0        5     34
0-24 months   ki0047075b-MAL-ED          PERU                           Male                1       18     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female              0        7     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female              1       27     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                0       10     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                1       39     83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              0        3     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              1       24     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                0        5     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                1       13     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female              0       52    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female              1      112    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                0       68    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                1       94    326
0-24 months   ki1000108-IRC              INDIA                          Female              0       68    395
0-24 months   ki1000108-IRC              INDIA                          Female              1      112    395
0-24 months   ki1000108-IRC              INDIA                          Male                0       94    395
0-24 months   ki1000108-IRC              INDIA                          Male                1      121    395
0-24 months   ki1000109-EE               PAKISTAN                       Female              0       64    257
0-24 months   ki1000109-EE               PAKISTAN                       Female              1       57    257
0-24 months   ki1000109-EE               PAKISTAN                       Male                0       86    257
0-24 months   ki1000109-EE               PAKISTAN                       Male                1       50    257
0-24 months   ki1000109-ResPak           PAKISTAN                       Female              0       44    200
0-24 months   ki1000109-ResPak           PAKISTAN                       Female              1       55    200
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                0       65    200
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                1       36    200
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female              0      229    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female              1      150    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                0      275    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                1      160    814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female              0      118    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female              1        3    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                0      103    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                1       10    234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female              0       86    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female              1       97    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                0      116    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                1      122    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female              0       51    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female              1       90    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                0       77    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                1       89    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female              0       46    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female              1       97    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                0       71    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                1       97    311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0       94    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      202    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0      172    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      245    713
0-24 months   ki1101329-Keneba           GAMBIA                         Female              0      293   1522
0-24 months   ki1101329-Keneba           GAMBIA                         Female              1      369   1522
0-24 months   ki1101329-Keneba           GAMBIA                         Male                0      408   1522
0-24 months   ki1101329-Keneba           GAMBIA                         Male                1      452   1522
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female              0        5     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female              1        6     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                0       16     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                1       11     38
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female              0      339    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female              1       15    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                0      445    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                1       21    820
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female              0      122    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female              1      149    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                0      146    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                1      144    561
0-24 months   ki1114097-CMIN             BANGLADESH                     Female              0       35    190
0-24 months   ki1114097-CMIN             BANGLADESH                     Female              1       49    190
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                0       45    190
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                1       61    190
0-24 months   ki1114097-CMIN             BRAZIL                         Female              0        4     13
0-24 months   ki1114097-CMIN             BRAZIL                         Female              1        3     13
0-24 months   ki1114097-CMIN             BRAZIL                         Male                0        3     13
0-24 months   ki1114097-CMIN             BRAZIL                         Male                1        3     13
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female              0       79    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female              1       54    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                0      138    334
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                1       63    334
0-24 months   ki1114097-CMIN             PERU                           Female              0        5     94
0-24 months   ki1114097-CMIN             PERU                           Female              1       30     94
0-24 months   ki1114097-CMIN             PERU                           Male                0       17     94
0-24 months   ki1114097-CMIN             PERU                           Male                1       42     94
0-24 months   ki1114097-CONTENT          PERU                           Female              0        0      9
0-24 months   ki1114097-CONTENT          PERU                           Female              1        2      9
0-24 months   ki1114097-CONTENT          PERU                           Male                0        2      9
0-24 months   ki1114097-CONTENT          PERU                           Male                1        5      9
0-24 months   ki1119695-PROBIT           BELARUS                        Female              0      147   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Female              1     1899   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Male                0      468   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Male                1     1917   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female              0      733   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female              1     1012   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                0      897   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                1      933   3575
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female              0       73    381
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female              1       68    381
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                0      140    381
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                1      100    381
0-24 months   ki1135781-COHORTS          INDIA                          Female              0      948   2663
0-24 months   ki1135781-COHORTS          INDIA                          Female              1      315   2663
0-24 months   ki1135781-COHORTS          INDIA                          Male                0     1071   2663
0-24 months   ki1135781-COHORTS          INDIA                          Male                1      329   2663
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female              0      279   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female              1      454   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                0      385   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                1      571   1689
0-24 months   ki1148112-LCNI-5           MALAWI                         Female              0       22     79
0-24 months   ki1148112-LCNI-5           MALAWI                         Female              1        3     79
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                0       44     79
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                1       10     79
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female              0     2038   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female              1     1618   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                0     2338   7575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                1     1581   7575
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female              0      701   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female              1      255   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                0      833   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                1      280   2069
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female              0        8     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female              1       25     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                0        5     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                1       24     62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female              0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female              1        3     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                1       10     14
0-6 months    ki0047075b-MAL-ED          INDIA                          Female              0       11     83
0-6 months    ki0047075b-MAL-ED          INDIA                          Female              1       35     83
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                0       15     83
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                1       22     83
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female              0        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female              1       17     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                0        7     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                1       17     43
0-6 months    ki0047075b-MAL-ED          PERU                           Female              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Female              1        4     11
0-6 months    ki0047075b-MAL-ED          PERU                           Male                0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Male                1        7     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female              0        2     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female              1       12     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                0        6     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                1       13     33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              1        9     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                1        2     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female              0       30    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female              1       79    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                0       36    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                1       58    203
0-6 months    ki1000108-IRC              INDIA                          Female              0       34    240
0-6 months    ki1000108-IRC              INDIA                          Female              1       76    240
0-6 months    ki1000108-IRC              INDIA                          Male                0       53    240
0-6 months    ki1000108-IRC              INDIA                          Male                1       77    240
0-6 months    ki1000109-EE               PAKISTAN                       Female              0       19    108
0-6 months    ki1000109-EE               PAKISTAN                       Female              1       33    108
0-6 months    ki1000109-EE               PAKISTAN                       Male                0       28    108
0-6 months    ki1000109-EE               PAKISTAN                       Male                1       28    108
0-6 months    ki1000109-ResPak           PAKISTAN                       Female              0       13    112
0-6 months    ki1000109-ResPak           PAKISTAN                       Female              1       41    112
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                0       30    112
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                1       28    112
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female              0       82    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female              1       88    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                0       84    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                1       87    341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female              0       44     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female              1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                0       34     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                1        0     78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female              0       34    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female              1       70    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                0       30    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                1       89    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female              0       17    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female              1       71    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                0       22    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                1       74    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female              0        9    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female              1       88    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                0       12    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                1       89    198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0       35    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      109    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0       66    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      130    340
0-6 months    ki1101329-Keneba           GAMBIA                         Female              0       63    416
0-6 months    ki1101329-Keneba           GAMBIA                         Female              1      115    416
0-6 months    ki1101329-Keneba           GAMBIA                         Male                0       89    416
0-6 months    ki1101329-Keneba           GAMBIA                         Male                1      149    416
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female              0        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female              1        2     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                0        5     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                1        2     10
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female              0       34    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female              1       50    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                0       41    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                1       55    180
0-6 months    ki1114097-CMIN             BANGLADESH                     Female              0       12     52
0-6 months    ki1114097-CMIN             BANGLADESH                     Female              1       15     52
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                0       13     52
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                1       12     52
0-6 months    ki1114097-CMIN             BRAZIL                         Female              0        3      9
0-6 months    ki1114097-CMIN             BRAZIL                         Female              1        2      9
0-6 months    ki1114097-CMIN             BRAZIL                         Male                0        1      9
0-6 months    ki1114097-CMIN             BRAZIL                         Male                1        3      9
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female              0        8     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female              1       12     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                0       18     49
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                1       11     49
0-6 months    ki1114097-CMIN             PERU                           Female              0        3     52
0-6 months    ki1114097-CMIN             PERU                           Female              1       19     52
0-6 months    ki1114097-CMIN             PERU                           Male                0        7     52
0-6 months    ki1114097-CMIN             PERU                           Male                1       23     52
0-6 months    ki1114097-CONTENT          PERU                           Female              0        0      4
0-6 months    ki1114097-CONTENT          PERU                           Female              1        2      4
0-6 months    ki1114097-CONTENT          PERU                           Male                0        0      4
0-6 months    ki1114097-CONTENT          PERU                           Male                1        2      4
0-6 months    ki1119695-PROBIT           BELARUS                        Female              0      123   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Female              1     1890   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Male                0      365   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Male                1     1885   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female              0      317   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female              1      978   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                0      329   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                1      893   2517
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female              0       16    215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female              1       64    215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                0       39    215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                1       96    215
0-6 months    ki1135781-COHORTS          INDIA                          Female              0      575   1795
0-6 months    ki1135781-COHORTS          INDIA                          Female              1      315   1795
0-6 months    ki1135781-COHORTS          INDIA                          Male                0      576   1795
0-6 months    ki1135781-COHORTS          INDIA                          Male                1      329   1795
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female              0       76    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female              1      247    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                0      122    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                1      307    752
0-6 months    ki1148112-LCNI-5           MALAWI                         Female              0        2      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Female              1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                0        2      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female              0      743   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female              1     1618   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                0      796   4738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                1     1581   4738
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female              0      100    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female              1      147    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                0      144    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                1      162    553
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female              0       21     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female              1       17     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                0       11     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                1       13     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female              0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female              1        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                1        3      9
6-24 months   ki0047075b-MAL-ED          INDIA                          Female              0       21     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Female              1       30     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                0       24     95
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                1       20     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female              0        4     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female              1       22     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                0        7     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                1       17     50
6-24 months   ki0047075b-MAL-ED          PERU                           Female              0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           Female              1        6     23
6-24 months   ki0047075b-MAL-ED          PERU                           Male                0        5     23
6-24 months   ki0047075b-MAL-ED          PERU                           Male                1       11     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female              0        5     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female              1       15     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                0        4     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                1       26     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              0        2     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              1       15     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                0        5     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                1       11     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female              0       22    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female              1       33    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                0       32    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                1       36    123
6-24 months   ki1000108-IRC              INDIA                          Female              0       34    155
6-24 months   ki1000108-IRC              INDIA                          Female              1       36    155
6-24 months   ki1000108-IRC              INDIA                          Male                0       41    155
6-24 months   ki1000108-IRC              INDIA                          Male                1       44    155
6-24 months   ki1000109-EE               PAKISTAN                       Female              0       45    149
6-24 months   ki1000109-EE               PAKISTAN                       Female              1       24    149
6-24 months   ki1000109-EE               PAKISTAN                       Male                0       58    149
6-24 months   ki1000109-EE               PAKISTAN                       Male                1       22    149
6-24 months   ki1000109-ResPak           PAKISTAN                       Female              0       31     88
6-24 months   ki1000109-ResPak           PAKISTAN                       Female              1       14     88
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                0       35     88
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                1        8     88
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female              0      147    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female              1       62    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                0      191    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                1       73    473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female              0       74    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female              1        3    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                0       69    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                1       10    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female              0       52    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female              1       27    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                0       86    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                1       33    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female              0       34    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female              1       19    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                0       55    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                1       15    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female              0       37    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female              1        9    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                0       59    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                1        8    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0       59    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1       93    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0      106    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      115    373
6-24 months   ki1101329-Keneba           GAMBIA                         Female              0      230   1106
6-24 months   ki1101329-Keneba           GAMBIA                         Female              1      254   1106
6-24 months   ki1101329-Keneba           GAMBIA                         Male                0      319   1106
6-24 months   ki1101329-Keneba           GAMBIA                         Male                1      303   1106
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female              0        4     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female              1        4     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                0       11     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                1        9     28
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female              0      339    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female              1       15    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                0      445    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                1       21    820
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female              0       88    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female              1       99    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                0      105    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                1       89    381
6-24 months   ki1114097-CMIN             BANGLADESH                     Female              0       23    138
6-24 months   ki1114097-CMIN             BANGLADESH                     Female              1       34    138
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                0       32    138
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                1       49    138
6-24 months   ki1114097-CMIN             BRAZIL                         Female              0        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         Female              1        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         Male                0        2      4
6-24 months   ki1114097-CMIN             BRAZIL                         Male                1        0      4
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female              0       71    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female              1       42    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                0      120    285
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                1       52    285
6-24 months   ki1114097-CMIN             PERU                           Female              0        2     42
6-24 months   ki1114097-CMIN             PERU                           Female              1       11     42
6-24 months   ki1114097-CMIN             PERU                           Male                0       10     42
6-24 months   ki1114097-CMIN             PERU                           Male                1       19     42
6-24 months   ki1114097-CONTENT          PERU                           Female              0        0      5
6-24 months   ki1114097-CONTENT          PERU                           Female              1        0      5
6-24 months   ki1114097-CONTENT          PERU                           Male                0        2      5
6-24 months   ki1114097-CONTENT          PERU                           Male                1        3      5
6-24 months   ki1119695-PROBIT           BELARUS                        Female              0       24    168
6-24 months   ki1119695-PROBIT           BELARUS                        Female              1        9    168
6-24 months   ki1119695-PROBIT           BELARUS                        Male                0      103    168
6-24 months   ki1119695-PROBIT           BELARUS                        Male                1       32    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female              0      416   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female              1       34   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                0      568   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                1       40   1058
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female              0       57    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female              1        4    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                0      101    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                1        4    166
6-24 months   ki1135781-COHORTS          INDIA                          Female              0      373    868
6-24 months   ki1135781-COHORTS          INDIA                          Female              1        0    868
6-24 months   ki1135781-COHORTS          INDIA                          Male                0      495    868
6-24 months   ki1135781-COHORTS          INDIA                          Male                1        0    868
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female              0      203    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female              1      207    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                0      263    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                1      264    937
6-24 months   ki1148112-LCNI-5           MALAWI                         Female              0       20     75
6-24 months   ki1148112-LCNI-5           MALAWI                         Female              1        3     75
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                0       42     75
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                1       10     75
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female              0     1295   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female              1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                0     1542   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                1        0   2837
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female              0      601   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female              1      108   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                0      689   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                1      118   1516


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/6f6ae593-c044-4954-8a5d-ffa26725ed1e/4a68ffbc-cea3-4bbf-92e9-aa8079cfe4d9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6f6ae593-c044-4954-8a5d-ffa26725ed1e/4a68ffbc-cea3-4bbf-92e9-aa8079cfe4d9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6f6ae593-c044-4954-8a5d-ffa26725ed1e/4a68ffbc-cea3-4bbf-92e9-aa8079cfe4d9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6f6ae593-c044-4954-8a5d-ffa26725ed1e/4a68ffbc-cea3-4bbf-92e9-aa8079cfe4d9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.5915493   0.4782017   0.7048969
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.6981132   0.5678868   0.8283396
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.6701031   0.5686332   0.7715730
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.5185185   0.3977573   0.6392798
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.8666667   0.7639787   0.9693547
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.7083333   0.5874940   0.8291726
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.7941176   0.6588573   0.9293780
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.7959184   0.6710161   0.9208206
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.6829268   0.6037506   0.7621031
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.5802469   0.5019032   0.6585906
0-24 months   ki1000108-IRC              INDIA                          Female               NA                0.6222222   0.5459703   0.6984741
0-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.5627907   0.4915511   0.6340303
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.4710744   0.3725057   0.5696431
0-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.3676471   0.2832425   0.4520516
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.5555556   0.4566335   0.6544776
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.3564356   0.2548758   0.4579955
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.3957784   0.3451643   0.4463924
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.3678161   0.3192002   0.4164320
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.5300546   0.4507893   0.6093200
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.5126050   0.4470001   0.5782100
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.6382979   0.5554609   0.7211348
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.5361446   0.4585955   0.6136936
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.6783217   0.6012869   0.7553565
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.5773810   0.5024769   0.6522850
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.6824324   0.6259632   0.7389017
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.5875300   0.5378588   0.6372012
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.5574018   0.5161129   0.5986908
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.5255814   0.4893875   0.5617753
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.5454545   0.1787960   0.9121131
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.4074074   0.2232840   0.5915308
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0423729   0.0208130   0.0639328
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.0450644   0.0265744   0.0635544
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.5498155   0.4855177   0.6141133
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.4965517   0.4341190   0.5589844
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.5833333   0.4610861   0.7055806
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.5754717   0.4734178   0.6775256
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.4060150   0.3169778   0.4950523
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.3134328   0.2485424   0.3783233
0-24 months   ki1114097-CMIN             PERU                           Female               NA                0.8571429   0.7316502   0.9826355
0-24 months   ki1114097-CMIN             PERU                           Male                 NA                0.7118644   0.5879998   0.8357290
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.9281525   0.9168347   0.9394703
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.8037736   0.7880622   0.8194850
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.5799427   0.5563698   0.6035156
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.5098361   0.4869236   0.5327485
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.4822695   0.3958100   0.5687290
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.4166667   0.3525835   0.4807498
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.2494062   0.2254052   0.2734071
0-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.2350000   0.2126792   0.2573208
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.6193724   0.5816890   0.6570559
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.5972803   0.5650607   0.6295000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.4425602   0.4263858   0.4587346
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.4034192   0.3881465   0.4186919
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.2667364   0.2378310   0.2956418
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.2515723   0.2256228   0.2775219
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.7575758   0.6026071   0.9125444
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.8275862   0.7058211   0.9493513
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.7608696   0.6359665   0.8857726
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.5945946   0.4288920   0.7602972
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.7247706   0.6375344   0.8120069
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.6170213   0.5185474   0.7154952
0-6 months    ki1000108-IRC              INDIA                          Female               NA                0.6909091   0.6035350   0.7782831
0-6 months    ki1000108-IRC              INDIA                          Male                 NA                0.5923077   0.5046939   0.6799215
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.6346154   0.5004910   0.7687398
0-6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.5000000   0.3670848   0.6329152
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.7592593   0.6408066   0.8777119
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.4827586   0.3559051   0.6096121
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.5176471   0.4414987   0.5937954
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.5087719   0.4335062   0.5840376
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.6730769   0.5823118   0.7638420
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.7478992   0.6703442   0.8254542
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.8068182   0.7264644   0.8871719
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.7708333   0.6865898   0.8550769
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.9072165   0.8488034   0.9656295
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.8811881   0.8172777   0.9450985
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.7569444   0.6863201   0.8275688
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.6632653   0.5958768   0.7306538
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.6460674   0.5765439   0.7155909
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.6260504   0.5637718   0.6883291
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.5952381   0.4892262   0.7012500
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.5729167   0.4736582   0.6721752
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.5555556   0.3616478   0.7494633
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.4800000   0.2826810   0.6773190
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.6000000   0.3906067   0.8093933
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.3793103   0.1971263   0.5614943
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.9388972   0.9283916   0.9494028
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.8377778   0.8224229   0.8531327
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.7552124   0.7317860   0.7786387
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.7307692   0.7059398   0.7555987
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.8000000   0.7117317   0.8882683
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.7111111   0.6348770   0.7873452
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                0.3539326   0.3225077   0.3853574
0-6 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.3635359   0.3321882   0.3948836
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.7647059   0.7181957   0.8112161
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.7156177   0.6728928   0.7583427
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.6853028   0.6665706   0.7040350
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.6651241   0.6461509   0.6840973
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.5951417   0.5338708   0.6564126
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.5294118   0.4734363   0.5853872
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.4473684   0.3021968   0.5925401
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.5416667   0.3019611   0.7813722
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.5882353   0.4378608   0.7386098
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.4545455   0.2823318   0.6267591
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.6000000   0.4593885   0.7406115
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.5294118   0.4063947   0.6524288
6-24 months   ki1000108-IRC              INDIA                          Female               NA                0.5142857   0.3858447   0.6427267
6-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.5176471   0.4071503   0.6281439
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.3478261   0.2274399   0.4682123
6-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.2750000   0.1826621   0.3673379
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.3111111   0.1805906   0.4416317
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1860465   0.0692455   0.3028476
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2966507   0.2342618   0.3590396
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.2765152   0.2202742   0.3327561
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.3417722   0.2333916   0.4501527
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.2773109   0.1965276   0.3580942
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.3584906   0.2192312   0.4977500
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.2142857   0.1202520   0.3083194
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1956522   0.0861949   0.3051094
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1194030   0.0418271   0.1969789
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.6118421   0.5301461   0.6935381
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.5203620   0.4530770   0.5876470
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.5247934   0.4771501   0.5724367
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.4871383   0.4454544   0.5288221
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0423729   0.0208130   0.0639328
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.0450644   0.0265744   0.0635544
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.5294118   0.4499595   0.6088640
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.4587629   0.3842161   0.5333096
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.5964912   0.4505713   0.7424112
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.6049383   0.4951674   0.7147092
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.3716814   0.2791797   0.4641831
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.3023256   0.2336833   0.3709679
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.2727273   0.1194065   0.4260481
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.2370370   0.1655031   0.3085710
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0755556   0.0512958   0.0998153
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0657895   0.0462891   0.0852898
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.5048780   0.4529491   0.5568070
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.5009488   0.4563973   0.5455003
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.1523272   0.1263992   0.1782552
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.1462206   0.1222889   0.1701523


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6370968   0.5511492   0.7230443
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6011236   0.5212729   0.6809743
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7849462   0.7049947   0.8648978
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7951807   0.7027530   0.8876084
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4550000   0.3826235   0.5273765
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6269285   0.5892870   0.6645700
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5394218   0.5121870   0.5666566
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4473684   0.2760904   0.6186464
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5789474   0.5004470   0.6574477
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3502994   0.2972456   0.4033532
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.7659574   0.6722800   0.8596349
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5440559   0.5275873   0.5605246
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4409449   0.3893635   0.4925263
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2418325   0.2254819   0.2581831
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4223102   0.4111919   0.4334286
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2585790   0.2392503   0.2779077
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7903226   0.6894772   0.8911679
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6867470   0.5837430   0.7897510
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.6160714   0.5252688   0.7068741
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7029412   0.6536517   0.7522307
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6346154   0.5881865   0.6810443
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5192308   0.3806687   0.6577929
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.4693878   0.3282220   0.6105535
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7433453   0.7262923   0.7603982
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7441860   0.6858573   0.8025148
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3587744   0.3365795   0.3809693
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6751794   0.6618445   0.6885143
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5587703   0.5173487   0.6001920
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2500000   0.1614745   0.3385255
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1504425   0.0860251   0.2148599
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5576408   0.5054408   0.6098407
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5036166   0.4722232   0.5350101
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6014493   0.5131344   0.6897641
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3298246   0.2742790   0.3853701
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2440476   0.1791134   0.3089818
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0699433   0.0547084   0.0851781
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1490765   0.1314900   0.1666630


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.1801438   0.9029463   1.5424387
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            0.7737892   0.5861820   1.0214399
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            0.8173077   0.6639187   1.0061351
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.0022676   0.7955118   1.2627598
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            0.8496473   0.7111297   1.0151460
0-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Male                 Female            0.9044850   0.7583690   1.0787535
0-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            0.7804438   0.5720659   1.0647243
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            0.6415842   0.4584056   0.8979608
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            0.9293487   0.7732151   1.1170100
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            0.9670796   0.7942192   1.1775628
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            0.8399598   0.6915298   1.0202489
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.8511905   0.7161088   1.0117530
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.8609350   0.7648976   0.9690305
0-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            0.9429130   0.8521908   1.0432932
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            0.7469136   0.3322681   1.6790053
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.0635193   0.5531912   2.0446337
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9031243   0.7605900   1.0723694
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9865229   0.7497249   1.2981128
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            0.7719735   0.5709900   1.0437014
0-24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           Male                 Female            0.8305085   0.6617793   1.0422573
0-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            0.8659930   0.8462697   0.8861760
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            0.8791146   0.8274169   0.9340423
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            0.8639706   0.6821579   1.0942410
0-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            0.9422381   0.8230729   1.0786562
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            0.9643315   0.8890062   1.0460390
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            0.9115579   0.8648311   0.9608094
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            0.9431496   0.8120943   1.0953544
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.0924138   0.8490926   1.4054626
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            0.7814672   0.5655038   1.0799060
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            0.8513332   0.6970999   1.0396905
0-6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Male                 Female            0.8572874   0.7056735   1.0414756
0-6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Male                 Female            0.7878788   0.5609915   1.1065282
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            0.6358284   0.4684060   0.8630926
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            0.9828549   0.7977736   1.2108744
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.1111645   0.9373460   1.3172153
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            0.9553991   0.8240764   1.1076489
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.9713096   0.8815318   1.0702307
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.8762404   0.7633337   1.0058474
0-6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            0.9690172   0.8369253   1.1219570
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9625000   0.7507469   1.2339795
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            0.8640000   0.5038581   1.4815599
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            0.6321839   0.3491412   1.1446845
0-6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            0.8922998   0.8733431   0.9116680
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            0.9676341   0.9241245   1.0131922
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            0.8888889   0.7621418   1.0367145
0-6 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.0271332   0.9075581   1.1624630
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            0.9358078   0.8593555   1.0190616
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            0.9705550   0.9329580   1.0096672
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            0.8895558   0.7675072   1.0310126
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.2107843   0.6991779   2.0967464
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            0.7727273   0.4892507   1.2204530
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            0.8823529   0.6343788   1.2272583
6-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Male                 Female            1.0065359   0.7246809   1.3980148
6-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            0.7906250   0.4879327   1.2810945
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            0.5980066   0.2809905   1.2726833
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            0.9321237   0.6956812   1.2489263
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            0.8113912   0.5272937   1.2485561
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            0.5977444   0.3326260   1.0741745
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.6102819   0.2588838   1.4386530
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.8504841   0.7062181   1.0242208
6-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            0.9282477   0.8193379   1.0516342
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.0635193   0.5531912   2.0446337
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.8665521   0.6944506   1.0813045
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.0141612   0.7479871   1.3750545
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            0.8133998   0.5807448   1.1392599
6-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            0.8691358   0.4591804   1.6450985
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            0.8707430   0.5624828   1.3479406
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            0.9922174   0.8660816   1.1367235
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            0.9599110   0.7579866   1.2156272


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0455475   -0.0299338    0.1210287
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0689795   -0.1423659    0.0044069
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0817204   -0.1636356    0.0001947
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0010631   -0.1073759    0.1095021
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0510250   -0.1066477    0.0045977
0-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0323488   -0.0892066    0.0245090
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0547320   -0.1241250    0.0146611
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                -0.1005556   -0.1747284   -0.0263827
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0149430   -0.0524931    0.0226071
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0098646   -0.0680249    0.0482957
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0552360   -0.1166192    0.0061472
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0545275   -0.1124425    0.0033876
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0555040   -0.0996610   -0.0113469
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0179800   -0.0490551    0.0130951
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0980861   -0.3912445    0.1950722
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0015296   -0.0146114    0.0176705
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0275339   -0.0740629    0.0189952
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0043860   -0.0932229    0.0844510
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.0557156   -0.1222228    0.0107915
0-24 months   ki1114097-CMIN             PERU                           Female               NA                -0.0911854   -0.2034541    0.0210833
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                -0.0669473   -0.0775195   -0.0563752
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0358867   -0.0527280   -0.0190455
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0413246   -0.1091054    0.0264562
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                -0.0075737   -0.0248091    0.0096618
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.0125045   -0.0405600    0.0155510
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0202499   -0.0317701   -0.0087298
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0081574   -0.0290609    0.0127462
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0327468   -0.0600994    0.1255930
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0741226   -0.1687679    0.0205228
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0498938   -0.1113314    0.0115438
0-6 months    ki1000108-IRC              INDIA                          Female               NA                -0.0534091   -0.1208722    0.0140540
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                -0.0698006   -0.1688919    0.0292907
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.1431878   -0.2369595   -0.0494161
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0044506   -0.0581532    0.0492520
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0399276   -0.0239813    0.1038365
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0187747   -0.0795409    0.0419915
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0132771   -0.0574868    0.0309326
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0540033   -0.1105430    0.0025364
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0114520   -0.0648568    0.0419528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0119048   -0.0893835    0.0655740
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0363248   -0.1699351    0.0972855
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.1306122   -0.2975547    0.0363302
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                -0.0533705   -0.0633119   -0.0434292
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0118671   -0.0284466    0.0047123
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0558140   -0.1292671    0.0176392
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0048418   -0.0175382    0.0272218
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.0280038   -0.0640678    0.0080603
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0101234   -0.0235026    0.0032558
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0363714   -0.0823745    0.0096317
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0365025   -0.0722560    0.1452611
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0619195   -0.1691826    0.0453436
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0390244   -0.1425519    0.0645031
6-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0018433   -0.0910601    0.0947468
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0391013   -0.1213006    0.0430981
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0611111   -0.1483001    0.0260779
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0112385   -0.0581254    0.0356485
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0387418   -0.1204938    0.0430101
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0820678   -0.1792340    0.0150983
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0452097   -0.1253444    0.0349250
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0542014   -0.1171768    0.0087741
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0211768   -0.0568610    0.0145074
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0015296   -0.0146114    0.0176705
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0359734   -0.0919117    0.0199648
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0049580   -0.1021649    0.1120810
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.0418569   -0.1115973    0.0278836
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                -0.0286797   -0.1646529    0.1072936
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0056123   -0.0235046    0.0122801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.0022100   -0.0406903    0.0362703
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0032507   -0.0220415    0.0155401


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0714922   -0.0551214    0.1829123
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.1147509   -0.2469248    0.0034125
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.1041096   -0.2163944   -0.0021897
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0013369   -0.1447652    0.1287925
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0807483   -0.1727196    0.0040101
0-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0548402   -0.1560309    0.0374929
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.1314590   -0.3107980    0.0233434
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                -0.2210012   -0.4031656   -0.0624861
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0392374   -0.1428561    0.0549866
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0189635   -0.1370321    0.0868450
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0947343   -0.2058737    0.0061619
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0874126   -0.1851058    0.0022274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0885332   -0.1618118   -0.0198765
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0333320   -0.0926050    0.0227255
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.2192513   -1.0686490    0.2813794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0348399   -0.4131544    0.3408123
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0527184   -0.1458648    0.0328562
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0075758   -0.1732498    0.1347035
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.1590515   -0.3643692    0.0153689
0-24 months   ki1114097-CMIN             PERU                           Female               NA                -0.1190476   -0.2808508    0.0223158
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                -0.0777368   -0.0904810   -0.0651416
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0659615   -0.0974334   -0.0353921
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0937183   -0.2588142    0.0497249
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                -0.0313178   -0.1050949    0.0375340
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.0206049   -0.0678852    0.0245820
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0479504   -0.0755908   -0.0210203
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0315469   -0.1155974    0.0461711
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0414348   -0.0853378    0.1533997
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.1079329   -0.2594318    0.0253420
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0739302   -0.1697025    0.0140005
0-6 months    ki1000108-IRC              INDIA                          Female               NA                -0.0837790   -0.1961512    0.0180364
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                -0.1235813   -0.3161333    0.0408001
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.2324208   -0.4053344   -0.0807827
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0086723   -0.1189321    0.0907226
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0559990   -0.0385811    0.1419661
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0238245   -0.1041095    0.0506227
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0148524   -0.0656218    0.0334983
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0768247   -0.1611932    0.0014138
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0180456   -0.1058362    0.0627754
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0204082   -0.1622923    0.1041558
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0699588   -0.3613715    0.1590746
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.2782609   -0.7102351    0.0446045
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                -0.0602698   -0.0718523   -0.0488125
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0159645   -0.0385292    0.0061100
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0750000   -0.1793207    0.0200927
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0134954   -0.0508988    0.0739437
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.0380123   -0.0882674    0.0099220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0149937   -0.0350114    0.0046369
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0650918   -0.1509455    0.0143577
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0754386   -0.1732504    0.2714140
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.1176471   -0.3456711    0.0717383
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0695652   -0.2710891    0.1000082
6-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0035714   -0.1937502    0.1682767
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.1266541   -0.4225769    0.1077112
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                -0.2444444   -0.6493345    0.0610504
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0393762   -0.2175562    0.1127285
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.1278481   -0.4317672    0.1115586
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.2968923   -0.6906438    0.0051543
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.3005115   -0.9557483    0.1352005
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0971976   -0.2165771    0.0104674
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0420493   -0.1154079    0.0264845
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0348399   -0.4131544    0.3408123
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0729036   -0.1924921    0.0346920
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0082435   -0.1870189    0.1713856
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.1269064   -0.3587726    0.0653932
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                -0.1175166   -0.8389439    0.3208910
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0802402   -0.3681630    0.1470907
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.0043965   -0.0839333    0.0693041
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0218056   -0.1559442    0.0967672
