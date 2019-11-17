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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        single    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      224     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       39     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      196     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       34     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        2     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0               0      196     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0               1       53     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0               0      218     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0               1       22     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1               0        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           0               0      260     302
0-24 months   ki0047075b-MAL-ED          PERU                           0               1        8     302
0-24 months   ki0047075b-MAL-ED          PERU                           1               0       30     302
0-24 months   ki0047075b-MAL-ED          PERU                           1               1        4     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      165     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       11     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      124     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       12     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      229     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       22     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     261
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2039    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      112    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      217    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        7    2375
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0               0      232     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0               1       20     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1               0       28     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1               1        2     282
0-24 months   ki1119695-PROBIT           BELARUS                        0               0    16178   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0               1       26   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1               0      692   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1               1        1   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0    12475   13886
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      534   13886
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      824   13886
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       53   13886
0-24 months   ki1135781-COHORTS          GUATEMALA                      0               0      972    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      0               1      127    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      1               0       85    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      1               1       13    1197
0-24 months   ki1135781-COHORTS          INDIA                          0               0     4840    5374
0-24 months   ki1135781-COHORTS          INDIA                          0               1      525    5374
0-24 months   ki1135781-COHORTS          INDIA                          1               0        7    5374
0-24 months   ki1135781-COHORTS          INDIA                          1               1        2    5374
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0               0     2396    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0               1      535    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       56    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       18    3005
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     4540    5423
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      875    5423
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0        7    5423
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1        1    5423
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      254     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        9     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      197     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       35     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        1     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0               0      231     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0               1       18     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1               0        0     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1               1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0               0      232     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0               1        8     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1               0        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           0               0      268     302
0-6 months    ki0047075b-MAL-ED          PERU                           0               1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           1               0       32     302
0-6 months    ki0047075b-MAL-ED          PERU                           1               1        2     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      174     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        2     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      133     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        3     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      247     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        4     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       10     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     261
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2133    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       18    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      223    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1    2375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      233     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1        5     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       25     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        2     265
0-6 months    ki1119695-PROBIT           BELARUS                        0               0    16182   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0               1       18   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1               0      692   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1               1        1   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0    12776   13790
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1      148   13790
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      849   13790
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       17   13790
0-6 months    ki1135781-COHORTS          GUATEMALA                      0               0      872     958
0-6 months    ki1135781-COHORTS          GUATEMALA                      0               1       17     958
0-6 months    ki1135781-COHORTS          GUATEMALA                      1               0       68     958
0-6 months    ki1135781-COHORTS          GUATEMALA                      1               1        1     958
0-6 months    ki1135781-COHORTS          INDIA                          0               0     5020    5169
0-6 months    ki1135781-COHORTS          INDIA                          0               1      141    5169
0-6 months    ki1135781-COHORTS          INDIA                          1               0        8    5169
0-6 months    ki1135781-COHORTS          INDIA                          1               1        0    5169
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     2868    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0               1       62    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1               0       68    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1               1        6    3004
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     4936    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1      134    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0        7    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1        0    5077
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      204     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       35     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      176     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       29     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          0               0      186     233
6-24 months   ki0047075b-MAL-ED          INDIA                          0               1       47     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          0               0      219     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0               1       16     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1               0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           0               0      230     270
6-24 months   ki0047075b-MAL-ED          PERU                           0               1        8     270
6-24 months   ki0047075b-MAL-ED          PERU                           1               0       29     270
6-24 months   ki0047075b-MAL-ED          PERU                           1               1        3     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      135     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        9     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      104     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       11     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      217     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       20     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        7     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     245
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1712    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      107    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      177    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        6    2002
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0               0      219     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0               1       17     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1               0       29     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1               1        1     266
6-24 months   ki1119695-PROBIT           BELARUS                        0               0    15910   16598
6-24 months   ki1119695-PROBIT           BELARUS                        0               1        9   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1               0      679   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1               1        0   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0     9699   10769
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      402   10769
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      629   10769
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       39   10769
6-24 months   ki1135781-COHORTS          GUATEMALA                      0               0      900    1110
6-24 months   ki1135781-COHORTS          GUATEMALA                      0               1      116    1110
6-24 months   ki1135781-COHORTS          GUATEMALA                      1               0       81    1110
6-24 months   ki1135781-COHORTS          GUATEMALA                      1               1       13    1110
6-24 months   ki1135781-COHORTS          INDIA                          0               0     4549    5023
6-24 months   ki1135781-COHORTS          INDIA                          0               1      465    5023
6-24 months   ki1135781-COHORTS          INDIA                          1               0        7    5023
6-24 months   ki1135781-COHORTS          INDIA                          1               1        2    5023
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0               0     2188    2774
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0               1      514    2774
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       55    2774
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       17    2774
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     4611    5419
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      800    5419
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0        7    5419
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1        1    5419


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/3b154639-fd1b-42e8-8a64-c26c5183815b/1af3fac9-dd16-410e-b8e3-f1af7da41628/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3b154639-fd1b-42e8-8a64-c26c5183815b/1af3fac9-dd16-410e-b8e3-f1af7da41628/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3b154639-fd1b-42e8-8a64-c26c5183815b/1af3fac9-dd16-410e-b8e3-f1af7da41628/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3b154639-fd1b-42e8-8a64-c26c5183815b/1af3fac9-dd16-410e-b8e3-f1af7da41628/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0634945   0.0284125   0.0985765
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0972722   0.0489270   0.1456174
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0520688   0.0426781   0.0614595
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0312500   0.0084599   0.0540401
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0412221   0.0377976   0.0446466
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0616210   0.0449695   0.0782725
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1163363   0.0972747   0.1353979
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1348294   0.0637197   0.2059390
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1826398   0.1686382   0.1966413
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2361658   0.1428904   0.3294412
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0114616   0.0096247   0.0132984
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0195160   0.0097910   0.0292410
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0211604   0.0159465   0.0263744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0810811   0.0197904   0.1423718
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0625000   0.0228875   0.1021125
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0956522   0.0417937   0.1495107
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0588235   0.0480079   0.0696391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0327869   0.0069796   0.0585942
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0397901   0.0359764   0.0436038
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0598006   0.0407579   0.0788433
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1150738   0.0953428   0.1348047
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1424198   0.0652661   0.2195734
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1901937   0.1753576   0.2050298
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2466470   0.1540766   0.3392174


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0737179   0.0446760   0.1027599
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0501053   0.0413295   0.0588811
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0422728   0.0389260   0.0456196
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1169591   0.0987457   0.1351724
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1840266   0.1701694   0.1978839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0119652   0.0101504   0.0137800
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0226365   0.0173166   0.0279564
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0772201   0.0446475   0.1097927
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0564436   0.0463321   0.0665551
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0409509   0.0372078   0.0446940
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1162162   0.0973542   0.1350783
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1914203   0.1767774   0.2060633


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.5319777   0.7255085   3.234911
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6001674   0.2831440   1.272147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4948534   1.1269922   1.982788
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1589623   0.6669817   2.013839
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.2930691   0.8651428   1.932661
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.7027357   1.0087509   2.874157
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 3.8317349   1.7302287   8.485695
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.5304348   0.6555784   3.572770
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5573770   0.2483727   1.250819
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.5029012   1.0779224   2.095431
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.2376389   0.7011683   2.184568
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.2968199   0.8844393   1.901478


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0102234   -0.0154915   0.0359384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019635   -0.0043012   0.0003741
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0010507    0.0000255   0.0020758
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0006228   -0.0052238   0.0064693
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0013869   -0.0010167   0.0037904
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0005036   -0.0000900   0.0010972
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0014761   -0.0000972   0.0030493
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0147201   -0.0150335   0.0444737
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0023800   -0.0049588   0.0001989
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0011608    0.0000308   0.0022908
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0011424   -0.0051010   0.0073859
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0012266   -0.0013238   0.0037770


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1386828   -0.2827161   0.4216434
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0391883   -0.0864337   0.0060025
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0248549    0.0003722   0.0487379
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0053247   -0.0459376   0.0540746
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0075361   -0.0056082   0.0205087
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0420916   -0.0084087   0.0900630
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0652078   -0.0052026   0.1306862
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1906250   -0.2911290   0.4926240
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0421655   -0.0882963   0.0020098
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0283457    0.0004658   0.0554479
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0098304   -0.0453627   0.0621093
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0064080   -0.0070091   0.0196463
