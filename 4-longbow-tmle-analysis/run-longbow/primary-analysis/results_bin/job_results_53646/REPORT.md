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

agecat        studyid                    country                        enstunt    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       34    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       61    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       10    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       19    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0        5     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1       15     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        3     24
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       51    181
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       92    181
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       20    181
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       18    181
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0       16     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       63     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        4     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       15     98
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0        3     35
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1       21     35
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        3     35
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        8     35
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       17     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       57     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       12     87
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        8     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       31     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       11     51
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       88    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      159    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       32    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       45    324
0-24 months   ki1000108-IRC              INDIA                          0                    0      139    395
0-24 months   ki1000108-IRC              INDIA                          0                    1      203    395
0-24 months   ki1000108-IRC              INDIA                          1                    0       23    395
0-24 months   ki1000108-IRC              INDIA                          1                    1       30    395
0-24 months   ki1000109-EE               PAKISTAN                       0                    0       77    323
0-24 months   ki1000109-EE               PAKISTAN                       0                    1       95    323
0-24 months   ki1000109-EE               PAKISTAN                       1                    0       83    323
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       68    323
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0       74    204
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    1       68    204
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0       38    204
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    1       24    204
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0      320    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1      236    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      184    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       74    814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      117    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        9    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      104    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        4    234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0      162    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1      187    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0       40    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1       32    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      106    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1      153    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       23    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       26    308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       88    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      177    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       29    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       16    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      243    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      409    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       23    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       38    713
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0      600   1828
0-24 months   ki1101329-Keneba           GAMBIA                         0                    1     1027   1828
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      112   1828
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       89   1828
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0        7     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       12     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       14     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        5     38
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0      457    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1       24    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      327    820
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       12    820
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      249    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1      300    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       47    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       47    643
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0       40    190
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    1       68    190
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0       40    190
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    1       42    190
0-24 months   ki1114097-CONTENT          PERU                           0                    0        1      9
0-24 months   ki1114097-CONTENT          PERU                           0                    1        6      9
0-24 months   ki1114097-CONTENT          PERU                           1                    0        1      9
0-24 months   ki1114097-CONTENT          PERU                           1                    1        1      9
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0      613   4431
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1     3811   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0        2   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1        5   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     1443   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1860   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      208   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      104   3615
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      141    381
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      167    381
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       72    381
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1        1    381
0-24 months   ki1135781-COHORTS          INDIA                          0                    0     1674   2663
0-24 months   ki1135781-COHORTS          INDIA                          0                    1      622   2663
0-24 months   ki1135781-COHORTS          INDIA                          1                    0      345   2663
0-24 months   ki1135781-COHORTS          INDIA                          1                    1       22   2663
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      604   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1      964   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       60   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       61   1689
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0       25     79
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        5     79
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       41     79
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        8     79
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2793   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2380   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1582   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      816   7571
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      944   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      386   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      590   2069
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      149   2069
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0        9     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       43     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        4     63
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        7     63
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1       13     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        1     15
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0       23     86
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       47     86
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        4     86
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1       12     86
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0        8     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1       30     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        1     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        9     48
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        8     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        3     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        9     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       21     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        6     36
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       10     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3     14
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       51    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      111    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       15    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       24    201
0-6 months    ki1000108-IRC              INDIA                          0                    0       77    240
0-6 months    ki1000108-IRC              INDIA                          0                    1      138    240
0-6 months    ki1000108-IRC              INDIA                          1                    0       10    240
0-6 months    ki1000108-IRC              INDIA                          1                    1       15    240
0-6 months    ki1000109-EE               PAKISTAN                       0                    0       31    127
0-6 months    ki1000109-EE               PAKISTAN                       0                    1       47    127
0-6 months    ki1000109-EE               PAKISTAN                       1                    0       24    127
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       25    127
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0       26    113
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    1       52    113
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0       17    113
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    1       18    113
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0      107    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    1      142    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0       59    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1       33    341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       46     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       32     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0       52    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    1      135    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0       12    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1       24    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0       35    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1      127    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0        5    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       18    185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       18    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      162    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0        3    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       14    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       97    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      222    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0        4    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       17    340
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0      143    724
0-6 months    ki1101329-Keneba           GAMBIA                         0                    1      529    724
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0       22    724
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       30    724
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    1        4     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0        6     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     10
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0       92    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1      142    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0       12    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       17    263
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0       13     52
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    1       19     52
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0       12     52
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    1        8     52
0-6 months    ki1114097-CONTENT          PERU                           0                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           0                    1        4      4
0-6 months    ki1114097-CONTENT          PERU                           1                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           1                    1        0      4
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0      487   4263
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1     3770   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0        1   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1        5   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      584   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1788   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0       52   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       95   2519
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0       51    215
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    1      160    215
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0        4    215
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1        0    215
0-6 months    ki1135781-COHORTS          INDIA                          0                    0      993   1796
0-6 months    ki1135781-COHORTS          INDIA                          0                    1      622   1796
0-6 months    ki1135781-COHORTS          INDIA                          1                    0      159   1796
0-6 months    ki1135781-COHORTS          INDIA                          1                    1       22   1796
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0      187    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    1      534    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0       11    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1       20    752
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1077   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2380   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      461   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      816   4734
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      173    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      235    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0       71    553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       74    553
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       25     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       18     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        6     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       12     61
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        2      9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       28     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       45     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       16     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        6     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0        8     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       33     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        3     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        6     50
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0        3     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1       13     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        3     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        5     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        8     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       36     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        6     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        7     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       21     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        8     37
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       37    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       48    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       17    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       21    123
6-24 months   ki1000108-IRC              INDIA                          0                    0       62    155
6-24 months   ki1000108-IRC              INDIA                          0                    1       65    155
6-24 months   ki1000108-IRC              INDIA                          1                    0       13    155
6-24 months   ki1000108-IRC              INDIA                          1                    1       15    155
6-24 months   ki1000109-EE               PAKISTAN                       0                    0       46    196
6-24 months   ki1000109-EE               PAKISTAN                       0                    1       48    196
6-24 months   ki1000109-EE               PAKISTAN                       1                    0       59    196
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       43    196
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0       48     91
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    1       16     91
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0       21     91
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    1        6     91
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0      213    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1       94    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      125    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       41    473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       71    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        9    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       72    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        4    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0      110    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1       52    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0       28    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1        8    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       71    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       26    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       18    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        8    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       70    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       15    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       26    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        2    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      146    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      187    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       19    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       21    373
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0      457   1104
6-24 months   ki1101329-Keneba           GAMBIA                         0                    1      498   1104
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0       90   1104
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       59   1104
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0        7     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1        8     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        8     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        5     28
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0      457    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1       24    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      327    820
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       12    820
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      157    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1      158    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       35    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       30    380
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0       27    138
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    1       49    138
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0       28    138
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    1       34    138
6-24 months   ki1114097-CONTENT          PERU                           0                    0        1      5
6-24 months   ki1114097-CONTENT          PERU                           0                    1        2      5
6-24 months   ki1114097-CONTENT          PERU                           1                    0        1      5
6-24 months   ki1114097-CONTENT          PERU                           1                    1        1      5
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0      126    168
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1       41    168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0        1    168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1        0    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      859   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1       72   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      156   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1        9   1096
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0       90    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1        7    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       68    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1        1    166
6-24 months   ki1135781-COHORTS          INDIA                          0                    0      681    867
6-24 months   ki1135781-COHORTS          INDIA                          0                    1        0    867
6-24 months   ki1135781-COHORTS          INDIA                          1                    0      186    867
6-24 months   ki1135781-COHORTS          INDIA                          1                    1        0    867
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      417    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1      430    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       49    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       41    937
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0       21     75
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        5     75
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       41     75
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        8     75
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1716   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1121   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0   2837
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      771   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      151   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      519   1516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       75   1516


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/aebd93b9-605a-4a1a-a61e-b2ba7f382602/d3cd4fc7-e3a7-493f-bc0b-66dac527c5d9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aebd93b9-605a-4a1a-a61e-b2ba7f382602/d3cd4fc7-e3a7-493f-bc0b-66dac527c5d9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aebd93b9-605a-4a1a-a61e-b2ba7f382602/d3cd4fc7-e3a7-493f-bc0b-66dac527c5d9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aebd93b9-605a-4a1a-a61e-b2ba7f382602/d3cd4fc7-e3a7-493f-bc0b-66dac527c5d9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6420252   0.5409466   0.7431038
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.6333466   0.4557496   0.8109435
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.6438201   0.5517751   0.7358651
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4720698   0.3316898   0.6124498
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6436143   0.5787832   0.7084454
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5864947   0.4751529   0.6978364
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5926233   0.5362921   0.6489546
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5494724   0.3922813   0.7066634
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.5448457   0.4675239   0.6221674
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.4478368   0.3599107   0.5357629
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.4826663   0.3966583   0.5686742
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.3781002   0.2500035   0.5061968
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4244738   0.3811848   0.4677628
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2881872   0.2306763   0.3456980
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5375385   0.4808663   0.5942108
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4317410   0.3202995   0.5431824
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.5888607   0.5261921   0.6515293
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5335850   0.4012578   0.6659123
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6671337   0.6093386   0.7249287
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3628640   0.2301151   0.4956129
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6272299   0.5879702   0.6664895
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6235827   0.4867907   0.7603747
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.6302667   0.6052502   0.6552831
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4534131   0.3720315   0.5347946
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.6315789   0.4004047   0.8627532
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2631579   0.0627483   0.4635675
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0501247   0.0309828   0.0692666
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0361670   0.0161981   0.0561358
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5466627   0.5012294   0.5920959
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4952356   0.3769448   0.6135264
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6328230   0.5299953   0.7356508
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5126744   0.3853525   0.6399964
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.5626508   0.5456093   0.5796924
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3383360   0.2851634   0.3915086
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.2711827   0.2529109   0.2894546
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0592660   0.0361536   0.0823784
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6147560   0.5893971   0.6401149
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5200858   0.4300067   0.6101650
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1666667   0.0503410   0.2829923
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1632653   0.0532454   0.2732852
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4600570   0.4464399   0.4736741
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3393360   0.3202958   0.3583763
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2889880   0.2640238   0.3139523
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2027280   0.1731723   0.2322836
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6839961   0.6121718   0.7558204
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5506916   0.3910908   0.7102925
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.6426695   0.5766467   0.7086922
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6253809   0.4362638   0.8144980
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.5973438   0.4873994   0.7072882
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5045097   0.3585734   0.6504461
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.6704413   0.5667265   0.7741561
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4721720   0.3080163   0.6363277
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5719852   0.5098285   0.6341419
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3520551   0.2506339   0.4534763
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7227397   0.6584539   0.7870254
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6982857   0.5399891   0.8565822
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7839506   0.7210968   0.8468044
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7826087   0.6231615   0.9420559
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.7869723   0.7565758   0.8173688
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.5887968   0.4467445   0.7308491
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6061886   0.5430071   0.6693701
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5786557   0.3880013   0.7693102
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.5937500   0.4209755   0.7665245
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4000000   0.1832408   0.6167592
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7537611   0.7364386   0.7710836
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6506385   0.5730148   0.7282622
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.3849178   0.3611741   0.4086616
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1127123   0.0646362   0.1607883
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7406275   0.7085943   0.7726606
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6470486   0.4507327   0.8433645
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.6892447   0.6737943   0.7046951
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6361024   0.6095421   0.6626628
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5743767   0.5270408   0.6217127
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4976567   0.4172636   0.5780498
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4186047   0.2525200   0.5846893
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.6666667   0.5297459   0.8035874
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.6164384   0.4887155   0.7441613
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2727273   0.0467074   0.4987472
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5689602   0.4533848   0.6845356
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5354911   0.3870363   0.6839459
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5146111   0.4190628   0.6101593
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5033378   0.3224496   0.6842260
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.5078684   0.3980144   0.6177224
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.4314051   0.3336807   0.5291295
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.2500000   0.1425681   0.3574319
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2222222   0.0900359   0.3544086
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3053603   0.2519534   0.3587672
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2531598   0.1862251   0.3200944
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3209877   0.2478343   0.3941410
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2222222   0.0817786   0.3626658
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2680412   0.1773529   0.3587296
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3076923   0.1243422   0.4910424
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5608641   0.5059640   0.6157641
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4882238   0.3088389   0.6676086
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.5201866   0.4864004   0.5539728
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4037808   0.3168950   0.4906665
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.5333333   0.2503122   0.8163545
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.3846154   0.1100525   0.6591783
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0511741   0.0319521   0.0703960
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0366830   0.0169671   0.0563989
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5006936   0.4408040   0.5605831
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4280288   0.2857851   0.5702726
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6448820   0.5268985   0.7628655
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5531668   0.4156815   0.6906521
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0773362   0.0601772   0.0944952
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0545455   0.0213981   0.0876928
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5076383   0.4719569   0.5433198
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4620057   0.3534299   0.5705814
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1923077   0.0609669   0.3236484
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1632653   0.0538812   0.2726495
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1632339   0.1397495   0.1867182
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1259693   0.0999686   0.1519701


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6451613   0.5593015   0.7310211
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6077348   0.5286689   0.6868008
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.5046440   0.4456009   0.5636870
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4509804   0.3794254   0.5225353
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6269285   0.5892870   0.6645700
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.6105033   0.5863646   0.6346419
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4473684   0.2760904   0.6186464
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5396579   0.4973524   0.5819633
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5789474   0.5004470   0.6574477
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5432918   0.5268968   0.5596869
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2418325   0.2254819   0.2581831
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1645570   0.0832789   0.2458350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4221371   0.4110175   0.4332567
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2585790   0.2392503   0.2779077
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5669291   0.4800274   0.6538309
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.6194690   0.5292383   0.7096997
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.7720994   0.7419223   0.8022766
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5192308   0.3806687   0.6577929
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7475189   0.7305656   0.7644721
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3585746   0.3363886   0.3807606
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6751162   0.6617750   0.6884574
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5587703   0.5173487   0.6001920
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4918033   0.3610932   0.6225134
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4642857   0.3910729   0.5374985
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2417582   0.1565924   0.3269241
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5576407   0.5054408   0.6098407
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5045290   0.4730969   0.5359611
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4642857   0.2621560   0.6664155
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0439024   0.0298653   0.0579396
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4947368   0.4401559   0.5493178
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6014493   0.5131344   0.6897641
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0739051   0.0584895   0.0893208
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1733333   0.0886479   0.2580188
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1490765   0.1314900   0.1666630


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9864823   0.7144714   1.3620523
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.7332325   0.5269088   1.0203473
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9112518   0.7353358   1.1292526
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9271866   0.6858444   1.2534547
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                 0.8219517   0.6447568   1.0478442
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 0.7833573   0.5360839   1.1446878
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.6789280   0.5426058   0.8494992
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8031814   0.6077011   1.0615423
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9061312   0.6910390   1.1881729
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.5439150   0.3735407   0.7919982
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9941853   0.7913871   1.2489520
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.7193987   0.5988899   0.8641564
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 0.4166667   0.1790304   0.9697297
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 0.7215398   0.3693886   1.4094089
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9059254   0.7031974   1.1670988
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.8101387   0.6013235   1.0914669
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.6013249   0.5124266   0.7056457
0-24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          1                    0                 0.2185463   0.1471413   0.3246029
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8460037   0.7081660   1.0106701
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 0.9795918   0.3712732   2.5846201
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.7375956   0.6922736   0.7858847
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.7015099   0.5924233   0.8306833
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8051093   0.5915795   1.0957125
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.9730988   0.7059904   1.3412666
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 0.8445886   0.5984588   1.1919448
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 0.7042705   0.4840574   1.0246656
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.6154968   0.4524110   0.8373721
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.9661649   0.7570135   1.2331015
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9982883   0.8019814   1.2426466
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                 0.7481798   0.5863549   0.9546659
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9545804   0.6755757   1.3488106
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 0.6736842   0.3642094   1.2461249
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8631893   0.7644397   0.9746952
0-6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          1                    0                 0.2928216   0.1902824   0.4506169
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8736492   0.6430370   1.1869658
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9228978   0.8802233   0.9676413
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.8664291   0.7248007   1.0357321
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.5925926   1.0196130   2.4875627
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.4424242   0.1883842   1.0390426
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9411749   0.6682347   1.3255975
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9780937   0.6512810   1.4689010
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                 0.8494427   0.6211936   1.1615589
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 0.8888889   0.4264731   1.8526924
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.8290527   0.6039053   1.1381393
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.6923077   0.3535289   1.3557305
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1479290   0.5784746   2.2779584
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8704850   0.5950674   1.2733752
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.7762229   0.6201418   0.9715875
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 0.7211538   0.2958093   1.7581017
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 0.7168285   0.3725330   1.3793223
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8548719   0.6002314   1.2175404
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.8577798   0.6293709   1.1690822
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.7053030   0.3693268   1.3469166
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9101079   0.7120356   1.1632795
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 0.8489796   0.3261270   2.2100785
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.7717108   0.5998896   0.9927454


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0031361   -0.0419177    0.0481898
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0360853   -0.0745313    0.0023608
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0139847   -0.0444907    0.0165214
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0027499   -0.0237250    0.0182252
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0402017   -0.0953067    0.0149033
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0316859   -0.0785234    0.0151516
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0436384   -0.0671419   -0.0201350
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0173485   -0.0391764    0.0044794
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0076918   -0.0305071    0.0151234
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0445530   -0.0673637   -0.0217423
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003014   -0.0121903    0.0115875
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0197634   -0.0294822   -0.0100447
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.1842105   -0.3548689   -0.0135521
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0062223   -0.0175644    0.0051199
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0070048   -0.0255061    0.0114965
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0538757   -0.1260624    0.0183111
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0193590   -0.0246006   -0.0141173
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0293502   -0.0344150   -0.0242854
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0078880   -0.0147585   -0.0010175
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0021097   -0.1014388    0.0972194
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0379199   -0.0454566   -0.0303832
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0304090   -0.0443149   -0.0165031
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0123543   -0.0471778    0.0224692
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0051695   -0.0273198    0.0169809
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0304147   -0.1014336    0.0406042
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0509723   -0.1110651    0.0091206
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0587887   -0.0920556   -0.0255219
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0097352   -0.0372515    0.0177811
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0001668   -0.0214738    0.0211401
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0148728   -0.0253553   -0.0043904
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0016258   -0.0232124    0.0199607
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0745192   -0.1852886    0.0362501
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0062423   -0.0109788   -0.0015057
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0263432   -0.0328349   -0.0198516
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0039253   -0.0114735    0.0036229
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0141286   -0.0223957   -0.0058614
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0156064   -0.0395861    0.0083733
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0731986   -0.0009247    0.1473219
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0795963   -0.1465625   -0.0126300
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0079846   -0.0690583    0.0530891
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0015180   -0.0368466    0.0398826
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0435827   -0.1204053    0.0332399
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0082418   -0.0590999    0.0426164
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0199480   -0.0499608    0.0100648
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0179574   -0.0476357    0.0117210
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0083815   -0.0348405    0.0516035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032233   -0.0224520    0.0160054
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0156576   -0.0284664   -0.0028488
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0690476   -0.2585251    0.1204298
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0072716   -0.0187282    0.0041849
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0059567   -0.0313509    0.0194375
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0434328   -0.1252116    0.0383461
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0034311   -0.0090795    0.0022173
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0049702   -0.0158265    0.0058861
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0189744   -0.1308691    0.0929204
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0141573   -0.0279697   -0.0003450


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0048609   -0.0675573    0.0723666
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0593767   -0.1240620    0.0015863
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0222109   -0.0717974    0.0250814
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0046619   -0.0408576    0.0302752
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0796635   -0.1958682    0.0252494
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0702600   -0.1798283    0.0291329
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1145861   -0.1783758   -0.0542496
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0333503   -0.0760391    0.0076449
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0132351   -0.0531811    0.0251957
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0715618   -0.1096578   -0.0347737
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004807   -0.0196259    0.0183049
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0323723   -0.0486082   -0.0163878
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.4117647   -0.9077869   -0.0447077
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.1417296   -0.4293537    0.0880169
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0129801   -0.0479114    0.0207868
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0930580   -0.2268384    0.0261344
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0356328   -0.0454228   -0.0259344
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1213659   -0.1420767   -0.1010306
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0129980   -0.0244022   -0.0017207
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0128205   -0.8402175    0.4425630
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0898284   -0.1079168   -0.0720354
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1176004   -0.1724821   -0.0652877
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0183942   -0.0717825    0.0323347
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0081090   -0.0434755    0.0260589
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0536481   -0.1873519    0.0649998
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0822838   -0.1857678    0.0121690
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1145540   -0.1828378   -0.0502122
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0136538   -0.0530631    0.0242807
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0002129   -0.0277699    0.0266053
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0192628   -0.0330672   -0.0056429
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0026893   -0.0390429    0.0323925
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.1435185   -0.3845587    0.0555586
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0083506   -0.0147214   -0.0020198
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0734665   -0.0918321   -0.0554098
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0053282   -0.0156425    0.0048813
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0209276   -0.0332684   -0.0087342
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0279299   -0.0718598    0.0141995
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1488372   -0.0337380    0.2991666
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1482675   -0.2872539   -0.0242877
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0142334   -0.1289506    0.0888269
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0029411   -0.0742827    0.0746138
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0938704   -0.2720402    0.0593438
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0340909   -0.2649033    0.1546041
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0698919   -0.1800122    0.0299518
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0592593   -0.1620039    0.0344007
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0303214   -0.1392634    0.1746627
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0057803   -0.0408873    0.0281426
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0310341   -0.0568381   -0.0058601
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.1487179   -0.6420119    0.1963804
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.1656317   -0.4563383    0.0670456
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0120402   -0.0647296    0.0380419
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0722135   -0.2181203    0.0562166
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0464256   -0.1248808    0.0265577
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0098877   -0.0317181    0.0114808
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.1094675   -1.0014729    0.3849939
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0949670   -0.1910972   -0.0065951
