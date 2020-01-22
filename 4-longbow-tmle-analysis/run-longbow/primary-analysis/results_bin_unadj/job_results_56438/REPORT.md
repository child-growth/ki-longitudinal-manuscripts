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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        single    ever_wasted   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  -------  ------------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      176     263  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       87     263  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     263  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     263  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      182     233  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1       15     233  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       31     233  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        5     233  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      130     249  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1      119     249  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        0     249  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     249  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      166     240  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       74     240  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        0     240  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     240  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      247     302  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       21     302  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       28     302  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        6     302  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      142     312  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       34     312  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      106     312  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       30     312  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      218     261  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       33     261  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        7     261  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        3     261  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1643    2375  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      508    2375  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      169    2375  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       55    2375  ever_wasted      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   0      225     282  ever_wasted      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   1       27     282  ever_wasted      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0       27     282  ever_wasted      
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        3     282  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        0                   0    12068   16898  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        0                   1     4137   16898  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        1                   0      494   16898  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        1                   1      199   16898  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0     9970   13890  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1     3042   13890  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      636   13890  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      242   13890  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      804    1197  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1      295    1197  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       77    1197  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       21    1197  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          0                   0     3568    5376  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          0                   1     1799    5376  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          1                   0        5    5376  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          1                   1        4    5376  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   0     1754    3005  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   1     1177    3005  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       41    3005  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       33    3005  ever_wasted      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     3734    5424  ever_wasted      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1     1682    5424  ever_wasted      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0        7    5424  ever_wasted      
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        1    5424  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      203     263  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       60     263  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     263  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     263  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      186     233  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1       11     233  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       32     233  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        4     233  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0      168     249  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       81     249  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0        0     249  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     249  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      192     240  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1       48     240  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        0     240  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     240  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      260     302  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        8     302  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       31     302  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        3     302  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      159     312  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       17     312  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      118     312  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       18     312  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      240     261  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       11     261  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        8     261  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     261  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1852    2375  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      299    2375  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      192    2375  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       32    2375  ever_wasted      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   0      231     265  ever_wasted      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   1        7     265  ever_wasted      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   0       25     265  ever_wasted      
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        2     265  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        0                   0    12178   16895  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        0                   1     4024   16895  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        1                   0      497   16895  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        1                   1      196   16895  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   0    10616   13797  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   1     2314   13797  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      688   13797  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      179   13797  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   0      703     959  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   1      187     959  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0       60     959  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1        9     959  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          0                   0     3873    5170  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          0                   1     1289    5170  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          1                   0        7    5170  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          1                   1        1    5170  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                   0     2253    3004  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                   1      677    3004  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0       49    3004  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1       25    3004  ever_wasted      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0     4526    5081  ever_wasted      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      548    5081  ever_wasted      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0        7    5081  ever_wasted      
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0    5081  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      197     240  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       43     240  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     240  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     240  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      172     207  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        5     207  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       29     207  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     207  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      169     233  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       64     233  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        0     233  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     233  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      199     235  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       36     235  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        0     235  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     235  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      224     270  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1       14     270  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       28     270  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        4     270  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      123     259  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       21     259  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       99     259  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       16     259  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      211     245  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       26     245  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6     245  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     245  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1527    2003  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      293    2003  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      153    2003  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       30    2003  ever_wasted      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   0      214     266  ever_wasted      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   1       22     266  ever_wasted      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0       29     266  ever_wasted      
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        1     266  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        0                   0    15756   16598  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        0                   1      163   16598  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        1                   0      675   16598  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        1                   1        4   16598  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0     9149   10771  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1      954   10771  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      588   10771  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       80   10771  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      886    1111  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1      131    1111  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       81    1111  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       13    1111  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          0                   0     4358    5025  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          0                   1      658    5025  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          1                   0        6    5025  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        3    5025  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   0     1983    2775  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   1      720    2775  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       51    2775  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       21    2775  ever_wasted      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     4072    5420  ever_wasted      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1     1340    5420  ever_wasted      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0        7    5420  ever_wasted      
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        1    5420  ever_wasted      


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/644a4b55-a6ae-4ade-976f-e8c3d0217b84/be8ae462-0c3f-498f-8455-443f2e7ed956/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/644a4b55-a6ae-4ade-976f-e8c3d0217b84/be8ae462-0c3f-498f-8455-443f2e7ed956/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/644a4b55-a6ae-4ade-976f-e8c3d0217b84/be8ae462-0c3f-498f-8455-443f2e7ed956/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/644a4b55-a6ae-4ade-976f-e8c3d0217b84/be8ae462-0c3f-498f-8455-443f2e7ed956/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0761421   0.0390259   0.1132584
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.1388889   0.0256764   0.2521013
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0783582   0.0461309   0.1105855
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1764706   0.0481180   0.3048232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1931818   0.1347621   0.2516016
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2205882   0.1507890   0.2903874
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2361692   0.2182165   0.2541219
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2455357   0.1891600   0.3019114
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.2552916   0.1974914   0.3130917
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.2871573   0.2249824   0.3493322
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2337842   0.2265118   0.2410566
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2756264   0.2460696   0.3051833
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2684258   0.2422155   0.2946361
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2142857   0.1330129   0.2955586
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4015694   0.3838126   0.4193263
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4459459   0.3343704   0.5575215
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0965909   0.0528791   0.1403028
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1323529   0.0753084   0.1893975
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1390051   0.1243822   0.1536281
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1428571   0.0970226   0.1886917
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.2483644   0.1897847   0.3069441
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.2828283   0.2208598   0.3447967
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1789637   0.1723563   0.1855710
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2064591   0.1795154   0.2334027
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2101124   0.1833337   0.2368910
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1304348   0.0509292   0.2099404
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2310580   0.2157874   0.2463287
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3378378   0.2316359   0.4440398
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1458333   0.0880761   0.2035906
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1391304   0.0757553   0.2025056
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1609890   0.1441001   0.1778780
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1639344   0.1102824   0.2175865
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0944274   0.0887250   0.1001297
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1197605   0.0951377   0.1443833
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1288102   0.1082127   0.1494077
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1382979   0.0684801   0.2081157
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2663707   0.2497026   0.2830388
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2916667   0.1866587   0.3966747


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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.8240741   0.7056101   4.715418
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 2.2521008   0.9765802   5.193591
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.1418685   0.7371042   1.768900
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0396601   0.8163063   1.324127
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.1248208   0.9490917   1.333087
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1789780   1.0544213   1.318248
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.7983051   0.5396117   1.181018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.1105077   0.8613453   1.431746
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.3702422   0.7334748   2.559820
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0277114   0.7332172   1.440488
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.1387634   0.9556284   1.356994
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1536368   1.0073207   1.321206
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.6207859   0.3330396   1.157145
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.4621342   1.0604221   2.016024
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9540373   0.5217006   1.744654
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0182958   0.7221302   1.435927
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2682810   1.0236524   1.571370
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0736560   0.6322399   1.823259
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.0949653   0.7597984   1.577983


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0096948   -0.0089432   0.0283328
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0110458   -0.0042594   0.0263510
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0119464   -0.0277581   0.0516509
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0008834   -0.0046979   0.0064647
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0013068   -0.0005990   0.0032127
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0026449    0.0007134   0.0045764
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0044325   -0.0114743   0.0026093
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0010928   -0.0017424   0.0039280
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0155886   -0.0157998   0.0469770
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0003633   -0.0041745   0.0049011
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0014136   -0.0005107   0.0033380
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0017278   -0.0000190   0.0034747
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0057328   -0.0119082   0.0004426
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0026304   -0.0001165   0.0053773
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0029762   -0.0410507   0.0350984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002691   -0.0048700   0.0054082
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0015711   -0.0000006   0.0031428
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0008027   -0.0053581   0.0069636
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0006563   -0.0021064   0.0034190


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1129442   -0.1275143   0.3021215
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1235489   -0.0596047   0.2750443
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0582386   -0.1563828   0.2330269
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0037266   -0.0200977   0.0269946
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0050929   -0.0027545   0.0128789
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0111868    0.0029863   0.0193199
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0167903   -0.0438043   0.0095246
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0027139   -0.0043527   0.0097308
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1389610   -0.1879949   0.3759332
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0026068   -0.0304897   0.0346403
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0056596   -0.0025614   0.0138132
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0095622   -0.0001493   0.0191794
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0280498   -0.0586145   0.0016325
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0112560   -0.0005611   0.0229336
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0208333   -0.3253212   0.2136995
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0016688   -0.0307137   0.0330338
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0163661   -0.0001212   0.0325815
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0061933   -0.0424874   0.0526008
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0024579   -0.0079418   0.0127503
