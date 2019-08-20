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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    0       82     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    1       97     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0       22     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    1       16     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                    0      172     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                    1       28     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                    0        6     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0       78     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    1       97     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0       23     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    1       11     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0      142     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    1       46     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0       15     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    1        9     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                    0      113     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                    1      148     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    0        2     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    1        3     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      129     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1      132     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       41     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      177     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     219
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       22     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      196     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        6     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       72     296
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0       98     358
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    1      134     358
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0       48     358
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    1       78     358
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0       31     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    1      189     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0        2     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    1       27     249
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
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      318     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    1      185     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0       78     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    1       53     634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      294     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      190     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      102     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       67     653
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1473    2228
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      621    2228
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       90    2228
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       44    2228
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0     1362    2593
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    1     1114    2593
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0       58    2593
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    1       59    2593
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      147     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       91     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        1     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     239
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     1857    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      369    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      225    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       82    2533
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0      164     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    1      281     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0       32     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    1       58     535
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    0       35     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    1      120     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    0        6     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    1        7     168
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         0                    0       73     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         0                    1       33     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         1                    0        6     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         1                    1        2     114
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0      838    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    1      369    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0       23    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       15    1245
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    0      547     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    1      225     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    0       17     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    1       14     803
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                    0      151     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                    1       45     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                    0        1     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                    1        0     197
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    0    11325   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    1     2207   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    0     2742   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    1      468   16742
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     7242   12544
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     3150   12544
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1215   12544
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      937   12544
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0    12282   18464
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     4093   18464
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1501   18464
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      588   18464
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     2092    3884
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1     1463    3884
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      185    3884
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      144    3884
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0      139     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    1       40     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0       32     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    1        6     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                    0      180     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                    1       20     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                    0        7     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0      136     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    1       39     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0       29     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    1        5     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                    0      176     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                    1       12     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                    0       22     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                    1        2     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                    0      170     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                    1       91     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                    0        4     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                    1        1     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      184     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       77     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       17     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        2     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      153     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       65     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     219
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      135     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       80     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       45     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       32     292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0      156     358
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    1       76     358
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0       79     358
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    1       47     358
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0       92     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    1      128     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0        7     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    1       22     249
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
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      429     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    1       74     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0      104     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    1       27     634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      397     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       87     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      132     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       37     653
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1810    2228
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      284    2228
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      113    2228
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       21    2228
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0     1645    2232
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    1      501    2232
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0       48    2232
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    1       38    2232
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      202     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                    1       21     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                    0        0     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     223
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0      357     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    1       88     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0       78     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    1       12     535
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    0      113     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    1       42     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    0        7     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    1        6     168
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         0                    0       97     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         0                    1        9     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         1                    0        7     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         1                    1        1     114
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  0                    0      796     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  0                    1       22     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  1                    0       23     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  1                    1        0     841
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    0      585     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    1       42     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    0       24     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    1        7     658
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                    0      166     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                    1       30     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                    0        1     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                    1        0     197
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    0    12209   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    1     1321   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    0     3003   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    1      207   16740
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     8877   12530
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1503   12530
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1509   12530
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      641   12530
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0    14304   18420
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2030   18420
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1700   18420
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      386   18420
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     3067    3657
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      277    3657
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      277    3657
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       36    3657
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0       73     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    1       57     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0       19     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    1       10     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                    0      152     167
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                    1        8     167
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                    0        6     167
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                    1        1     167
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0       68     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    1       58     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0       23     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    1        6     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0      141     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    1       34     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0       13     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    1        7     195
6-24 months                  ki0047075b-MAL-ED          PERU                           0                    0       88     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                    1       57     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                    0        2     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                    1        2     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       92     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       55     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        9     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        3     159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       32     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      112     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     145
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       22     184
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      116     184
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        6     184
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       40     184
6-24 months                  ki1000108-IRC              INDIA                          0                    0       98     235
6-24 months                  ki1000108-IRC              INDIA                          0                    1       58     235
6-24 months                  ki1000108-IRC              INDIA                          1                    0       48     235
6-24 months                  ki1000108-IRC              INDIA                          1                    1       31     235
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0       29      97
6-24 months                  ki1000109-EE               PAKISTAN                       0                    1       61      97
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0        2      97
6-24 months                  ki1000109-EE               PAKISTAN                       1                    1        5      97
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    0       61      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    1       14      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    0       17      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    1        3      95
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
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0      259     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    1      111     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0       61     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    1       26     457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      275     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      103     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       98     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       30     506
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1160    1596
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      337    1596
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       76    1596
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       23    1596
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0     1243    2015
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    1      683    2015
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0       49    2015
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    1       40    2015
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                    0      120     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                    1       74     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                    0        1     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     195
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     1857    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      859    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      225    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1      324    3265
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0      156     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    1      193     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0       31     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    1       46     426
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    0       28     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    1       78     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    0        4     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    1        1     111
6-24 months                  ki1114097-CMIN             BRAZIL                         0                    0       73     104
6-24 months                  ki1114097-CMIN             BRAZIL                         0                    1       24     104
6-24 months                  ki1114097-CMIN             BRAZIL                         1                    0        6     104
6-24 months                  ki1114097-CMIN             BRAZIL                         1                    1        1     104
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    0      825    1345
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    1      467    1345
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    0       21    1345
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    1       32    1345
6-24 months                  ki1114097-CMIN             PERU                           0                    0      505     797
6-24 months                  ki1114097-CMIN             PERU                           0                    1      266     797
6-24 months                  ki1114097-CMIN             PERU                           1                    0       17     797
6-24 months                  ki1114097-CMIN             PERU                           1                    1        9     797
6-24 months                  ki1114097-CONTENT          PERU                           0                    0      151     167
6-24 months                  ki1114097-CONTENT          PERU                           0                    1       15     167
6-24 months                  ki1114097-CONTENT          PERU                           1                    0        1     167
6-24 months                  ki1114097-CONTENT          PERU                           1                    1        0     167
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    0    11092   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    1      888   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    0     2710   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    1      261   14951
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     5194    7921
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1652    7921
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      779    7921
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      296    7921
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0     7389   10516
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2077   10516
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0      847   10516
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    1      203   10516
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
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/5c7d4451-d7ab-427c-b1e3-d574fd2f8443/ac82c9d9-b77d-4229-bb1a-ea634d69ecca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5c7d4451-d7ab-427c-b1e3-d574fd2f8443/ac82c9d9-b77d-4229-bb1a-ea634d69ecca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5c7d4451-d7ab-427c-b1e3-d574fd2f8443/ac82c9d9-b77d-4229-bb1a-ea634d69ecca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5c7d4451-d7ab-427c-b1e3-d574fd2f8443/ac82c9d9-b77d-4229-bb1a-ea634d69ecca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5435708   0.4702449   0.6168967
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4123012   0.2523170   0.5722854
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5542100   0.4801249   0.6282952
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3224554   0.1570369   0.4878738
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2446809   0.1830836   0.3062781
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3750000   0.1808556   0.5691444
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.5057471   0.4449832   0.5665111
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2631579   0.0648027   0.4615131
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8990826   0.8590293   0.9391358
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9230769   0.8638413   0.9823125
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.5795532   0.5157800   0.6433264
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.6205514   0.5355019   0.7056010
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5153374   0.4384248   0.5922500
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.5384615   0.3816151   0.6953080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5589957   0.4952774   0.6227140
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6226484   0.5168668   0.7284299
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7062574   0.6444652   0.7680496
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7896243   0.6657235   0.9135250
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6217162   0.5724079   0.6710246
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5463887   0.4675599   0.6252175
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3675974   0.3253351   0.4098597
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4062576   0.3215821   0.4909331
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3890523   0.3454064   0.4326982
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4094877   0.3340027   0.4849726
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2966322   0.2770637   0.3162007
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3427183   0.2642017   0.4212348
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                0.4484483   0.4288706   0.4680261
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                0.5156306   0.4233635   0.6078976
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1653619   0.1389429   0.1917810
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2713761   0.2123694   0.3303829
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6332833   0.5883520   0.6782146
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6789809   0.5785319   0.7794299
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7741935   0.7081741   0.8402130
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5384615   0.2666586   0.8102645
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3057167   0.2797152   0.3317181
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3947368   0.2392632   0.5502105
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                0.2914508   0.2593750   0.3235266
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    NA                0.4516129   0.2763199   0.6269059
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                0.1631386   0.1420059   0.1842712
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                0.1435555   0.1212912   0.1658199
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3029554   0.2941123   0.3117985
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4403657   0.4191801   0.4615512
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.6932361   0.6606632   0.7258090
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7050496   0.6427784   0.7673207
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                0.2780385   0.2660017   0.2900752
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    NA                0.2981133   0.2716056   0.3246211
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6666835   0.6477997   0.6855674
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6562996   0.6120227   0.7005765
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2495964   0.2415982   0.2575947
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2853672   0.2634431   0.3072913
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4116983   0.3926994   0.4306971
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4384535   0.3756671   0.5012398
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2234637   0.1622978   0.2846295
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1578947   0.0416893   0.2741001
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2228571   0.1610506   0.2846637
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1470588   0.0277273   0.2663903
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3725616   0.3077143   0.4374089
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4161341   0.3047260   0.5275423
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.3285306   0.2675521   0.3895092
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3699368   0.2845664   0.4553072
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.5818182   0.5165071   0.6471293
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.7586207   0.6025630   0.9146784
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4294479   0.3532689   0.5056268
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4615385   0.3046920   0.6183849
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1845692   0.1627983   0.2063401
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2626248   0.1468997   0.3783499
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2156865   0.1740924   0.2572806
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2485659   0.1791994   0.3179325
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1472060   0.1161150   0.1782970
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2039211   0.1330059   0.2748363
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1799470   0.1455719   0.2143220
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2360242   0.1721772   0.2998712
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1356150   0.1209460   0.1502841
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1517763   0.0896486   0.2139039
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                0.2332605   0.2153581   0.2511629
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                0.4327206   0.3289317   0.5365096
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1977061   0.1606556   0.2347566
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1364218   0.0651317   0.2077119
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.2709677   0.2007882   0.3411473
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4615385   0.1897355   0.7333414
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                0.0669856   0.0474026   0.0865687
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    NA                0.2258065   0.0785106   0.3731023
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0978081   0.0827337   0.1128826
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0643271   0.0515635   0.0770906
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1448161   0.1380361   0.1515960
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3002858   0.2806521   0.3199195
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2246779   0.1932471   0.2561087
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2066311   0.1490948   0.2641673
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                0.0671497   0.0603149   0.0739845
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    NA                0.1000562   0.0826768   0.1174357
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1854318   0.1697978   0.2010657
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2115494   0.1732637   0.2498351
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1243571   0.1187021   0.1300120
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1850349   0.1664912   0.2035787
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0828640   0.0710600   0.0946680
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1143051   0.0748741   0.1537362
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4429038   0.3571412   0.5286664
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3283183   0.1353119   0.5213246
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                0.4603175   0.3730070   0.5476279
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    NA                0.2068966   0.0589870   0.3548061
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1942857   0.1355156   0.2530558
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3500000   0.1404246   0.5595754
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8405797   0.7793372   0.9018222
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8695652   0.7719763   0.9671541
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.3741818   0.2979301   0.4504335
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3907030   0.2800901   0.5013158
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4993248   0.4486058   0.5500439
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5393182   0.4573984   0.6212379
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7363184   0.6752779   0.7973589
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8571429   0.7510963   0.9631894
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6008872   0.5400753   0.6616992
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5047973   0.4010795   0.6085151
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3010902   0.2541767   0.3480037
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2927698   0.1971901   0.3883495
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2658700   0.2211149   0.3106251
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2525648   0.1747591   0.3303704
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2250556   0.2038899   0.2462212
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2285914   0.1448028   0.3123799
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                0.3530051   0.3316603   0.3743498
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                0.4466584   0.3359952   0.5573215
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.3166170   0.2581102   0.3751237
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.5887195   0.5217463   0.6556927
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5531847   0.5009304   0.6054390
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6065544   0.4965378   0.7165710
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3614551   0.3352491   0.3876611
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.6037736   0.4720449   0.7355023
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                0.3450065   0.3114307   0.3785822
6-24 months                  ki1114097-CMIN             PERU                           1                    NA                0.3461538   0.1631727   0.5291350
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                0.0737635   0.0604677   0.0870593
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                0.0912335   0.0692134   0.1132535
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2412382   0.2310833   0.2513931
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2788199   0.2512024   0.3064374
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7718926   0.7412299   0.8025554
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7516681   0.6818086   0.8215276
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                0.2483834   0.2360497   0.2607171
6-24 months                  ki1135781-COHORTS          INDIA                          1                    NA                0.2450240   0.2183264   0.2717215
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6468059   0.6246082   0.6690036
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6260274   0.5727559   0.6792988
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2189330   0.2091970   0.2286689
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1964442   0.1686277   0.2242606
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3769595   0.3574826   0.3964364
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3870539   0.3233390   0.4507688


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5207373   0.4541154   0.5873593
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5167464   0.4488350   0.5846578
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2594340   0.2002911   0.3185768
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4892857   0.4306292   0.5479422
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5921788   0.5412016   0.6431559
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5198020   0.4507336   0.5888704
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5660550   0.5086421   0.6234680
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2984740   0.2794692   0.3174788
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4523718   0.4332106   0.4715329
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1780497   0.1518612   0.2042383
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6336449   0.5927799   0.6745099
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3084337   0.2827691   0.3340984
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           NA                   NA                0.2976339   0.2659904   0.3292773
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3258131   0.3176111   0.3340152
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6972194   0.6683052   0.7261335
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2815773   0.2706357   0.2925189
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6647828   0.6473904   0.6821751
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2535204   0.2457292   0.2613116
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4137487   0.3955533   0.4319441
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2119816   0.1574763   0.2664868
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3435754   0.2943128   0.3928380
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4356436   0.3670959   0.5041912
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1928375   0.1691727   0.2165022
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1368941   0.1226179   0.1511703
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2414875   0.2237281   0.2592468
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1869159   0.1538509   0.2199809
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           NA                   NA                0.0744681   0.0543935   0.0945427
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1711093   0.1645149   0.1777037
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2195677   0.1921865   0.2469489
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0732095   0.0667753   0.0796436
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1889792   0.1745554   0.2034029
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1311618   0.1255296   0.1367940
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0855893   0.0742297   0.0969489
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8478261   0.7957850   0.8998671
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3787234   0.3165730   0.4408738
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2255639   0.2050525   0.2460753
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3588089   0.3378609   0.3797570
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3623277   0.3130786   0.4115769
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3710037   0.3451775   0.3968300
6-24 months                  ki1114097-CMIN             PERU                           NA                   NA                0.3450439   0.3120195   0.3780683
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2459285   0.2364444   0.2554126
6-24 months                  ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7684332   0.7403543   0.7965121
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2473250   0.2361242   0.2585258
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6435738   0.6230503   0.6640973
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2168125   0.2074403   0.2261847
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3776070   0.3590122   0.3962019


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7585050   0.5035660   1.1425112
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0                 0.5818288   0.3425153   0.9883494
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.5326087   0.8618198   2.7254994
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.5203349   0.2425499   1.1162589
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0266876   0.9495361   1.1101078
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 1.0707410   0.8980568   1.2766301
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.0448718   0.7532174   1.4494581
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1138697   0.9165574   1.3536585
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1180404   0.9337210   1.3387451
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8788394   0.7454495   1.0360979
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1051699   0.8708666   1.4025117
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0525259   0.8478420   1.3066242
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1553644   0.9102721   1.4664483
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0                 1.1498104   0.9568697   1.3816553
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 1.6411039   1.2729895   2.1156670
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0721599   0.9097548   1.2635568
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    0                 0.6955128   0.4168474   1.1604680
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.2911853   0.8629624   1.9319026
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    0                 1.5495341   1.0351066   2.3196217
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    0                 0.8799607   0.7575366   1.0221695
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4535659   1.3741107   1.5376155
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0170410   0.9205859   1.1236022
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0                 1.0722017   0.9715343   1.1833001
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9844245   0.9151842   1.0589033
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1433145   1.0557147   1.2381830
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0649874   0.9170886   1.2367379
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7065789   0.3222139   1.5494483
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.6598793   0.2799238   1.5555687
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1169539   0.8113308   1.5377035
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 1.1260344   0.8371871   1.5145400
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 1.3038793   1.0314825   1.6482115
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    0                 1.0747253   0.7325085   1.5768205
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4229070   0.9246459   2.1896644
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.1524408   0.8213066   1.6170816
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3852769   0.9214509   2.0825767
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3116320   0.9402527   1.8296980
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1191700   0.7328306   1.7091830
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0                 1.8550962   1.4422319   2.3861502
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.6900231   0.3959407   1.2025333
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    0                 1.7032967   0.8951384   3.2410850
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    0                 3.3709677   1.6493393   6.8896823
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    0                 0.6576861   0.5358801   0.8071787
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.0735666   1.9133360   2.2472156
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9196768   0.6732526   1.2562972
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0                 1.4900461   1.2185474   1.8220360
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.1408477   0.9345544   1.3926781
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4879323   1.3371869   1.6556718
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3794305   0.9500786   2.0028117
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7412858   0.3994996   1.3754823
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0                 0.4494649   0.2145253   0.9417011
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0                 1.8014706   0.9210392   3.5235157
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0344828   0.9049269   1.1825868
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 1.0441528   0.7363853   1.4805498
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.0800949   0.8935641   1.3055638
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1640927   1.0030196   1.3510322
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8400866   0.6679786   1.0565390
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9723657   0.6771287   1.3963301
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.9499557   0.6687451   1.3494168
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0157108   0.6957220   1.4828744
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0                 1.2653030   0.9805389   1.6327671
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 1.8594061   1.4873059   2.3245999
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0964771   0.8938266   1.3450730
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.6703972   1.3273105   2.1021657
6-24 months                  ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             PERU                           1                    0                 1.0033256   0.5861521   1.7174079
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    0                 1.2368386   1.0214586   1.4976325
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1557867   1.0378932   1.2870716
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9737987   0.8802875   1.0772435
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0                 0.9864748   0.8753774   1.1116719
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9678752   0.8832778   1.0605750
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8972800   0.7757899   1.0377956
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0267784   0.8644691   1.2195623


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0228335   -0.0537435    0.0080765
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0374636   -0.0681698   -0.0067574
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0147531   -0.0089687    0.0384750
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0164614   -0.0322545   -0.0006684
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0063228   -0.0125586    0.0252042
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                 0.0126255   -0.0251633    0.0504144
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0044646   -0.0292862    0.0382153
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0070594   -0.0070211    0.0211398
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0135870   -0.0109939    0.0381679
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0198295   -0.0472103    0.0075514
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0077969   -0.0118158    0.0274097
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0045158   -0.0179521    0.0269838
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018418   -0.0031057    0.0067893
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0039234   -0.0001889    0.0080358
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0126878    0.0054315    0.0199441
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0003616   -0.0180709    0.0187941
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0182412   -0.0418995    0.0054172
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0027171   -0.0021689    0.0076030
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0061831   -0.0010203    0.0133865
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0033608   -0.0079764    0.0012549
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0228577    0.0188577    0.0268578
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0039832   -0.0104757    0.0184422
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0035389   -0.0016092    0.0086869
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0019008   -0.0095344    0.0057329
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0039239    0.0013890    0.0064589
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0020505   -0.0032272    0.0073282
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0114821   -0.0347172    0.0117529
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0123308   -0.0345210    0.0098594
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0110000   -0.0229374    0.0449375
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                 0.0150448   -0.0219467    0.0520363
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0205915   -0.0003377    0.0415206
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0061957   -0.0275148    0.0399062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0082682   -0.0037741    0.0203106
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0126154   -0.0110370    0.0362678
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0121000   -0.0038917    0.0280917
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0099459   -0.0090989    0.0289906
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012791   -0.0025378    0.0050960
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0082270    0.0038019    0.0126521
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0107902   -0.0243504    0.0027699
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0147465   -0.0083076    0.0378007
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.0074824    0.0000240    0.0149409
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0065298   -0.0106610   -0.0023986
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0262933    0.0226262    0.0299603
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0051102   -0.0198291    0.0096087
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0060597    0.0026512    0.0094683
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0035474   -0.0029035    0.0099982
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0068047    0.0046424    0.0089670
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0027253   -0.0008699    0.0063205
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0215201   -0.0576549    0.0146147
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0474142   -0.0831398   -0.0116887
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0159707   -0.0073222    0.0392635
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0072464   -0.0216144    0.0361072
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0045416   -0.0404796    0.0495628
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0037502   -0.0067619    0.0142623
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0208832   -0.0010346    0.0428011
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0269742   -0.0597511    0.0058028
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0013090   -0.0218598    0.0192418
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0030242   -0.0249358    0.0188874
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005083   -0.0048116    0.0058283
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0058039    0.0009585    0.0106492
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0457108    0.0282382    0.0631833
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0078481   -0.0141619    0.0298582
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0095486    0.0036866    0.0154107
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                 0.0000374   -0.0060315    0.0061064
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0030876   -0.0004407    0.0066159
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0046903    0.0007902    0.0085905
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0034595   -0.0162589    0.0093399
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                -0.0010584   -0.0061180    0.0040013
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0032321   -0.0120739    0.0056097
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0021205   -0.0049774    0.0007364
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0006475   -0.0044649    0.0057599


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0438484   -0.1052315    0.0141255
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0724991   -0.1345586   -0.0138341
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0568665   -0.0388056    0.1437275
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0336438   -0.0666848   -0.0016262
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0069834   -0.0141204    0.0276481
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                 0.0213205   -0.0446679    0.0831406
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0085890   -0.0585267    0.0714492
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0124711   -0.0132017    0.0374935
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0188749   -0.0160089    0.0525610
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0329455   -0.0795745    0.0116695
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0207700   -0.0329066    0.0716572
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0114741   -0.0473013    0.0669509
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0061707   -0.0105432    0.0226081
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0086731   -0.0004651    0.0177277
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0712598    0.0293583    0.1113525
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0005706   -0.0289467    0.0292413
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0241300   -0.0562877    0.0070486
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0088093   -0.0071572    0.0245226
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0207742   -0.0037120    0.0446630
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0210340   -0.0494658    0.0066275
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0701559    0.0578070    0.0823429
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0057130   -0.0152488    0.0262420
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0125680   -0.0058858    0.0306833
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0028592   -0.0144096    0.0085596
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0154777    0.0054547    0.0253997
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0049558   -0.0078864    0.0176343
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0541657   -0.1692499    0.0495914
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0585714   -0.1688579    0.0413090
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0286787   -0.0639823    0.1132700
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                 0.0437889   -0.0702297    0.1456603
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0341818   -0.0015348    0.0686247
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0142220   -0.0662954    0.0886594
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0428768   -0.0195830    0.1015102
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0552574   -0.0540206    0.1532058
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0759544   -0.0294165    0.1705395
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0523761   -0.0530935    0.1472827
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0093435   -0.0189228    0.0368256
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0340679    0.0156293    0.0521611
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0577277   -0.1324235    0.0120412
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0516129   -0.0323589    0.1287544
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.1004785   -0.0019149    0.1924075
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0715369   -0.1151497   -0.0296298
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1536635    0.1325035    0.1743074
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0232740   -0.0925387    0.0415995
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0827724    0.0355158    0.1277137
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0187713   -0.0159540    0.0523097
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0518802    0.0355101    0.0679724
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0318414   -0.0111677    0.0730212
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0510701   -0.1407473    0.0315573
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1148313   -0.2064463   -0.0301734
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0759582   -0.0406258    0.1794810
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0085470   -0.0261271    0.0420494
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0119919   -0.1143202    0.1239860
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0074546   -0.0140342    0.0284879
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0275795   -0.0021485    0.0564256
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0470005   -0.1060079    0.0088588
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0043665   -0.0753121    0.0618983
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0115055   -0.0983652    0.0684852
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0022536   -0.0216124    0.0255620
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0161754    0.0025764    0.0295890
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.1261586    0.0669243    0.1816325
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0139888   -0.0260637    0.0524777
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0257372    0.0097925    0.0414252
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                 0.0001085   -0.0176361    0.0175436
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0401763   -0.0050412    0.0833595
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0190719    0.0030873    0.0348001
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0045020   -0.0213009    0.0120207
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                -0.0042793   -0.0249457    0.0159704
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0050221   -0.0188590    0.0086269
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0097803   -0.0230601    0.0033271
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0017148   -0.0119200    0.0151659
