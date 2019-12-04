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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** enwast

**Adjustment Set:**

* arm
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

agecat                       studyid                    country                        enwast    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    0       81     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    1       98     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0       22     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    1       16     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                    0      163     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                    1       31     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                    0        5     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0       76     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    1       98     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0       23     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    1       13     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0      139     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    1       45     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0       17     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    1       10     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                    0      113     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                    1      148     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    0        2     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    1        3     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      124     275
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1      131     275
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     275
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        6     275
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       40     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      178     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     219
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       22     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      200     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        6     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       68     296
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0      103     354
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    1      140     354
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0       42     354
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    1       69     354
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0       38     213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    1      144     213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0        3     213
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    1       28     213
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0       79     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    1       84     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0       18     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    1       21     202
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0      428    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    1      544    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0       45    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    1       73    1090
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       62     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1      149     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       10     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       36     257
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    0      142     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    1      233     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    0       69     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    1       86     530
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      317     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    1      185     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0       78     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    1       53     633
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      295     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      190     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      101     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       67     653
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1473    2228
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      621    2228
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       90    2228
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       44    2228
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0     1185    2572
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    1      919    2572
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0      221    2572
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    1      247    2572
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      147     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       91     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        1     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     239
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     1857    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      369    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      225    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       82    2533
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0      197     575
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    1      254     575
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0       54     575
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    1       70     575
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    0       35     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    1      120     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    0        6     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    1        7     168
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                    0      151     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                    1       45     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                    0        1     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                    1        0     197
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    0    11325   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    1     2207   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    0     2742   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    1      468   16742
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     6971   12506
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     3386   12506
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1169   12506
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      980   12506
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    0      237     971
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    1      533     971
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    0       57     971
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    1      144     971
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0     3848    6492
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    1     1481    6492
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0      816    6492
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    1      347    6492
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    0      787    2831
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    1     1593    2831
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    0      162    2831
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    1      289    2831
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                    0      302     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                    1      221     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                    0        3     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                    1        5     531
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0    12244   18370
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     4053   18370
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1492   18370
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      581   18370
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     2092    3884
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1     1463    3884
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      185    3884
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      144    3884
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0      139     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    1       40     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0       31     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    1        7     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                    0      173     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                    1       21     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                    0        6     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0      134     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    1       40     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0       30     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    1        6     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                    0      173     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                    1       11     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                    0       24     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                    1        3     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                    0      170     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                    1       91     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                    0        4     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                    1        1     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      182     275
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       73     275
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       16     275
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        4     275
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      152     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       66     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     219
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      136     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       82     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       44     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       30     292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0      166     354
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    1       77     354
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0       68     354
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    1       43     354
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0       81     213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    1      101     213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0       14     213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    1       17     213
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    0       93     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    1       70     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    0       21     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    1       18     202
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0      792    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    1      180    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0       87    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    1       30    1089
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      208     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        3     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       46     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     257
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    0      293     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    1       82     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    0      116     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    1       39     530
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      428     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    1       74     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0      104     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    1       27     633
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      398     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       87     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      131     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       37     653
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1810    2228
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      284    2228
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      113    2228
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       21    2228
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0     1356    2211
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    1      418    2211
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0      320    2211
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    1      117    2211
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      202     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                    1       21     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                    0        0     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     223
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0      378     575
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    1       73     575
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0       97     575
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    1       27     575
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    0      113     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    1       42     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    0        7     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    1        6     168
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                    0      166     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                    1       30     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                    0        1     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                    1        0     197
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    0    12209   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    1     1321   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    0     3003   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    1      207   16740
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     8839   12496
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1509   12496
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1507   12496
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      641   12496
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    0      528     879
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    1      152     879
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    0      158     879
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    1       41     879
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0     4807    6297
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    1      346    6297
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0     1029    6297
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    1      115    6297
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    0     1938    2831
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    1      442    2831
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    0      358    2831
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    1       93    2831
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                    0      171     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                    1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                    0        4     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                    1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0    14250   18326
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2006   18326
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1688   18326
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      382   18326
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     3067    3657
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      277    3657
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      277    3657
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       36    3657
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0       72     158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    1       58     158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0       19     158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    1        9     158
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                    0      145     161
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                    1       10     161
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                    0        5     161
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                    1        1     161
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0       66     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    1       58     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0       23     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    1        7     154
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0      138     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    1       34     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0       15     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    1        7     194
6-24 months                  ki0047075b-MAL-ED          PERU                           0                    0       88     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                    1       57     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                    0        2     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                    1        2     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       89     158
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       58     158
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        9     158
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        2     158
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       31     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      112     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     144
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       22     184
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      118     184
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        6     184
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       38     184
6-24 months                  ki1000108-IRC              INDIA                          0                    0      103     234
6-24 months                  ki1000108-IRC              INDIA                          0                    1       63     234
6-24 months                  ki1000108-IRC              INDIA                          1                    0       42     234
6-24 months                  ki1000108-IRC              INDIA                          1                    1       26     234
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0       36      93
6-24 months                  ki1000109-EE               PAKISTAN                       0                    1       43      93
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0        3      93
6-24 months                  ki1000109-EE               PAKISTAN                       1                    1       11      93
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    0       61      97
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    1       16      97
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    0       17      97
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    1        3      97
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0      365     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    1      365     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0       39     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    1       44     813
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       53     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    1      148     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        6     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       36     243
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    0      100     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    1      151     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    0       47     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    1       47     345
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0      258     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    1      111     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0       61     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    1       26     456
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      276     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      103     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       97     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       30     506
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1160    1596
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      337    1596
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       76    1596
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       23    1596
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0     1076    1999
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    1      571    1999
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0      203    1999
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    1      149    1999
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                    0      120     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                    1       74     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                    0        1     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     195
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     1857    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      859    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      225    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1      324    3265
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0      137     396
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    1      181     396
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0       35     396
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    1       43     396
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    0       28     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    1       78     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    0        4     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    1        1     111
6-24 months                  ki1114097-CONTENT          PERU                           0                    0      151     167
6-24 months                  ki1114097-CONTENT          PERU                           0                    1       15     167
6-24 months                  ki1114097-CONTENT          PERU                           1                    0        1     167
6-24 months                  ki1114097-CONTENT          PERU                           1                    1        0     167
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    0    11092   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    1      888   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    0     2710   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    1      261   14951
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     5411    8430
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1882    8430
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      798    8430
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      339    8430
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    0      165     868
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    1      556     868
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    0       36     868
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    1      111     868
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0     3541    5701
6-24 months                  ki1135781-COHORTS          INDIA                          0                    1     1171    5701
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0      750    5701
6-24 months                  ki1135781-COHORTS          INDIA                          1                    1      239    5701
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    0      620    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    1     1151    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    0      126    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    1      196    2093
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                    0      289     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                    1      427     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                    0        3     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                    1       11     730
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0     7376   10482
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2061   10482
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0      845   10482
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    1      200   10482
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0     2084    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    1     1261    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0      184    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    1      115    3644


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/9dce5ba3-365f-436b-913e-cc911bf6ea50/7c3cd55b-0750-4c57-9da6-987c60403f7e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9dce5ba3-365f-436b-913e-cc911bf6ea50/7c3cd55b-0750-4c57-9da6-987c60403f7e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9dce5ba3-365f-436b-913e-cc911bf6ea50/7c3cd55b-0750-4c57-9da6-987c60403f7e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9dce5ba3-365f-436b-913e-cc911bf6ea50/7c3cd55b-0750-4c57-9da6-987c60403f7e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5489414   0.4757641   0.6221187
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4179656   0.2547859   0.5811454
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5638780   0.4898294   0.6379265
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3590568   0.1945672   0.5235464
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2437435   0.1814608   0.3060262
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3764811   0.1890537   0.5639085
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.5137255   0.4522679   0.5751831
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3000000   0.0987973   0.5012027
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.9009009   0.8615296   0.9402722
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9189189   0.8566222   0.9812157
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.5774374   0.5151287   0.6397461
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.6153481   0.5244705   0.7062258
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5153374   0.4384248   0.5922500
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.5384615   0.3816151   0.6953080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5589957   0.4952774   0.6227140
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6226484   0.5168668   0.7284299
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7070573   0.6454161   0.7686986
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8088735   0.6866053   0.9311416
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6218103   0.5725275   0.6710931
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5502704   0.4705804   0.6299604
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3681099   0.3258451   0.4103747
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4012935   0.3162923   0.4862947
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3880135   0.3444881   0.4315389
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4144236   0.3385026   0.4903446
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2965480   0.2769730   0.3161230
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3284573   0.2478026   0.4091121
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                0.4433805   0.4221582   0.4646027
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                0.4913369   0.4454131   0.5372607
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1653627   0.1389737   0.1917517
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2708979   0.2104614   0.3313344
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5639372   0.5180289   0.6098454
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5597411   0.4706962   0.6487859
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7741935   0.7081741   0.8402130
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5384615   0.2666586   0.8102645
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                0.1628113   0.1417341   0.1838884
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                0.1444206   0.1222802   0.1665610
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3269447   0.3179018   0.3359876
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4607719   0.4393995   0.4821444
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.6949353   0.6623862   0.7274844
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7161752   0.6538018   0.7785486
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                0.2782302   0.2661887   0.2902717
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    NA                0.2984939   0.2718703   0.3251174
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6668337   0.6479482   0.6857191
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6533960   0.6090502   0.6977417
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2483306   0.2403613   0.2562999
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2837605   0.2618524   0.3056687
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4114972   0.3925062   0.4304882
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4387383   0.3750016   0.5024750
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2234637   0.1622978   0.2846295
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1842105   0.0606711   0.3077499
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2298851   0.1672174   0.2925527
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1666667   0.0446365   0.2886968
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3750108   0.3104978   0.4395238
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3941689   0.2812831   0.5070547
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.3174653   0.2587677   0.3761630
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3834949   0.2924323   0.4745575
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.5576964   0.4852712   0.6301215
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.5820042   0.4088123   0.7551960
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4294479   0.3532689   0.5056268
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4615385   0.3046920   0.6183849
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1845692   0.1627983   0.2063401
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2626248   0.1468997   0.3783499
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2170029   0.1752269   0.2587789
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2511334   0.1830838   0.3191829
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1480147   0.1169086   0.1791207
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2014111   0.1306391   0.2721832
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1802542   0.1458193   0.2146891
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2339847   0.1693899   0.2985794
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1355617   0.1208929   0.1502305
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1468041   0.0845260   0.2090821
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                0.2358140   0.2160110   0.2556169
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                0.2701373   0.2279815   0.3122931
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1617690   0.1276129   0.1959250
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2161241   0.1430575   0.2891907
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.2709677   0.2007882   0.3411473
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4615385   0.1897355   0.7333414
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0979184   0.0828139   0.1130230
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0695333   0.0561728   0.0828939
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1457824   0.1389737   0.1525912
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3001873   0.2804624   0.3199123
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2243119   0.1928538   0.2557700
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2099721   0.1518554   0.2680887
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                0.0671467   0.0603121   0.0739814
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    NA                0.1001813   0.0828148   0.1175478
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1852914   0.1696582   0.2009245
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2104843   0.1725285   0.2484401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1235298   0.1179117   0.1291478
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1853158   0.1666905   0.2039411
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0828744   0.0710598   0.0946890
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1120840   0.0713728   0.1527952
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4461538   0.3604319   0.5318758
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3214286   0.1478933   0.4949639
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                0.4677419   0.3796338   0.5558501
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    NA                0.2333333   0.0814907   0.3851760
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1976744   0.1380043   0.2573445
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3181818   0.1230487   0.5133149
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8428571   0.7824078   0.9033065
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8636364   0.7619600   0.9653127
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.3782650   0.3042505   0.4522795
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3679885   0.2494037   0.4865732
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4993248   0.4486058   0.5500439
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5393182   0.4573984   0.6212379
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7363184   0.6752779   0.7973589
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8571429   0.7510963   0.9631894
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6024260   0.5416277   0.6632242
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5038781   0.4009882   0.6067680
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3008597   0.2539676   0.3477517
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2887760   0.1915085   0.3860436
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2643566   0.2197907   0.3089226
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2533489   0.1756789   0.3310190
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2250915   0.2039277   0.2462554
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2473254   0.1651525   0.3294983
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                0.3503926   0.3274227   0.3733626
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                0.4075245   0.3558462   0.4592028
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.3166579   0.2582798   0.3750360
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.5897968   0.5219274   0.6576662
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5686102   0.5140280   0.6231924
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5505645   0.4393281   0.6618010
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                0.0740882   0.0607829   0.0873935
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                0.0979619   0.0768119   0.1191118
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2579051   0.2478519   0.2679583
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3027864   0.2754776   0.3300952
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7721712   0.7415182   0.8028242
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7494325   0.6783394   0.8205256
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                0.2483714   0.2360402   0.2607026
6-24 months                  ki1135781-COHORTS          INDIA                          1                    NA                0.2430201   0.2164806   0.2695597
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6467613   0.6245666   0.6689560
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6257414   0.5721971   0.6792858
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2179395   0.2081689   0.2277100
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1945633   0.1657148   0.2234119
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3766869   0.3572084   0.3961655
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3913824   0.3286284   0.4541365


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5253456   0.4587520   0.5919392
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5285714   0.4608954   0.5962474
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2606635   0.2012891   0.3200380
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4981818   0.4389793   0.5573843
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5903955   0.5390958   0.6416952
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5198020   0.4507336   0.5888704
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5660550   0.5086421   0.6234680
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2984740   0.2794692   0.3174788
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4533437   0.4341009   0.4725865
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1780497   0.1518612   0.2042383
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5634783   0.5229056   0.6040509
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3491124   0.3407575   0.3574673
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6972194   0.6683052   0.7261335
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2815773   0.2706357   0.2925189
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6647828   0.6473904   0.6821751
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2522591   0.2445215   0.2599967
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4137487   0.3955533   0.4319441
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2165899   0.1616567   0.2715231
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2190476   0.1629743   0.2751210
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3389831   0.2896025   0.3883636
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.5539906   0.4870787   0.6209025
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4356436   0.3670959   0.5041912
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1928375   0.1691727   0.2165022
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1368941   0.1226179   0.1511703
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2419720   0.2241162   0.2598277
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1739130   0.1429052   0.2049209
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1720551   0.1654372   0.1786729
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2195677   0.1921865   0.2469489
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0732095   0.0667753   0.0796436
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1889792   0.1745554   0.2034029
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1303067   0.1247240   0.1358893
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0855893   0.0742297   0.0969489
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months                  ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8478261   0.7957850   0.8998671
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3803419   0.3180067   0.4426771
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2255639   0.2050525   0.2460753
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3601801   0.3391307   0.3812295
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3623277   0.3130786   0.4115769
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5656566   0.5167753   0.6145378
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2634638   0.2540597   0.2728679
6-24 months                  ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7684332   0.7403543   0.7965121
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2473250   0.2361242   0.2585258
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6435738   0.6230503   0.6640973
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2157031   0.2063258   0.2250804
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3776070   0.3590122   0.3962019


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7614030   0.5048340   1.1483667
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0                 0.6367634   0.3955191   1.0251530
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.5445790   0.8830047   2.7018250
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.5839695   0.2954758   1.1541396
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0200000   0.9409586   1.1056810
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 1.0656535   0.8870393   1.2802333
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.0448718   0.7532174   1.4494581
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1138697   0.9165574   1.3536585
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1439998   0.9599562   1.3633283
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8849490   0.7502001   1.0439012
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0901461   0.8566710   1.3872519
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0680649   0.8613443   1.3243979
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1076027   0.8588968   1.4283250
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0                 1.1081610   0.9987140   1.2296019
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 1.6382040   1.2640056   2.1231807
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9925593   0.8300531   1.1868806
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    0                 0.6955128   0.4168474   1.1604680
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    0                 0.8870430   0.7660519   1.0271437
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4093267   1.3352788   1.4874808
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0305639   0.9337687   1.1373931
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0                 1.0728306   0.9718565   1.1842957
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9798485   0.9105986   1.0543649
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1426723   1.0543038   1.2384475
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0662001   0.9156784   1.2414651
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.8243421   0.3995088   1.7009383
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.7250000   0.3319185   1.5835964
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0510869   0.7522840   1.4685725
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 1.2079898   0.8939285   1.6323892
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 1.0435861   0.7552499   1.4420021
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    0                 1.0747253   0.7325085   1.5768205
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4229070   0.9246459   2.1896644
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.1572812   0.8306377   1.6123754
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3607511   0.9031311   2.0502492
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2980817   0.9264266   1.8188338
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0829317   0.6990000   1.6777412
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0                 1.1455525   0.9596272   1.3675002
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.3360049   0.8964480   1.9910904
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    0                 1.7032967   0.8951384   3.2410850
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    0                 0.7101147   0.5785210   0.8716414
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.0591461   1.8996635   2.2320177
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9360719   0.6861154   1.2770894
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0                 1.4919750   1.2205390   1.8237757
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.1359640   0.9310217   1.3860194
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5001712   1.3471818   1.6705345
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3524564   0.9155442   1.9978700
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7204433   0.4061853   1.2778369
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0                 0.4988506   0.2533667   0.9821808
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0                 1.6096257   0.8125824   3.1884704
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0246533   0.8927031   1.1761071
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 0.9728325   0.6664601   1.4200447
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.0800949   0.8935641   1.3055638
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1640927   1.0030196   1.3510322
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8364150   0.6658765   1.0506302
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9598364   0.6622055   1.3912387
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.9583605   0.6754707   1.3597258
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0987768   0.7780626   1.5516879
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0                 1.1630509   1.0090170   1.3405992
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 1.8625680   1.4897813   2.3286366
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9682636   0.7739785   1.2113184
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    0                 1.3222321   1.0950245   1.5965833
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1740227   1.0641669   1.2952191
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9705522   0.8758310   1.0755176
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0                 0.9784544   0.8680989   1.1028385
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9674998   0.8825555   1.0606198
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8927402   0.7666336   1.0395905
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0390125   0.8784763   1.2288858


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0235958   -0.0544949    0.0073034
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0353065   -0.0666233   -0.0039898
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0169200   -0.0085116    0.0423516
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0155437   -0.0321956    0.0011083
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0045045   -0.0139408    0.0229498
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                 0.0129581   -0.0218315    0.0477477
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0044646   -0.0292862    0.0382153
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0070594   -0.0070211    0.0211398
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0127870   -0.0117231    0.0372972
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0199235   -0.0473255    0.0074785
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0078775   -0.0116808    0.0274358
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0055546   -0.0167588    0.0278681
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0019260   -0.0030222    0.0068741
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0099632    0.0009169    0.0190096
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0126870    0.0054177    0.0199563
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0004589   -0.0219099    0.0209921
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0182412   -0.0418995    0.0054172
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0030335   -0.0075886    0.0015217
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0221677    0.0181302    0.0262052
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0022841   -0.0122365    0.0168047
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0033471   -0.0018045    0.0084988
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0020509   -0.0096862    0.0055844
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0039285    0.0013949    0.0064620
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0022515   -0.0030206    0.0075237
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0068738   -0.0310957    0.0173481
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0108374   -0.0345750    0.0129001
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0085508   -0.0243947    0.0414963
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                 0.0215177   -0.0125964    0.0556318
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0037057   -0.0313907    0.0239792
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0061957   -0.0275148    0.0399062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0082682   -0.0037741    0.0203106
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0112990   -0.0123311    0.0349291
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0115430   -0.0043638    0.0274498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0096386   -0.0093016    0.0285788
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0013324   -0.0024790    0.0051438
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0061580   -0.0029715    0.0152875
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0121441   -0.0054521    0.0297403
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0147465   -0.0083076    0.0378007
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0066401   -0.0109704   -0.0023098
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0262726    0.0225979    0.0299473
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0047442   -0.0195396    0.0100512
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0060627    0.0026550    0.0094705
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0036878   -0.0027679    0.0101435
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0067769    0.0046025    0.0089513
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0027149   -0.0008796    0.0063093
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0221032   -0.0572034    0.0129970
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0456640   -0.0828925   -0.0084355
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0136658   -0.0100938    0.0374254
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0049689   -0.0233466    0.0332845
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0020769   -0.0384219    0.0425757
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0037502   -0.0067619    0.0142623
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0208832   -0.0010346    0.0428011
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0285129   -0.0611964    0.0041706
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0004211   -0.0208438    0.0200017
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0015108   -0.0233447    0.0203232
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004724   -0.0048247    0.0057694
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0097875   -0.0001172    0.0196922
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0456698    0.0283574    0.0629822
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0029536   -0.0274319    0.0215247
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0027628   -0.0008997    0.0064253
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0055587    0.0017012    0.0094163
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0037380   -0.0165438    0.0090678
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                -0.0010464   -0.0060989    0.0040060
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0031875   -0.0120287    0.0056537
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0022364   -0.0051072    0.0006344
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0009201   -0.0041983    0.0060385


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0449147   -0.1057596    0.0125822
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0667962   -0.1285332   -0.0084365
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0649113   -0.0375760    0.1572753
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0312008   -0.0653957    0.0018966
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0049751   -0.0156225    0.0251550
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                 0.0219482   -0.0388446    0.0791834
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0085890   -0.0585267    0.0714492
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0124711   -0.0132017    0.0374935
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0177636   -0.0170005    0.0513394
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0331017   -0.0797720    0.0115513
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0209515   -0.0324851    0.0716224
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0141135   -0.0442524    0.0692172
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0064528   -0.0102641    0.0228930
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0219772    0.0018000    0.0417466
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0712555    0.0293290    0.1113710
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0008144   -0.0396167    0.0365396
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0241300   -0.0562877    0.0070486
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0189855   -0.0471185    0.0083917
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0634973    0.0518582    0.0749936
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0032760   -0.0177721    0.0238888
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0118871   -0.0065797    0.0300151
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0030851   -0.0146380    0.0083363
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0155732    0.0055010    0.0255433
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0054418   -0.0073872    0.0181074
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0317366   -0.1497168    0.0741368
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0494753   -0.1632968    0.0532096
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0222933   -0.0675102    0.1045421
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                 0.0634773   -0.0427592    0.1588904
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0066892   -0.0579306    0.0420703
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0142220   -0.0662954    0.0886594
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0428768   -0.0195830    0.1015102
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0494915   -0.0597086    0.1474388
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0723438   -0.0322421    0.1663331
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0507582   -0.0541504    0.1452263
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0097329   -0.0184928    0.0371764
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0254492   -0.0130088    0.0624471
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0698285   -0.0365817    0.1653152
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0516129   -0.0323589    0.1287544
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0727453   -0.1188123   -0.0285751
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1526989    0.1316028    0.1732825
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0216070   -0.0912463    0.0435882
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0828134    0.0355679    0.1277444
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0195143   -0.0152380    0.0530770
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0520074    0.0354278    0.0683020
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0317199   -0.0112929    0.0729033
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0521240   -0.1385643    0.0277538
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1081886   -0.2015137   -0.0221123
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0646625   -0.0540176    0.1699795
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0058608   -0.0281245    0.0387227
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0054606   -0.1069232    0.1064343
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0074546   -0.0140342    0.0284879
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0275795   -0.0021485    0.0564256
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0496816   -0.1085354    0.0060476
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0014015   -0.0717376    0.0643186
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0057477   -0.0923275    0.0739696
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0020941   -0.0216679    0.0253035
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0271738   -0.0007119    0.0542824
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.1260457    0.0673039    0.1810878
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0052216   -0.0494450    0.0371383
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0359500   -0.0112416    0.0809393
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0210987    0.0063511    0.0356274
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0048645   -0.0216724    0.0116669
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                -0.0042309   -0.0248676    0.0159902
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0049528   -0.0187886    0.0086952
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0103678   -0.0237787    0.0028674
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0024367   -0.0112161    0.0159050
