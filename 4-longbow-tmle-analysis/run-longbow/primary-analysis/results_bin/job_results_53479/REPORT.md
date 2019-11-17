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

agecat        studyid                    country                        single    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      103     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1      162     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      148     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1       49     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       22     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1       14     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       99     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1      150     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      156     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       84     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      101     303
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1      167     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       14     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1       21     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       79     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       97     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       59     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       79     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       37     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      215     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        3     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        7     262
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1400    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      751    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      148    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       76    2375
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      118     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1      134     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        8     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1       22     282
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0    13524   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1     2680   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0      543   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1      150   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     7683   14016
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     5444   14016
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      485   14016
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      404   14016
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      254    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      855    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       12    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1       86    1207
0-24 months   ki1135781-COHORTS          INDIA                          0                    0     3293    5384
0-24 months   ki1135781-COHORTS          INDIA                          0                    1     2082    5384
0-24 months   ki1135781-COHORTS          INDIA                          1                    0        4    5384
0-24 months   ki1135781-COHORTS          INDIA                          1                    1        5    5384
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      924    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1     2019    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       21    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       54    3018
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     2263    5423
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1     3152    5423
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0        4    5423
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1        4    5423
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      170     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       95     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      156     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1       41     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       25     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1       11     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      164     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       85     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        0     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      197     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1       43     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      154     303
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1      114     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       20     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1       15     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      116     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       60     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       82     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       56     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      146     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      106     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        7     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3     262
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1726    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      425    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      184    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       40    2375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      167     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    1       71     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0       14     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1       13     265
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0    14615   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1     1585   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0      597   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1       96   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     9751   13999
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     3361   13999
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      625   13999
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      262   13999
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0      622     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    1      283     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0       36     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1       33     974
0-6 months    ki1135781-COHORTS          INDIA                          0                    0     4207    5203
0-6 months    ki1135781-COHORTS          INDIA                          0                    1      988    5203
0-6 months    ki1135781-COHORTS          INDIA                          1                    0        6    5203
0-6 months    ki1135781-COHORTS          INDIA                          1                    1        2    5203
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0     2246    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    1      697    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0       52    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1       23    3018
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     3333    5115
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1     1775    5115
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0        5    5115
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1        2    5115
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       91     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       67     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     158
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      133     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        8     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       19     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        3     163
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       89     154
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       65     154
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     154
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     154
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      153     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       41     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     194
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0       77     149
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1       53     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       13     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        6     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       56     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       37     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       42     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       23     158
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       30     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      109     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        4     144
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1115    1589
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      326    1589
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      112    1589
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       36    1589
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      105     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       63     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        8     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        9     185
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0    13270   14951
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1     1095   14951
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0      532   14951
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1       54   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     5889    8461
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     2083    8461
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      347    8461
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      142    8461
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      186     820
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      572     820
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0        9     820
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1       53     820
6-24 months   ki1135781-COHORTS          INDIA                          0                    0     3016    4117
6-24 months   ki1135781-COHORTS          INDIA                          0                    1     1094    4117
6-24 months   ki1135781-COHORTS          INDIA                          1                    0        4    4117
6-24 months   ki1135781-COHORTS          INDIA                          1                    1        3    4117
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      724    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1     1322    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       20    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       31    2097
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     2259    3642
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1     1377    3642
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0        4    3642
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1        2    3642


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
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/b6f7ecc4-6e77-4a08-a189-ea451fbcc58c/143f61bd-d3dd-4640-9e7e-0173bc1766a5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b6f7ecc4-6e77-4a08-a189-ea451fbcc58c/143f61bd-d3dd-4640-9e7e-0173bc1766a5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b6f7ecc4-6e77-4a08-a189-ea451fbcc58c/143f61bd-d3dd-4640-9e7e-0173bc1766a5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b6f7ecc4-6e77-4a08-a189-ea451fbcc58c/143f61bd-d3dd-4640-9e7e-0173bc1766a5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.2475794   0.1870350   0.3081239
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.3617975   0.1947973   0.5287977
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.6234106   0.5652364   0.6815848
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5989687   0.4287461   0.7691914
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.4965682   0.4014157   0.5917208
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.5894391   0.5126128   0.6662653
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3488173   0.3286922   0.3689425
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3429178   0.2797407   0.4060949
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.5317460   0.4700280   0.5934641
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.7333333   0.5748097   0.8918569
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.1670611   0.1473972   0.1867251
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1925265   0.1635147   0.2215383
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4165825   0.4081372   0.4250279
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4572164   0.4217909   0.4926419
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7713755   0.7466460   0.7961050
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8896569   0.8278668   0.9514471
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6862682   0.6693966   0.7031398
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6933321   0.6080810   0.7785832
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.2077257   0.1508284   0.2646229
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2967785   0.1389816   0.4545754
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.4283687   0.3690487   0.4876888
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.4030403   0.2297090   0.5763716
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3069573   0.2197238   0.3941908
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.4397371   0.3575072   0.5219670
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1977762   0.1809404   0.2146119
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1693579   0.1191142   0.2196016
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2975307   0.2391130   0.3559483
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.5192101   0.3127942   0.7256260
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.1011815   0.0874849   0.1148781
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1424338   0.1161987   0.1686689
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2569987   0.2494933   0.2645041
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2949360   0.2616167   0.3282554
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3142953   0.2840714   0.3445191
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4624164   0.3401661   0.5846667
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2370460   0.2215915   0.2525004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2378088   0.1638660   0.3117516
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4076923   0.3229347   0.4924499
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.3157895   0.1060755   0.5255034
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3897288   0.2892948   0.4901627
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3460816   0.2281782   0.4639851
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2250607   0.2035107   0.2466107
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2515562   0.1784552   0.3246571
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.3750000   0.3015949   0.4484051
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.5294118   0.2914989   0.7673246
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0760978   0.0619838   0.0902119
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0953053   0.0629920   0.1276187
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2623964   0.2527122   0.2720806
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2978676   0.2525305   0.3432047
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7546174   0.7239651   0.7852698
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8548387   0.7671013   0.9425761
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6462512   0.6254369   0.6670656
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6080987   0.4906461   0.7255513


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2703863   0.2132328   0.3275398
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6204620   0.5657315   0.6751926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5605096   0.5055248   0.6154943
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3482105   0.3290467   0.3673744
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5531915   0.4950624   0.6113206
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4172374   0.4090737   0.4254012
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7796189   0.7562250   0.8030128
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6868787   0.6703303   0.7034272
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2231760   0.1695976   0.2767543
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4257426   0.3699763   0.4815088
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3694268   0.3159570   0.4228965
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1957895   0.1798275   0.2117515
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3169811   0.2608532   0.3731091
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2588042   0.2515487   0.2660597
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3244353   0.2950189   0.3538517
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2385686   0.2233602   0.2537770
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3797468   0.3038314   0.4556622
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2278162   0.2071874   0.2484451
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3891892   0.3187405   0.4596379
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2629713   0.2535901   0.2723525
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7621951   0.7330377   0.7913526
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6452074   0.6247246   0.6656902


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.4613392   0.8652969   2.467953
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.9607933   0.7124550   1.295694
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.1870253   0.9456327   1.490039
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9830869   0.8110208   1.191659
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.3791045   1.0790454   1.762603
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.1524315   0.9752144   1.361853
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0975410   1.0133057   1.188779
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1533383   1.0685712   1.244830
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.0102933   0.8914224   1.145015
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.4287041   0.7844765   2.601984
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0                 0.9408725   0.5988377   1.478265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.4325676   1.0226706   2.006756
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8563109   0.6293269   1.165163
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.7450640   1.1223038   2.713391
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.4077055   1.1504110   1.722545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1476168   1.0214279   1.289395
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.4712803   1.1126202   1.945557
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.0032181   0.7309694   1.376866
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.7745780   0.3862340   1.553387
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8880064   0.5773589   1.365798
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1177259   0.8235994   1.516892
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.4117647   0.8647352   2.304844
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.2524055   0.8852774   1.771783
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1351817   0.9707152   1.327514
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1328107   1.0144231   1.265015
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9409633   0.7737171   1.144361


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0228068   -0.0049124   0.0505261
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0029486   -0.0229421   0.0170450
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0639413   -0.0104172   0.1382999
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0006068   -0.0066377   0.0054241
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0214455    0.0019436   0.0409473
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0004242   -0.0027807   0.0036292
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0006549   -0.0015256   0.0028354
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0082434    0.0023840   0.0141028
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0006106   -0.0019376   0.0031587
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0154503   -0.0101335   0.0410342
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0026261   -0.0226485   0.0173962
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0624695   -0.0068297   0.1317686
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019867   -0.0069567   0.0029833
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0194505   -0.0013499   0.0402508
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0016728   -0.0050347   0.0016890
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0018055   -0.0002149   0.0038259
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0101401    0.0015218   0.0187584
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0015226   -0.0009750   0.0040203
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0117192   -0.0409824   0.0175441
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0099819   -0.0756850   0.0557211
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0027555   -0.0039128   0.0094238
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0141892   -0.0095805   0.0379589
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0007532   -0.0003926   0.0018991
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0005749   -0.0019308   0.0030806
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0075777    0.0003202   0.0148352
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0010438   -0.0043741   0.0022865


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0843491   -0.0235361   0.1808627
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0047522   -0.0375031   0.0269648
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1140771   -0.0303734   0.2382768
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017426   -0.0192127   0.0154280
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0387668    0.0025234   0.0736932
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0025329   -0.0168555   0.0215517
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0015696   -0.0036701   0.0067820
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0105736    0.0029877   0.0181018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0008889   -0.0028290   0.0045930
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0692293   -0.0521518   0.1766073
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0061684   -0.0543183   0.0397825
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1690983   -0.0431316   0.3381491
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0101470   -0.0358456   0.0149141
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0613616   -0.0067211   0.1248399
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0168109   -0.0510779   0.0163389
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0069763   -0.0008609   0.0147520
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0312545    0.0043176   0.0574626
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0063823   -0.0041573   0.0168113
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0295958   -0.1063031   0.0417928
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0262858   -0.2148335   0.1329985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0120954   -0.0176111   0.0409348
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0364583   -0.0266802   0.0957140
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0098013   -0.0054890   0.0248590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0021862   -0.0073874   0.0116689
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0099420    0.0003332   0.0194583
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0016177   -0.0067919   0.0035299
