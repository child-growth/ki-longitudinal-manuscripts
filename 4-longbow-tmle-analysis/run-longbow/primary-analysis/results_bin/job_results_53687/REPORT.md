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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        single    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      176     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       87     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      182     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1       15     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       31     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        5     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      130     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1      119     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        0     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      166     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       74     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      247     302
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       21     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       28     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        6     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      142     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       34     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      106     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       30     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      218     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       33     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        7     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        3     261
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1643    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      508    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      169    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       55    2375
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   0      225     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   1       27     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0       27     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        3     282
0-24 months   ki1119695-PROBIT           BELARUS                        0                   0    12068   16898
0-24 months   ki1119695-PROBIT           BELARUS                        0                   1     4137   16898
0-24 months   ki1119695-PROBIT           BELARUS                        1                   0      494   16898
0-24 months   ki1119695-PROBIT           BELARUS                        1                   1      199   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0     9970   13890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1     3042   13890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      636   13890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      242   13890
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      804    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1      295    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       77    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       21    1197
0-24 months   ki1135781-COHORTS          INDIA                          0                   0     3568    5376
0-24 months   ki1135781-COHORTS          INDIA                          0                   1     1799    5376
0-24 months   ki1135781-COHORTS          INDIA                          1                   0        5    5376
0-24 months   ki1135781-COHORTS          INDIA                          1                   1        4    5376
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   0     1754    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   1     1177    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       41    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       33    3005
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     3734    5424
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1     1682    5424
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0        7    5424
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        1    5424
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      203     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       60     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      186     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       32     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        4     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0      168     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       81     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0        0     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      192     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1       48     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      260     302
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        8     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       31     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        3     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      159     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       17     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      118     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       18     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      240     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       11     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        8     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     261
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1852    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      299    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      192    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       32    2375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   0      231     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   1        7     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   0       25     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        2     265
0-6 months    ki1119695-PROBIT           BELARUS                        0                   0    12178   16895
0-6 months    ki1119695-PROBIT           BELARUS                        0                   1     4024   16895
0-6 months    ki1119695-PROBIT           BELARUS                        1                   0      497   16895
0-6 months    ki1119695-PROBIT           BELARUS                        1                   1      196   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   0    10616   13797
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   1     2314   13797
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      688   13797
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      179   13797
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   0      703     959
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   1      187     959
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0       60     959
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1        9     959
0-6 months    ki1135781-COHORTS          INDIA                          0                   0     3873    5170
0-6 months    ki1135781-COHORTS          INDIA                          0                   1     1289    5170
0-6 months    ki1135781-COHORTS          INDIA                          1                   0        7    5170
0-6 months    ki1135781-COHORTS          INDIA                          1                   1        1    5170
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                   0     2253    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                   1      677    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0       49    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1       25    3004
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0     4526    5081
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      548    5081
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0        7    5081
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0    5081
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      197     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       43     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      172     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        5     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       29     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      169     233
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       64     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        0     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      199     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       36     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      224     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1       14     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       28     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        4     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      123     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       21     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       99     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       16     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      211     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       26     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     245
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1527    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      293    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      153    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       30    2003
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   0      214     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   1       22     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0       29     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        1     266
6-24 months   ki1119695-PROBIT           BELARUS                        0                   0    15756   16598
6-24 months   ki1119695-PROBIT           BELARUS                        0                   1      163   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                   0      675   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                   1        4   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0     9149   10771
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1      954   10771
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      588   10771
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       80   10771
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      886    1111
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1      131    1111
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       81    1111
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       13    1111
6-24 months   ki1135781-COHORTS          INDIA                          0                   0     4358    5025
6-24 months   ki1135781-COHORTS          INDIA                          0                   1      658    5025
6-24 months   ki1135781-COHORTS          INDIA                          1                   0        6    5025
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        3    5025
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   0     1983    2775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   1      720    2775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       51    2775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       21    2775
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     4072    5420
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1     1340    5420
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0        7    5420
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        1    5420


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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




# Results Detail

## Results Plots
![](/tmp/7e764366-969e-423a-b687-f1abe3a4c489/52ec22e8-a0f2-493b-aea1-ae9b2db2b1bd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e764366-969e-423a-b687-f1abe3a4c489/52ec22e8-a0f2-493b-aea1-ae9b2db2b1bd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e764366-969e-423a-b687-f1abe3a4c489/52ec22e8-a0f2-493b-aea1-ae9b2db2b1bd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e764366-969e-423a-b687-f1abe3a4c489/52ec22e8-a0f2-493b-aea1-ae9b2db2b1bd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0761421   0.0390259   0.1132584
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.1388889   0.0256764   0.2521013
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0783582   0.0461309   0.1105855
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1764706   0.0481180   0.3048232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1918093   0.1334971   0.2501215
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2170702   0.1471054   0.2870350
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2353487   0.2174187   0.2532786
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2524417   0.1931515   0.3117320
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.2526313   0.1943525   0.3109101
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.2595661   0.2084768   0.3106555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2351990   0.2278709   0.2425270
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2654762   0.2331968   0.2977557
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2683733   0.2421505   0.2945962
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2151960   0.1286812   0.3017109
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4035478   0.3818537   0.4252420
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3686815   0.3487935   0.3885695
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0962094   0.0522565   0.1401623
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1333734   0.0760240   0.1907227
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1389478   0.1243119   0.1535837
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1357975   0.0899530   0.1816419
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.2452979   0.1866739   0.3039219
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.2632929   0.2110682   0.3155175
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1798710   0.1732101   0.1865318
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2043206   0.1745499   0.2340913
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2101124   0.1833337   0.2368910
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1304348   0.0509292   0.2099404
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2311439   0.2157668   0.2465210
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3223270   0.2334226   0.4112314
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1359392   0.0777658   0.1941126
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1353002   0.0709969   0.1996035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1596397   0.1428249   0.1764544
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1867138   0.1240283   0.2493994
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0948544   0.0891097   0.1005992
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1179655   0.0906642   0.1452667
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1296928   0.1089243   0.1504612
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1422774   0.0648263   0.2197285
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2664715   0.2497102   0.2832327
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2906575   0.1980347   0.3832803


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.0858369   0.0497913   0.1218826
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0894040   0.0571706   0.1216374
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2051282   0.1602507   0.2500058
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2370526   0.2199455   0.2541598
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2565984   0.1993515   0.3138454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2364291   0.2293629   0.2434953
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2639933   0.2390117   0.2889749
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4026622   0.3851243   0.4202002
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1121795   0.0771053   0.1472536
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1393684   0.1254369   0.1532999
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2497780   0.1917926   0.3077635
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1806915   0.1742710   0.1871119
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2043796   0.1788445   0.2299146
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2336884   0.2185531   0.2488237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1428571   0.1001583   0.1855560
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612581   0.1451483   0.1773679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0959985   0.0904349   0.1015621
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1296130   0.1098539   0.1493721
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2670270   0.2505637   0.2834903


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.8240741   0.7056101   4.7154176
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 2.2521008   0.9765802   5.1935910
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.1316979   0.7265797   1.7626975
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0726286   0.8381058   1.3727767
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0274505   0.8123191   1.2995564
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1287304   0.9956475   1.2796019
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.8018533   0.5301947   1.2127029
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9136005   0.8466876   0.9858014
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.3862823   0.7402633   2.5960744
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9773274   0.6862026   1.3919634
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.0733595   0.8414846   1.3691287
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1359285   0.9774043   1.3201636
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.6207859   0.3330396   1.1571449
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3944863   1.0499834   1.8520216
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9952994   0.5255721   1.8848431
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1695955   0.8228608   1.6624364
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2436474   0.9792122   1.5794930
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0970340   0.6220945   1.9345674
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.0907640   0.7883123   1.5092573


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0096948   -0.0089432   0.0283328
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0110458   -0.0042594   0.0263510
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0133189   -0.0264683   0.0531061
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017039   -0.0038883   0.0072962
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0039671    0.0004849   0.0074493
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012301   -0.0007913   0.0032515
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0043800   -0.0114210   0.0026610
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0008856   -0.0124889   0.0107177
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0159701   -0.0155909   0.0475312
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004207   -0.0041760   0.0050173
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0044801    0.0013699   0.0075903
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0008205   -0.0010308   0.0026718
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0057328   -0.0119082   0.0004426
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0025445   -0.0002410   0.0053300
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0069180   -0.0314790   0.0453149
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0016184   -0.0035305   0.0067674
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0011441   -0.0005008   0.0027890
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0000798   -0.0063410   0.0061814
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0005556   -0.0022393   0.0033504


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1129442   -0.1275143   0.3021215
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1235489   -0.0596047   0.2750443
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0649296   -0.1502934   0.2398838
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0071880   -0.0166844   0.0304999
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0154604    0.0004747   0.0302214
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0052030   -0.0033833   0.0137158
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0165914   -0.0435989   0.0097172
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0021993   -0.0314274   0.0262005
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1423621   -0.1872782   0.3804798
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0030183   -0.0305142   0.0354597
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0179364    0.0040181   0.0316602
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0045408   -0.0057570   0.0147332
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0280498   -0.0586145   0.0016325
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0108884   -0.0011214   0.0227542
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0484257   -0.2631761   0.2831612
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0100364   -0.0224094   0.0414525
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0119177   -0.0053554   0.0288941
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0006157   -0.0501073   0.0465434
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0020805   -0.0084450   0.0124962
