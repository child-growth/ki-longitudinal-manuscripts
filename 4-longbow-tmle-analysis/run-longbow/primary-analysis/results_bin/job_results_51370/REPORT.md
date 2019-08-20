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
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      225     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       24     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      231     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        9     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      265     302
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        3     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       34     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      170     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        6     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0      128     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        8     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      246     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        5     261
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
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    11832   13883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1173   13883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      781   13883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       97   13883
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
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      247     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       16     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      195     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       36     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      229     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       20     249
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      174     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0      133     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        3     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      249     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        2     261
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    12052   13791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      872   13791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      792   13791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       75   13791
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
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      235     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      176     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       29     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      228     233
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1        5     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      233     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      236     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        2     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       32     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      140     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        4     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0      110     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        3     245
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     9664   10650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      323   10650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      640   10650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       23   10650
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
![](/tmp/e3f3969a-53c5-45e4-943d-5393e4691f4d/a7e9f854-a0cb-4c29-bdd1-3384264781dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e3f3969a-53c5-45e4-943d-5393e4691f4d/a7e9f854-a0cb-4c29-bdd1-3384264781dc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e3f3969a-53c5-45e4-943d-5393e4691f4d/a7e9f854-a0cb-4c29-bdd1-3384264781dc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e3f3969a-53c5-45e4-943d-5393e4691f4d/a7e9f854-a0cb-4c29-bdd1-3384264781dc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0340909   0.0072389   0.0609429
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0588235   0.0192152   0.0984319
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0661839   0.0556591   0.0767086
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0600088   0.0259974   0.0940202
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0769896   0.0441810   0.1097981
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0849794   0.0561994   0.1137594
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0905456   0.0855819   0.0955093
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1121986   0.0894975   0.1348997
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0746133   0.0590715   0.0901551
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0816327   0.0274005   0.1358648
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1229941   0.1110063   0.1349820
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2465698   0.1659029   0.3272368
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0330079   0.0254563   0.0405595
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0357143   0.0114068   0.0600217
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0755420   0.0426105   0.1084735
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0881410   0.0579248   0.1183573
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0675414   0.0632080   0.0718748
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0876860   0.0680251   0.1073470
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0682594   0.0591229   0.0773959
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1216216   0.0482307   0.1950126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0412088   0.0320744   0.0503431
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0437158   0.0140850   0.0733467
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0322594   0.0287915   0.0357273
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0365660   0.0211693   0.0519627
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0235988   0.0142654   0.0329323
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0638298   0.0143909   0.1132687
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0654981   0.0561425   0.0748538
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1537373   0.0754449   0.2320297


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0448718   0.0218634   0.0678801
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0665263   0.0565020   0.0765506
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0774648   0.0450418   0.1098878
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0914788   0.0866831   0.0962745
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0751880   0.0602434   0.0901325
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1264559   0.1145706   0.1383412
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0332632   0.0260497   0.0404766
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0760580   0.0435003   0.1086157
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0686680   0.0644472   0.0728888
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0695739   0.0604740   0.0786738
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414378   0.0327076   0.0501681
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0324883   0.0291209   0.0358556
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0270027   0.0174671   0.0365383
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0677477   0.0583957   0.0770998


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.7254902   0.6121797   4.863468
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9066987   0.5032454   1.633602
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.1037778   0.8370039   1.455579
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2391391   1.0048680   1.528027
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0940767   0.5453529   2.194916
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.0047283   1.4250059   2.820294
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0819920   0.5276998   2.218509
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.1667816   0.8764801   1.553235
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2982563   1.0281998   1.639243
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.7817568   0.9603060   3.305881
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0608379   0.5199252   2.164498
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1334992   0.7339818   1.750480
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 2.7047872   1.1335391   6.454011
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.3472009   1.3835136   3.982145


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0107809   -0.0101223   0.0316841
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0003424   -0.0029471   0.0036320
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0004752   -0.0003772   0.0013277
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0009332   -0.0004850   0.0023514
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0005747   -0.0040454   0.0051948
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0034618    0.0007991   0.0061245
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0002553   -0.0021456   0.0026561
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0005160   -0.0003842   0.0014162
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0011266   -0.0000925   0.0023457
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0013145   -0.0005579   0.0031870
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0002291   -0.0026040   0.0030621
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0002289   -0.0006670   0.0011247
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0034039   -0.0009036   0.0077114
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0022496    0.0000322   0.0044670


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2402597   -0.3745652   0.5800816
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0051476   -0.0455486   0.0533856
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0061346   -0.0062981   0.0184136
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0102012   -0.0054183   0.0255780
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0076433   -0.0557292   0.0672117
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0273754    0.0061216   0.0481746
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0076738   -0.0671750   0.0772729
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0067842   -0.0065820   0.0199730
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0164062   -0.0014852   0.0339779
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0188938   -0.0082968   0.0453512
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0055276   -0.0652363   0.0715907
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0070443   -0.0209135   0.0342364
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1260570   -0.0417454   0.2668302
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0332058    0.0001380   0.0651799
