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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        single    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      242     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       21     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      194     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        3     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       35     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      223     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       26     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      231     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        9     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      264     302
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        4     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       34     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      169     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        7     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0      127     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        9     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      244     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        7     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        8     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        2     261
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2008    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      143    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      209    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       15    2375
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      250     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1        2     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       29     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        1     282
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0    14954   16898
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1     1251   16898
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0      635   16898
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1       58   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    11829   13890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1183   13890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      781   13890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       97   13890
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0     1017    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1       82    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       90    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1        8    1197
0-24 months   ki1135781-COHORTS          INDIA                          0                    0     4814    5376
0-24 months   ki1135781-COHORTS          INDIA                          0                    1      553    5376
0-24 months   ki1135781-COHORTS          INDIA                          1                    0        7    5376
0-24 months   ki1135781-COHORTS          INDIA                          1                    1        2    5376
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0     2571    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1      360    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       54    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       20    3005
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     5074    5424
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      342    5424
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0        8    5424
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1        0    5424
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      247     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       16     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      195     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       35     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        1     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      228     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       21     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        0     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      233     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        7     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      267     302
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       34     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      173     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        3     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0      133     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        3     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      248     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        9     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     261
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2080    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       71    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      216    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        8    2375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      238     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    1        0     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0       26     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        1     265
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0    14974   16895
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1     1228   16895
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0      636   16895
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1       57   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    12056   13797
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      874   13797
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      792   13797
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       75   13797
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0      832     959
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    1       58     959
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0       67     959
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1        2     959
0-6 months    ki1135781-COHORTS          INDIA                          0                    0     4794    5170
0-6 months    ki1135781-COHORTS          INDIA                          0                    1      368    5170
0-6 months    ki1135781-COHORTS          INDIA                          1                    0        8    5170
0-6 months    ki1135781-COHORTS          INDIA                          1                    1        0    5170
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0     2730    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    1      200    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0       65    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1        9    3004
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     4963    5081
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      111    5081
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0        7    5081
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1        0    5081
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      235     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      176     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       30     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      227     233
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1        6     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      233     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      235     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        3     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       32     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      140     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        4     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0      109     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        6     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      233     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        4     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        7     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     245
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1745    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       75    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      175    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        8    2003
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      234     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1        2     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       30     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     266
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0    15894   16598
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1       25   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0      678   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1        1   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     9772   10771
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      331   10771
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      645   10771
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       23   10771
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      993    1111
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1       24    1111
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       88    1111
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1        6    1111
6-24 months   ki1135781-COHORTS          INDIA                          0                    0     4825    5025
6-24 months   ki1135781-COHORTS          INDIA                          0                    1      191    5025
6-24 months   ki1135781-COHORTS          INDIA                          1                    0        7    5025
6-24 months   ki1135781-COHORTS          INDIA                          1                    1        2    5025
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0     2526    2775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1      177    2775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       61    2775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       11    2775
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     5174    5420
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      238    5420
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0        8    5420
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1        0    5420


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
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/da4dff88-c152-4acd-8633-50790550f7f0/76247419-ea20-4dda-82b6-9e32fd8fbd5e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da4dff88-c152-4acd-8633-50790550f7f0/76247419-ea20-4dda-82b6-9e32fd8fbd5e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da4dff88-c152-4acd-8633-50790550f7f0/76247419-ea20-4dda-82b6-9e32fd8fbd5e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da4dff88-c152-4acd-8633-50790550f7f0/76247419-ea20-4dda-82b6-9e32fd8fbd5e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0397727   0.0108547   0.0686907
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0661765   0.0243299   0.1080230
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0661699   0.0556488   0.0766910
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0625083   0.0281846   0.0968320
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0769154   0.0441057   0.1097250
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0880378   0.0595797   0.1164960
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0912531   0.0862832   0.0962231
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1108812   0.0882184   0.1335441
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0746133   0.0590715   0.0901551
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0816327   0.0274005   0.1358648
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1229353   0.1109597   0.1349108
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2408842   0.1603755   0.3213929
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0330079   0.0254563   0.0405595
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0357143   0.0114068   0.0600217
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0756251   0.0427017   0.1085484
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0831157   0.0539093   0.1123221
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0677056   0.0633690   0.0720423
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0899490   0.0700781   0.1098200
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0682594   0.0591229   0.0773959
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1216216   0.0482307   0.1950126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0412088   0.0320744   0.0503431
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0437158   0.0140850   0.0733467
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0326359   0.0291712   0.0361005
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0371277   0.0216633   0.0525922
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0235988   0.0142654   0.0329323
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0638298   0.0143909   0.1132687
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0655156   0.0561568   0.0748744
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1492952   0.0731339   0.2254566


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0512821   0.0267678   0.0757963
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0665263   0.0565020   0.0765506
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0774648   0.0450418   0.1098878
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0921526   0.0873423   0.0969629
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0751880   0.0602434   0.0901325
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1264559   0.1145706   0.1383412
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0332632   0.0260497   0.0404766
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0760580   0.0435003   0.1086157
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0687831   0.0645599   0.0730062
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0695739   0.0604740   0.0786738
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414378   0.0327076   0.0501681
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0328660   0.0294989   0.0362331
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0270027   0.0174671   0.0365383
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0677477   0.0583957   0.0770998


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.6638655   0.6347971   4.361155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9446638   0.5333043   1.673322
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.1446063   0.8660463   1.512764
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2150950   0.9835088   1.501213
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0940767   0.5453529   2.194916
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.9594394   1.3833959   2.775346
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0819920   0.5276998   2.218509
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.0990492   0.8347936   1.446956
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3285308   1.0555525   1.672105
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.7817568   0.9603060   3.305881
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0608379   0.5199252   2.164498
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1376363   0.7401649   1.748552
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 2.7047872   1.1335391   6.454011
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2787733   1.3420901   3.869194


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0115093   -0.0107109   0.0337295
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0003564   -0.0029313   0.0036442
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0005494   -0.0003411   0.0014399
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0008995   -0.0005011   0.0023001
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0005747   -0.0040454   0.0051948
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0035206    0.0008614   0.0061799
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0002553   -0.0021456   0.0026561
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0004329   -0.0004536   0.0013194
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0010774   -0.0001414   0.0022963
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0013145   -0.0005579   0.0031870
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0002291   -0.0026040   0.0030621
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0002302   -0.0006539   0.0011143
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0034039   -0.0009036   0.0077114
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0022321    0.0000179   0.0044463


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2244318   -0.3345633   0.5492863
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0053579   -0.0453095   0.0535694
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0070924   -0.0060260   0.0200397
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0097608   -0.0055483   0.0248368
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0076433   -0.0557292   0.0672117
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0278408    0.0066246   0.0486040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0076738   -0.0671750   0.0772729
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0056920   -0.0072196   0.0184380
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0156641   -0.0021944   0.0332045
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0188938   -0.0082968   0.0453512
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0055276   -0.0652363   0.0715907
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0070034   -0.0202605   0.0335388
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1260570   -0.0417454   0.2668302
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0329477   -0.0000778   0.0648826
