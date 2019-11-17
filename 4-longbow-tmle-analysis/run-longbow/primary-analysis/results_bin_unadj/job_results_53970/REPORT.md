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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/2cda4223-e0b4-4183-894a-bcba3462ace5/1210d04d-5598-4bea-a468-d67fd3091fbe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2cda4223-e0b4-4183-894a-bcba3462ace5/1210d04d-5598-4bea-a468-d67fd3091fbe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2cda4223-e0b4-4183-894a-bcba3462ace5/1210d04d-5598-4bea-a468-d67fd3091fbe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2cda4223-e0b4-4183-894a-bcba3462ace5/1210d04d-5598-4bea-a468-d67fd3091fbe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5474860   0.4744012   0.6205708
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4210526   0.2637098   0.5783955
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5632184   0.4893463   0.6370905
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3611111   0.2038337   0.5183886
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2445652   0.1823113   0.3068191
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3703704   0.1877881   0.5529526
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.5137255   0.4522679   0.5751831
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3000000   0.0987973   0.5012027
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.9009009   0.8615296   0.9402722
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9189189   0.8566222   0.9812157
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.5761317   0.5139109   0.6383525
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.6216216   0.5312718   0.7119714
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5153374   0.4384248   0.5922500
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.5384615   0.3816151   0.6953080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5596708   0.4959887   0.6233529
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6186441   0.5158039   0.7214843
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7061611   0.6445783   0.7677440
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7826087   0.6631799   0.9020375
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6213333   0.5721935   0.6704731
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5548387   0.4765256   0.6331518
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3685259   0.3262930   0.4107588
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4045802   0.3204659   0.4886944
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3917526   0.3482759   0.4352292
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3988095   0.3247101   0.4729090
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2965616   0.2769944   0.3161288
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3283582   0.2488273   0.4078891
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                0.4367871   0.4155898   0.4579844
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                0.5277778   0.4825393   0.5730163
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1657682   0.1394465   0.1920899
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2671010   0.2047589   0.3294430
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5631929   0.5173775   0.6090083
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5645161   0.4771708   0.6518614
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7741935   0.7081741   0.8402130
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5384615   0.2666586   0.8102645
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                0.1630949   0.1420852   0.1841046
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                0.1457944   0.1237853   0.1678035
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3269286   0.3178941   0.3359632
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4560261   0.4349674   0.4770847
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.6922078   0.6595886   0.7248270
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7164179   0.6540737   0.7787622
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                0.2779133   0.2658849   0.2899417
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    NA                0.2983663   0.2720684   0.3246642
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6693277   0.6504237   0.6882318
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6407982   0.5965122   0.6850842
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2486961   0.2407246   0.2566676
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2802701   0.2584869   0.3020534
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4115331   0.3925531   0.4305130
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4376900   0.3776210   0.4977589
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2234637   0.1622978   0.2846295
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1842105   0.0606711   0.3077499
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2298851   0.1672174   0.2925527
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1666667   0.0446365   0.2886968
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3761468   0.3117321   0.4405614
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4054054   0.2933501   0.5174607
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.3168724   0.2582920   0.3754528
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3873874   0.2966332   0.4781416
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.5549451   0.4825738   0.6273163
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.5483871   0.3727906   0.7239836
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4294479   0.3532689   0.5056268
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4615385   0.3046920   0.6183849
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1851852   0.1631560   0.2072143
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2564103   0.1530945   0.3597261
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2186667   0.1767919   0.2605414
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2516129   0.1832340   0.3199918
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1474104   0.1163738   0.1784469
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2061069   0.1367830   0.2754308
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1793814   0.1452095   0.2135534
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2202381   0.1575257   0.2829505
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1356256   0.1209573   0.1502939
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1567164   0.0951509   0.2182819
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                0.2356257   0.2158727   0.2553787
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                0.2677346   0.2262112   0.3092579
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1618625   0.1278398   0.1958852
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2177419   0.1450374   0.2904464
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.2709677   0.2007882   0.3411473
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4615385   0.1897355   0.7333414
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0976349   0.0825796   0.1126902
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0644860   0.0518099   0.0771620
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1458253   0.1390250   0.1526256
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2984171   0.2790663   0.3177680
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2235294   0.1921987   0.2548602
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2060302   0.1498043   0.2622560
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                0.0671454   0.0603115   0.0739792
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    NA                0.1005245   0.0830984   0.1179506
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1857143   0.1700883   0.2013403
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2062084   0.1688625   0.2435543
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1234006   0.1177845   0.1290167
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1845411   0.1659839   0.2030983
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0828349   0.0710322   0.0946377
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1150160   0.0745584   0.1554736
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4461538   0.3604319   0.5318758
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3214286   0.1478933   0.4949639
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                0.4677419   0.3796338   0.5558501
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    NA                0.2333333   0.0814907   0.3851760
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1976744   0.1380043   0.2573445
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3181818   0.1230487   0.5133149
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8428571   0.7824078   0.9033065
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8636364   0.7619600   0.9653127
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.3795181   0.3055397   0.4534965
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3823529   0.2666016   0.4981043
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5000000   0.4492194   0.5507806
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5301205   0.4537537   0.6064872
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7363184   0.6752779   0.7973589
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8571429   0.7510963   0.9631894
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6015936   0.5409401   0.6622472
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5000000   0.3987758   0.6012242
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3008130   0.2539687   0.3476573
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2988506   0.2025570   0.3951442
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2717678   0.2269354   0.3166002
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2362205   0.1622738   0.3101671
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2251169   0.2039530   0.2462808
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2323232   0.1491081   0.3155383
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                0.3466910   0.3237009   0.3696810
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                0.4232955   0.3716676   0.4749233
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.3162739   0.2578021   0.3747457
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.5901639   0.5231968   0.6571311
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5691824   0.5146875   0.6236773
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5512821   0.4407665   0.6617976
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                0.0741235   0.0608402   0.0874068
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                0.0878492   0.0674610   0.1082374
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2580557   0.2480127   0.2680987
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2981530   0.2715620   0.3247440
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7711512   0.7404698   0.8018326
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7551020   0.6855460   0.8246581
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                0.2485144   0.2361743   0.2608546
6-24 months                  ki1135781-COHORTS          INDIA                          1                    NA                0.2416582   0.2149761   0.2683404
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6499153   0.6276946   0.6721360
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6086957   0.5553767   0.6620146
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2183957   0.2086266   0.2281647
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1913876   0.1637778   0.2189973
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3769806   0.3575098   0.3964514
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3846154   0.3244118   0.4448189


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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7690655   0.5171636   1.1436648
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0                 0.6411565   0.4068381   1.0104306
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.5144033   0.8695401   2.6375062
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.5839695   0.2954758   1.1541396
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0200000   0.9409586   1.1056810
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 1.0789575   0.9002514   1.2931381
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.0448718   0.7532174   1.4494581
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1053714   0.9056531   1.3491323
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1082580   0.9296242   1.3212174
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8929808   0.7595849   1.0498032
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0978337   0.8658369   1.3919929
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0180138   0.8199030   1.2639935
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1072175   0.8614109   1.4231660
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0                 1.2083182   1.0949728   1.3333965
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 1.6112921   1.2367998   2.0991773
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0023495   0.8415909   1.1938158
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    0                 0.6955128   0.4168474   1.1604680
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    0                 0.8939238   0.7718564   1.0352957
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3948795   1.3217971   1.4720026
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0349752   0.9374569   1.1426379
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0                 1.0735949   0.9731857   1.1843638
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9573759   0.8885021   1.0315885
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1269584   1.0394841   1.2217939
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0635597   0.9210072   1.2281763
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.8243421   0.3995088   1.7009383
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.7250000   0.3319185   1.5835964
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0777851   0.7786097   1.4919166
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 1.2225342   0.9070983   1.6476604
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 0.9881827   0.6993308   1.3963420
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    0                 1.0747253   0.7325085   1.5768205
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.3846154   0.9328760   2.0551067
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.1506688   0.8252138   1.6044795
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3981844   0.9402232   2.0792081
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2277641   0.8716213   1.7294261
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1555077   0.7688017   1.7367261
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0                 1.1362706   0.9526125   1.3553369
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.3452276   0.9066576   1.9959434
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    0                 1.7032967   0.8951384   3.2410850
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    0                 0.6604809   0.5405584   0.8070083
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.0464019   1.8893092   2.2165566
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9217138   0.6782008   1.2526620
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0                 1.4971174   1.2244851   1.8304515
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.1103531   0.9093544   1.3557794
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4954634   1.3435339   1.6645733
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3884961   0.9510002   2.0272565
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7204433   0.4061853   1.2778369
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0                 0.4988506   0.2533667   0.9821808
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0                 1.6096257   0.8125824   3.1884704
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0246533   0.8927031   1.1761071
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 1.0074697   0.7028442   1.4441254
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.0602410   0.8750332   1.2846494
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1640927   1.0030196   1.3510322
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8311258   0.6628951   1.0420505
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9934762   0.6946019   1.4209507
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.8691996   0.6101623   1.2382082
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0320115   0.7126184   1.4945554
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0                 1.2209590   1.0626956   1.4027921
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 1.8659898   1.4975911   2.3250124
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9685508   0.7756034   1.2094978
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    0                 1.1851729   0.9899850   1.4188445
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1553826   1.0482523   1.2734615
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9791881   0.8857049   1.0825381
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0                 0.9724113   0.8615336   1.0975587
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9365769   0.8525230   1.0289180
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8763340   0.7554350   1.0165816
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0202525   0.8656790   1.2024264


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0221404   -0.0531893    0.0089085
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0346470   -0.0661740   -0.0031199
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0160983   -0.0092320    0.0414286
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0155437   -0.0321956    0.0011083
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0045045   -0.0139408    0.0229498
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                 0.0142638   -0.0202046    0.0487322
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0044646   -0.0292862    0.0382153
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0063843   -0.0074146    0.0201832
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0136832   -0.0106341    0.0380006
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0194465   -0.0466074    0.0077143
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0074615   -0.0120503    0.0269732
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0018156   -0.0202887    0.0239199
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0019124   -0.0030236    0.0068483
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0165566    0.0073655    0.0257478
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0122815    0.0047769    0.0197862
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0002854   -0.0209849    0.0215556
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0182412   -0.0418995    0.0054172
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0033171   -0.0078007    0.0011666
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0221838    0.0181547    0.0262129
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0050116   -0.0095667    0.0195898
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0036640   -0.0015200    0.0088480
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0045450   -0.0122256    0.0031356
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0035630    0.0010295    0.0060966
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0022157   -0.0030618    0.0074931
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0068738   -0.0310957    0.0173481
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0108374   -0.0345750    0.0129001
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0074149   -0.0253730    0.0402027
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                 0.0221106   -0.0119311    0.0561523
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0009544   -0.0285980    0.0266891
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0061957   -0.0275148    0.0399062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0076523   -0.0041242    0.0194287
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0096352   -0.0138490    0.0331194
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0121473   -0.0036805    0.0279751
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0105114   -0.0079138    0.0289365
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012685   -0.0025436    0.0050806
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0063463   -0.0027577    0.0154502
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0120505   -0.0053620    0.0294630
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0147465   -0.0083076    0.0378007
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0063565   -0.0105438   -0.0021692
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0262298    0.0225624    0.0298972
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0039617   -0.0185418    0.0106183
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0060641    0.0026487    0.0094795
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0032649   -0.0031903    0.0097201
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0069061    0.0047391    0.0090731
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0027544   -0.0008416    0.0063503
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0221032   -0.0572034    0.0129970
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0456640   -0.0828925   -0.0084355
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0136658   -0.0100938    0.0374254
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0049689   -0.0233466    0.0332845
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0008238   -0.0390967    0.0407443
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0030750   -0.0073955    0.0135456
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0208832   -0.0010346    0.0428011
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0276806   -0.0601860    0.0048249
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0003744   -0.0208049    0.0200561
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0089220   -0.0306679    0.0128240
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004470   -0.0048798    0.0057739
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0134891    0.0034556    0.0235227
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0460538    0.0283502    0.0637574
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0035258   -0.0278068    0.0207551
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0027275   -0.0006652    0.0061202
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0054081    0.0015633    0.0092530
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0027180   -0.0155990    0.0101630
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                -0.0011894   -0.0062897    0.0039109
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0063415   -0.0152511    0.0025681
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0026926   -0.0055615    0.0001764
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0006265   -0.0045401    0.0057930


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0421445   -0.1032875    0.0156101
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0655483   -0.1277571   -0.0067711
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0617589   -0.0402453    0.1537607
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0312008   -0.0653957    0.0018966
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0049751   -0.0156225    0.0251550
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                 0.0241597   -0.0360766    0.0808940
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0085890   -0.0585267    0.0714492
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0112785   -0.0138463    0.0357807
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0190086   -0.0154916    0.0523367
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0323093   -0.0785594    0.0119575
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0198450   -0.0334554    0.0703965
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0046131   -0.0531660    0.0592224
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0064071   -0.0102676    0.0228067
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0365211    0.0159960    0.0566181
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0689782    0.0259148    0.1101378
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0005064   -0.0379636    0.0375506
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0241300   -0.0562877    0.0070486
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0207606   -0.0483885    0.0061393
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0635434    0.0519306    0.0750139
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0071879   -0.0139507    0.0278858
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0130125   -0.0055694    0.0312510
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0068368   -0.0184611    0.0046549
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0141245    0.0040509    0.0240962
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0053551   -0.0074861    0.0180326
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0317366   -0.1497168    0.0741368
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0494753   -0.1632968    0.0532096
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0193316   -0.0699984    0.1012038
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                 0.0652263   -0.0407687    0.1604265
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0017229   -0.0528861    0.0469542
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0142220   -0.0662954    0.0886594
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0396825   -0.0215668    0.0972596
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0422039   -0.0662852    0.1396547
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0761311   -0.0279103    0.1696418
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0553542   -0.0465879    0.1473667
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0092661   -0.0189642    0.0367144
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0262272   -0.0121134    0.0631154
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0692905   -0.0358979    0.1637976
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0516129   -0.0323589    0.1287544
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0696387   -0.1140714   -0.0269782
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1524499    0.1314067    0.1729833
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0180433   -0.0866429    0.0462257
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0828324    0.0354861    0.1278544
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0172764   -0.0174682    0.0508345
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0529987    0.0364787    0.0692353
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0321810   -0.0108399    0.0733710
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0521240   -0.1385643    0.0277538
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1081886   -0.2015137   -0.0221123
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0646625   -0.0540176    0.1699795
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0058608   -0.0281245    0.0387227
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0021660   -0.1085127    0.1017940
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0061125   -0.0152290    0.0270053
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0275795   -0.0021485    0.0564256
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0482313   -0.1067546    0.0071974
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0012462   -0.0716109    0.0644981
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0339437   -0.1200343    0.0455296
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0019817   -0.0219153    0.0253199
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0374511    0.0091796    0.0649159
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.1271053    0.0673169    0.1830611
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0062332   -0.0500928    0.0357946
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0354908   -0.0080010    0.0771061
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0205271    0.0058299    0.0350071
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0035371   -0.0204434    0.0130891
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                -0.0048091   -0.0256435    0.0156022
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0098535   -0.0238023    0.0039052
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0124827   -0.0258897    0.0007490
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0016590   -0.0121206    0.0152511
