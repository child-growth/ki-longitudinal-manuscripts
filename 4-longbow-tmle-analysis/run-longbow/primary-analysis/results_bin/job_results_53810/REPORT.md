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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        enstunt    ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      193     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       24     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       31     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       15     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      201     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       29     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        2     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                0      174     251
0-24 months   ki0047075b-MAL-ED          INDIA                          0                1       36     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                0       23     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                1       18     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                0      201     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                1       10     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                1       12     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                0      260     302
0-24 months   ki0047075b-MAL-ED          PERU                           0                1        6     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                0       30     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                1        6     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      257     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       17     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       32     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        6     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      203     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       16     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       35     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        7     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      248     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       48     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       39     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       38     373
0-24 months   ki1000108-IRC              INDIA                          0                0      305     410
0-24 months   ki1000108-IRC              INDIA                          0                1       53     410
0-24 months   ki1000108-IRC              INDIA                          1                0       29     410
0-24 months   ki1000108-IRC              INDIA                          1                1       23     410
0-24 months   ki1000109-EE               PAKISTAN                       0                0      141     379
0-24 months   ki1000109-EE               PAKISTAN                       0                1       72     379
0-24 months   ki1000109-EE               PAKISTAN                       1                0       68     379
0-24 months   ki1000109-EE               PAKISTAN                       1                1       98     379
0-24 months   ki1000109-ResPak           PAKISTAN                       0                0      187     284
0-24 months   ki1000109-ResPak           PAKISTAN                       0                1       15     284
0-24 months   ki1000109-ResPak           PAKISTAN                       1                0       55     284
0-24 months   ki1000109-ResPak           PAKISTAN                       1                1       27     284
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                0      912    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                1      177    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0      250    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1      174    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                0      189     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                1       68     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       74     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1       87     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      435     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1       93     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       52     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       44     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      570     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       63     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       40     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       27     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      612     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       41     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0       75     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       30     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     2143    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       90    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      134    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       29    2396
0-24 months   ki1101329-Keneba           GAMBIA                         0                0     2257    2913
0-24 months   ki1101329-Keneba           GAMBIA                         0                1      326    2913
0-24 months   ki1101329-Keneba           GAMBIA                         1                0      224    2913
0-24 months   ki1101329-Keneba           GAMBIA                         1                1      106    2913
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                0      230     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                1        9     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       62     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1       14     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                0     2431    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                1      102    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      427    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1      305    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      425     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                1      150     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       59     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       52     686
0-24 months   ki1114097-CMIN             BANGLADESH                     0                0      125     271
0-24 months   ki1114097-CMIN             BANGLADESH                     0                1       43     271
0-24 months   ki1114097-CMIN             BANGLADESH                     1                0       54     271
0-24 months   ki1114097-CMIN             BANGLADESH                     1                1       49     271
0-24 months   ki1114097-CONTENT          PERU                           0                0      195     215
0-24 months   ki1114097-CONTENT          PERU                           0                1        2     215
0-24 months   ki1114097-CONTENT          PERU                           1                0       16     215
0-24 months   ki1114097-CONTENT          PERU                           1                1        2     215
0-24 months   ki1119695-PROBIT           BELARUS                        0                0    16715   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0                1       27   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                0      155   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                1        0   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12121   13942
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      401   13942
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1230   13942
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      190   13942
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                0      934    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                1       91    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                0      266    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                1       58    1349
0-24 months   ki1135781-COHORTS          INDIA                          0                0     6095    7402
0-24 months   ki1135781-COHORTS          INDIA                          0                1      393    7402
0-24 months   ki1135781-COHORTS          INDIA                          1                0      645    7402
0-24 months   ki1135781-COHORTS          INDIA                          1                1      269    7402
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     2382    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                1      485    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      103    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       75    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         0                0      523     840
0-24 months   ki1148112-LCNI-5           MALAWI                         0                1        8     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                0      274     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                1       35     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0    17622   26923
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      748   26923
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     6909   26923
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1644   26923
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     3508    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      378    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     1056    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      500    5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      216     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       38     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        8     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      202     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       30     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        1     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                0      204     251
0-6 months    ki0047075b-MAL-ED          INDIA                          0                1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                0       28     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                1       13     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                0      211     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                1        8     240
0-6 months    ki0047075b-MAL-ED          PERU                           0                0      266     302
0-6 months    ki0047075b-MAL-ED          PERU                           0                1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                0       34     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                1        2     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      274     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       33     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        5     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      217     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        2     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       40     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        2     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      283     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       54     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       22     368
0-6 months    ki1000108-IRC              INDIA                          0                0      346     409
0-6 months    ki1000108-IRC              INDIA                          0                1       12     409
0-6 months    ki1000108-IRC              INDIA                          1                0       38     409
0-6 months    ki1000108-IRC              INDIA                          1                1       13     409
0-6 months    ki1000109-EE               PAKISTAN                       0                0      195     379
0-6 months    ki1000109-EE               PAKISTAN                       0                1       18     379
0-6 months    ki1000109-EE               PAKISTAN                       1                0      127     379
0-6 months    ki1000109-EE               PAKISTAN                       1                1       39     379
0-6 months    ki1000109-ResPak           PAKISTAN                       0                0      200     282
0-6 months    ki1000109-ResPak           PAKISTAN                       0                1        2     282
0-6 months    ki1000109-ResPak           PAKISTAN                       1                0       65     282
0-6 months    ki1000109-ResPak           PAKISTAN                       1                1       15     282
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0     1053    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1       35    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      345    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       71    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      257     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        0     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      127     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       32     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      515     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1       13     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       62     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       32     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      622     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1       11     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       48     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       19     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      652     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0       89     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       16     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     2224    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        9    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      153    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       10    2396
0-6 months    ki1101329-Keneba           GAMBIA                         0                0     2184    2462
0-6 months    ki1101329-Keneba           GAMBIA                         0                1       40    2462
0-6 months    ki1101329-Keneba           GAMBIA                         1                0      208    2462
0-6 months    ki1101329-Keneba           GAMBIA                         1                1       30    2462
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      221     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1        2     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0       66     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        6     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      559     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                1       16     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       91     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       20     686
0-6 months    ki1114097-CMIN             BANGLADESH                     0                0      165     271
0-6 months    ki1114097-CMIN             BANGLADESH                     0                1        3     271
0-6 months    ki1114097-CMIN             BANGLADESH                     1                0       91     271
0-6 months    ki1114097-CMIN             BANGLADESH                     1                1       12     271
0-6 months    ki1114097-CONTENT          PERU                           0                0      197     215
0-6 months    ki1114097-CONTENT          PERU                           0                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           1                0       18     215
0-6 months    ki1114097-CONTENT          PERU                           1                1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        0                0    16721   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0                1       19   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                0      153   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                1        0   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12436   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1       59   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1243   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      108   13846
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                0      906    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                1       17    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                0      136    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                1        4    1063
0-6 months    ki1135781-COHORTS          INDIA                          0                0     6237    7127
0-6 months    ki1135781-COHORTS          INDIA                          0                1       48    7127
0-6 months    ki1135781-COHORTS          INDIA                          1                0      705    7127
0-6 months    ki1135781-COHORTS          INDIA                          1                1      137    7127
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2815    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                1       52    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                0      157    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                1       20    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         0                0      175     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                0       97     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    18194   26816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      131   26816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     7558   26816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      933   26816
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3640    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       15    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     1317    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      120    5092
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      177     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       24     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       27     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       11     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      181     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       24     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          0                0      163     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                1       34     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                0       25     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                1       13     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                0      197     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                1       10     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       22     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        6     235
6-24 months   ki0047075b-MAL-ED          PERU                           0                0      230     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                1        6     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                0       29     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                1        5     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      214     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       17     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       25     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        3     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      190     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       16     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       34     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        5     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      253     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       43     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       50     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       27     373
6-24 months   ki1000108-IRC              INDIA                          0                0      312     410
6-24 months   ki1000108-IRC              INDIA                          0                1       46     410
6-24 months   ki1000108-IRC              INDIA                          1                0       34     410
6-24 months   ki1000108-IRC              INDIA                          1                1       18     410
6-24 months   ki1000109-EE               PAKISTAN                       0                0      142     372
6-24 months   ki1000109-EE               PAKISTAN                       0                1       67     372
6-24 months   ki1000109-EE               PAKISTAN                       1                0       74     372
6-24 months   ki1000109-EE               PAKISTAN                       1                1       89     372
6-24 months   ki1000109-ResPak           PAKISTAN                       0                0      155     236
6-24 months   ki1000109-ResPak           PAKISTAN                       0                1       14     236
6-24 months   ki1000109-ResPak           PAKISTAN                       1                0       50     236
6-24 months   ki1000109-ResPak           PAKISTAN                       1                1       17     236
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                0      841    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                1      165    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0      234    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1      149    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                0      176     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                1       68     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       80     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1       77     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      371     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1       85     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       57     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       29     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      495     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       57     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       44     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       18     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      586     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       41     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0       81     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       22     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1791    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       88    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      113    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       25    2017
6-24 months   ki1101329-Keneba           GAMBIA                         0                0     2115    2735
6-24 months   ki1101329-Keneba           GAMBIA                         0                1      314    2735
6-24 months   ki1101329-Keneba           GAMBIA                         1                0      218    2735
6-24 months   ki1101329-Keneba           GAMBIA                         1                1       88    2735
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                0      203     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                1        8     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       56     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1       10     277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                0     2431    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                1      102    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      427    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1      305    3265
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      346     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                1      148     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       52     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       44     590
6-24 months   ki1114097-CMIN             BANGLADESH                     0                0      115     251
6-24 months   ki1114097-CMIN             BANGLADESH                     0                1       43     251
6-24 months   ki1114097-CMIN             BANGLADESH                     1                0       50     251
6-24 months   ki1114097-CMIN             BANGLADESH                     1                1       43     251
6-24 months   ki1114097-CONTENT          PERU                           0                0      195     215
6-24 months   ki1114097-CONTENT          PERU                           0                1        2     215
6-24 months   ki1114097-CONTENT          PERU                           1                0       16     215
6-24 months   ki1114097-CONTENT          PERU                           1                1        2     215
6-24 months   ki1119695-PROBIT           BELARUS                        0                0    16449   16598
6-24 months   ki1119695-PROBIT           BELARUS                        0                1        9   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                0      140   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                1        0   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0     9315   10813
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      354   10813
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1054   10813
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       90   10813
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                0      828    1218
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                1       81    1218
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                0      254    1218
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                1       55    1218
6-24 months   ki1135781-COHORTS          INDIA                          0                0     5720    6938
6-24 months   ki1135781-COHORTS          INDIA                          0                1      381    6938
6-24 months   ki1135781-COHORTS          INDIA                          1                0      641    6938
6-24 months   ki1135781-COHORTS          INDIA                          1                1      196    6938
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     2173    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                1      472    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                0       99    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       64    2808
6-24 months   ki1148112-LCNI-5           MALAWI                         0                0      510     826
6-24 months   ki1148112-LCNI-5           MALAWI                         0                1        8     826
6-24 months   ki1148112-LCNI-5           MALAWI                         1                0      273     826
6-24 months   ki1148112-LCNI-5           MALAWI                         1                1       35     826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0    11360   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      640   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4418   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      862   17280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     3506    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      370    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     1121    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      432    5429


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
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/a0650ea0-c65c-4c48-8fd8-6864c026d0c8/858116e2-6a66-4586-9b48-93c8771acba0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a0650ea0-c65c-4c48-8fd8-6864c026d0c8/858116e2-6a66-4586-9b48-93c8771acba0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a0650ea0-c65c-4c48-8fd8-6864c026d0c8/858116e2-6a66-4586-9b48-93c8771acba0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a0650ea0-c65c-4c48-8fd8-6864c026d0c8/858116e2-6a66-4586-9b48-93c8771acba0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1109579   0.0689876   0.1529283
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3130286   0.1701754   0.4558818
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1733442   0.1218973   0.2247911
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4214733   0.2657961   0.5771505
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0474409   0.0186405   0.0762413
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.4094928   0.2201126   0.5988731
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0225564   0.0046830   0.0404298
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1666667   0.0447254   0.2886080
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0620438   0.0334343   0.0906533
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1578947   0.0417712   0.2740183
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0730594   0.0385272   0.1075915
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1666667   0.0537415   0.2795918
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1643895   0.1220601   0.2067189
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4890223   0.3739686   0.6040759
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1494245   0.1124212   0.1864279
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4157547   0.2848255   0.5466839
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3434461   0.2792328   0.4076595
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.5797473   0.5051426   0.6543519
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0726409   0.0368556   0.1084262
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.3275928   0.2219785   0.4332072
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1618190   0.1317969   0.1918411
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4112776   0.3282340   0.4943213
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2652125   0.2112508   0.3191741
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5400115   0.4621682   0.6178548
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1757868   0.1432545   0.2083192
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4414763   0.3443534   0.5385991
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0993729   0.0760201   0.1227257
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4070418   0.2904246   0.5236589
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0628203   0.0441989   0.0814418
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3078499   0.2206383   0.3950616
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0404351   0.0322768   0.0485934
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1698263   0.1105455   0.2291071
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1255132   0.1127318   0.1382945
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3391506   0.2871720   0.3911292
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0376569   0.0134841   0.0618297
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1842105   0.0969178   0.2715032
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0409394   0.0302624   0.0516164
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4037974   0.2949480   0.5126467
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2606391   0.2247255   0.2965526
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4729207   0.3740703   0.5717711
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2543359   0.1876354   0.3210364
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4665896   0.3684120   0.5647671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0320534   0.0289664   0.0351405
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1327218   0.1146283   0.1508152
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0878173   0.0705000   0.1051346
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1854938   0.1428660   0.2281216
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0606037   0.0548021   0.0664054
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2934293   0.2639954   0.3228633
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1692907   0.1555597   0.1830217
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4245933   0.3523162   0.4968704
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0150659   0.0046987   0.0254331
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1132686   0.0779114   0.1486258
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0408689   0.0377716   0.0439661
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1910046   0.1819028   0.2001064
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0974325   0.0867343   0.1081306
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3200543   0.2935517   0.3465570
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0285714   0.0059939   0.0511490
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.3170732   0.1743515   0.4597948
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0308219   0.0109711   0.0506728
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2894737   0.1873734   0.3915739
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.0345165   0.0158117   0.0532214
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.2145775   0.0959490   0.3332060
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0853821   0.0480047   0.1227594
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.2277642   0.1629128   0.2926156
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0326563   0.0169856   0.0483270
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1758553   0.1027526   0.2489581
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0248777   0.0115800   0.0381753
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3263291   0.2310760   0.4215822
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0173870   0.0072091   0.0275648
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2791917   0.1690917   0.3892916
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0040305   0.0014020   0.0066589
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0613497   0.0245026   0.0981968
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0178746   0.0123623   0.0233869
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1430440   0.0966243   0.1894637
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0277111   0.0142645   0.0411577
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1759432   0.1061648   0.2457216
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0047150   0.0035138   0.0059163
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0805180   0.0657059   0.0953301
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0076243   0.0054720   0.0097765
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1647990   0.1397238   0.1898742
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0181543   0.0132675   0.0230410
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1149867   0.0655235   0.1644498
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0071848   0.0059147   0.0084548
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1086596   0.1015779   0.1157412
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0041069   0.0018429   0.0063710
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0830229   0.0659666   0.1000791
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1192560   0.0742914   0.1642207
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2871076   0.1381310   0.4360841
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1737212   0.1208378   0.2266046
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3599208   0.1986781   0.5211636
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0483092   0.0190372   0.0775811
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2142857   0.0619773   0.3665942
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0254237   0.0053038   0.0455436
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1470588   0.0277921   0.2663256
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0776699   0.0410454   0.1142944
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1282051   0.0230661   0.2333441
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1472671   0.1066626   0.1878717
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3485137   0.2414996   0.4555278
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1296670   0.0947503   0.1645836
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3407746   0.2069609   0.4745884
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3270790   0.2630297   0.3911283
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.5405940   0.4641526   0.6170354
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0794182   0.0387196   0.1201169
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2597248   0.1517068   0.3677428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1624756   0.1357631   0.1891880
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3904794   0.3158898   0.4650689
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2834655   0.2269696   0.3399615
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5003294   0.4215462   0.5791126
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1871844   0.1513981   0.2229707
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3400394   0.2395243   0.4405545
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1034952   0.0780522   0.1289381
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2943597   0.1804830   0.4082363
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0652774   0.0458947   0.0846600
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2011240   0.1202221   0.2820260
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0469865   0.0374322   0.0565409
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1771408   0.1124364   0.2418453
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1287918   0.1154584   0.1421251
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2962284   0.2442592   0.3481977
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0379147   0.0120979   0.0637315
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1515152   0.0648566   0.2381737
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0409806   0.0302959   0.0516652
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4042634   0.2991364   0.5093904
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.3008247   0.2604105   0.3412388
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4521871   0.3518268   0.5525473
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2702550   0.2001484   0.3403617
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4587536   0.3551231   0.5623841
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0366770   0.0329287   0.0404252
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0771743   0.0614636   0.0928851
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0889184   0.0704039   0.1074329
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1812484   0.1375663   0.2249305
6-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0624296   0.0563619   0.0684973
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2344562   0.2059826   0.2629299
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1784484   0.1638470   0.1930499
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3931446   0.3188896   0.4673995
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0154440   0.0048186   0.0260694
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1136364   0.0781713   0.1491014
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0533480   0.0489405   0.0577555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1635623   0.1528905   0.1742342
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0954157   0.0847935   0.1060378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2773912   0.2529410   0.3018414


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2151394   0.1642023   0.2660766
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0916667   0.0550838   0.1282495
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0397351   0.0176679   0.0618023
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0737179   0.0446760   0.1027599
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0881226   0.0536659   0.1225793
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4485488   0.3984116   0.4986861
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1478873   0.1065284   0.1892462
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0496661   0.0409652   0.0583670
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1483007   0.1353925   0.1612090
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0730159   0.0442400   0.1017917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1246554   0.1041227   0.1451882
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2944606   0.2603274   0.3285938
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3394834   0.2830004   0.3959663
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0423899   0.0390454   0.0457344
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1104522   0.0937191   0.1271852
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0894353   0.0829338   0.0959368
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0511905   0.0362780   0.0661030
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0888460   0.0849398   0.0927521
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1613377   0.1500063   0.1726692
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0756972   0.0429084   0.1084860
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.1503958   0.1143605   0.1864311
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0079299   0.0043777   0.0114821
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0284322   0.0218657   0.0349987
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0524781   0.0357793   0.0691770
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120612   0.0102430   0.0138795
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0259576   0.0222658   0.0296495
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0396778   0.0371765   0.0421791
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0265122   0.0211694   0.0318550
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0680851   0.0358110   0.1003592
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0407407   0.0171167   0.0643648
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0857143   0.0505889   0.1208396
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4193548   0.3691429   0.4695668
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1313559   0.0881682   0.1745436
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0560238   0.0459853   0.0660623
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1469835   0.1337108   0.1602563
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0649819   0.0359016   0.0940623
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1246554   0.1041227   0.1451882
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3254237   0.2875855   0.3632619
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3426295   0.2837999   0.4014590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0410617   0.0373214   0.0448020
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1116585   0.0939639   0.1293530
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0831652   0.0766672   0.0896632
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0520581   0.0368996   0.0672166
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0869213   0.0822621   0.0915805
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1477252   0.1371297   0.1583206


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  2.821146    1.5562705    5.114064
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  2.431424    1.5095532    3.916274
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  8.631642    4.0149920   18.556758
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  7.388889    2.5129690   21.725568
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  2.544892    1.0682645    6.062612
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  2.281250    0.9986000    5.211397
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.974778    2.0989880    4.215985
0-24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                  2.782372    1.8678759    4.144598
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                  1.688030    1.3460843    2.116839
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                  4.509758    2.5008937    8.132258
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  2.541590    2.1798108    2.963414
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  2.036147    1.5870780    2.612281
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  2.511430    1.8820907    3.351209
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  4.096104    2.8312877    5.925951
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.900482    3.2513417    7.386097
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  4.199974    2.8067450    6.284782
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.702111    2.2484232    3.247345
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  4.891813    2.2026861   10.863933
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  9.863298    6.7555674   14.400662
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  1.814466    1.4134825    2.329203
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.834541    1.3099916    2.569132
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.140642    3.5041923    4.892686
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  2.112270    1.5634027    2.853830
0-24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          1                    0                  4.841770    4.2161503    5.560223
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.508073    2.0779033    3.027296
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  7.518204    3.5314685   16.005633
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.673599    4.2928873    5.088074
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.284883    2.8689877    3.761068
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 11.097561    4.4696202   27.553987
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  9.391813    4.5065543   19.572858
0-6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                  6.216656    2.8738792   13.447610
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                  2.667589    1.5844116    4.491277
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  5.385040    3.2149346    9.019984
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 13.117359    7.1365215   24.110501
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 16.057522    7.9323755   32.505269
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 15.221541    6.2722592   36.939688
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                  8.002643    5.1188483   12.511076
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  6.349198    3.3899038   11.891877
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 17.076888   12.4717954   23.382369
0-6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          1                    0                 21.615088   15.6855118   29.786214
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  6.333862    3.8123994   10.522980
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 15.123635   12.5453514   18.231800
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 20.215215   11.2618094   36.286790
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  2.407489    1.2669079    4.574921
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  2.071830    1.2038524    3.565620
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  4.435714    1.7431481   11.287372
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  5.784314    1.8626489   17.962743
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  1.650641    0.6409384    4.250979
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.366541    1.5691631    3.569110
6-24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                  2.628076    1.6358521    4.222133
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                  1.652793    1.2987804    2.103300
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                  3.270342    1.6890539    6.332029
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  2.403311    2.0363769    2.836363
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  1.765045    1.3682154    2.276969
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.816602    1.2779596    2.582274
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  2.844188    1.8014968    4.490380
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  3.081069    1.8695082    5.077797
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  3.770036    2.4822824    5.725846
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.300057    1.8762420    2.819606
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  3.996212    1.6422918    9.724040
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  9.864753    6.8453166   14.216049
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  1.503158    1.1605971    1.946829
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.697484    1.2019764    2.397262
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.104163    1.6757542    2.642094
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  2.038369    1.4848985    2.798135
6-24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          1                    0                  3.755533    3.2159446    4.385655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.203127    1.7942268    2.705214
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  7.357954    3.4566776   15.662292
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.065949    2.7674605    3.396632
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  2.907188    2.5247262    3.347587


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0373310    0.0104223   0.0642398
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0417952    0.0127484   0.0708421
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0442258    0.0174417   0.0710098
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0171787    0.0015689   0.0327885
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0116742   -0.0033029   0.0266512
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0150632   -0.0043938   0.0345203
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0661735    0.0379765   0.0943704
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.0359413    0.0160175   0.0558651
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1051027    0.0604042   0.1498012
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0752464    0.0410380   0.1094548
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0701704    0.0521567   0.0881841
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1056009    0.0670778   0.1441240
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0437645    0.0256951   0.0618338
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0291985    0.0160202   0.0423769
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0308472    0.0173947   0.0442997
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0092310    0.0049758   0.0134863
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0227875    0.0164702   0.0291049
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0353590    0.0124312   0.0582868
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0837161    0.0649609   0.1024712
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0338216    0.0165966   0.0510465
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0851475    0.0383690   0.1319260
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0103365    0.0084355   0.0122374
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0226349    0.0116868   0.0335830
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0288316    0.0247380   0.0329251
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0146174    0.0098656   0.0193691
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0361246    0.0221970   0.0500522
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0479771    0.0448488   0.0511054
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0639053    0.0553831   0.0724275
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0471258    0.0200723   0.0741792
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0534172    0.0294136   0.0774209
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.0266081    0.0101357   0.0430806
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0650137    0.0316334   0.0983941
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0378225    0.0208005   0.0548444
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0474696    0.0303827   0.0645565
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0254702    0.0135938   0.0373466
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0038994    0.0013207   0.0064781
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0105576    0.0062566   0.0148585
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0247670    0.0122268   0.0373072
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0073462    0.0058821   0.0088103
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0183334    0.0151561   0.0215106
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0054988    0.0026554   0.0083422
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0324931    0.0301380   0.0348481
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0224052    0.0173073   0.0275032
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0271875    0.0019134   0.0524616
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0262788   -0.0008682   0.0534257
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0197759    0.0000540   0.0394979
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0153170   -0.0006592   0.0312932
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080444   -0.0098296   0.0259183
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0404004    0.0154987   0.0653022
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.0264306    0.0082414   0.0446198
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0922758    0.0474254   0.1371262
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0519377    0.0185582   0.0853172
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0635863    0.0463623   0.0808104
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0781305    0.0388720   0.1173890
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0231477    0.0057794   0.0405161
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0186547    0.0062697   0.0310396
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0210240    0.0089449   0.0331031
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0090373    0.0043673   0.0137073
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0181918    0.0120054   0.0243782
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0270673    0.0047788   0.0493557
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0836748    0.0650475   0.1023022
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0245991    0.0063701   0.0428280
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0723745    0.0247824   0.1199665
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0043847    0.0026715   0.0060979
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0227401    0.0107731   0.0347071
6-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0207356    0.0169862   0.0244850
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0124347    0.0076901   0.0171794
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0366141    0.0224339   0.0507942
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0335733    0.0300562   0.0370903
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0523095    0.0445111   0.0601079


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2517452    0.0607289   0.4039152
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1942704    0.0526442   0.3147241
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.4824629    0.1957793   0.6669513
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4323308    0.0107995   0.6742336
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1583624   -0.0606925   0.3321780
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1709351   -0.0708039   0.3581004
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2870083    0.1619056   0.3934368
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1938939    0.0841412   0.2904943
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.2343172    0.1265616   0.3287790
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5088092    0.2751768   0.6671348
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3024725    0.2463262   0.3544360
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2847819    0.1742363   0.3805287
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1993360    0.1158840   0.2749109
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2270997    0.1257224   0.3167217
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3293266    0.1900991   0.4446200
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1858618    0.1021646   0.2617566
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1536576    0.1115093   0.1938064
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.4842641    0.1540456   0.6855818
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.6715796    0.5811758   0.7424696
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1148595    0.0548500   0.1710588
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2508150    0.1007681   0.3758249
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2438427    0.2019030   0.2835785
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2049296    0.1035205   0.2948673
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.3223734    0.2808813   0.3614713
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0794819    0.0536734   0.1045866
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7056891    0.4538749   0.8413937
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5400033    0.5118550   0.5665284
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3960962    0.3467880   0.4416823
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.6225564    0.2796741   0.8022233
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6341140    0.3743864   0.7860140
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.4353093    0.1736533   0.6141140
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.4322843    0.1904769   0.6018629
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5366506    0.3349567   0.6771750
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6561356    0.4632155   0.7797203
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.5943040    0.3562763   0.7443170
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4917388    0.1849308   0.6830582
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.3713248    0.2317377   0.4855501
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4719498    0.2440085   0.6311638
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6090762    0.5203751   0.6813731
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.7062806    0.6257988   0.7694527
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2324775    0.1162296   0.3334346
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.8189227    0.7865364   0.8463953
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8450920    0.7385528   0.9082167
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1856517    0.0015969   0.3357761
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1313939   -0.0123562   0.2547322
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2904589   -0.0216670   0.5072283
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3759630   -0.0586014   0.6321353
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0938511   -0.1368976   0.2777663
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2152766    0.0764332   0.3332471
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1693211    0.0490877   0.2743521
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.2200423    0.1045801   0.3206159
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.3953967    0.1211023   0.5840868
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2812785    0.2223041   0.3357806
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2160712    0.1003892   0.3168776
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1100533    0.0246984   0.1879382
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1527197    0.0493747   0.2448297
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2436115    0.1021109   0.3628127
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1613116    0.0789283   0.2363263
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1237675    0.0817244   0.1638857
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.4165350    0.0363123   0.6467410
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.6712491    0.5815937   0.7416932
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0755909    0.0179952   0.1298085
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2112324    0.0599673   0.3381568
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1067832    0.0651822   0.1465330
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2036575    0.0933425   0.3005503
6-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.2493305    0.2068134   0.2895686
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0651432    0.0402096   0.0894291
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7033312    0.4495815   0.8400992
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3862492    0.3488668   0.4214854
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3541003    0.3026110   0.4017880
